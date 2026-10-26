; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ObjectTypeEnum.msg.html

(cl:defclass <ObjectTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ObjectTypeEnum (<ObjectTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ObjectTypeEnum> is deprecated: use perception_interface_msgs-msg:ObjectTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ObjectTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectTypeEnum>)))
    "Constants for message type '<ObjectTypeEnum>"
  '((:OBJECT_TYPE_GENERAL_OBJECT . 0)
    (:OBJECT_TYPE_VEHICLE . 1)
    (:OBJECT_TYPE_VRU . 2)
    (:OBJECT_TYPE_TRAFFIC_BARRIER . 3)
    (:OBJECT_TYPE_TRAFFIC_LIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectTypeEnum)))
    "Constants for message type 'ObjectTypeEnum"
  '((:OBJECT_TYPE_GENERAL_OBJECT . 0)
    (:OBJECT_TYPE_VEHICLE . 1)
    (:OBJECT_TYPE_VRU . 2)
    (:OBJECT_TYPE_TRAFFIC_BARRIER . 3)
    (:OBJECT_TYPE_TRAFFIC_LIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectTypeEnum>) ostream)
  "Serializes a message object of type '<ObjectTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectTypeEnum>) istream)
  "Deserializes a message object of type '<ObjectTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectTypeEnum>)))
  "Returns string type for a message object of type '<ObjectTypeEnum>"
  "perception_interface_msgs/ObjectTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectTypeEnum)))
  "Returns string type for a message object of type 'ObjectTypeEnum"
  "perception_interface_msgs/ObjectTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectTypeEnum>)))
  "Returns md5sum for a message object of type '<ObjectTypeEnum>"
  "c4b82617ec9b6b748ddb367096f0b9e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectTypeEnum)))
  "Returns md5sum for a message object of type 'ObjectTypeEnum"
  "c4b82617ec9b6b748ddb367096f0b9e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectTypeEnum>)))
  "Returns full string definition for message of type '<ObjectTypeEnum>"
  (cl:format cl:nil "uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectTypeEnum)))
  "Returns full string definition for message of type 'ObjectTypeEnum"
  (cl:format cl:nil "uint8 OBJECT_TYPE_GENERAL_OBJECT = 0~%uint8 OBJECT_TYPE_VEHICLE = 1~%uint8 OBJECT_TYPE_VRU = 2~%uint8 OBJECT_TYPE_TRAFFIC_BARRIER = 3~%uint8 OBJECT_TYPE_TRAFFIC_LIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectTypeEnum
    (cl:cons ':value (value msg))
))
