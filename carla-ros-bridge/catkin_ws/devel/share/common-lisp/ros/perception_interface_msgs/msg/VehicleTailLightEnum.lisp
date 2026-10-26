; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleTailLightEnum.msg.html

(cl:defclass <VehicleTailLightEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleTailLightEnum (<VehicleTailLightEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleTailLightEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleTailLightEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleTailLightEnum> is deprecated: use perception_interface_msgs-msg:VehicleTailLightEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleTailLightEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleTailLightEnum>)))
    "Constants for message type '<VehicleTailLightEnum>"
  '((:VEHICLE_TAILLIGHT_UNKNOWN . 0)
    (:VEHICLE_TAILLIGHT_OFF . 1)
    (:VEHICLE_TAILLIGHT_ON . 2)
    (:VEHICLE_TAILLIGHT_HIGH_ON . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleTailLightEnum)))
    "Constants for message type 'VehicleTailLightEnum"
  '((:VEHICLE_TAILLIGHT_UNKNOWN . 0)
    (:VEHICLE_TAILLIGHT_OFF . 1)
    (:VEHICLE_TAILLIGHT_ON . 2)
    (:VEHICLE_TAILLIGHT_HIGH_ON . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleTailLightEnum>) ostream)
  "Serializes a message object of type '<VehicleTailLightEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleTailLightEnum>) istream)
  "Deserializes a message object of type '<VehicleTailLightEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleTailLightEnum>)))
  "Returns string type for a message object of type '<VehicleTailLightEnum>"
  "perception_interface_msgs/VehicleTailLightEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleTailLightEnum)))
  "Returns string type for a message object of type 'VehicleTailLightEnum"
  "perception_interface_msgs/VehicleTailLightEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleTailLightEnum>)))
  "Returns md5sum for a message object of type '<VehicleTailLightEnum>"
  "a1aea0d1fbaf056d1abd86d4c52b65d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleTailLightEnum)))
  "Returns md5sum for a message object of type 'VehicleTailLightEnum"
  "a1aea0d1fbaf056d1abd86d4c52b65d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleTailLightEnum>)))
  "Returns full string definition for message of type '<VehicleTailLightEnum>"
  (cl:format cl:nil "uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleTailLightEnum)))
  "Returns full string definition for message of type 'VehicleTailLightEnum"
  (cl:format cl:nil "uint8 VEHICLE_TAILLIGHT_UNKNOWN = 0~%uint8 VEHICLE_TAILLIGHT_OFF = 1~%uint8 VEHICLE_TAILLIGHT_ON = 2~%uint8 VEHICLE_TAILLIGHT_HIGH_ON = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleTailLightEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleTailLightEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleTailLightEnum
    (cl:cons ':value (value msg))
))
