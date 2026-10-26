; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SentryModeCommand.msg.html

(cl:defclass <SentryModeCommand> (roslisp-msg-protocol:ros-message)
  ((sentry_emergency_flasher_level
    :reader sentry_emergency_flasher_level
    :initarg :sentry_emergency_flasher_level
    :type endpoint_msgs-msg:SentryEmergencyFlasherLevel
    :initform (cl:make-instance 'endpoint_msgs-msg:SentryEmergencyFlasherLevel))
   (snetry_horn_level
    :reader snetry_horn_level
    :initarg :snetry_horn_level
    :type endpoint_msgs-msg:SentryHornLevel
    :initform (cl:make-instance 'endpoint_msgs-msg:SentryHornLevel)))
)

(cl:defclass SentryModeCommand (<SentryModeCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryModeCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryModeCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SentryModeCommand> is deprecated: use endpoint_msgs-msg:SentryModeCommand instead.")))

(cl:ensure-generic-function 'sentry_emergency_flasher_level-val :lambda-list '(m))
(cl:defmethod sentry_emergency_flasher_level-val ((m <SentryModeCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:sentry_emergency_flasher_level-val is deprecated.  Use endpoint_msgs-msg:sentry_emergency_flasher_level instead.")
  (sentry_emergency_flasher_level m))

(cl:ensure-generic-function 'snetry_horn_level-val :lambda-list '(m))
(cl:defmethod snetry_horn_level-val ((m <SentryModeCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:snetry_horn_level-val is deprecated.  Use endpoint_msgs-msg:snetry_horn_level instead.")
  (snetry_horn_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryModeCommand>) ostream)
  "Serializes a message object of type '<SentryModeCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sentry_emergency_flasher_level) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'snetry_horn_level) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryModeCommand>) istream)
  "Deserializes a message object of type '<SentryModeCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sentry_emergency_flasher_level) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'snetry_horn_level) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryModeCommand>)))
  "Returns string type for a message object of type '<SentryModeCommand>"
  "endpoint_msgs/SentryModeCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryModeCommand)))
  "Returns string type for a message object of type 'SentryModeCommand"
  "endpoint_msgs/SentryModeCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryModeCommand>)))
  "Returns md5sum for a message object of type '<SentryModeCommand>"
  "ff8f2cb897d6d0fee2f3422c2a1c3219")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryModeCommand)))
  "Returns md5sum for a message object of type 'SentryModeCommand"
  "ff8f2cb897d6d0fee2f3422c2a1c3219")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryModeCommand>)))
  "Returns full string definition for message of type '<SentryModeCommand>"
  (cl:format cl:nil "endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level~%endpoint_msgs/SentryHornLevel snetry_horn_level~%~%================================================================================~%MSG: endpoint_msgs/SentryEmergencyFlasherLevel~%uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryHornLevel~%uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryModeCommand)))
  "Returns full string definition for message of type 'SentryModeCommand"
  (cl:format cl:nil "endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level~%endpoint_msgs/SentryHornLevel snetry_horn_level~%~%================================================================================~%MSG: endpoint_msgs/SentryEmergencyFlasherLevel~%uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SentryHornLevel~%uint8 HornReq_NONE = 0~%uint8 HornReq_LEVEL1 = 1~%uint8 HornReq_LEVEL2 = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryModeCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sentry_emergency_flasher_level))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'snetry_horn_level))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryModeCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryModeCommand
    (cl:cons ':sentry_emergency_flasher_level (sentry_emergency_flasher_level msg))
    (cl:cons ':snetry_horn_level (snetry_horn_level msg))
))
