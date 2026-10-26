; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude Interval.msg.html

(cl:defclass <Interval> (roslisp-msg-protocol:ros-message)
  ((begin
    :reader begin
    :initarg :begin
    :type cl:float
    :initform 0.0)
   (end
    :reader end
    :initarg :end
    :type cl:float
    :initform 0.0))
)

(cl:defclass Interval (<Interval>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interval>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interval)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<Interval> is deprecated: use worldmodel_msgs-msg:Interval instead.")))

(cl:ensure-generic-function 'begin-val :lambda-list '(m))
(cl:defmethod begin-val ((m <Interval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:begin-val is deprecated.  Use worldmodel_msgs-msg:begin instead.")
  (begin m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <Interval>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:end-val is deprecated.  Use worldmodel_msgs-msg:end instead.")
  (end m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interval>) ostream)
  "Serializes a message object of type '<Interval>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'begin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interval>) istream)
  "Deserializes a message object of type '<Interval>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'begin) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interval>)))
  "Returns string type for a message object of type '<Interval>"
  "worldmodel_msgs/Interval")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interval)))
  "Returns string type for a message object of type 'Interval"
  "worldmodel_msgs/Interval")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interval>)))
  "Returns md5sum for a message object of type '<Interval>"
  "07d2a860011894bea8072b555e97de50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interval)))
  "Returns md5sum for a message object of type 'Interval"
  "07d2a860011894bea8072b555e97de50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interval>)))
  "Returns full string definition for message of type '<Interval>"
  (cl:format cl:nil "float64 begin~%float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interval)))
  "Returns full string definition for message of type 'Interval"
  (cl:format cl:nil "float64 begin~%float64 end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interval>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interval>))
  "Converts a ROS message object to a list"
  (cl:list 'Interval
    (cl:cons ':begin (begin msg))
    (cl:cons ':end (end msg))
))
