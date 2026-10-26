; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ObjectTypePropertyEnum.msg.html

(cl:defclass <ObjectTypePropertyEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjectTypePropertyEnum (<ObjectTypePropertyEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectTypePropertyEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectTypePropertyEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ObjectTypePropertyEnum> is deprecated: use perception_interface_msgs-msg:ObjectTypePropertyEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ObjectTypePropertyEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectTypePropertyEnum>)))
    "Constants for message type '<ObjectTypePropertyEnum>"
  '((:PROPERTY_OBJECT_TYPE_ENUM . 0)
    (:PROPERTY_GENERAL_OBJECT_TYPE_ENUM . 1)
    (:PROPERTY_VEHICLE_TYPE_ENUM . 2)
    (:PROPERTY_VEHICLE_SUB_TYPE_ENUM . 3)
    (:PROPERTY_VRU_TYPE_ENUM . 4)
    (:PROPERTY_VRU_SUB_TYPE_ENUM . 5)
    (:PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM . 6)
    (:PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectTypePropertyEnum)))
    "Constants for message type 'ObjectTypePropertyEnum"
  '((:PROPERTY_OBJECT_TYPE_ENUM . 0)
    (:PROPERTY_GENERAL_OBJECT_TYPE_ENUM . 1)
    (:PROPERTY_VEHICLE_TYPE_ENUM . 2)
    (:PROPERTY_VEHICLE_SUB_TYPE_ENUM . 3)
    (:PROPERTY_VRU_TYPE_ENUM . 4)
    (:PROPERTY_VRU_SUB_TYPE_ENUM . 5)
    (:PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM . 6)
    (:PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectTypePropertyEnum>) ostream)
  "Serializes a message object of type '<ObjectTypePropertyEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectTypePropertyEnum>) istream)
  "Deserializes a message object of type '<ObjectTypePropertyEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectTypePropertyEnum>)))
  "Returns string type for a message object of type '<ObjectTypePropertyEnum>"
  "perception_interface_msgs/ObjectTypePropertyEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectTypePropertyEnum)))
  "Returns string type for a message object of type 'ObjectTypePropertyEnum"
  "perception_interface_msgs/ObjectTypePropertyEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectTypePropertyEnum>)))
  "Returns md5sum for a message object of type '<ObjectTypePropertyEnum>"
  "66ce81927f218dd4fb2e91cd30496614")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectTypePropertyEnum)))
  "Returns md5sum for a message object of type 'ObjectTypePropertyEnum"
  "66ce81927f218dd4fb2e91cd30496614")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectTypePropertyEnum>)))
  "Returns full string definition for message of type '<ObjectTypePropertyEnum>"
  (cl:format cl:nil "uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectTypePropertyEnum)))
  "Returns full string definition for message of type 'ObjectTypePropertyEnum"
  (cl:format cl:nil "uint8 PROPERTY_OBJECT_TYPE_ENUM = 0~%uint8 PROPERTY_GENERAL_OBJECT_TYPE_ENUM = 1~%uint8 PROPERTY_VEHICLE_TYPE_ENUM = 2~%uint8 PROPERTY_VEHICLE_SUB_TYPE_ENUM = 3~%uint8 PROPERTY_VRU_TYPE_ENUM = 4~%uint8 PROPERTY_VRU_SUB_TYPE_ENUM = 5~%uint8 PROPERTY_TRAFFIC_BARRIER_TYPE_ENUM = 6~%uint8 PROPERTY_TRAFFIC_LIGHT_TYPE_ENUM = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectTypePropertyEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectTypePropertyEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectTypePropertyEnum
    (cl:cons ':value (value msg))
))
