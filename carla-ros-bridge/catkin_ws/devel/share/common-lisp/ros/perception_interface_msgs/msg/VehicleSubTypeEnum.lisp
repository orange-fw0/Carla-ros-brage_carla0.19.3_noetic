; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleSubTypeEnum.msg.html

(cl:defclass <VehicleSubTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleSubTypeEnum (<VehicleSubTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleSubTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleSubTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleSubTypeEnum> is deprecated: use perception_interface_msgs-msg:VehicleSubTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleSubTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleSubTypeEnum>)))
    "Constants for message type '<VehicleSubTypeEnum>"
  '((:VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE . 0)
    (:VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE . 1)
    (:VEHICLE_SUB_TYPE_UNKNOWN_CAR . 2)
    (:VEHICLE_SUB_TYPE_SEDAN_CAR . 3)
    (:VEHICLE_SUB_TYPE_SUV_CAR . 4)
    (:VEHICLE_SUB_TYPE_POLICE_CAR . 5)
    (:VEHICLE_SUB_TYPE_PICKUP_CAR . 6)
    (:VEHICLE_SUB_TYPE_UNKNOWN_TRUCK . 7)
    (:VEHICLE_SUB_TYPE_VAN_TRUCK . 8)
    (:VEHICLE_SUB_TYPE_PLATE_TRUCK . 9)
    (:VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK . 10)
    (:VEHICLE_SUB_TYPE_TRAILER_TRUCK . 11)
    (:VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK . 12)
    (:VEHICLE_SUB_TYPE_ENGINEERING_TRUCK . 13)
    (:VEHICLE_SUB_TYPE_AMBULANCE_TRUCK . 14)
    (:VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK . 15)
    (:VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK . 16)
    (:VEHICLE_SUB_TYPE_SWEEPER_TRUCK . 17)
    (:VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK . 18)
    (:VEHICLE_SUB_TYPE_UNKNOWN_BUS . 19)
    (:VEHICLE_SUB_TYPE_PASSENGER_BUS . 20)
    (:VEHICLE_SUB_TYPE_SCHOOL_BUS . 21)
    (:VEHICLE_SUB_TYPE_CITY_BUS . 22)
    (:VEHICLE_SUB_TYPE_ARTICULATED_BUS . 23)
    (:VEHICLE_SUB_TYPE_TROLLEY_BUS . 24)
    (:VEHICLE_SUB_TYPE_MINI_BUS . 25)
    (:VEHICLE_SUB_TYPE_RV_BUS . 26)
    (:VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE . 27)
    (:VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK . 28)
    (:VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK . 29)
    (:VEHICLE_SUB_TYPE_DUMP_TRUCK . 30)
    (:VEHICLE_SUB_TYPE_TANK_TRUCK . 31)
    (:VEHICLE_SUB_TYPE_MPV_CAR . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleSubTypeEnum)))
    "Constants for message type 'VehicleSubTypeEnum"
  '((:VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE . 0)
    (:VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE . 1)
    (:VEHICLE_SUB_TYPE_UNKNOWN_CAR . 2)
    (:VEHICLE_SUB_TYPE_SEDAN_CAR . 3)
    (:VEHICLE_SUB_TYPE_SUV_CAR . 4)
    (:VEHICLE_SUB_TYPE_POLICE_CAR . 5)
    (:VEHICLE_SUB_TYPE_PICKUP_CAR . 6)
    (:VEHICLE_SUB_TYPE_UNKNOWN_TRUCK . 7)
    (:VEHICLE_SUB_TYPE_VAN_TRUCK . 8)
    (:VEHICLE_SUB_TYPE_PLATE_TRUCK . 9)
    (:VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK . 10)
    (:VEHICLE_SUB_TYPE_TRAILER_TRUCK . 11)
    (:VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK . 12)
    (:VEHICLE_SUB_TYPE_ENGINEERING_TRUCK . 13)
    (:VEHICLE_SUB_TYPE_AMBULANCE_TRUCK . 14)
    (:VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK . 15)
    (:VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK . 16)
    (:VEHICLE_SUB_TYPE_SWEEPER_TRUCK . 17)
    (:VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK . 18)
    (:VEHICLE_SUB_TYPE_UNKNOWN_BUS . 19)
    (:VEHICLE_SUB_TYPE_PASSENGER_BUS . 20)
    (:VEHICLE_SUB_TYPE_SCHOOL_BUS . 21)
    (:VEHICLE_SUB_TYPE_CITY_BUS . 22)
    (:VEHICLE_SUB_TYPE_ARTICULATED_BUS . 23)
    (:VEHICLE_SUB_TYPE_TROLLEY_BUS . 24)
    (:VEHICLE_SUB_TYPE_MINI_BUS . 25)
    (:VEHICLE_SUB_TYPE_RV_BUS . 26)
    (:VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE . 27)
    (:VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK . 28)
    (:VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK . 29)
    (:VEHICLE_SUB_TYPE_DUMP_TRUCK . 30)
    (:VEHICLE_SUB_TYPE_TANK_TRUCK . 31)
    (:VEHICLE_SUB_TYPE_MPV_CAR . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleSubTypeEnum>) ostream)
  "Serializes a message object of type '<VehicleSubTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleSubTypeEnum>) istream)
  "Deserializes a message object of type '<VehicleSubTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleSubTypeEnum>)))
  "Returns string type for a message object of type '<VehicleSubTypeEnum>"
  "perception_interface_msgs/VehicleSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleSubTypeEnum)))
  "Returns string type for a message object of type 'VehicleSubTypeEnum"
  "perception_interface_msgs/VehicleSubTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleSubTypeEnum>)))
  "Returns md5sum for a message object of type '<VehicleSubTypeEnum>"
  "d189e6ab74e25c32536331914cebc3cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleSubTypeEnum)))
  "Returns md5sum for a message object of type 'VehicleSubTypeEnum"
  "d189e6ab74e25c32536331914cebc3cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleSubTypeEnum>)))
  "Returns full string definition for message of type '<VehicleSubTypeEnum>"
  (cl:format cl:nil "uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleSubTypeEnum)))
  "Returns full string definition for message of type 'VehicleSubTypeEnum"
  (cl:format cl:nil "uint8 VEHICLE_SUB_TYPE_UNKNOWN_VEHICLE = 0~%uint8 VEHICLE_SUB_TYPE_LAMP_UNKNOWN_VEHICLE = 1~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_CAR = 2~%uint8 VEHICLE_SUB_TYPE_SEDAN_CAR = 3~%uint8 VEHICLE_SUB_TYPE_SUV_CAR = 4~%uint8 VEHICLE_SUB_TYPE_POLICE_CAR = 5~%uint8 VEHICLE_SUB_TYPE_PICKUP_CAR = 6~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_TRUCK = 7~%uint8 VEHICLE_SUB_TYPE_VAN_TRUCK = 8~%uint8 VEHICLE_SUB_TYPE_PLATE_TRUCK = 9~%uint8 VEHICLE_SUB_TYPE_DANGER_TRANSPORT_TRUCK = 10~%uint8 VEHICLE_SUB_TYPE_TRAILER_TRUCK = 11~%uint8 VEHICLE_SUB_TYPE_VEHICLE_CARRIER_TRUCK = 12~%uint8 VEHICLE_SUB_TYPE_ENGINEERING_TRUCK = 13~%uint8 VEHICLE_SUB_TYPE_AMBULANCE_TRUCK = 14~%uint8 VEHICLE_SUB_TYPE_FIRE_ENGINE_TRUCK = 15~%uint8 VEHICLE_SUB_TYPE_EXTREMELY_LONG_TRUCK = 16~%uint8 VEHICLE_SUB_TYPE_SWEEPER_TRUCK = 17~%uint8 VEHICLE_SUB_TYPE_FORK_LIFT_TRUCK = 18~%uint8 VEHICLE_SUB_TYPE_UNKNOWN_BUS = 19~%uint8 VEHICLE_SUB_TYPE_PASSENGER_BUS = 20~%uint8 VEHICLE_SUB_TYPE_SCHOOL_BUS = 21~%uint8 VEHICLE_SUB_TYPE_CITY_BUS = 22~%uint8 VEHICLE_SUB_TYPE_ARTICULATED_BUS = 23~%uint8 VEHICLE_SUB_TYPE_TROLLEY_BUS = 24~%uint8 VEHICLE_SUB_TYPE_MINI_BUS = 25~%uint8 VEHICLE_SUB_TYPE_RV_BUS = 26~%uint8 VEHICLE_SUB_TYPE_WHEEL_UNKNOWN_VEHICLE = 27~%uint8 VEHICLE_SUB_TYPE_PLATE_W_SG_TRUCK = 28~%uint8 VEHICLE_SUB_TYPE_PLATE_WO_SG_TRUCK = 29~%uint8 VEHICLE_SUB_TYPE_DUMP_TRUCK = 30~%uint8 VEHICLE_SUB_TYPE_TANK_TRUCK = 31~%uint8 VEHICLE_SUB_TYPE_MPV_CAR = 32~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleSubTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleSubTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleSubTypeEnum
    (cl:cons ':value (value msg))
))
