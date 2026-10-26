;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::CameraServiceStatus)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'CameraServiceStatus (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::CAMERASERVICESTATUS")
  (make-package "SENSOR_INTERFACE_MSGS::CAMERASERVICESTATUS"))

(in-package "ROS")
;;//! \htmlinclude CameraServiceStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_interface_msgs::CameraServiceStatus
  :super ros::object
  :slots (_header _meta _camera_service_status_data ))

(defmethod sensor_interface_msgs::CameraServiceStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance sensor_interface_msgs::CameraServiceStatusMeta :init))
    ((:camera_service_status_data __camera_service_status_data) (instance sensor_interface_msgs::CameraServiceStatusData :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _camera_service_status_data __camera_service_status_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:camera_service_status_data
   (&rest __camera_service_status_data)
   (if (keywordp (car __camera_service_status_data))
       (send* _camera_service_status_data __camera_service_status_data)
     (progn
       (if __camera_service_status_data (setq _camera_service_status_data (car __camera_service_status_data)))
       _camera_service_status_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_interface_msgs/CameraServiceStatusMeta _meta
    (send _meta :serialization-length)
    ;; sensor_interface_msgs/CameraServiceStatusData _camera_service_status_data
    (send _camera_service_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_interface_msgs/CameraServiceStatusMeta _meta
       (send _meta :serialize s)
     ;; sensor_interface_msgs/CameraServiceStatusData _camera_service_status_data
       (send _camera_service_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_interface_msgs/CameraServiceStatusMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; sensor_interface_msgs/CameraServiceStatusData _camera_service_status_data
     (send _camera_service_status_data :deserialize buf ptr-) (incf ptr- (send _camera_service_status_data :serialization-length))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::CameraServiceStatus :md5sum-) "345ea10490afcd00ce445713b79c7983")
(setf (get sensor_interface_msgs::CameraServiceStatus :datatype-) "sensor_interface_msgs/CameraServiceStatus")
(setf (get sensor_interface_msgs::CameraServiceStatus :definition-)
      "std_msgs/Header header
sensor_interface_msgs/CameraServiceStatusMeta meta
sensor_interface_msgs/CameraServiceStatusData camera_service_status_data

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_interface_msgs/CameraServiceStatusMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/CameraServiceStatusData
sensor_interface_msgs/VideoStatus[] video_status
sensor_interface_msgs/CameraStatus[] camera_status
string[] reserved_infos

================================================================================
MSG: sensor_interface_msgs/VideoStatus
uint8 AVM_SURROUND = 0
uint8 AVM_ARROUND = 1
uint8 DVR = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 service
uint16 status
perception_interface_msgs/CameraSourceEnum[] camera_name_list
string reserved_info

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

================================================================================
MSG: sensor_interface_msgs/CameraStatus
perception_interface_msgs/CameraSourceEnum camera_name
uint16 status
string reserved_info

")



(provide :sensor_interface_msgs/CameraServiceStatus "345ea10490afcd00ce445713b79c7983")


