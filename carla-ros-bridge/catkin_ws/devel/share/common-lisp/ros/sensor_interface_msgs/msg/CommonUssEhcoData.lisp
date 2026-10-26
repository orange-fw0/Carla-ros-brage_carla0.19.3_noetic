; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude CommonUssEhcoData.msg.html

(cl:defclass <CommonUssEhcoData> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (meta
    :reader meta
    :initarg :meta
    :type sensor_interface_msgs-msg:UltrasonicResultMeta
    :initform (cl:make-instance 'sensor_interface_msgs-msg:UltrasonicResultMeta))
   (uss_echo_distance
    :reader uss_echo_distance
    :initarg :uss_echo_distance
    :type cl:float
    :initform 0.0)
   (uss_echo_prob
    :reader uss_echo_prob
    :initarg :uss_echo_prob
    :type cl:float
    :initform 0.0)
   (uss_echo_width
    :reader uss_echo_width
    :initarg :uss_echo_width
    :type cl:integer
    :initform 0)
   (first_echo_amplitude
    :reader first_echo_amplitude
    :initarg :first_echo_amplitude
    :type cl:fixnum
    :initform 0)
   (uss_rt_width
    :reader uss_rt_width
    :initarg :uss_rt_width
    :type cl:fixnum
    :initform 0)
   (uss_echo_quality
    :reader uss_echo_quality
    :initarg :uss_echo_quality
    :type cl:fixnum
    :initform 0)
   (echo_send_id
    :reader echo_send_id
    :initarg :echo_send_id
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0))
)

(cl:defclass CommonUssEhcoData (<CommonUssEhcoData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommonUssEhcoData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommonUssEhcoData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<CommonUssEhcoData> is deprecated: use sensor_interface_msgs-msg:CommonUssEhcoData instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:available-val is deprecated.  Use sensor_interface_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:meta-val is deprecated.  Use sensor_interface_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'uss_echo_distance-val :lambda-list '(m))
(cl:defmethod uss_echo_distance-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_distance-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_distance instead.")
  (uss_echo_distance m))

(cl:ensure-generic-function 'uss_echo_prob-val :lambda-list '(m))
(cl:defmethod uss_echo_prob-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_prob-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_prob instead.")
  (uss_echo_prob m))

(cl:ensure-generic-function 'uss_echo_width-val :lambda-list '(m))
(cl:defmethod uss_echo_width-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_width-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_width instead.")
  (uss_echo_width m))

(cl:ensure-generic-function 'first_echo_amplitude-val :lambda-list '(m))
(cl:defmethod first_echo_amplitude-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:first_echo_amplitude-val is deprecated.  Use sensor_interface_msgs-msg:first_echo_amplitude instead.")
  (first_echo_amplitude m))

(cl:ensure-generic-function 'uss_rt_width-val :lambda-list '(m))
(cl:defmethod uss_rt_width-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_rt_width-val is deprecated.  Use sensor_interface_msgs-msg:uss_rt_width instead.")
  (uss_rt_width m))

(cl:ensure-generic-function 'uss_echo_quality-val :lambda-list '(m))
(cl:defmethod uss_echo_quality-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_quality-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_quality instead.")
  (uss_echo_quality m))

(cl:ensure-generic-function 'echo_send_id-val :lambda-list '(m))
(cl:defmethod echo_send_id-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:echo_send_id-val is deprecated.  Use sensor_interface_msgs-msg:echo_send_id instead.")
  (echo_send_id m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <CommonUssEhcoData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved-val is deprecated.  Use sensor_interface_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommonUssEhcoData>) ostream)
  "Serializes a message object of type '<CommonUssEhcoData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'uss_echo_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'uss_echo_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_echo_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uss_echo_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uss_echo_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uss_echo_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uss_echo_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uss_echo_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uss_echo_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uss_echo_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first_echo_amplitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'first_echo_amplitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_rt_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uss_rt_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_echo_quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uss_echo_quality)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'echo_send_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'echo_send_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommonUssEhcoData>) istream)
  "Deserializes a message object of type '<CommonUssEhcoData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'uss_echo_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'uss_echo_prob) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'first_echo_amplitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'first_echo_amplitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_rt_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uss_rt_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_echo_quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uss_echo_quality)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'echo_send_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'echo_send_id)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommonUssEhcoData>)))
  "Returns string type for a message object of type '<CommonUssEhcoData>"
  "sensor_interface_msgs/CommonUssEhcoData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommonUssEhcoData)))
  "Returns string type for a message object of type 'CommonUssEhcoData"
  "sensor_interface_msgs/CommonUssEhcoData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommonUssEhcoData>)))
  "Returns md5sum for a message object of type '<CommonUssEhcoData>"
  "a8040a35339c7a69a482519e4981d6c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommonUssEhcoData)))
  "Returns md5sum for a message object of type 'CommonUssEhcoData"
  "a8040a35339c7a69a482519e4981d6c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommonUssEhcoData>)))
  "Returns full string definition for message of type '<CommonUssEhcoData>"
  (cl:format cl:nil "uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 uss_echo_distance~%float32 uss_echo_prob~%uint64 uss_echo_width~%uint16 first_echo_amplitude~%uint16 uss_rt_width~%uint16 uss_echo_quality~%uint16 echo_send_id~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommonUssEhcoData)))
  "Returns full string definition for message of type 'CommonUssEhcoData"
  (cl:format cl:nil "uint8 available~%sensor_interface_msgs/UltrasonicResultMeta meta~%float32 uss_echo_distance~%float32 uss_echo_prob~%uint64 uss_echo_width~%uint16 first_echo_amplitude~%uint16 uss_rt_width~%uint16 uss_echo_quality~%uint16 echo_send_id~%uint64 reserved~%~%================================================================================~%MSG: sensor_interface_msgs/UltrasonicResultMeta~%uint64 timestamp_us~%uint64 seq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommonUssEhcoData>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4
     4
     8
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommonUssEhcoData>))
  "Converts a ROS message object to a list"
  (cl:list 'CommonUssEhcoData
    (cl:cons ':available (available msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':uss_echo_distance (uss_echo_distance msg))
    (cl:cons ':uss_echo_prob (uss_echo_prob msg))
    (cl:cons ':uss_echo_width (uss_echo_width msg))
    (cl:cons ':first_echo_amplitude (first_echo_amplitude msg))
    (cl:cons ':uss_rt_width (uss_rt_width msg))
    (cl:cons ':uss_echo_quality (uss_echo_quality msg))
    (cl:cons ':echo_send_id (echo_send_id msg))
    (cl:cons ':reserved (reserved msg))
))
