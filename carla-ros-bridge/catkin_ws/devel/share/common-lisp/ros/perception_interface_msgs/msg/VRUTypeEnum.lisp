; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VRUTypeEnum.msg.html

(cl:defclass <VRUTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VRUTypeEnum (<VRUTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VRUTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VRUTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VRUTypeEnum> is deprecated: use perception_interface_msgs-msg:VRUTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VRUTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VRUTypeEnum>)))
    "Constants for message type '<VRUTypeEnum>"
  '((:VRU_TYPE_UNKNOWN . 0)
    (:VRU_TYPE_PEDESTRIAN . 1)
    (:VRU_TYPE_BICYCLIST . 2)
    (:VRU_TYPE_TRICYCLIST . 3)
    (:VRU_TYPE_TROLLEY . 4)
    (:VRU_TYPE_ANIMAL . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VRUTypeEnum)))
    "Constants for message type 'VRUTypeEnum"
  '((:VRU_TYPE_UNKNOWN . 0)
    (:VRU_TYPE_PEDESTRIAN . 1)
    (:VRU_TYPE_BICYCLIST . 2)
    (:VRU_TYPE_TRICYCLIST . 3)
    (:VRU_TYPE_TROLLEY . 4)
    (:VRU_TYPE_ANIMAL . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VRUTypeEnum>) ostream)
  "Serializes a message object of type '<VRUTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VRUTypeEnum>) istream)
  "Deserializes a message object of type '<VRUTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VRUTypeEnum>)))
  "Returns string type for a message object of type '<VRUTypeEnum>"
  "perception_interface_msgs/VRUTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VRUTypeEnum)))
  "Returns string type for a message object of type 'VRUTypeEnum"
  "perception_interface_msgs/VRUTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VRUTypeEnum>)))
  "Returns md5sum for a message object of type '<VRUTypeEnum>"
  "d3a708500b6411e13ac2c18636ec1880")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VRUTypeEnum)))
  "Returns md5sum for a message object of type 'VRUTypeEnum"
  "d3a708500b6411e13ac2c18636ec1880")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VRUTypeEnum>)))
  "Returns full string definition for message of type '<VRUTypeEnum>"
  (cl:format cl:nil "uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VRUTypeEnum)))
  "Returns full string definition for message of type 'VRUTypeEnum"
  (cl:format cl:nil "uint8 VRU_TYPE_UNKNOWN = 0~%uint8 VRU_TYPE_PEDESTRIAN = 1~%uint8 VRU_TYPE_BICYCLIST = 2~%uint8 VRU_TYPE_TRICYCLIST = 3~%uint8 VRU_TYPE_TROLLEY = 4~%uint8 VRU_TYPE_ANIMAL = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VRUTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VRUTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VRUTypeEnum
    (cl:cons ':value (value msg))
))
