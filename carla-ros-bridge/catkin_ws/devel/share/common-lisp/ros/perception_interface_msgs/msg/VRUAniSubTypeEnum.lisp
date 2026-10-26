; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VRUAniSubTypeEnum.msg.html

(cl:defclass <VRUAniSubTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VRUAniSubTypeEnum (<VRUAniSubTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VRUAniSubTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VRUAniSubTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VRUAniSubTypeEnum> is deprecated: use perception_interface_msgs-msg:VRUAniSubTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VRUAniSubTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VRUAniSubTypeEnum>)))
    "Constants for message type '<VRUAniSubTypeEnum>"
  '((:VRU_TYPE_UNKNOWN . 0)
    (:VRU_ANI_TYPE_DOG . 1)
    (:VRU_ANI_TYPE_CAT . 2)
    (:VRU_ANI_TYPE_HORSE . 3)
    (:VRU_ANI_TYPE_COW . 4)
    (:VRU_ANI_TYPE_SHEEP . 5)
    (:VRU_ANI_TYPE_PIG . 6)
    (:VRU_ANI_TYPE_OTHER . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VRUAniSubTypeEnum)))
    "Constants for message type 'VRUAniSubTypeEnum"
  '((:VRU_TYPE_UNKNOWN . 0)
    (:VRU_ANI_TYPE_DOG . 1)
    (:VRU_ANI_TYPE_CAT . 2)
    (:VRU_ANI_TYPE_HORSE . 3)
    (:VRU_ANI_TYPE_COW . 4)
    (:VRU_ANI_TYPE_SHEEP . 5)
    (:VRU_ANI_TYPE_PIG . 6)
    (:VRU_ANI_TYPE_OTHER . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VRUAniSubTypeEnum>) ostream)
  "Serializes a message object of type '<VRUAniSubTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VRUAniSubTypeEnum>) istream)
  "Deserializes a message object of type '<VRUAniSubTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VRUAniSubTypeEnum>)))
  "Returns string type for a message object of type '<VRUAniSubTypeEnum>"
  "perception_interface_msgs/VRUAniSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VRUAniSubTypeEnum)))
  "Returns string type for a message object of type 'VRUAniSubTypeEnum"
  "perception_interface_msgs/VRUAniSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VRUAniSubTypeEnum>)))
  "Returns md5sum for a message object of type '<VRUAniSubTypeEnum>"
  "8b3d5863788ffa9eebb0b44fd5f6862a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VRUAniSubTypeEnum)))
  "Returns md5sum for a message object of type 'VRUAniSubTypeEnum"
  "8b3d5863788ffa9eebb0b44fd5f6862a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VRUAniSubTypeEnum>)))
  "Returns full string definition for message of type '<VRUAniSubTypeEnum>"
  (cl:format cl:nil "uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VRUAniSubTypeEnum)))
  "Returns full string definition for message of type 'VRUAniSubTypeEnum"
  (cl:format cl:nil "uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_ANI_TYPE_DOG = 1~%uint8 VRU_ANI_TYPE_CAT = 2~%uint8 VRU_ANI_TYPE_HORSE = 3~%uint8 VRU_ANI_TYPE_COW = 4~%uint8 VRU_ANI_TYPE_SHEEP = 5~%uint8 VRU_ANI_TYPE_PIG = 6~%uint8 VRU_ANI_TYPE_OTHER = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VRUAniSubTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VRUAniSubTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VRUAniSubTypeEnum
    (cl:cons ':value (value msg))
))
