; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude AccelerationRange.msg.html

(cl:defclass <AccelerationRange> (roslisp-msg-protocol:ros-message)
  ((max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0)
   (min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0))
)

(cl:defclass AccelerationRange (<AccelerationRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccelerationRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccelerationRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<AccelerationRange> is deprecated: use planning_msgs-msg:AccelerationRange instead.")))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <AccelerationRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:max-val is deprecated.  Use planning_msgs-msg:max instead.")
  (max m))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <AccelerationRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:min-val is deprecated.  Use planning_msgs-msg:min instead.")
  (min m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccelerationRange>) ostream)
  "Serializes a message object of type '<AccelerationRange>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccelerationRange>) istream)
  "Deserializes a message object of type '<AccelerationRange>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccelerationRange>)))
  "Returns string type for a message object of type '<AccelerationRange>"
  "planning_msgs/AccelerationRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccelerationRange)))
  "Returns string type for a message object of type 'AccelerationRange"
  "planning_msgs/AccelerationRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccelerationRange>)))
  "Returns md5sum for a message object of type '<AccelerationRange>"
  "1be1f057ba1e6e938ede7aada413094e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccelerationRange)))
  "Returns md5sum for a message object of type 'AccelerationRange"
  "1be1f057ba1e6e938ede7aada413094e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccelerationRange>)))
  "Returns full string definition for message of type '<AccelerationRange>"
  (cl:format cl:nil "float64 max~%float64 min~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccelerationRange)))
  "Returns full string definition for message of type 'AccelerationRange"
  (cl:format cl:nil "float64 max~%float64 min~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccelerationRange>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccelerationRange>))
  "Converts a ROS message object to a list"
  (cl:list 'AccelerationRange
    (cl:cons ':max (max msg))
    (cl:cons ':min (min msg))
))
