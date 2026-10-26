#!/usr/bin/env python

#
# Copyright (c) 2018-2019 Intel Corporation
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
"""
Class to handle Carla camera sensors
输出 sensor_interface_msgs/CompressedVideo 消息，format = "nv12"
"""

import math
import os
from abc import abstractmethod

import carla
import numpy
import transforms3d
import cv2

import carla_common.transforms as trans
from ros_compatibility.core import get_ros_version

from carla_ros_bridge.sensor import Sensor, create_cloud

from sensor_msgs.msg import CameraInfo, PointCloud2, PointField
from sensor_interface_msgs.msg import CompressedVideo

ROS_VERSION = get_ros_version()


class Camera(Sensor):

    """
    Sensor implementation details for cameras
    """

    def __init__(self, uid, name, parent, relative_spawn_pose, node, carla_actor, synchronous_mode, is_event_sensor=False):  # pylint: disable=too-many-arguments
        """
        Constructor
        """
        super(Camera, self).__init__(uid=uid,
                                     name=name,
                                     parent=parent,
                                     relative_spawn_pose=relative_spawn_pose,
                                     node=node,
                                     carla_actor=carla_actor,
                                     synchronous_mode=synchronous_mode,
                                     is_event_sensor=is_event_sensor)

        if self.__class__.__name__ == "Camera":
            self.node.logwarn("Created Unsupported Camera Actor"
                              "(id={}, type={}, attributes={})".format(self.get_id(),
                                                                       self.carla_actor.type_id,
                                                                       self.carla_actor.attributes))
        else:
            self._build_camera_info()

        # 获取 role_name，用于拼接话题
        role_name = self.carla_actor.attributes.get('role_name', 'camera')

        # 使用绝对话题名
        info_topic = f"/sensor/{role_name}/camera_info"
        image_topic = f"/sensor/{role_name}/video"

        self.camera_info_publisher = node.new_publisher(CameraInfo, info_topic, qos_profile=10)
        self.camera_image_publisher = node.new_publisher(CompressedVideo, image_topic, qos_profile=10)

    def destroy(self):
        super(Camera, self).destroy()
        self.node.destroy_publisher(self.camera_info_publisher)
        self.node.destroy_publisher(self.camera_image_publisher)

    def _build_camera_info(self):
        """
        Private function to compute camera info
        """
        camera_info = CameraInfo()
        # store info without header
        camera_info.header = self.get_msg_header()
        camera_info.width = int(self.carla_actor.attributes['image_size_x'])
        camera_info.height = int(self.carla_actor.attributes['image_size_y'])
        camera_info.distortion_model = 'plumb_bob'
        cx = camera_info.width / 2.0
        cy = camera_info.height / 2.0
        fx = camera_info.width / (
            2.0 * math.tan(float(self.carla_actor.attributes['fov']) * math.pi / 360.0))
        fy = fx
        if ROS_VERSION == 1:
            camera_info.K = [fx, 0.0, cx, 0.0, fy, cy, 0.0, 0.0, 1.0]
            camera_info.D = [0.0, 0.0, 0.0, 0.0, 0.0]
            camera_info.R = [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0]
            camera_info.P = [fx, 0.0, cx, 0.0, 0.0, fy, cy, 0.0, 0.0, 0.0, 1.0, 0.0]
        elif ROS_VERSION == 2:
            camera_info.k = [fx, 0.0, cx, 0.0, fy, cy, 0.0, 0.0, 1.0]
            camera_info.d = [0.0, 0.0, 0.0, 0.0, 0.0]
            camera_info.r = [1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0]
            camera_info.p = [fx, 0.0, cx, 0.0, 0.0, fy, cy, 0.0, 0.0, 0.0, 1.0, 0.0]
        self._camera_info = camera_info

    def sensor_data_updated(self, carla_camera_data):
        """
        Function (override) to transform the received carla camera data
        into a ROS CompressedVideo message
        """
        img_msg = self.get_ros_image(carla_camera_data)
        if img_msg is None:
            return

        cam_info = self._camera_info
        cam_info.header = img_msg.header
        self.camera_info_publisher.publish(cam_info)
        self.camera_image_publisher.publish(img_msg)

    def get_ros_transform(self, pose, timestamp):
        """
        Function (override) to modify the tf messages sent by this camera.
        """
        tf_msg = super(Camera, self).get_ros_transform(pose, timestamp)
        rotation = tf_msg.transform.rotation

        quat = [rotation.w, rotation.x, rotation.y, rotation.z]
        quat_swap = transforms3d.quaternions.mat2quat(numpy.matrix(
            [[0, 0, 1],
             [-1, 0, 0],
             [0, -1, 0]]))
        quat = transforms3d.quaternions.qmult(quat, quat_swap)

        tf_msg.transform.rotation.w = quat[0]
        tf_msg.transform.rotation.x = quat[1]
        tf_msg.transform.rotation.y = quat[2]
        tf_msg.transform.rotation.z = quat[3]

        return tf_msg

    def get_ros_image(self, carla_camera_data):
        """
        Function to transform the received carla camera data into a ROS CompressedVideo message
        输出 NV12 格式（YUV420 半平面）
        """
        if ((carla_camera_data.height != self._camera_info.height) or
                (carla_camera_data.width != self._camera_info.width)):
            self.node.logerr(
                "Camera{} received image not matching configuration".format(self.get_prefix()))

        image_data_array, encoding = self.get_carla_image_data_array(carla_camera_data)

        img_msg = CompressedVideo()
        img_msg.header = self.get_msg_header(timestamp=carla_camera_data.timestamp)

        if encoding == 'bgra8':
            # RGB 相机：BGRA -> BGR -> NV12
            image_bgr = cv2.cvtColor(image_data_array, cv2.COLOR_BGRA2BGR)
            nv12_bytes = self._bgr_to_nv12(image_bgr)
            if nv12_bytes is None:
                return None
            img_msg.format = "nv12"
            img_msg.data = nv12_bytes

        elif encoding == 'bgr8':
            # 已经是 BGR（DVS 等），直接转 NV12
            nv12_bytes = self._bgr_to_nv12(image_data_array)
            if nv12_bytes is None:
                return None
            img_msg.format = "nv12"
            img_msg.data = nv12_bytes

        elif encoding == 'passthrough':
            # 深度图：保持原始 float32，不做 NV12 转换
            img_msg.format = "32FC1"
            img_msg.data = image_data_array.tobytes()

        else:
            self.node.logerr("Unsupported encoding for CompressedVideo: {}".format(encoding))
            return None

        return img_msg

    def _bgr_to_nv12(self, image_bgr):
        """
        将 BGR 图像转换为 NV12 字节流（Y 平面 + UV 交错平面）

        NV12 布局:
          - Y 平面: width * height 字节
          - UV 平面: width * height / 2 字节, U/V 交错
        总大小: width * height * 3 / 2
        """
        h, w = image_bgr.shape[:2]
        if w % 2 != 0 or h % 2 != 0:
            self.node.logerr("NV12 requires even width/height, got {}x{}".format(w, h))
            return None

        # BGR -> I420 (YUV420 planar, 即 Y/U/V 三个平面分开)
        try:
            i420 = cv2.cvtColor(image_bgr, cv2.COLOR_BGR2YUV_I420)
        except AttributeError:
            # 兼容较老的 OpenCV 常量名
            i420 = cv2.cvtColor(image_bgr, cv2.COLOR_BGR2YUV_IYUV)

        i420 = i420.reshape(-1)

        y_size = w * h
        uv_size = w * h // 4

        y_plane = i420[:y_size]
        u_plane = i420[y_size:y_size + uv_size]
        v_plane = i420[y_size + uv_size:y_size + 2 * uv_size]

        # 交错成 NV12: UVUVUV...
        uv_plane = numpy.empty(uv_size * 2, dtype=numpy.uint8)
        uv_plane[0::2] = u_plane
        uv_plane[1::2] = v_plane

        nv12 = numpy.concatenate([y_plane, uv_plane])
        return nv12.tobytes()

    @abstractmethod
    def get_carla_image_data_array(self, carla_camera_data):
        """
        Virtual function to convert the carla camera data to a numpy data array
        """
        raise NotImplementedError(
            "This function has to be re-implemented by derived classes")


class RgbCamera(Camera):

    """
    Camera implementation details for rgb camera
    """

    def __init__(self, uid, name, parent, relative_spawn_pose, node, carla_actor, synchronous_mode):
        super(RgbCamera, self).__init__(uid=uid,
                                        name=name,
                                        parent=parent,
                                        relative_spawn_pose=relative_spawn_pose,
                                        node=node,
                                        carla_actor=carla_actor,
                                        synchronous_mode=synchronous_mode)
        self.listen()

    def get_carla_image_data_array(self, carla_image):
        """
        Convert the carla image to a numpy data array
        The RGB camera provides a 4-channel int8 color format (bgra).
        """
        carla_image_data_array = numpy.ndarray(
            shape=(carla_image.height, carla_image.width, 4),
            dtype=numpy.uint8, buffer=carla_image.raw_data)

        return carla_image_data_array, 'bgra8'


class DepthCamera(Camera):

    """
    Camera implementation details for depth camera
    """

    def __init__(self, uid, name, parent, relative_spawn_pose, node, carla_actor, synchronous_mode):
        super(DepthCamera, self).__init__(uid=uid,
                                          name=name,
                                          parent=parent,
                                          relative_spawn_pose=relative_spawn_pose,
                                          node=node,
                                          carla_actor=carla_actor,
                                          synchronous_mode=synchronous_mode)
        self.listen()

    def get_carla_image_data_array(self, carla_image):
        """
        Convert the carla depth image to a linear depth image
        """
        bgra_image = numpy.ndarray(
            shape=(carla_image.height, carla_image.width, 4),
            dtype=numpy.uint8, buffer=carla_image.raw_data)

        scales = numpy.array([65536.0, 256.0, 1.0, 0]) / (256**3 - 1) * 1000
        depth_image = numpy.dot(bgra_image, scales).astype(numpy.float32)

        return depth_image, 'passthrough'


class SemanticSegmentationCamera(Camera):

    """
    Camera implementation details for segmentation camera
    """

    def __init__(self, uid, name, parent, relative_spawn_pose, node, carla_actor, synchronous_mode):
        super(SemanticSegmentationCamera, self).__init__(uid=uid,
                                                         name=name,
                                                         parent=parent,
                                                         relative_spawn_pose=relative_spawn_pose,
                                                         node=node,
                                                         synchronous_mode=synchronous_mode,
                                                         carla_actor=carla_actor)
        self.listen()

    def get_carla_image_data_array(self, carla_image):
        """
        Convert the segmentation camera raw image to the city scapes palette image
        """
        carla_image.convert(carla.ColorConverter.CityScapesPalette)
        carla_image_data_array = numpy.ndarray(
            shape=(carla_image.height, carla_image.width, 4),
            dtype=numpy.uint8, buffer=carla_image.raw_data)
        return carla_image_data_array, 'bgra8'


class DVSCamera(Camera):

    """
    Sensor implementation details for dvs cameras
    """

    def __init__(self, uid, name, parent, relative_spawn_pose, node, carla_actor, synchronous_mode):
        super(DVSCamera, self).__init__(uid=uid,
                                        name=name,
                                        parent=parent,
                                        relative_spawn_pose=relative_spawn_pose,
                                        node=node,
                                        carla_actor=carla_actor,
                                        synchronous_mode=synchronous_mode,
                                        is_event_sensor=True)

        self._dvs_events = None
        self.dvs_camera_publisher = node.new_publisher(PointCloud2,
                                                       self.get_topic_prefix() +
                                                       '/events', qos_profile=10)
        self.listen()

    def destroy(self):
        super(DVSCamera, self).destroy()
        self.node.destroy_publisher(self.dvs_camera_publisher)

    def sensor_data_updated(self, carla_dvs_event_array):
        """
        Function to transform the received DVS event array into a ROS message
        """
        super(DVSCamera, self).sensor_data_updated(carla_dvs_event_array)

        header = self.get_msg_header(timestamp=carla_dvs_event_array.timestamp)
        fields = [
            PointField(name='x', offset=0, datatype=PointField.UINT16, count=1),
            PointField(name='y', offset=2, datatype=PointField.UINT16, count=1),
            PointField(name='t', offset=4, datatype=PointField.FLOAT64, count=1),
            PointField(name='pol', offset=12, datatype=PointField.INT8, count=1)
        ]

        dvs_events_msg = create_cloud(header, fields, self._dvs_events.tolist())
        self.dvs_camera_publisher.publish(dvs_events_msg)

    def get_carla_image_data_array(self, carla_dvs_event_array):
        """
        Convert the carla dvs event array to a numpy data array
        """
        self._dvs_events = numpy.frombuffer(carla_dvs_event_array.raw_data,
                                            dtype=numpy.dtype([
                                                ('x', numpy.uint16),
                                                ('y', numpy.uint16),
                                                ('t', numpy.int64),
                                                ('pol', numpy.bool)
                                            ]))
        carla_image_data_array = numpy.zeros(
            (carla_dvs_event_array.height, carla_dvs_event_array.width, 3),
            dtype=numpy.uint8)
        # Blue is positive, red is negative
        carla_image_data_array[self._dvs_events[:]['y'], self._dvs_events[:]['x'],
                               self._dvs_events[:]['pol'] * 2] = 255

        return carla_image_data_array, 'bgr8'