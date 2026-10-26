; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude LeftWaitingArea.msg.html

(cl:defclass <LeftWaitingArea> (roslisp-msg-protocol:ros-message)
  ((existence
    :reader existence
    :initarg :existence
    :type cl:boolean
    :initform cl:nil)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass LeftWaitingArea (<LeftWaitingArea>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeftWaitingArea>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeftWaitingArea)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<LeftWaitingArea> is deprecated: use worldmodel_msgs-msg:LeftWaitingArea instead.")))

(cl:ensure-generic-function 'existence-val :lambda-list '(m))
(cl:defmethod existence-val ((m <LeftWaitingArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:existence-val is deprecated.  Use worldmodel_msgs-msg:existence instead.")
  (existence m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <LeftWaitingArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:length-val is deprecated.  Use worldmodel_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <LeftWaitingArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance-val is deprecated.  Use worldmodel_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeftWaitingArea>) ostream)
  "Serializes a message object of type '<LeftWaitingArea>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'existence) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeftWaitingArea>) istream)
  "Deserializes a message object of type '<LeftWaitingArea>"
    (cl:setf (cl:slot-value msg 'existence) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeftWaitingArea>)))
  "Returns string type for a message object of type '<LeftWaitingArea>"
  "worldmodel_msgs/LeftWaitingArea")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeftWaitingArea)))
  "Returns string type for a message object of type 'LeftWaitingArea"
  "worldmodel_msgs/LeftWaitingArea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeftWaitingArea>)))
  "Returns md5sum for a message object of type '<LeftWaitingArea>"
  "cc6673be16a143318e79f0eda95d84ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeftWaitingArea)))
  "Returns md5sum for a message object of type 'LeftWaitingArea"
  "cc6673be16a143318e79f0eda95d84ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeftWaitingArea>)))
  "Returns full string definition for message of type '<LeftWaitingArea>"
  (cl:format cl:nil "bool existence~%float64 length~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeftWaitingArea)))
  "Returns full string definition for message of type 'LeftWaitingArea"
  (cl:format cl:nil "bool existence~%float64 length~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeftWaitingArea>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeftWaitingArea>))
  "Converts a ROS message object to a list"
  (cl:list 'LeftWaitingArea
    (cl:cons ':existence (existence msg))
    (cl:cons ':length (length msg))
    (cl:cons ':distance (distance msg))
))
