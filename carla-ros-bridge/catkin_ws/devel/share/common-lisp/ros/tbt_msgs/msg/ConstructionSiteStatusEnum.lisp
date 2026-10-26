; Auto-generated. Do not edit!


(cl:in-package tbt_msgs-msg)


;//! \htmlinclude ConstructionSiteStatusEnum.msg.html

(cl:defclass <ConstructionSiteStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ConstructionSiteStatusEnum (<ConstructionSiteStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConstructionSiteStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConstructionSiteStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tbt_msgs-msg:<ConstructionSiteStatusEnum> is deprecated: use tbt_msgs-msg:ConstructionSiteStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ConstructionSiteStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tbt_msgs-msg:value-val is deprecated.  Use tbt_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ConstructionSiteStatusEnum>)))
    "Constants for message type '<ConstructionSiteStatusEnum>"
  '((:UNKWON . 0)
    (:NO . 1)
    (:YES . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ConstructionSiteStatusEnum)))
    "Constants for message type 'ConstructionSiteStatusEnum"
  '((:UNKWON . 0)
    (:NO . 1)
    (:YES . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConstructionSiteStatusEnum>) ostream)
  "Serializes a message object of type '<ConstructionSiteStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConstructionSiteStatusEnum>) istream)
  "Deserializes a message object of type '<ConstructionSiteStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConstructionSiteStatusEnum>)))
  "Returns string type for a message object of type '<ConstructionSiteStatusEnum>"
  "tbt_msgs/ConstructionSiteStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConstructionSiteStatusEnum)))
  "Returns string type for a message object of type 'ConstructionSiteStatusEnum"
  "tbt_msgs/ConstructionSiteStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConstructionSiteStatusEnum>)))
  "Returns md5sum for a message object of type '<ConstructionSiteStatusEnum>"
  "14b49dfc19fc8f2b3c8103982145db4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConstructionSiteStatusEnum)))
  "Returns md5sum for a message object of type 'ConstructionSiteStatusEnum"
  "14b49dfc19fc8f2b3c8103982145db4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConstructionSiteStatusEnum>)))
  "Returns full string definition for message of type '<ConstructionSiteStatusEnum>"
  (cl:format cl:nil "uint8 Unkwon = 0~%uint8 No = 1~%uint8 Yes = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConstructionSiteStatusEnum)))
  "Returns full string definition for message of type 'ConstructionSiteStatusEnum"
  (cl:format cl:nil "uint8 Unkwon = 0~%uint8 No = 1~%uint8 Yes = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConstructionSiteStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConstructionSiteStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ConstructionSiteStatusEnum
    (cl:cons ':value (value msg))
))
