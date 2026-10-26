; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicPackageInput.msg.html

(cl:defclass <UltrasonicPackageInput> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (proc_mode
    :reader proc_mode
    :initarg :proc_mode
    :type cl:integer
    :initform 0)
   (meta
    :reader meta
    :initarg :meta
    :type sensor_interface_msgs-msg:UltrasonicResultMeta
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicResultMeta))
   (uss_package
    :reader uss_package
    :initarg :uss_package
    :type (cl:vector sensor_interface_msgs-msg:UltrasonicPackage)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:UltrasonicPackage :initial-element (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicPackage)))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (uss_echo_info
    :reader uss_echo_info
    :initarg :uss_echo_info
    :type (cl:vector sensor_interface_msgs-msg:UltrasonicCommonEchoInfo)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:UltrasonicCommonEchoInfo :initial-element (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicCommonEchoInfo))))
)

(cl:defclass UltrasonicPackageInput (<UltrasonicPackageInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicPackageInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicPackageInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicPackageInput> is deprecated: use sensor_interface_msgs-msg:UltrasonicPackageInput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UltrasonicPackageInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:header-val is deprecated.  Use sensor_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'proc_mode-val :lambda-list '(m))
(cl:defmethod proc_mode-val ((m <UltrasonicPackageInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:proc_mode-val is deprecated.  Use sensor_interface_msgs-msg:proc_mode instead.")
  (proc_mode m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <UltrasonicPackageInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'uss_package-val :lambda-list '(m))
(cl:defmethod uss_package-val ((m <UltrasonicPackageInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_package-val is deprecated.  Use sensor_interface_msgs-msg:uss_package instead.")
  (uss_package m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <UltrasonicPackageInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:available-val is deprecated.  Use sensor_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'uss_echo_info-val :lambda-list '(m))
(cl:defmethod uss_echo_info-val ((m <UltrasonicPackageInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_info-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_info instead.")
  (uss_echo_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UltrasonicPackageInput>)))
    "Constants for message type '<UltrasonicPackageInput>"
  '((:ULTROSONIC_PACKAGEDATA . 0)
    (:COMMON_USS_OBSTACLE_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UltrasonicPackageInput)))
    "Constants for message type 'UltrasonicPackageInput"
  '((:ULTROSONIC_PACKAGEDATA . 0)
    (:COMMON_USS_OBSTACLE_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicPackageInput>) ostream)
  "Serializes a message object of type '<UltrasonicPackageInput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'proc_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_package))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_package))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_echo_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_echo_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicPackageInput>) istream)
  "Deserializes a message object of type '<UltrasonicPackageInput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'proc_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_package) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_package)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicPackage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_echo_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_echo_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicCommonEchoInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicPackageInput>)))
  "Returns string type for a message object of type '<UltrasonicPackageInput>"
  "sensor_interface_msgs/UltrasonicPackageInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicPackageInput)))
  "Returns string type for a message object of type 'UltrasonicPackageInput"
  "sensor_interface_msgs/UltrasonicPackageInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicPackageInput>)))
  "Returns md5sum for a message object of type '<UltrasonicPackageInput>"
  "389e0842a6dc00e52a7c0dfe1eebb25a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicPackageInput)))
  "Returns md5sum for a message object of type 'UltrasonicPackageInput"
  "389e0842a6dc00e52a7c0dfe1eebb25a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicPackageInput>)))
  "Returns full string definition for message of type '<UltrasonicPackageInput>"
  (cl:format cl:nil "uint8 ULTROSONIC_PACKAGEDATA = 0~%uint8 COMMON_USS_OBSTACLE_DATA = 1~%std_msgs/Header header~%int32 proc_mode~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UltrasonicPackage[] uss_package~%uint8 available~%sensor_interface_msgs/UltrasonicCommonEchoInfo[] uss_echo_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicPackage~%uint8 FRONT_LEFT_SIDE = 0~%uint8 FRONT_LEFT_CORNER = 1~%uint8 FRONT_LEFT_CENTER = 2~%uint8 FRONT_RIGHT_CENTER = 3~%uint8 FRONT_RIGHT_CORNER = 4~%uint8 FRONT_RIGHT_SIDE = 5~%uint8 REAR_RIGHT_SIDE = 6~%uint8 REAR_RIGHT_CORNER = 7~%uint8 REAR_RIGHT_CENTER = 8~%uint8 REAR_LEFT_CENTER = 9~%uint8 REAR_LEFT_CORNER = 10~%uint8 REAR_LEFT_SIDE = 11~%sensor_interface_msgs/UltrasonicBaseInfo[] uss_base_info~%uint8 rolling_cnt~%uint8[] reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicBaseInfo~%sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info~%uint16 first_echo_amplitude~%int16 uss_temperature~%uint64 timestamp_us~%uint8 burst_mode~%uint8 uss_rt_width~%uint8 uss_config_status~%string reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEhcoInfo~%float32 uss_echo_distance~%uint64 uss_echo_width~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicCommonEchoInfo~%sensor_interface_msgs/CommonUssEhcoData[] uss_echo_data~%sensor_interface_msgs/UltrasonicEchoStatus uss_echo_status~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/CommonUssEhcoData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 uss_echo_distance~%float32 uss_echo_prob~%uint64 uss_echo_width~%uint16 first_echo_amplitude~%uint16 uss_rt_width~%uint16 uss_echo_quality~%uint16 echo_send_id~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEchoStatus~%uint8 uss_status~%int16 uss_temperature~%uint64 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicPackageInput)))
  "Returns full string definition for message of type 'UltrasonicPackageInput"
  (cl:format cl:nil "uint8 ULTROSONIC_PACKAGEDATA = 0~%uint8 COMMON_USS_OBSTACLE_DATA = 1~%std_msgs/Header header~%int32 proc_mode~%sensor_interface_msgs/UltrasonicResultMeta meta~%sensor_interface_msgs/UltrasonicPackage[] uss_package~%uint8 available~%sensor_interface_msgs/UltrasonicCommonEchoInfo[] uss_echo_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicPackage~%uint8 FRONT_LEFT_SIDE = 0~%uint8 FRONT_LEFT_CORNER = 1~%uint8 FRONT_LEFT_CENTER = 2~%uint8 FRONT_RIGHT_CENTER = 3~%uint8 FRONT_RIGHT_CORNER = 4~%uint8 FRONT_RIGHT_SIDE = 5~%uint8 REAR_RIGHT_SIDE = 6~%uint8 REAR_RIGHT_CORNER = 7~%uint8 REAR_RIGHT_CENTER = 8~%uint8 REAR_LEFT_CENTER = 9~%uint8 REAR_LEFT_CORNER = 10~%uint8 REAR_LEFT_SIDE = 11~%sensor_interface_msgs/UltrasonicBaseInfo[] uss_base_info~%uint8 rolling_cnt~%uint8[] reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicBaseInfo~%sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info~%uint16 first_echo_amplitude~%int16 uss_temperature~%uint64 timestamp_us~%uint8 burst_mode~%uint8 uss_rt_width~%uint8 uss_config_status~%string reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEhcoInfo~%float32 uss_echo_distance~%uint64 uss_echo_width~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicCommonEchoInfo~%sensor_interface_msgs/CommonUssEhcoData[] uss_echo_data~%sensor_interface_msgs/UltrasonicEchoStatus uss_echo_status~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/CommonUssEhcoData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 uss_echo_distance~%float32 uss_echo_prob~%uint64 uss_echo_width~%uint16 first_echo_amplitude~%uint16 uss_rt_width~%uint16 uss_echo_quality~%uint16 echo_send_id~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEchoStatus~%uint8 uss_status~%int16 uss_temperature~%uint64 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicPackageInput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_package) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_echo_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicPackageInput>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicPackageInput
    (cl:cons ':header (header msg))
    (cl:cons ':proc_mode (proc_mode msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':uss_package (uss_package msg))
    (cl:cons ':available (available msg))
    (cl:cons ':uss_echo_info (uss_echo_info msg))
))
