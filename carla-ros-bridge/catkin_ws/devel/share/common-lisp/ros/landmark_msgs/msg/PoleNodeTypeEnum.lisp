; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude PoleNodeTypeEnum.msg.html

(cl:defclass <PoleNodeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PoleNodeTypeEnum (<PoleNodeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoleNodeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoleNodeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<PoleNodeTypeEnum> is deprecated: use landmark_msgs-msg:PoleNodeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PoleNodeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PoleNodeTypeEnum>)))
    "Constants for message type '<PoleNodeTypeEnum>"
  '((:POLE_NODE_TYPE_UNKNOWN . 0)
    (:POLE_NODE_TYPE_GENERAL_POLE . 1)
    (:POLE_NODE_TYPE_LIGHT_POLE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PoleNodeTypeEnum)))
    "Constants for message type 'PoleNodeTypeEnum"
  '((:POLE_NODE_TYPE_UNKNOWN . 0)
    (:POLE_NODE_TYPE_GENERAL_POLE . 1)
    (:POLE_NODE_TYPE_LIGHT_POLE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoleNodeTypeEnum>) ostream)
  "Serializes a message object of type '<PoleNodeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoleNodeTypeEnum>) istream)
  "Deserializes a message object of type '<PoleNodeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoleNodeTypeEnum>)))
  "Returns string type for a message object of type '<PoleNodeTypeEnum>"
  "landmark_msgs/PoleNodeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoleNodeTypeEnum)))
  "Returns string type for a message object of type 'PoleNodeTypeEnum"
  "landmark_msgs/PoleNodeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoleNodeTypeEnum>)))
  "Returns md5sum for a message object of type '<PoleNodeTypeEnum>"
  "6cd6b093a080c03f105f35613de119f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoleNodeTypeEnum)))
  "Returns md5sum for a message object of type 'PoleNodeTypeEnum"
  "6cd6b093a080c03f105f35613de119f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoleNodeTypeEnum>)))
  "Returns full string definition for message of type '<PoleNodeTypeEnum>"
  (cl:format cl:nil "uint8 POLE_NODE_TYPE_UNKNOWN = 0~%uint8 POLE_NODE_TYPE_GENERAL_POLE = 1~%uint8 POLE_NODE_TYPE_LIGHT_POLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoleNodeTypeEnum)))
  "Returns full string definition for message of type 'PoleNodeTypeEnum"
  (cl:format cl:nil "uint8 POLE_NODE_TYPE_UNKNOWN = 0~%uint8 POLE_NODE_TYPE_GENERAL_POLE = 1~%uint8 POLE_NODE_TYPE_LIGHT_POLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoleNodeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoleNodeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'PoleNodeTypeEnum
    (cl:cons ':value (value msg))
))
