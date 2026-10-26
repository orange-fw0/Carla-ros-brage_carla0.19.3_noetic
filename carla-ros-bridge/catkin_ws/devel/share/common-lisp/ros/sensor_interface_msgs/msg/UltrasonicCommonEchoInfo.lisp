; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicCommonEchoInfo.msg.html

(cl:defclass <UltrasonicCommonEchoInfo> (roslisp-msg-protocol:ros-message)
  ((uss_echo_data
    :reader uss_echo_data
    :initarg :uss_echo_data
    :type (cl:vector sensor_interface_msgs-msg:CommonUssEhcoData)
   :initform (cl:make-array 0 :element-type 'sensor_interface_msgs-msg:CommonUssEhcoData :initial-element (cl:make-instance 'sensor_interface_msgs-msg:CommonUssEhcoData)))
   (uss_echo_status
    :reader uss_echo_status
    :initarg :uss_echo_status
    :type sensor_interface_msgs-msg:UltrasonicEchoStatus
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicEchoStatus))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0))
)

(cl:defclass UltrasonicCommonEchoInfo (<UltrasonicCommonEchoInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicCommonEchoInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicCommonEchoInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicCommonEchoInfo> is deprecated: use sensor_interface_msgs-msg:UltrasonicCommonEchoInfo instead.")))

(cl:ensure-generic-function 'uss_echo_data-val :lambda-list '(m))
(cl:defmethod uss_echo_data-val ((m <UltrasonicCommonEchoInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_data-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_data instead.")
  (uss_echo_data m))

(cl:ensure-generic-function 'uss_echo_status-val :lambda-list '(m))
(cl:defmethod uss_echo_status-val ((m <UltrasonicCommonEchoInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_status-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_status instead.")
  (uss_echo_status m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <UltrasonicCommonEchoInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved-val is deprecated.  Use sensor_interface_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicCommonEchoInfo>) ostream)
  "Serializes a message object of type '<UltrasonicCommonEchoInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uss_echo_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'uss_echo_data))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uss_echo_status) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicCommonEchoInfo>) istream)
  "Deserializes a message object of type '<UltrasonicCommonEchoInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uss_echo_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uss_echo_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_interface_msgs-msg:CommonUssEhcoData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uss_echo_status) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicCommonEchoInfo>)))
  "Returns string type for a message object of type '<UltrasonicCommonEchoInfo>"
  "sensor_interface_msgs/UltrasonicCommonEchoInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicCommonEchoInfo)))
  "Returns string type for a message object of type 'UltrasonicCommonEchoInfo"
  "sensor_interface_msgs/UltrasonicCommonEchoInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicCommonEchoInfo>)))
  "Returns md5sum for a message object of type '<UltrasonicCommonEchoInfo>"
  "53b64009fde5f7b2c7aaa395fdcc7b1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicCommonEchoInfo)))
  "Returns md5sum for a message object of type 'UltrasonicCommonEchoInfo"
  "53b64009fde5f7b2c7aaa395fdcc7b1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicCommonEchoInfo>)))
  "Returns full string definition for message of type '<UltrasonicCommonEchoInfo>"
  (cl:format cl:nil "sensor_interface_msgs/CommonUssEhcoData[] uss_echo_data~%sensor_interface_msgs/UltrasonicEchoStatus uss_echo_status~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/CommonUssEhcoData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 uss_echo_distance~%float32 uss_echo_prob~%uint64 uss_echo_width~%uint16 first_echo_amplitude~%uint16 uss_rt_width~%uint16 uss_echo_quality~%uint16 echo_send_id~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEchoStatus~%uint8 uss_status~%int16 uss_temperature~%uint64 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicCommonEchoInfo)))
  "Returns full string definition for message of type 'UltrasonicCommonEchoInfo"
  (cl:format cl:nil "sensor_interface_msgs/CommonUssEhcoData[] uss_echo_data~%sensor_interface_msgs/UltrasonicEchoStatus uss_echo_status~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/CommonUssEhcoData~%uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 uss_echo_distance~%float32 uss_echo_prob~%uint64 uss_echo_width~%uint16 first_echo_amplitude~%uint16 uss_rt_width~%uint16 uss_echo_quality~%uint16 echo_send_id~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicEchoStatus~%uint8 uss_status~%int16 uss_temperature~%uint64 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicCommonEchoInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uss_echo_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uss_echo_status))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicCommonEchoInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicCommonEchoInfo
    (cl:cons ':uss_echo_data (uss_echo_data msg))
    (cl:cons ':uss_echo_status (uss_echo_status msg))
    (cl:cons ':reserved (reserved msg))
))
