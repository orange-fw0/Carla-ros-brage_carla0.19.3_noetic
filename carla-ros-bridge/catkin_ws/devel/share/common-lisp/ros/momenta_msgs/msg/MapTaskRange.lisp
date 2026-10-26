; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude MapTaskRange.msg.html

(cl:defclass <MapTaskRange> (roslisp-msg-protocol:ros-message)
  ((begin_pos
    :reader begin_pos
    :initarg :begin_pos
    :type cl:float
    :initform 0.0)
   (end_pos
    :reader end_pos
    :initarg :end_pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass MapTaskRange (<MapTaskRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapTaskRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapTaskRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<MapTaskRange> is deprecated: use momenta_msgs-msg:MapTaskRange instead.")))

(cl:ensure-generic-function 'begin_pos-val :lambda-list '(m))
(cl:defmethod begin_pos-val ((m <MapTaskRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:begin_pos-val is deprecated.  Use momenta_msgs-msg:begin_pos instead.")
  (begin_pos m))

(cl:ensure-generic-function 'end_pos-val :lambda-list '(m))
(cl:defmethod end_pos-val ((m <MapTaskRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:end_pos-val is deprecated.  Use momenta_msgs-msg:end_pos instead.")
  (end_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapTaskRange>) ostream)
  "Serializes a message object of type '<MapTaskRange>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'begin_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'end_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapTaskRange>) istream)
  "Deserializes a message object of type '<MapTaskRange>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'begin_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_pos) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapTaskRange>)))
  "Returns string type for a message object of type '<MapTaskRange>"
  "momenta_msgs/MapTaskRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapTaskRange)))
  "Returns string type for a message object of type 'MapTaskRange"
  "momenta_msgs/MapTaskRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapTaskRange>)))
  "Returns md5sum for a message object of type '<MapTaskRange>"
  "d2cddef1d0d0658f1b721cb43fd379d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapTaskRange)))
  "Returns md5sum for a message object of type 'MapTaskRange"
  "d2cddef1d0d0658f1b721cb43fd379d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapTaskRange>)))
  "Returns full string definition for message of type '<MapTaskRange>"
  (cl:format cl:nil "float64 begin_pos~%float64 end_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapTaskRange)))
  "Returns full string definition for message of type 'MapTaskRange"
  (cl:format cl:nil "float64 begin_pos~%float64 end_pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapTaskRange>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapTaskRange>))
  "Converts a ROS message object to a list"
  (cl:list 'MapTaskRange
    (cl:cons ':begin_pos (begin_pos msg))
    (cl:cons ':end_pos (end_pos msg))
))
