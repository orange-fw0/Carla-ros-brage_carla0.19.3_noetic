; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleBlinkLightEnum.msg.html

(cl:defclass <VehicleBlinkLightEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleBlinkLightEnum (<VehicleBlinkLightEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleBlinkLightEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleBlinkLightEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleBlinkLightEnum> is deprecated: use perception_interface_msgs-msg:VehicleBlinkLightEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleBlinkLightEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleBlinkLightEnum>)))
    "Constants for message type '<VehicleBlinkLightEnum>"
  '((:VEHICLE_BLINKLIGHT_UNKNOWN . 0)
    (:VEHICLE_BLINKLIGHT_OFF . 1)
    (:VEHICLE_BLINKLIGHT_LEFT . 2)
    (:VEHICLE_BLINKLIGHT_RIGHT . 3)
    (:VEHICLE_BLINKLIGHT_BOTH . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleBlinkLightEnum)))
    "Constants for message type 'VehicleBlinkLightEnum"
  '((:VEHICLE_BLINKLIGHT_UNKNOWN . 0)
    (:VEHICLE_BLINKLIGHT_OFF . 1)
    (:VEHICLE_BLINKLIGHT_LEFT . 2)
    (:VEHICLE_BLINKLIGHT_RIGHT . 3)
    (:VEHICLE_BLINKLIGHT_BOTH . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleBlinkLightEnum>) ostream)
  "Serializes a message object of type '<VehicleBlinkLightEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleBlinkLightEnum>) istream)
  "Deserializes a message object of type '<VehicleBlinkLightEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleBlinkLightEnum>)))
  "Returns string type for a message object of type '<VehicleBlinkLightEnum>"
  "perception_interface_msgs/VehicleBlinkLightEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleBlinkLightEnum)))
  "Returns string type for a message object of type 'VehicleBlinkLightEnum"
  "perception_interface_msgs/VehicleBlinkLightEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleBlinkLightEnum>)))
  "Returns md5sum for a message object of type '<VehicleBlinkLightEnum>"
  "747c152d13d7aa6fe1da7161e29eac59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleBlinkLightEnum)))
  "Returns md5sum for a message object of type 'VehicleBlinkLightEnum"
  "747c152d13d7aa6fe1da7161e29eac59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleBlinkLightEnum>)))
  "Returns full string definition for message of type '<VehicleBlinkLightEnum>"
  (cl:format cl:nil "uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleBlinkLightEnum)))
  "Returns full string definition for message of type 'VehicleBlinkLightEnum"
  (cl:format cl:nil "uint8 VEHICLE_BLINKLIGHT_UNKNOWN = 0~%uint8 VEHICLE_BLINKLIGHT_OFF = 1~%uint8 VEHICLE_BLINKLIGHT_LEFT = 2~%uint8 VEHICLE_BLINKLIGHT_RIGHT = 3~%uint8 VEHICLE_BLINKLIGHT_BOTH = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleBlinkLightEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleBlinkLightEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleBlinkLightEnum
    (cl:cons ':value (value msg))
))
