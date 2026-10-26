; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleBeamLightEnum.msg.html

(cl:defclass <VehicleBeamLightEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleBeamLightEnum (<VehicleBeamLightEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleBeamLightEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleBeamLightEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleBeamLightEnum> is deprecated: use perception_interface_msgs-msg:VehicleBeamLightEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleBeamLightEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleBeamLightEnum>)))
    "Constants for message type '<VehicleBeamLightEnum>"
  '((:VEHICLE_BEAMLIGHT_UNKNOWN . 0)
    (:VEHICLE_BEAMLIGHT_OFF . 1)
    (:VEHICLE_BEAMLIGHT_LOW . 2)
    (:VEHICLE_BEAMLIGHT_HIGH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleBeamLightEnum)))
    "Constants for message type 'VehicleBeamLightEnum"
  '((:VEHICLE_BEAMLIGHT_UNKNOWN . 0)
    (:VEHICLE_BEAMLIGHT_OFF . 1)
    (:VEHICLE_BEAMLIGHT_LOW . 2)
    (:VEHICLE_BEAMLIGHT_HIGH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleBeamLightEnum>) ostream)
  "Serializes a message object of type '<VehicleBeamLightEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleBeamLightEnum>) istream)
  "Deserializes a message object of type '<VehicleBeamLightEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleBeamLightEnum>)))
  "Returns string type for a message object of type '<VehicleBeamLightEnum>"
  "perception_interface_msgs/VehicleBeamLightEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleBeamLightEnum)))
  "Returns string type for a message object of type 'VehicleBeamLightEnum"
  "perception_interface_msgs/VehicleBeamLightEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleBeamLightEnum>)))
  "Returns md5sum for a message object of type '<VehicleBeamLightEnum>"
  "dddd83438590e9ffd244cd73ea2fb9c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleBeamLightEnum)))
  "Returns md5sum for a message object of type 'VehicleBeamLightEnum"
  "dddd83438590e9ffd244cd73ea2fb9c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleBeamLightEnum>)))
  "Returns full string definition for message of type '<VehicleBeamLightEnum>"
  (cl:format cl:nil "uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleBeamLightEnum)))
  "Returns full string definition for message of type 'VehicleBeamLightEnum"
  (cl:format cl:nil "uint8 VEHICLE_BEAMLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BEAMLIGHT_OFF = 1~%uint8 VEHICLE_BEAMLIGHT_LOW = 2~%uint8 VEHICLE_BEAMLIGHT_HIGH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleBeamLightEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleBeamLightEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleBeamLightEnum
    (cl:cons ':value (value msg))
))
