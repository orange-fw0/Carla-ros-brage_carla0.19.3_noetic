; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDPointCurvature.msg.html

(cl:defclass <SDPointCurvature> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass SDPointCurvature (<SDPointCurvature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDPointCurvature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDPointCurvature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDPointCurvature> is deprecated: use lane_navi_info_msgs-msg:SDPointCurvature instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SDPointCurvature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SDPointCurvature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDPointCurvature>) ostream)
  "Serializes a message object of type '<SDPointCurvature>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDPointCurvature>) istream)
  "Deserializes a message object of type '<SDPointCurvature>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDPointCurvature>)))
  "Returns string type for a message object of type '<SDPointCurvature>"
  "lane_navi_info_msgs/SDPointCurvature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDPointCurvature)))
  "Returns string type for a message object of type 'SDPointCurvature"
  "lane_navi_info_msgs/SDPointCurvature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDPointCurvature>)))
  "Returns md5sum for a message object of type '<SDPointCurvature>"
  "a89e5e12d6932ebdd9f391c7e9fea59b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDPointCurvature)))
  "Returns md5sum for a message object of type 'SDPointCurvature"
  "a89e5e12d6932ebdd9f391c7e9fea59b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDPointCurvature>)))
  "Returns full string definition for message of type '<SDPointCurvature>"
  (cl:format cl:nil "float32 offset~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDPointCurvature)))
  "Returns full string definition for message of type 'SDPointCurvature"
  (cl:format cl:nil "float32 offset~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDPointCurvature>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDPointCurvature>))
  "Converts a ROS message object to a list"
  (cl:list 'SDPointCurvature
    (cl:cons ':offset (offset msg))
    (cl:cons ':value (value msg))
))
