; Auto-generated. Do not edit!


(cl:in-package shadow_mode_msgs-msg)


;//! \htmlinclude ActionType.msg.html

(cl:defclass <ActionType> (roslisp-msg-protocol:ros-message)
  ((action_value
    :reader action_value
    :initarg :action_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ActionType (<ActionType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shadow_mode_msgs-msg:<ActionType> is deprecated: use shadow_mode_msgs-msg:ActionType instead.")))

(cl:ensure-generic-function 'action_value-val :lambda-list '(m))
(cl:defmethod action_value-val ((m <ActionType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shadow_mode_msgs-msg:action_value-val is deprecated.  Use shadow_mode_msgs-msg:action_value instead.")
  (action_value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ActionType>)))
    "Constants for message type '<ActionType>"
  '((:DEFAULT . 0)
    (:CFDI_ONLY_FOREVER_LOG . 1)
    (:DFDI_ONLY_REPORT_EAP . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ActionType)))
    "Constants for message type 'ActionType"
  '((:DEFAULT . 0)
    (:CFDI_ONLY_FOREVER_LOG . 1)
    (:DFDI_ONLY_REPORT_EAP . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionType>) ostream)
  "Serializes a message object of type '<ActionType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionType>) istream)
  "Deserializes a message object of type '<ActionType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionType>)))
  "Returns string type for a message object of type '<ActionType>"
  "shadow_mode_msgs/ActionType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionType)))
  "Returns string type for a message object of type 'ActionType"
  "shadow_mode_msgs/ActionType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionType>)))
  "Returns md5sum for a message object of type '<ActionType>"
  "3e8595611de8fc3d084334bc12d4b332")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionType)))
  "Returns md5sum for a message object of type 'ActionType"
  "3e8595611de8fc3d084334bc12d4b332")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionType>)))
  "Returns full string definition for message of type '<ActionType>"
  (cl:format cl:nil "uint8 DEFAULT = 0~%uint8 CFDI_ONLY_FOREVER_LOG = 1~%uint8 DFDI_ONLY_REPORT_EAP = 128~%uint8 action_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionType)))
  "Returns full string definition for message of type 'ActionType"
  (cl:format cl:nil "uint8 DEFAULT = 0~%uint8 CFDI_ONLY_FOREVER_LOG = 1~%uint8 DFDI_ONLY_REPORT_EAP = 128~%uint8 action_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionType>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionType
    (cl:cons ':action_value (action_value msg))
))
