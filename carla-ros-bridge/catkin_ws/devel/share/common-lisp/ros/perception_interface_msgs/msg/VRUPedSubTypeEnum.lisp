; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VRUPedSubTypeEnum.msg.html

(cl:defclass <VRUPedSubTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VRUPedSubTypeEnum (<VRUPedSubTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VRUPedSubTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VRUPedSubTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VRUPedSubTypeEnum> is deprecated: use perception_interface_msgs-msg:VRUPedSubTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VRUPedSubTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VRUPedSubTypeEnum>)))
    "Constants for message type '<VRUPedSubTypeEnum>"
  '((:VRU_TYPE_UNKNOWN . 0)
    (:VRU_PED_TYPE_WORKER . 1)
    (:VRU_PED_TYPE_CHILD . 2)
    (:VRU_PED_TYPE_ADULT . 3)
    (:VRU_PED_TYPE_POLICE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VRUPedSubTypeEnum)))
    "Constants for message type 'VRUPedSubTypeEnum"
  '((:VRU_TYPE_UNKNOWN . 0)
    (:VRU_PED_TYPE_WORKER . 1)
    (:VRU_PED_TYPE_CHILD . 2)
    (:VRU_PED_TYPE_ADULT . 3)
    (:VRU_PED_TYPE_POLICE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VRUPedSubTypeEnum>) ostream)
  "Serializes a message object of type '<VRUPedSubTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VRUPedSubTypeEnum>) istream)
  "Deserializes a message object of type '<VRUPedSubTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VRUPedSubTypeEnum>)))
  "Returns string type for a message object of type '<VRUPedSubTypeEnum>"
  "perception_interface_msgs/VRUPedSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VRUPedSubTypeEnum)))
  "Returns string type for a message object of type 'VRUPedSubTypeEnum"
  "perception_interface_msgs/VRUPedSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VRUPedSubTypeEnum>)))
  "Returns md5sum for a message object of type '<VRUPedSubTypeEnum>"
  "050ab255b27f29784d1bfe36b2bc951f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VRUPedSubTypeEnum)))
  "Returns md5sum for a message object of type 'VRUPedSubTypeEnum"
  "050ab255b27f29784d1bfe36b2bc951f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VRUPedSubTypeEnum>)))
  "Returns full string definition for message of type '<VRUPedSubTypeEnum>"
  (cl:format cl:nil "uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VRUPedSubTypeEnum)))
  "Returns full string definition for message of type 'VRUPedSubTypeEnum"
  (cl:format cl:nil "uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_PED_TYPE_WORKER = 1~%uint8 VRU_PED_TYPE_CHILD = 2~%uint8 VRU_PED_TYPE_ADULT = 3~%uint8 VRU_PED_TYPE_POLICE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VRUPedSubTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VRUPedSubTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VRUPedSubTypeEnum
    (cl:cons ':value (value msg))
))
