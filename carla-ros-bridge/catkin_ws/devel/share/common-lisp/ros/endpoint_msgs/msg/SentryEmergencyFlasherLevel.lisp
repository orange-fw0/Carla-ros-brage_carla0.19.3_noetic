; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SentryEmergencyFlasherLevel.msg.html

(cl:defclass <SentryEmergencyFlasherLevel> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SentryEmergencyFlasherLevel (<SentryEmergencyFlasherLevel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryEmergencyFlasherLevel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryEmergencyFlasherLevel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SentryEmergencyFlasherLevel> is deprecated: use endpoint_msgs-msg:SentryEmergencyFlasherLevel instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SentryEmergencyFlasherLevel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SentryEmergencyFlasherLevel>)))
    "Constants for message type '<SentryEmergencyFlasherLevel>"
  '((:EMERGENCYFLASHERREQ_NONE . 0)
    (:EMERGENCYFLASHERREQ_LEVEL1 . 1)
    (:EMERGENCYFLASHERREQ_LEVEL2 . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SentryEmergencyFlasherLevel)))
    "Constants for message type 'SentryEmergencyFlasherLevel"
  '((:EMERGENCYFLASHERREQ_NONE . 0)
    (:EMERGENCYFLASHERREQ_LEVEL1 . 1)
    (:EMERGENCYFLASHERREQ_LEVEL2 . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryEmergencyFlasherLevel>) ostream)
  "Serializes a message object of type '<SentryEmergencyFlasherLevel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryEmergencyFlasherLevel>) istream)
  "Deserializes a message object of type '<SentryEmergencyFlasherLevel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryEmergencyFlasherLevel>)))
  "Returns string type for a message object of type '<SentryEmergencyFlasherLevel>"
  "endpoint_msgs/SentryEmergencyFlasherLevel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryEmergencyFlasherLevel)))
  "Returns string type for a message object of type 'SentryEmergencyFlasherLevel"
  "endpoint_msgs/SentryEmergencyFlasherLevel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryEmergencyFlasherLevel>)))
  "Returns md5sum for a message object of type '<SentryEmergencyFlasherLevel>"
  "7cd959c8ef850231016144148568ea95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryEmergencyFlasherLevel)))
  "Returns md5sum for a message object of type 'SentryEmergencyFlasherLevel"
  "7cd959c8ef850231016144148568ea95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryEmergencyFlasherLevel>)))
  "Returns full string definition for message of type '<SentryEmergencyFlasherLevel>"
  (cl:format cl:nil "uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryEmergencyFlasherLevel)))
  "Returns full string definition for message of type 'SentryEmergencyFlasherLevel"
  (cl:format cl:nil "uint8 EmergencyFlasherReq_NONE = 0~%uint8 EmergencyFlasherReq_LEVEL1 = 1~%uint8 EmergencyFlasherReq_LEVEL2 = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryEmergencyFlasherLevel>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryEmergencyFlasherLevel>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryEmergencyFlasherLevel
    (cl:cons ':value (value msg))
))
