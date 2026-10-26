; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude GeneralObjectTypeEnum.msg.html

(cl:defclass <GeneralObjectTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GeneralObjectTypeEnum (<GeneralObjectTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GeneralObjectTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GeneralObjectTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<GeneralObjectTypeEnum> is deprecated: use perception_interface_msgs-msg:GeneralObjectTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <GeneralObjectTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GeneralObjectTypeEnum>)))
    "Constants for message type '<GeneralObjectTypeEnum>"
  '((:GENERAL_OBJECT_TYPE_UNKNOWN . 0)
    (:GENERAL_OBJECT_TYPE_POINT . 1)
    (:GENERAL_OBJECT_TYPE_BOUNDING_BOX . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GeneralObjectTypeEnum)))
    "Constants for message type 'GeneralObjectTypeEnum"
  '((:GENERAL_OBJECT_TYPE_UNKNOWN . 0)
    (:GENERAL_OBJECT_TYPE_POINT . 1)
    (:GENERAL_OBJECT_TYPE_BOUNDING_BOX . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GeneralObjectTypeEnum>) ostream)
  "Serializes a message object of type '<GeneralObjectTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GeneralObjectTypeEnum>) istream)
  "Deserializes a message object of type '<GeneralObjectTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GeneralObjectTypeEnum>)))
  "Returns string type for a message object of type '<GeneralObjectTypeEnum>"
  "perception_interface_msgs/GeneralObjectTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GeneralObjectTypeEnum)))
  "Returns string type for a message object of type 'GeneralObjectTypeEnum"
  "perception_interface_msgs/GeneralObjectTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GeneralObjectTypeEnum>)))
  "Returns md5sum for a message object of type '<GeneralObjectTypeEnum>"
  "aa39dc9f572bd916669a54554f0a8544")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GeneralObjectTypeEnum)))
  "Returns md5sum for a message object of type 'GeneralObjectTypeEnum"
  "aa39dc9f572bd916669a54554f0a8544")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GeneralObjectTypeEnum>)))
  "Returns full string definition for message of type '<GeneralObjectTypeEnum>"
  (cl:format cl:nil "uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GeneralObjectTypeEnum)))
  "Returns full string definition for message of type 'GeneralObjectTypeEnum"
  (cl:format cl:nil "uint8 GENERAL_OBJECT_TYPE_UNKNOWN = 0~%uint8 GENERAL_OBJECT_TYPE_POINT = 1~%uint8 GENERAL_OBJECT_TYPE_BOUNDING_BOX = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GeneralObjectTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GeneralObjectTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'GeneralObjectTypeEnum
    (cl:cons ':value (value msg))
))
