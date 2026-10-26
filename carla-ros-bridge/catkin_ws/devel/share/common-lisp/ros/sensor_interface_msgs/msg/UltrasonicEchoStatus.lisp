; Auto-generated. Do not edit!


(cl:in-package sensor_interface_msgs-msg)


;//! \htmlinclude UltrasonicEchoStatus.msg.html

(cl:defclass <UltrasonicEchoStatus> (roslisp-msg-protocol:ros-message)
  ((uss_status
    :reader uss_status
    :initarg :uss_status
    :type cl:fixnum
    :initform 0)
   (uss_temperature
    :reader uss_temperature
    :initarg :uss_temperature
    :type cl:fixnum
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:integer
    :initform 0))
)

(cl:defclass UltrasonicEchoStatus (<UltrasonicEchoStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UltrasonicEchoStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UltrasonicEchoStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_interface_msgs-msg:<UltrasonicEchoStatus> is deprecated: use sensor_interface_msgs-msg:UltrasonicEchoStatus instead.")))

(cl:ensure-generic-function 'uss_status-val :lambda-list '(m))
(cl:defmethod uss_status-val ((m <UltrasonicEchoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_status-val is deprecated.  Use sensor_interface_msgs-msg:uss_status instead.")
  (uss_status m))

(cl:ensure-generic-function 'uss_temperature-val :lambda-list '(m))
(cl:defmethod uss_temperature-val ((m <UltrasonicEchoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:uss_temperature-val is deprecated.  Use sensor_interface_msgs-msg:uss_temperature instead.")
  (uss_temperature m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <UltrasonicEchoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_interface_msgs-msg:reserved-val is deprecated.  Use sensor_interface_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UltrasonicEchoStatus>) ostream)
  "Serializes a message object of type '<UltrasonicEchoStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_status)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'uss_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'reserved)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UltrasonicEchoStatus>) istream)
  "Deserializes a message object of type '<UltrasonicEchoStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uss_status)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uss_temperature) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UltrasonicEchoStatus>)))
  "Returns string type for a message object of type '<UltrasonicEchoStatus>"
  "sensor_interface_msgs/UltrasonicEchoStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UltrasonicEchoStatus)))
  "Returns string type for a message object of type 'UltrasonicEchoStatus"
  "sensor_interface_msgs/UltrasonicEchoStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UltrasonicEchoStatus>)))
  "Returns md5sum for a message object of type '<UltrasonicEchoStatus>"
  "92066f99c351a98a053ffec5f86af339")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UltrasonicEchoStatus)))
  "Returns md5sum for a message object of type 'UltrasonicEchoStatus"
  "92066f99c351a98a053ffec5f86af339")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UltrasonicEchoStatus>)))
  "Returns full string definition for message of type '<UltrasonicEchoStatus>"
  (cl:format cl:nil "uint8 uss_status~%int16 uss_temperature~%uint64 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UltrasonicEchoStatus)))
  "Returns full string definition for message of type 'UltrasonicEchoStatus"
  (cl:format cl:nil "uint8 uss_status~%int16 uss_temperature~%uint64 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UltrasonicEchoStatus>))
  (cl:+ 0
     1
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UltrasonicEchoStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'UltrasonicEchoStatus
    (cl:cons ':uss_status (uss_status msg))
    (cl:cons ':uss_temperature (uss_temperature msg))
    (cl:cons ':reserved (reserved msg))
))
