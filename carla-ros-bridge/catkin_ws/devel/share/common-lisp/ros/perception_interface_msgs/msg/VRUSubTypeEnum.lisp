; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VRUSubTypeEnum.msg.html

(cl:defclass <VRUSubTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VRUSubTypeEnum (<VRUSubTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VRUSubTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VRUSubTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VRUSubTypeEnum> is deprecated: use perception_interface_msgs-msg:VRUSubTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VRUSubTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VRUSubTypeEnum>)))
    "Constants for message type '<VRUSubTypeEnum>"
  '((:VRU_SUB_TYPE_UNKNOWN_VRU . 0)
    (:VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN . 1)
    (:VRU_SUB_TYPE_STAND_PEDESTRIAN . 2)
    (:VRU_SUB_TYPE_SQUATTER_PEDESTRIAN . 3)
    (:VRU_SUB_TYPE_LYING_PEDESTRIAN . 4)
    (:VRU_SUB_TYPE_UNKNOWN_BICYCLIST . 5)
    (:VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST . 6)
    (:VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST . 7)
    (:VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST . 8)
    (:VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST . 9)
    (:VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST . 10)
    (:VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST . 11)
    (:VRU_SUB_TYPE_UNKNOWN_TRICYCLIST . 12)
    (:VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST . 13)
    (:VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST . 14)
    (:VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST . 15)
    (:VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST . 16)
    (:VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST . 17)
    (:VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST . 18)
    (:VRU_SUB_TYPE_UNKNOWN_TROLLEY . 19)
    (:VRU_SUB_TYPE_FLAT_TROLLEY . 20)
    (:VRU_SUB_TYPE_SHOPPING_TROLLEY . 21)
    (:VRU_SUB_TYPE_STROLLER_TROLLEY . 22)
    (:VRU_SUB_TYPE_GARBAGE_TROLLEY . 23)
    (:VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY . 24)
    (:VRU_SUB_TYPE_ANIMAL . 25))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VRUSubTypeEnum)))
    "Constants for message type 'VRUSubTypeEnum"
  '((:VRU_SUB_TYPE_UNKNOWN_VRU . 0)
    (:VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN . 1)
    (:VRU_SUB_TYPE_STAND_PEDESTRIAN . 2)
    (:VRU_SUB_TYPE_SQUATTER_PEDESTRIAN . 3)
    (:VRU_SUB_TYPE_LYING_PEDESTRIAN . 4)
    (:VRU_SUB_TYPE_UNKNOWN_BICYCLIST . 5)
    (:VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST . 6)
    (:VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST . 7)
    (:VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST . 8)
    (:VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST . 9)
    (:VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST . 10)
    (:VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST . 11)
    (:VRU_SUB_TYPE_UNKNOWN_TRICYCLIST . 12)
    (:VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST . 13)
    (:VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST . 14)
    (:VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST . 15)
    (:VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST . 16)
    (:VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST . 17)
    (:VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST . 18)
    (:VRU_SUB_TYPE_UNKNOWN_TROLLEY . 19)
    (:VRU_SUB_TYPE_FLAT_TROLLEY . 20)
    (:VRU_SUB_TYPE_SHOPPING_TROLLEY . 21)
    (:VRU_SUB_TYPE_STROLLER_TROLLEY . 22)
    (:VRU_SUB_TYPE_GARBAGE_TROLLEY . 23)
    (:VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY . 24)
    (:VRU_SUB_TYPE_ANIMAL . 25))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VRUSubTypeEnum>) ostream)
  "Serializes a message object of type '<VRUSubTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VRUSubTypeEnum>) istream)
  "Deserializes a message object of type '<VRUSubTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VRUSubTypeEnum>)))
  "Returns string type for a message object of type '<VRUSubTypeEnum>"
  "perception_interface_msgs/VRUSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VRUSubTypeEnum)))
  "Returns string type for a message object of type 'VRUSubTypeEnum"
  "perception_interface_msgs/VRUSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VRUSubTypeEnum>)))
  "Returns md5sum for a message object of type '<VRUSubTypeEnum>"
  "23ddcc9847cb4f2833e74a78a134d97f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VRUSubTypeEnum)))
  "Returns md5sum for a message object of type 'VRUSubTypeEnum"
  "23ddcc9847cb4f2833e74a78a134d97f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VRUSubTypeEnum>)))
  "Returns full string definition for message of type '<VRUSubTypeEnum>"
  (cl:format cl:nil "uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VRUSubTypeEnum)))
  "Returns full string definition for message of type 'VRUSubTypeEnum"
  (cl:format cl:nil "uint8 VRU_SUB_TYPE_UNKNOWN_VRU = 0~%uint8 VRU_SUB_TYPE_UNKNOWN_PEDESTRIAN = 1~%uint8 VRU_SUB_TYPE_STAND_PEDESTRIAN = 2~%uint8 VRU_SUB_TYPE_SQUATTER_PEDESTRIAN = 3~%uint8 VRU_SUB_TYPE_LYING_PEDESTRIAN = 4~%uint8 VRU_SUB_TYPE_UNKNOWN_BICYCLIST = 5~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_BICYCLIST = 6~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_BICYCLIST = 7~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_BICYCLIST = 8~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_BICYCLIST = 9~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_BICYCLIST = 10~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_BICYCLIST = 11~%uint8 VRU_SUB_TYPE_UNKNOWN_TRICYCLIST = 12~%uint8 VRU_SUB_TYPE_RIDER_MANUAL_TRICYCLIST = 13~%uint8 VRU_SUB_TYPE_NO_RIDER_MANUAL_TRICYCLIST = 14~%uint8 VRU_SUB_TYPE_RIDER_ELECTRIC_TRICYCLIST = 15~%uint8 VRU_SUB_TYPE_NO_RIDER_ELECTRIC_TRICYCLIST = 16~%uint8 VRU_SUB_TYPE_RIDER_MOTOR_TRICYCLIST = 17~%uint8 VRU_SUB_TYPE_NO_RIDER_MOTOR_TRICYCLIST = 18~%uint8 VRU_SUB_TYPE_UNKNOWN_TROLLEY = 19~%uint8 VRU_SUB_TYPE_FLAT_TROLLEY = 20~%uint8 VRU_SUB_TYPE_SHOPPING_TROLLEY = 21~%uint8 VRU_SUB_TYPE_STROLLER_TROLLEY = 22~%uint8 VRU_SUB_TYPE_GARBAGE_TROLLEY = 23~%uint8 VRU_SUB_TYPE_WHEEL_CHAIR_TROLLEY = 24~%uint8 VRU_SUB_TYPE_ANIMAL = 25~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VRUSubTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VRUSubTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VRUSubTypeEnum
    (cl:cons ':value (value msg))
))
