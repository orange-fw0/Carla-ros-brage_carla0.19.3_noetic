; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude CameraServiceStatusUpdateRequest.msg.html

(cl:defclass <CameraServiceStatusUpdateRequest> (roslisp-msg-protocol:ros-message)
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
   (video_status
    :reader video_status
    :initarg :video_status
    :type (cl:vector sensor_interface_msgs-msg:VideoStatus)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:VideoStatus :initial-element (cl:make-instance 'sensor_interface_msgs-msg:VideoStatus)))
   (additional_info
    :reader additional_info
    :initarg :additional_info
    :type cl:string
    :initform ""))
)

(cl:defclass CameraServiceStatusUpdateRequest (<CameraServiceStatusUpdateRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraServiceStatusUpdateRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraServiceStatusUpdateRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<CameraServiceStatusUpdateRequest> is deprecated: use sensor_interface_msgs-msg:CameraServiceStatusUpdateRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CameraServiceStatusUpdateRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <CameraServiceStatusUpdateRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'video_status-val :lambda-list '(m))
(cl:defmethod video_status-val ((m <CameraServiceStatusUpdateRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:video_status-val is deprecated.  Use sensor_interface_msgs-msg:video_status instead.")
  (video_status m))

(cl:ensure-generic-function 'additional_info-val :lambda-list '(m))
(cl:defmethod additional_info-val ((m <CameraServiceStatusUpdateRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:additional_info-val is deprecated.  Use sensor_interface_msgs-msg:additional_info instead.")
  (additional_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraServiceStatusUpdateRequest>) ostream)
  "Serializes a message object of type '<CameraServiceStatusUpdateRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'video_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'video_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'additional_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'additional_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraServiceStatusUpdateRequest>) istream)
  "Deserializes a message object of type '<CameraServiceStatusUpdateRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'video_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'video_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:VideoStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'additional_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'additional_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraServiceStatusUpdateRequest>)))
  "Returns string type for a message object of type '<CameraServiceStatusUpdateRequest>"
  "sensor_interface_msgs/CameraServiceStatusUpdateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraServiceStatusUpdateRequest)))
  "Returns string type for a message object of type 'CameraServiceStatusUpdateRequest"
  "sensor_interface_msgs/CameraServiceStatusUpdateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraServiceStatusUpdateRequest>)))
  "Returns md5sum for a message object of type '<CameraServiceStatusUpdateRequest>"
  "2ca3f9254e207d2bb283878a5ac8e074")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraServiceStatusUpdateRequest)))
  "Returns md5sum for a message object of type 'CameraServiceStatusUpdateRequest"
  "2ca3f9254e207d2bb283878a5ac8e074")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraServiceStatusUpdateRequest>)))
  "Returns full string definition for message of type '<CameraServiceStatusUpdateRequest>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/CameraServiceStatusMeta meta~%sensor_interface_msgs/VideoStatus[] video_status~%string additional_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/CameraServiceStatusMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/VideoStatus~%uint8 AVM_SURROUND = 0~%uint8 AVM_ARROUND = 1~%uint8 DVR = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 service~%uint16 status~%perception_interface_msgs/CameraSourceEnum[] camera_name_list~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraServiceStatusUpdateRequest)))
  "Returns full string definition for message of type 'CameraServiceStatusUpdateRequest"
  (cl:format cl:nil "std_msgs/Header header~%sensor_interface_msgs/CameraServiceStatusMeta meta~%sensor_interface_msgs/VideoStatus[] video_status~%string additional_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/CameraServiceStatusMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/VideoStatus~%uint8 AVM_SURROUND = 0~%uint8 AVM_ARROUND = 1~%uint8 DVR = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 service~%uint16 status~%perception_interface_msgs/CameraSourceEnum[] camera_name_list~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/CameraSourceEnum~%uint8 CAMERA_SOURCE_FRONT_FAR = 0~%uint8 CAMERA_SOURCE_FRONT_MID = 1~%uint8 CAMERA_SOURCE_FRONT_WIDE = 2~%uint8 CAMERA_SOURCE_LEFT_FRONT = 3~%uint8 CAMERA_SOURCE_LEFT_REAR = 4~%uint8 CAMERA_SOURCE_REAR_MID = 5~%uint8 CAMERA_SOURCE_REAR_MID_UP = 6~%uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7~%uint8 CAMERA_SOURCE_RIGHT_FRONT = 8~%uint8 CAMERA_SOURCE_RIGHT_REAR = 9~%uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10~%uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11~%uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12~%uint8 CAMERA_SOURCE_REAR_FISHEYE = 13~%uint8 CAMERA_SOURCE_FISHEYE = 14~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15~%uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17~%uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19~%uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20~%uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21~%uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22~%uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23~%uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24~%uint8 CAMERA_SOURCE_BEV = 25~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraServiceStatusUpdateRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'video_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'additional_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraServiceStatusUpdateRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraServiceStatusUpdateRequest
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':video_status (video_status msg))
    (cl:cons ':additional_info (additional_info msg))
))
