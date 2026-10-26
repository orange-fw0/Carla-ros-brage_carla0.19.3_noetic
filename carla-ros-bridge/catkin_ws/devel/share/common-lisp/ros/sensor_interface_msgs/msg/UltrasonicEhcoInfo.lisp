; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicEhcoInfo.msg.html

(cl:defclass <UltrasonicEhcoInfo> (roslisp-msg-protocol:ros-message)
  ((uss_echo_distance
    :reader uss_echo_distance
    :initarg :uss_echo_distance
    :type cl:float
    :initform 0.0)
   (uss_echo_width
    :reader uss_echo_width
    :initarg :uss_echo_width
    :type cl:integer
    :initform 0))
)

(cl:defclass UltrasonicEhcoInfo (<UltrasonicEhcoInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicEhcoInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicEhcoInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicEhcoInfo> is deprecated: use sensor_interface_msgs-msg:UltrasonicEhcoInfo instead.")))

(cl:ensure-generic-function 'uss_echo_distance-val :lambda-list '(m))
(cl:defmethod uss_echo_distance-val ((m <UltrasonicEhcoInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_distance-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_distance instead.")
  (uss_echo_distance m))

(cl:ensure-generic-function 'uss_echo_width-val :lambda-list '(m))
(cl:defmethod uss_echo_width-val ((m <UltrasonicEhcoInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_echo_width-val is deprecated.  Use sensor_interface_msgs-msg:uss_echo_width instead.")
  (uss_echo_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicEhcoInfo>) ostream)
  "Serializes a message object of type '<UltrasonicEhcoInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'uss_echo_distance))))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicEhcoInfo>) istream)
  "Deserializes a message object of type '<UltrasonicEhcoInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'uss_echo_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uss_echo_width)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicEhcoInfo>)))
  "Returns string type for a message object of type '<UltrasonicEhcoInfo>"
  "sensor_interface_msgs/UltrasonicEhcoInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicEhcoInfo)))
  "Returns string type for a message object of type 'UltrasonicEhcoInfo"
  "sensor_interface_msgs/UltrasonicEhcoInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicEhcoInfo>)))
  "Returns md5sum for a message object of type '<UltrasonicEhcoInfo>"
  "0374e629b521929a28504f82c65b703d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicEhcoInfo)))
  "Returns md5sum for a message object of type 'UltrasonicEhcoInfo"
  "0374e629b521929a28504f82c65b703d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicEhcoInfo>)))
  "Returns full string definition for message of type '<UltrasonicEhcoInfo>"
  (cl:format cl:nil "float32 uss_echo_distance~%uint64 uss_echo_width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicEhcoInfo)))
  "Returns full string definition for message of type 'UltrasonicEhcoInfo"
  (cl:format cl:nil "float32 uss_echo_distance~%uint64 uss_echo_width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicEhcoInfo>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicEhcoInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicEhcoInfo
    (cl:cons ':uss_echo_distance (uss_echo_distance msg))
    (cl:cons ':uss_echo_width (uss_echo_width msg))
))
