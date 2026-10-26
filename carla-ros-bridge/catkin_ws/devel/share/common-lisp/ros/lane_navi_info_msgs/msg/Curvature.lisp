; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude Curvature.msg.html

(cl:defclass <Curvature> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0)
   (start_offset
    :reader start_offset
    :initarg :start_offset
    :type cl:float
    :initform 0.0)
   (end_offset
    :reader end_offset
    :initarg :end_offset
    :type cl:float
    :initform 0.0)
   (interpolation_type
    :reader interpolation_type
    :initarg :interpolation_type
    :type lane_navi_info_msgs-msg:InterpolationType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:InterpolationType)))
)

(cl:defclass Curvature (<Curvature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Curvature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Curvature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<Curvature> is deprecated: use lane_navi_info_msgs-msg:Curvature instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Curvature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:value-val is deprecated.  Use lane_navi_info_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'start_offset-val :lambda-list '(m))
(cl:defmethod start_offset-val ((m <Curvature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:start_offset-val is deprecated.  Use lane_navi_info_msgs-msg:start_offset instead.")
  (start_offset m))

(cl:ensure-generic-function 'end_offset-val :lambda-list '(m))
(cl:defmethod end_offset-val ((m <Curvature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:end_offset-val is deprecated.  Use lane_navi_info_msgs-msg:end_offset instead.")
  (end_offset m))

(cl:ensure-generic-function 'interpolation_type-val :lambda-list '(m))
(cl:defmethod interpolation_type-val ((m <Curvature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:interpolation_type-val is deprecated.  Use lane_navi_info_msgs-msg:interpolation_type instead.")
  (interpolation_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Curvature>) ostream)
  "Serializes a message object of type '<Curvature>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interpolation_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Curvature>) istream)
  "Deserializes a message object of type '<Curvature>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_offset) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interpolation_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Curvature>)))
  "Returns string type for a message object of type '<Curvature>"
  "lane_navi_info_msgs/Curvature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Curvature)))
  "Returns string type for a message object of type 'Curvature"
  "lane_navi_info_msgs/Curvature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Curvature>)))
  "Returns md5sum for a message object of type '<Curvature>"
  "5eaa6f0473111dadc3e0e90330027926")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Curvature)))
  "Returns md5sum for a message object of type 'Curvature"
  "5eaa6f0473111dadc3e0e90330027926")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Curvature>)))
  "Returns full string definition for message of type '<Curvature>"
  (cl:format cl:nil "float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Curvature)))
  "Returns full string definition for message of type 'Curvature"
  (cl:format cl:nil "float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Curvature>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interpolation_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Curvature>))
  "Converts a ROS message object to a list"
  (cl:list 'Curvature
    (cl:cons ':value (value msg))
    (cl:cons ':start_offset (start_offset msg))
    (cl:cons ':end_offset (end_offset msg))
    (cl:cons ':interpolation_type (interpolation_type msg))
))
