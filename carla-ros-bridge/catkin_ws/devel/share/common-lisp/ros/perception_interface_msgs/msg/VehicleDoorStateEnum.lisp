; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleDoorStateEnum.msg.html

(cl:defclass <VehicleDoorStateEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleDoorStateEnum (<VehicleDoorStateEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleDoorStateEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleDoorStateEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleDoorStateEnum> is deprecated: use perception_interface_msgs-msg:VehicleDoorStateEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleDoorStateEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleDoorStateEnum>)))
    "Constants for message type '<VehicleDoorStateEnum>"
  '((:VEHICLE_DOORSTATE_UNKNOWN . 0)
    (:VEHICLE_DOORSTATE_OFF . 1)
    (:VEHICLE_DOORSTATE_ON . 2)
    (:VEHICLE_RIGHT_DOOR_OPEN_FULL . 3)
    (:VEHICLE_RIGHT_DOOR_OPEN_HALF . 4)
    (:VEHICLE_LEFT_DOOR_OPEN_FULL . 5)
    (:VEHICLE_LEFT_DOOR_OPEN_HALF . 6)
    (:VEHICLE_DOOR_OPEN_BOTH . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleDoorStateEnum)))
    "Constants for message type 'VehicleDoorStateEnum"
  '((:VEHICLE_DOORSTATE_UNKNOWN . 0)
    (:VEHICLE_DOORSTATE_OFF . 1)
    (:VEHICLE_DOORSTATE_ON . 2)
    (:VEHICLE_RIGHT_DOOR_OPEN_FULL . 3)
    (:VEHICLE_RIGHT_DOOR_OPEN_HALF . 4)
    (:VEHICLE_LEFT_DOOR_OPEN_FULL . 5)
    (:VEHICLE_LEFT_DOOR_OPEN_HALF . 6)
    (:VEHICLE_DOOR_OPEN_BOTH . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleDoorStateEnum>) ostream)
  "Serializes a message object of type '<VehicleDoorStateEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleDoorStateEnum>) istream)
  "Deserializes a message object of type '<VehicleDoorStateEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleDoorStateEnum>)))
  "Returns string type for a message object of type '<VehicleDoorStateEnum>"
  "perception_interface_msgs/VehicleDoorStateEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleDoorStateEnum)))
  "Returns string type for a message object of type 'VehicleDoorStateEnum"
  "perception_interface_msgs/VehicleDoorStateEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleDoorStateEnum>)))
  "Returns md5sum for a message object of type '<VehicleDoorStateEnum>"
  "b6264e92bf3a46ef8a94b9440e7fb99b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleDoorStateEnum)))
  "Returns md5sum for a message object of type 'VehicleDoorStateEnum"
  "b6264e92bf3a46ef8a94b9440e7fb99b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleDoorStateEnum>)))
  "Returns full string definition for message of type '<VehicleDoorStateEnum>"
  (cl:format cl:nil "uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleDoorStateEnum)))
  "Returns full string definition for message of type 'VehicleDoorStateEnum"
  (cl:format cl:nil "uint8 VEHICLE_DOORSTATE_UNKNOWN = 0~%uint8 VEHICLE_DOORSTATE_OFF = 1~%uint8 VEHICLE_DOORSTATE_ON = 2~%uint8 VEHICLE_RIGHT_DOOR_OPEN_FULL = 3~%uint8 VEHICLE_RIGHT_DOOR_OPEN_HALF = 4~%uint8 VEHICLE_LEFT_DOOR_OPEN_FULL = 5~%uint8 VEHICLE_LEFT_DOOR_OPEN_HALF = 6~%uint8 VEHICLE_DOOR_OPEN_BOTH = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleDoorStateEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleDoorStateEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleDoorStateEnum
    (cl:cons ':value (value msg))
))
