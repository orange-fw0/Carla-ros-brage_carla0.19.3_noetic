; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude StopLine.msg.html

(cl:defclass <StopLine> (roslisp-msg-protocol:ros-message)
  ((distance_to_stop_line
    :reader distance_to_stop_line
    :initarg :distance_to_stop_line
    :type cl:float
    :initform 0.0)
   (distance_buffer
    :reader distance_buffer
    :initarg :distance_buffer
    :type cl:float
    :initform 0.0))
)

(cl:defclass StopLine (<StopLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<StopLine> is deprecated: use worldmodel_msgs-msg:StopLine instead.")))

(cl:ensure-generic-function 'distance_to_stop_line-val :lambda-list '(m))
(cl:defmethod distance_to_stop_line-val ((m <StopLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_to_stop_line-val is deprecated.  Use worldmodel_msgs-msg:distance_to_stop_line instead.")
  (distance_to_stop_line m))

(cl:ensure-generic-function 'distance_buffer-val :lambda-list '(m))
(cl:defmethod distance_buffer-val ((m <StopLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance_buffer-val is deprecated.  Use worldmodel_msgs-msg:distance_buffer instead.")
  (distance_buffer m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopLine>) ostream)
  "Serializes a message object of type '<StopLine>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_to_stop_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_buffer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopLine>) istream)
  "Deserializes a message object of type '<StopLine>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_stop_line) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_buffer) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopLine>)))
  "Returns string type for a message object of type '<StopLine>"
  "worldmodel_msgs/StopLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopLine)))
  "Returns string type for a message object of type 'StopLine"
  "worldmodel_msgs/StopLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopLine>)))
  "Returns md5sum for a message object of type '<StopLine>"
  "63b4138b35d12a34bf5c6ed6e21df141")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopLine)))
  "Returns md5sum for a message object of type 'StopLine"
  "63b4138b35d12a34bf5c6ed6e21df141")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopLine>)))
  "Returns full string definition for message of type '<StopLine>"
  (cl:format cl:nil "float64 distance_to_stop_line~%float64 distance_buffer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopLine)))
  "Returns full string definition for message of type 'StopLine"
  (cl:format cl:nil "float64 distance_to_stop_line~%float64 distance_buffer~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopLine>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopLine>))
  "Converts a ROS message object to a list"
  (cl:list 'StopLine
    (cl:cons ':distance_to_stop_line (distance_to_stop_line msg))
    (cl:cons ':distance_buffer (distance_buffer msg))
))
