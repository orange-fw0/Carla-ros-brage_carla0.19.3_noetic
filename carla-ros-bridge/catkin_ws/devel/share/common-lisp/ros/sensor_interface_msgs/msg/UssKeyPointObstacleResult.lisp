; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UssKeyPointObstacleResult.msg.html

(cl:defclass <UssKeyPointObstacleResult> (roslisp-msg-protocol:ros-message)
  ((meta
    :reader meta
    :initarg :meta
    :type sensor_interface_msgs-msg:UltrasonicResultMeta
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicResultMeta))
   (uss_obstacle_data
    :reader uss_obstacle_data
    :initarg :uss_obstacle_data
    :type sensor_interface_msgs-msg:UssKeyPointObstacleData
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssKeyPointObstacleData))
   (uss_rt_obstacle_pts
    :reader uss_rt_obstacle_pts
    :initarg :uss_rt_obstacle_pts
    :type sensor_interface_msgs-msg:UssRtObstaclePtsData
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UssRtObstaclePtsData)))
)

(cl:defclass UssKeyPointObstacleResult (<UssKeyPointObstacleResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UssKeyPointObstacleResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UssKeyPointObstacleResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UssKeyPointObstacleResult> is deprecated: use sensor_interface_msgs-msg:UssKeyPointObstacleResult instead.")))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <UssKeyPointObstacleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'uss_obstacle_data-val :lambda-list '(m))
(cl:defmethod uss_obstacle_data-val ((m <UssKeyPointObstacleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_obstacle_data-val is deprecated.  Use sensor_interface_msgs-msg:uss_obstacle_data instead.")
  (uss_obstacle_data m))

(cl:ensure-generic-function 'uss_rt_obstacle_pts-val :lambda-list '(m))
(cl:defmethod uss_rt_obstacle_pts-val ((m <UssKeyPointObstacleResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_rt_obstacle_pts-val is deprecated.  Use sensor_interface_msgs-msg:uss_rt_obstacle_pts instead.")
  (uss_rt_obstacle_pts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UssKeyPointObstacleResult>) ostream)
  "Serializes a message object of type '<UssKeyPointObstacleResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_obstacle_data) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_rt_obstacle_pts) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UssKeyPointObstacleResult>) istream)
  "Deserializes a message object of type '<UssKeyPointObstacleResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_obstacle_data) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_rt_obstacle_pts) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UssKeyPointObstacleResult>)))
  "Returns string type for a message object of type '<UssKeyPointObstacleResult>"
  "sensor_interface_msgs/UssKeyPointObstacleResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UssKeyPointObstacleResult)))
  "Returns string type for a message object of type 'UssKeyPointObstacleResult"
  "sensor_interface_msgs/UssKeyPointObstacleResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UssKeyPointObstacleResult>)))
  "Returns md5sum for a message object of type '<UssKeyPointObstacleResult>"
  "6dfc52429dd187995de32beb5bd29f07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UssKeyPointObstacleResult)))
  "Returns md5sum for a message object of type 'UssKeyPointObstacleResult"
  "6dfc52429dd187995de32beb5bd29f07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UssKeyPointObstacleResult>)))
  "Returns full string definition for message of type '<UssKeyPointObstacleResult>"
  (cl:format cl:nil "sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UssKeyPointObstacleData uss_obstacle_data~%sensor_interface_msgs/UssRtObstaclePtsData uss_rt_obstacle_pts~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UssKeyPointObstacleData~%sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture~%sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info~%~%================================================================================~%MSG: sensor_interface_msgs/UssObstaclePosture~%uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObstacleInfo~%uint64 timestamp~%float32 key_point_probability~%sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%================================================================================~%MSG: sensor_interface_msgs/UssRtObstaclePtsData~%sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture~%sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UssKeyPointObstacleResult)))
  "Returns full string definition for message of type 'UssKeyPointObstacleResult"
  (cl:format cl:nil "sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UssKeyPointObstacleData uss_obstacle_data~%sensor_interface_msgs/UssRtObstaclePtsData uss_rt_obstacle_pts~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UssKeyPointObstacleData~%sensor_interface_msgs/UssObstaclePosture uss_obstacle_posture~%sensor_interface_msgs/UltrasonicObstacleInfo[] uss_obstacle_info~%~%================================================================================~%MSG: sensor_interface_msgs/UssObstaclePosture~%uint64 timestamp~%float32 posture_x~%float32 posture_y~%float32 posture_theta~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicObstacleInfo~%uint64 timestamp~%float32 key_point_probability~%sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data~%~%================================================================================~%MSG: sensor_interface_msgs/ObstacleKeyPointData~%float32 point_x~%float32 point_y~%~%================================================================================~%MSG: sensor_interface_msgs/UssRtObstaclePtsData~%sensor_interface_msgs/UssObstaclePosture uss_obstacle_pts_posture~%sensor_interface_msgs/ObstacleKeyPointData[] uss_rt_obstacle_pts_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UssKeyPointObstacleResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_obstacle_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_rt_obstacle_pts))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UssKeyPointObstacleResult>))
  "Converts a ROS message object to a list"
  (cl:list 'UssKeyPointObstacleResult
    (cl:cons ':meta (meta msg))
    (cl:cons ':uss_obstacle_data (uss_obstacle_data msg))
    (cl:cons ':uss_rt_obstacle_pts (uss_rt_obstacle_pts msg))
))
