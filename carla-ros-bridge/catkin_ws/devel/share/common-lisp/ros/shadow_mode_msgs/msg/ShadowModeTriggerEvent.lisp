; Auto-generated. Do not edit!


(cl:in-package shadow_mode_msgs-msg)


;//! \htmlinclude ShadowModeTriggerEvent.msg.html

(cl:defclass <ShadowModeTriggerEvent> (roslisp-msg-protocol:ros-message)
  ((trigger_state
    :reader trigger_state
    :initarg :trigger_state
    :type cl:boolean
    :initform cl:nil)
   (tags
    :reader tags
    :initarg :tags
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (road_curvature
    :reader road_curvature
    :initarg :road_curvature
    :type cl:float
    :initform 0.0))
)

(cl:defclass ShadowModeTriggerEvent (<ShadowModeTriggerEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShadowModeTriggerEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShadowModeTriggerEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shadow_mode_msgs-msg:<ShadowModeTriggerEvent> is deprecated: use shadow_mode_msgs-msg:ShadowModeTriggerEvent instead.")))

(cl:ensure-generic-function 'trigger_state-val :lambda-list '(m))
(cl:defmethod trigger_state-val ((m <ShadowModeTriggerEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:trigger_state-val is deprecated.  Use shadow_mode_msgs-msg:trigger_state instead.")
  (trigger_state m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <ShadowModeTriggerEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:tags-val is deprecated.  Use shadow_mode_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'road_curvature-val :lambda-list '(m))
(cl:defmethod road_curvature-val ((m <ShadowModeTriggerEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:road_curvature-val is deprecated.  Use shadow_mode_msgs-msg:road_curvature instead.")
  (road_curvature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShadowModeTriggerEvent>) ostream)
  "Serializes a message object of type '<ShadowModeTriggerEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trigger_state) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tags))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'tags))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'road_curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShadowModeTriggerEvent>) istream)
  "Deserializes a message object of type '<ShadowModeTriggerEvent>"
    (cl:setf (cl:slot-value msg 'trigger_state) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tags) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tags)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'road_curvature) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShadowModeTriggerEvent>)))
  "Returns string type for a message object of type '<ShadowModeTriggerEvent>"
  "shadow_mode_msgs/ShadowModeTriggerEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowModeTriggerEvent)))
  "Returns string type for a message object of type 'ShadowModeTriggerEvent"
  "shadow_mode_msgs/ShadowModeTriggerEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShadowModeTriggerEvent>)))
  "Returns md5sum for a message object of type '<ShadowModeTriggerEvent>"
  "622ef37a95532eaa0ce8597b42774062")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShadowModeTriggerEvent)))
  "Returns md5sum for a message object of type 'ShadowModeTriggerEvent"
  "622ef37a95532eaa0ce8597b42774062")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShadowModeTriggerEvent>)))
  "Returns full string definition for message of type '<ShadowModeTriggerEvent>"
  (cl:format cl:nil "bool trigger_state~%string[] tags~%float64 road_curvature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShadowModeTriggerEvent)))
  "Returns full string definition for message of type 'ShadowModeTriggerEvent"
  (cl:format cl:nil "bool trigger_state~%string[] tags~%float64 road_curvature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShadowModeTriggerEvent>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tags) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShadowModeTriggerEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'ShadowModeTriggerEvent
    (cl:cons ':trigger_state (trigger_state msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':road_curvature (road_curvature msg))
))
