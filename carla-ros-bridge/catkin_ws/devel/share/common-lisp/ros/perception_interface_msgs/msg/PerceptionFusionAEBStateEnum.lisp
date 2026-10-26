; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude PerceptionFusionAEBStateEnum.msg.html

(cl:defclass <PerceptionFusionAEBStateEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PerceptionFusionAEBStateEnum (<PerceptionFusionAEBStateEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptionFusionAEBStateEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptionFusionAEBStateEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<PerceptionFusionAEBStateEnum> is deprecated: use perception_interface_msgs-msg:PerceptionFusionAEBStateEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PerceptionFusionAEBStateEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PerceptionFusionAEBStateEnum>)))
    "Constants for message type '<PerceptionFusionAEBStateEnum>"
  '((:AEB_STATE_OFF . 0)
    (:AEB_STATE_FCW . 1)
    (:AEB_STATE_AEB . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PerceptionFusionAEBStateEnum)))
    "Constants for message type 'PerceptionFusionAEBStateEnum"
  '((:AEB_STATE_OFF . 0)
    (:AEB_STATE_FCW . 1)
    (:AEB_STATE_AEB . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptionFusionAEBStateEnum>) ostream)
  "Serializes a message object of type '<PerceptionFusionAEBStateEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptionFusionAEBStateEnum>) istream)
  "Deserializes a message object of type '<PerceptionFusionAEBStateEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptionFusionAEBStateEnum>)))
  "Returns string type for a message object of type '<PerceptionFusionAEBStateEnum>"
  "perception_interface_msgs/PerceptionFusionAEBStateEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptionFusionAEBStateEnum)))
  "Returns string type for a message object of type 'PerceptionFusionAEBStateEnum"
  "perception_interface_msgs/PerceptionFusionAEBStateEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptionFusionAEBStateEnum>)))
  "Returns md5sum for a message object of type '<PerceptionFusionAEBStateEnum>"
  "5a4eeba02b2c419f7527fe38b31c6da0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptionFusionAEBStateEnum)))
  "Returns md5sum for a message object of type 'PerceptionFusionAEBStateEnum"
  "5a4eeba02b2c419f7527fe38b31c6da0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptionFusionAEBStateEnum>)))
  "Returns full string definition for message of type '<PerceptionFusionAEBStateEnum>"
  (cl:format cl:nil "uint8 AEB_STATE_OFF = 0~%uint8 AEB_STATE_FCW = 1~%uint8 AEB_STATE_AEB = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptionFusionAEBStateEnum)))
  "Returns full string definition for message of type 'PerceptionFusionAEBStateEnum"
  (cl:format cl:nil "uint8 AEB_STATE_OFF = 0~%uint8 AEB_STATE_FCW = 1~%uint8 AEB_STATE_AEB = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptionFusionAEBStateEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptionFusionAEBStateEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptionFusionAEBStateEnum
    (cl:cons ':value (value msg))
))
