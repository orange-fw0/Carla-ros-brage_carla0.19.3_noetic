; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleTypeEnum.msg.html

(cl:defclass <VehicleTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleTypeEnum (<VehicleTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleTypeEnum> is deprecated: use perception_interface_msgs-msg:VehicleTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleTypeEnum>)))
    "Constants for message type '<VehicleTypeEnum>"
  '((:VEHICLE_TYPE_UNKNOWN . 0)
    (:VEHICLE_TYPE_CAR . 1)
    (:VEHICLE_TYPE_TRUCK . 2)
    (:VEHICLE_TYPE_BUS . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleTypeEnum)))
    "Constants for message type 'VehicleTypeEnum"
  '((:VEHICLE_TYPE_UNKNOWN . 0)
    (:VEHICLE_TYPE_CAR . 1)
    (:VEHICLE_TYPE_TRUCK . 2)
    (:VEHICLE_TYPE_BUS . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleTypeEnum>) ostream)
  "Serializes a message object of type '<VehicleTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleTypeEnum>) istream)
  "Deserializes a message object of type '<VehicleTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleTypeEnum>)))
  "Returns string type for a message object of type '<VehicleTypeEnum>"
  "perception_interface_msgs/VehicleTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleTypeEnum)))
  "Returns string type for a message object of type 'VehicleTypeEnum"
  "perception_interface_msgs/VehicleTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleTypeEnum>)))
  "Returns md5sum for a message object of type '<VehicleTypeEnum>"
  "a2ee3c2a1fb5af633f7f901d1fb4738e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleTypeEnum)))
  "Returns md5sum for a message object of type 'VehicleTypeEnum"
  "a2ee3c2a1fb5af633f7f901d1fb4738e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleTypeEnum>)))
  "Returns full string definition for message of type '<VehicleTypeEnum>"
  (cl:format cl:nil "uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleTypeEnum)))
  "Returns full string definition for message of type 'VehicleTypeEnum"
  (cl:format cl:nil "uint8 VEHICLE_TYPE_UNKNOWN = 0~%uint8 VEHICLE_TYPE_CAR = 1~%uint8 VEHICLE_TYPE_TRUCK = 2~%uint8 VEHICLE_TYPE_BUS = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleTypeEnum
    (cl:cons ':value (value msg))
))
