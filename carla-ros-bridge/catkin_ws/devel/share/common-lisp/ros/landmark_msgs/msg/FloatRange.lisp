; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude FloatRange.msg.html

(cl:defclass <FloatRange> (roslisp-msg-protocol:ros-message)
  ((min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0)
   (max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0))
)

(cl:defclass FloatRange (<FloatRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FloatRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FloatRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<FloatRange> is deprecated: use landmark_msgs-msg:FloatRange instead.")))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <FloatRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:min-val is deprecated.  Use landmark_msgs-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <FloatRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:max-val is deprecated.  Use landmark_msgs-msg:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FloatRange>) ostream)
  "Serializes a message object of type '<FloatRange>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FloatRange>) istream)
  "Deserializes a message object of type '<FloatRange>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FloatRange>)))
  "Returns string type for a message object of type '<FloatRange>"
  "landmark_msgs/FloatRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloatRange)))
  "Returns string type for a message object of type 'FloatRange"
  "landmark_msgs/FloatRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FloatRange>)))
  "Returns md5sum for a message object of type '<FloatRange>"
  "b3ee9ed25575b46bb47c7673ad202faa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FloatRange)))
  "Returns md5sum for a message object of type 'FloatRange"
  "b3ee9ed25575b46bb47c7673ad202faa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FloatRange>)))
  "Returns full string definition for message of type '<FloatRange>"
  (cl:format cl:nil "float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FloatRange)))
  "Returns full string definition for message of type 'FloatRange"
  (cl:format cl:nil "float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FloatRange>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FloatRange>))
  "Converts a ROS message object to a list"
  (cl:list 'FloatRange
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
