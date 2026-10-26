; Auto-generated. Do not edit!


(cl:in-package v2x_msgs-msg)


;//! \htmlinclude V2xIntersectionData.msg.html

(cl:defclass <V2xIntersectionData> (roslisp-msg-protocol:ros-message)
  ((intersection_id
    :reader intersection_id
    :initarg :intersection_id
    :type cl:integer
    :initform 0)
   (enter_angle
    :reader enter_angle
    :initarg :enter_angle
    :type cl:float
    :initform 0.0)
   (exit_angle
    :reader exit_angle
    :initarg :exit_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass V2xIntersectionData (<V2xIntersectionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2xIntersectionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2xIntersectionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name v2x_msgs-msg:<V2xIntersectionData> is deprecated: use v2x_msgs-msg:V2xIntersectionData instead.")))

(cl:ensure-generic-function 'intersection_id-val :lambda-list '(m))
(cl:defmethod intersection_id-val ((m <V2xIntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:intersection_id-val is deprecated.  Use v2x_msgs-msg:intersection_id instead.")
  (intersection_id m))

(cl:ensure-generic-function 'enter_angle-val :lambda-list '(m))
(cl:defmethod enter_angle-val ((m <V2xIntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:enter_angle-val is deprecated.  Use v2x_msgs-msg:enter_angle instead.")
  (enter_angle m))

(cl:ensure-generic-function 'exit_angle-val :lambda-list '(m))
(cl:defmethod exit_angle-val ((m <V2xIntersectionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader v2x_msgs-msg:exit_angle-val is deprecated.  Use v2x_msgs-msg:exit_angle instead.")
  (exit_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2xIntersectionData>) ostream)
  "Serializes a message object of type '<V2xIntersectionData>"
  (cl:let* ((signed (cl:slot-value msg 'intersection_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'enter_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'exit_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2xIntersectionData>) istream)
  "Deserializes a message object of type '<V2xIntersectionData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intersection_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enter_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'exit_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2xIntersectionData>)))
  "Returns string type for a message object of type '<V2xIntersectionData>"
  "v2x_msgs/V2xIntersectionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2xIntersectionData)))
  "Returns string type for a message object of type 'V2xIntersectionData"
  "v2x_msgs/V2xIntersectionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2xIntersectionData>)))
  "Returns md5sum for a message object of type '<V2xIntersectionData>"
  "0f61aadbc50212199e203c182bad568f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2xIntersectionData)))
  "Returns md5sum for a message object of type 'V2xIntersectionData"
  "0f61aadbc50212199e203c182bad568f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2xIntersectionData>)))
  "Returns full string definition for message of type '<V2xIntersectionData>"
  (cl:format cl:nil "int32 intersection_id~%float64 enter_angle~%float64 exit_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2xIntersectionData)))
  "Returns full string definition for message of type 'V2xIntersectionData"
  (cl:format cl:nil "int32 intersection_id~%float64 enter_angle~%float64 exit_angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2xIntersectionData>))
  (cl:+ 0
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2xIntersectionData>))
  "Converts a ROS message object to a list"
  (cl:list 'V2xIntersectionData
    (cl:cons ':intersection_id (intersection_id msg))
    (cl:cons ':enter_angle (enter_angle msg))
    (cl:cons ':exit_angle (exit_angle msg))
))
