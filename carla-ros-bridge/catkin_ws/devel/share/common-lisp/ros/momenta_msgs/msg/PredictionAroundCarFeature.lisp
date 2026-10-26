; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude PredictionAroundCarFeature.msg.html

(cl:defclass <PredictionAroundCarFeature> (roslisp-msg-protocol:ros-message)
  ((relative_s
    :reader relative_s
    :initarg :relative_s
    :type cl:float
    :initform 0.0)
   (relative_r
    :reader relative_r
    :initarg :relative_r
    :type cl:float
    :initform 0.0)
   (relative_v
    :reader relative_v
    :initarg :relative_v
    :type cl:float
    :initform 0.0))
)

(cl:defclass PredictionAroundCarFeature (<PredictionAroundCarFeature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionAroundCarFeature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionAroundCarFeature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<PredictionAroundCarFeature> is deprecated: use momenta_msgs-msg:PredictionAroundCarFeature instead.")))

(cl:ensure-generic-function 'relative_s-val :lambda-list '(m))
(cl:defmethod relative_s-val ((m <PredictionAroundCarFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_s-val is deprecated.  Use momenta_msgs-msg:relative_s instead.")
  (relative_s m))

(cl:ensure-generic-function 'relative_r-val :lambda-list '(m))
(cl:defmethod relative_r-val ((m <PredictionAroundCarFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_r-val is deprecated.  Use momenta_msgs-msg:relative_r instead.")
  (relative_r m))

(cl:ensure-generic-function 'relative_v-val :lambda-list '(m))
(cl:defmethod relative_v-val ((m <PredictionAroundCarFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:relative_v-val is deprecated.  Use momenta_msgs-msg:relative_v instead.")
  (relative_v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionAroundCarFeature>) ostream)
  "Serializes a message object of type '<PredictionAroundCarFeature>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relative_v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionAroundCarFeature>) istream)
  "Deserializes a message object of type '<PredictionAroundCarFeature>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_s) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_v) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionAroundCarFeature>)))
  "Returns string type for a message object of type '<PredictionAroundCarFeature>"
  "momenta_msgs/PredictionAroundCarFeature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionAroundCarFeature)))
  "Returns string type for a message object of type 'PredictionAroundCarFeature"
  "momenta_msgs/PredictionAroundCarFeature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionAroundCarFeature>)))
  "Returns md5sum for a message object of type '<PredictionAroundCarFeature>"
  "2769a394a3978c8fd6423b3f867021d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionAroundCarFeature)))
  "Returns md5sum for a message object of type 'PredictionAroundCarFeature"
  "2769a394a3978c8fd6423b3f867021d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionAroundCarFeature>)))
  "Returns full string definition for message of type '<PredictionAroundCarFeature>"
  (cl:format cl:nil "float32 relative_s~%float32 relative_r~%float32 relative_v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionAroundCarFeature)))
  "Returns full string definition for message of type 'PredictionAroundCarFeature"
  (cl:format cl:nil "float32 relative_s~%float32 relative_r~%float32 relative_v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionAroundCarFeature>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionAroundCarFeature>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionAroundCarFeature
    (cl:cons ':relative_s (relative_s msg))
    (cl:cons ':relative_r (relative_r msg))
    (cl:cons ':relative_v (relative_v msg))
))
