; Auto-generated. Do not edit!


(cl:in-package shadow_mode_msgs-msg)


;//! \htmlinclude ShadowModeTrigger.msg.html

(cl:defclass <ShadowModeTrigger> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trigger_event
    :reader trigger_event
    :initarg :trigger_event
    :type shadow_mode_msgs-msg:ShadowModeTriggerEvent
    :initform (cl:make-instance 'shadow_mode_msgs-msg:ShadowModeTriggerEvent))
   (trigger_message
    :reader trigger_message
    :initarg :trigger_message
    :type shadow_mode_msgs-msg:ShadowTriggerMessage
    :initform (cl:make-instance 'shadow_mode_msgs-msg:ShadowTriggerMessage)))
)

(cl:defclass ShadowModeTrigger (<ShadowModeTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShadowModeTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShadowModeTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shadow_mode_msgs-msg:<ShadowModeTrigger> is deprecated: use shadow_mode_msgs-msg:ShadowModeTrigger instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ShadowModeTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:header-val is deprecated.  Use shadow_mode_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trigger_event-val :lambda-list '(m))
(cl:defmethod trigger_event-val ((m <ShadowModeTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:trigger_event-val is deprecated.  Use shadow_mode_msgs-msg:trigger_event instead.")
  (trigger_event m))

(cl:ensure-generic-function 'trigger_message-val :lambda-list '(m))
(cl:defmethod trigger_message-val ((m <ShadowModeTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:trigger_message-val is deprecated.  Use shadow_mode_msgs-msg:trigger_message instead.")
  (trigger_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShadowModeTrigger>) ostream)
  "Serializes a message object of type '<ShadowModeTrigger>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trigger_event) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trigger_message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShadowModeTrigger>) istream)
  "Deserializes a message object of type '<ShadowModeTrigger>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trigger_event) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trigger_message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShadowModeTrigger>)))
  "Returns string type for a message object of type '<ShadowModeTrigger>"
  "shadow_mode_msgs/ShadowModeTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowModeTrigger)))
  "Returns string type for a message object of type 'ShadowModeTrigger"
  "shadow_mode_msgs/ShadowModeTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShadowModeTrigger>)))
  "Returns md5sum for a message object of type '<ShadowModeTrigger>"
  "39938e94b07861882982a2fd8d678563")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShadowModeTrigger)))
  "Returns md5sum for a message object of type 'ShadowModeTrigger"
  "39938e94b07861882982a2fd8d678563")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShadowModeTrigger>)))
  "Returns full string definition for message of type '<ShadowModeTrigger>"
  (cl:format cl:nil "std_msgs/Header header~%shadow_mode_msgs/ShadowModeTriggerEvent trigger_event~%shadow_mode_msgs/ShadowTriggerMessage trigger_message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: shadow_mode_msgs/ShadowModeTriggerEvent~%bool trigger_state~%string[] tags~%float64 road_curvature~%~%================================================================================~%MSG: shadow_mode_msgs/ShadowTriggerMessage~%string collect_type~%string name~%float32 cool_down_limit~%shadow_mode_msgs/DetailConfig detail_config~%bool sticky~%string uuid~%string response_status~%string response_reason~%uint64 stamp~%shadow_mode_msgs/TriggerParam trigger_type~%uint8 before~%uint8 after~%shadow_mode_msgs/TrustParam trust_param~%string[] topics~%uint64[] stamps~%string[] tags~%bool start~%bool disable_dis~%shadow_mode_msgs/ActionType action_type~%~%================================================================================~%MSG: shadow_mode_msgs/DetailConfig~%string[] mlog_list~%string[] need_maf_groups~%~%================================================================================~%MSG: shadow_mode_msgs/TriggerParam~%uint8 EVENT = 0~%uint8 SINGLE_FRAME = 1~%uint8 RECORDING = 2~%uint8 trigger_value~%~%================================================================================~%MSG: shadow_mode_msgs/TrustParam~%uint8 NONE = 0~%uint8 BEFORE = 1~%uint8 AFTER = 2~%uint8 trust_value~%~%================================================================================~%MSG: shadow_mode_msgs/ActionType~%uint8 DEFAULT = 0~%uint8 CFDI_ONLY_FOREVER_LOG = 1~%uint8 DFDI_ONLY_REPORT_EAP = 128~%uint8 action_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShadowModeTrigger)))
  "Returns full string definition for message of type 'ShadowModeTrigger"
  (cl:format cl:nil "std_msgs/Header header~%shadow_mode_msgs/ShadowModeTriggerEvent trigger_event~%shadow_mode_msgs/ShadowTriggerMessage trigger_message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: shadow_mode_msgs/ShadowModeTriggerEvent~%bool trigger_state~%string[] tags~%float64 road_curvature~%~%================================================================================~%MSG: shadow_mode_msgs/ShadowTriggerMessage~%string collect_type~%string name~%float32 cool_down_limit~%shadow_mode_msgs/DetailConfig detail_config~%bool sticky~%string uuid~%string response_status~%string response_reason~%uint64 stamp~%shadow_mode_msgs/TriggerParam trigger_type~%uint8 before~%uint8 after~%shadow_mode_msgs/TrustParam trust_param~%string[] topics~%uint64[] stamps~%string[] tags~%bool start~%bool disable_dis~%shadow_mode_msgs/ActionType action_type~%~%================================================================================~%MSG: shadow_mode_msgs/DetailConfig~%string[] mlog_list~%string[] need_maf_groups~%~%================================================================================~%MSG: shadow_mode_msgs/TriggerParam~%uint8 EVENT = 0~%uint8 SINGLE_FRAME = 1~%uint8 RECORDING = 2~%uint8 trigger_value~%~%================================================================================~%MSG: shadow_mode_msgs/TrustParam~%uint8 NONE = 0~%uint8 BEFORE = 1~%uint8 AFTER = 2~%uint8 trust_value~%~%================================================================================~%MSG: shadow_mode_msgs/ActionType~%uint8 DEFAULT = 0~%uint8 CFDI_ONLY_FOREVER_LOG = 1~%uint8 DFDI_ONLY_REPORT_EAP = 128~%uint8 action_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShadowModeTrigger>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trigger_event))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trigger_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShadowModeTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'ShadowModeTrigger
    (cl:cons ':header (header msg))
    (cl:cons ':trigger_event (trigger_event msg))
    (cl:cons ':trigger_message (trigger_message msg))
))
