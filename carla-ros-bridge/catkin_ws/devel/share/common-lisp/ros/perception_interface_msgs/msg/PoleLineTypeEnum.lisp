; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude PoleLineTypeEnum.msg.html

(cl:defclass <PoleLineTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PoleLineTypeEnum (<PoleLineTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoleLineTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoleLineTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<PoleLineTypeEnum> is deprecated: use perception_interface_msgs-msg:PoleLineTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PoleLineTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PoleLineTypeEnum>)))
    "Constants for message type '<PoleLineTypeEnum>"
  '((:POLE_LINE_TYPE_UNKNOWN . 0)
    (:POLE_LINE_TYPE_GENERAL_POLE . 1)
    (:POLE_LINE_TYPE_LIGHT_POLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PoleLineTypeEnum)))
    "Constants for message type 'PoleLineTypeEnum"
  '((:POLE_LINE_TYPE_UNKNOWN . 0)
    (:POLE_LINE_TYPE_GENERAL_POLE . 1)
    (:POLE_LINE_TYPE_LIGHT_POLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoleLineTypeEnum>) ostream)
  "Serializes a message object of type '<PoleLineTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoleLineTypeEnum>) istream)
  "Deserializes a message object of type '<PoleLineTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoleLineTypeEnum>)))
  "Returns string type for a message object of type '<PoleLineTypeEnum>"
  "perception_interface_msgs/PoleLineTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoleLineTypeEnum)))
  "Returns string type for a message object of type 'PoleLineTypeEnum"
  "perception_interface_msgs/PoleLineTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoleLineTypeEnum>)))
  "Returns md5sum for a message object of type '<PoleLineTypeEnum>"
  "9a280dddf929a63ec90f07ff42a93e72")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoleLineTypeEnum)))
  "Returns md5sum for a message object of type 'PoleLineTypeEnum"
  "9a280dddf929a63ec90f07ff42a93e72")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoleLineTypeEnum>)))
  "Returns full string definition for message of type '<PoleLineTypeEnum>"
  (cl:format cl:nil "uint8 POLE_LINE_TYPE_UNKNOWN = 0~%uint8 POLE_LINE_TYPE_GENERAL_POLE = 1~%uint8 POLE_LINE_TYPE_LIGHT_POLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoleLineTypeEnum)))
  "Returns full string definition for message of type 'PoleLineTypeEnum"
  (cl:format cl:nil "uint8 POLE_LINE_TYPE_UNKNOWN = 0~%uint8 POLE_LINE_TYPE_GENERAL_POLE = 1~%uint8 POLE_LINE_TYPE_LIGHT_POLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoleLineTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoleLineTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'PoleLineTypeEnum
    (cl:cons ':value (value msg))
))
