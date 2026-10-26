; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicPackage.msg.html

(cl:defclass <UltrasonicPackage> (roslisp-msg-protocol:ros-message)
  ((uss_base_info
    :reader uss_base_info
    :initarg :uss_base_info
    :type (cl:vector sensor_interface_msgs-msg:UltrasonicBaseInfo)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:UltrasonicBaseInfo :initial-element (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicBaseInfo)))
   (rolling_cnt
    :reader rolling_cnt
    :initarg :rolling_cnt
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UltrasonicPackage (<UltrasonicPackage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicPackage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicPackage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicPackage> is deprecated: use sensor_interface_msgs-msg:UltrasonicPackage instead.")))

(cl:ensure-generic-function 'uss_base_info-val :lambda-list '(m))
(cl:defmethod uss_base_info-val ((m <UltrasonicPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_base_info-val is deprecated.  Use sensor_interface_msgs-msg:uss_base_info instead.")
  (uss_base_info m))

(cl:ensure-generic-function 'rolling_cnt-val :lambda-list '(m))
(cl:defmethod rolling_cnt-val ((m <UltrasonicPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:rolling_cnt-val is deprecated.  Use sensor_interface_msgs-msg:rolling_cnt instead.")
  (rolling_cnt m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <UltrasonicPackage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved-val is deprecated.  Use sensor_interface_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<UltrasonicPackage>)))
    "Constants for message type '<UltrasonicPackage>"
  '((:FRONT_LEFT_SIDE . 0)
    (:FRONT_LEFT_CORNER . 1)
    (:FRONT_LEFT_CENTER . 2)
    (:FRONT_RIGHT_CENTER . 3)
    (:FRONT_RIGHT_CORNER . 4)
    (:FRONT_RIGHT_SIDE . 5)
    (:REAR_RIGHT_SIDE . 6)
    (:REAR_RIGHT_CORNER . 7)
    (:REAR_RIGHT_CENTER . 8)
    (:REAR_LEFT_CENTER . 9)
    (:REAR_LEFT_CORNER . 10)
    (:REAR_LEFT_SIDE . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'UltrasonicPackage)))
    "Constants for message type 'UltrasonicPackage"
  '((:FRONT_LEFT_SIDE . 0)
    (:FRONT_LEFT_CORNER . 1)
    (:FRONT_LEFT_CENTER . 2)
    (:FRONT_RIGHT_CENTER . 3)
    (:FRONT_RIGHT_CORNER . 4)
    (:FRONT_RIGHT_SIDE . 5)
    (:REAR_RIGHT_SIDE . 6)
    (:REAR_RIGHT_CORNER . 7)
    (:REAR_RIGHT_CENTER . 8)
    (:REAR_LEFT_CENTER . 9)
    (:REAR_LEFT_CORNER . 10)
    (:REAR_LEFT_SIDE . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicPackage>) ostream)
  "Serializes a message object of type '<UltrasonicPackage>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_base_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_base_info))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_cnt)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicPackage>) istream)
  "Deserializes a message object of type '<UltrasonicPackage>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_base_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_base_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicBaseInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_cnt)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicPackage>)))
  "Returns string type for a message object of type '<UltrasonicPackage>"
  "sensor_interface_msgs/UltrasonicPackage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicPackage)))
  "Returns string type for a message object of type 'UltrasonicPackage"
  "sensor_interface_msgs/UltrasonicPackage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicPackage>)))
  "Returns md5sum for a message object of type '<UltrasonicPackage>"
  "42fc979e3e904aff02c78cfbb89b32b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicPackage)))
  "Returns md5sum for a message object of type 'UltrasonicPackage"
  "42fc979e3e904aff02c78cfbb89b32b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicPackage>)))
  "Returns full string definition for message of type '<UltrasonicPackage>"
  (cl:format cl:nil "uint8 FRONT_LEFT_SIDE = 0~%uint8 FRONT_LEFT_CORNER = 1~%uint8 FRONT_LEFT_CENTER = 2~%uint8 FRONT_RIGHT_CENTER = 3~%uint8 FRONT_RIGHT_CORNER = 4~%uint8 FRONT_RIGHT_SIDE = 5~%uint8 REAR_RIGHT_SIDE = 6~%uint8 REAR_RIGHT_CORNER = 7~%uint8 REAR_RIGHT_CENTER = 8~%uint8 REAR_LEFT_CENTER = 9~%uint8 REAR_LEFT_CORNER = 10~%uint8 REAR_LEFT_SIDE = 11~%sensor_interface_msgs/UltrasonicBaseInfo[] uss_base_info~%uint8 rolling_cnt~%uint8[] reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicBaseInfo~%sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info~%uint16 first_echo_amplitude~%int16 uss_temperature~%uint64 timestamp_us~%uint8 burst_mode~%uint8 uss_rt_width~%uint8 uss_config_status~%string reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEhcoInfo~%float32 uss_echo_distance~%uint64 uss_echo_width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicPackage)))
  "Returns full string definition for message of type 'UltrasonicPackage"
  (cl:format cl:nil "uint8 FRONT_LEFT_SIDE = 0~%uint8 FRONT_LEFT_CORNER = 1~%uint8 FRONT_LEFT_CENTER = 2~%uint8 FRONT_RIGHT_CENTER = 3~%uint8 FRONT_RIGHT_CORNER = 4~%uint8 FRONT_RIGHT_SIDE = 5~%uint8 REAR_RIGHT_SIDE = 6~%uint8 REAR_RIGHT_CORNER = 7~%uint8 REAR_RIGHT_CENTER = 8~%uint8 REAR_LEFT_CENTER = 9~%uint8 REAR_LEFT_CORNER = 10~%uint8 REAR_LEFT_SIDE = 11~%sensor_interface_msgs/UltrasonicBaseInfo[] uss_base_info~%uint8 rolling_cnt~%uint8[] reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicBaseInfo~%sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info~%uint16 first_echo_amplitude~%int16 uss_temperature~%uint64 timestamp_us~%uint8 burst_mode~%uint8 uss_rt_width~%uint8 uss_config_status~%string reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEhcoInfo~%float32 uss_echo_distance~%uint64 uss_echo_width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicPackage>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_base_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicPackage>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicPackage
    (cl:cons ':uss_base_info (uss_base_info msg))
    (cl:cons ':rolling_cnt (rolling_cnt msg))
    (cl:cons ':reserved (reserved msg))
))
