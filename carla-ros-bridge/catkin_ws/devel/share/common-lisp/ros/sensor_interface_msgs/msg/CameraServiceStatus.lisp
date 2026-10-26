; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude CameraServiceStatus.msg.html

(cl:defclass <CameraServiceStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type sensor_interface_msgs-msg:CameraServiceStatusMeta
    :initform (cl:make-instance 'sensor_interface_msgs-msg:CameraServiceStatusMeta))
   (camera_service_status_data
    :reader camera_service_status_data
    :initarg :camera_service_status_data
    :type sensor_interface_msgs-msg:CameraServiceStatusData
    :initform (cl:make-instance 'sensor_interface_msgs-msg:CameraServiceStatusData)))
)

(cl:defclass CameraServiceStatus (<CameraServiceStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraServiceStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraServiceStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<CameraServiceStatus> is deprecated: use sensor_interface_msgs-msg:CameraServiceStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraServiceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <CameraServiceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'camera_service_status_data-val :lambda-list '(m))
(cl:defmethod camera_service_status_data-val ((m <CameraServiceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:camera_service_status_data-val is deprecated.  Use sensor_interface_msgs-msg:camera_service_status_data instead.")
  (camera_service_status_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraServiceStatus>) ostream)
  "Serializes a message object of type '<CameraServiceStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_service_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraServiceStatus>) istream)
  "Deserializes a message object of type '<CameraServiceStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_service_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraServiceStatus>)))
  "Returns string type for a message object of type '<CameraServiceStatus>"
  "sensor_interface_msgs/CameraServiceStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraServiceStatus)))
  "Returns string type for a message object of type 'CameraServiceStatus"
  "sensor_interface_msgs/CameraServiceStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraServiceStatus>)))
  "Returns md5sum for a message object of type '<CameraServiceStatus>"
  "345ea10490afcd00ce445713b79c7983")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraServiceStatus)))
  "Returns md5sum for a message object of type 'CameraServiceStatus"
  "345ea10490afcd00ce445713b79c7983")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraServiceStatus>)))
  "Returns full string definition for message of type '<CameraServiceStatus>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/CameraServiceStatusMeta meta~%sensor_interface_msgs/CameraServiceStatusData camera_service_status_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/CameraServiceStatusMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/CameraServiceStatusData~%sensor_interface_msgs/VideoStatus[] video_status~%sensor_interface_msgs/CameraStatus[] camera_status~%string[] reserved_infos~%~%================================================================================~%MSG: sensor_interface_msgs/VideoStatus~%uint8 AVM_SURROUND = 0~%uint8 AVM_ARROUND = 1~%uint8 DVR = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 service~%uint16 status~%perception_interface_msgs/CameraSourceEnum[] camera_name_list~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/CameraStatus~%perception_interface_msgs/CameraSourceEnum camera_name~%uint16 status~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraServiceStatus)))
  "Returns full string definition for message of type 'CameraServiceStatus"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/CameraServiceStatusMeta meta~%sensor_interface_msgs/CameraServiceStatusData camera_service_status_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/CameraServiceStatusMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/CameraServiceStatusData~%sensor_interface_msgs/VideoStatus[] video_status~%sensor_interface_msgs/CameraStatus[] camera_status~%string[] reserved_infos~%~%================================================================================~%MSG: sensor_interface_msgs/VideoStatus~%uint8 AVM_SURROUND = 0~%uint8 AVM_ARROUND = 1~%uint8 DVR = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 service~%uint16 status~%perception_interface_msgs/CameraSourceEnum[] camera_name_list~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%================================================================================~%MSG: sensor_interface_msgs/CameraStatus~%perception_interface_msgs/CameraSourceEnum camera_name~%uint16 status~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraServiceStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_service_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraServiceStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraServiceStatus
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':camera_service_status_data (camera_service_status_data msg))
))
