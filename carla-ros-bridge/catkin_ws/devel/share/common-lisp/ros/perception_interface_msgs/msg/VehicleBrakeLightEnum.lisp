; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleBrakeLightEnum.msg.html

(cl:defclass <VehicleBrakeLightEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleBrakeLightEnum (<VehicleBrakeLightEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleBrakeLightEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleBrakeLightEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleBrakeLightEnum> is deprecated: use perception_interface_msgs-msg:VehicleBrakeLightEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleBrakeLightEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleBrakeLightEnum>)))
    "Constants for message type '<VehicleBrakeLightEnum>"
  '((:VEHICLE_BRAKELIGHT_UNKNOWN . 0)
    (:VEHICLE_BRAKELIGHT_OFF . 1)
    (:VEHICLE_BRAKELIGHT_ON . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleBrakeLightEnum)))
    "Constants for message type 'VehicleBrakeLightEnum"
  '((:VEHICLE_BRAKELIGHT_UNKNOWN . 0)
    (:VEHICLE_BRAKELIGHT_OFF . 1)
    (:VEHICLE_BRAKELIGHT_ON . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleBrakeLightEnum>) ostream)
  "Serializes a message object of type '<VehicleBrakeLightEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleBrakeLightEnum>) istream)
  "Deserializes a message object of type '<VehicleBrakeLightEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleBrakeLightEnum>)))
  "Returns string type for a message object of type '<VehicleBrakeLightEnum>"
  "perception_interface_msgs/VehicleBrakeLightEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleBrakeLightEnum)))
  "Returns string type for a message object of type 'VehicleBrakeLightEnum"
  "perception_interface_msgs/VehicleBrakeLightEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleBrakeLightEnum>)))
  "Returns md5sum for a message object of type '<VehicleBrakeLightEnum>"
  "0e7090b91737208264dc29b811e960ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleBrakeLightEnum)))
  "Returns md5sum for a message object of type 'VehicleBrakeLightEnum"
  "0e7090b91737208264dc29b811e960ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleBrakeLightEnum>)))
  "Returns full string definition for message of type '<VehicleBrakeLightEnum>"
  (cl:format cl:nil "uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleBrakeLightEnum)))
  "Returns full string definition for message of type 'VehicleBrakeLightEnum"
  (cl:format cl:nil "uint8 VEHICLE_BRAKELIGHT_UNKNOWN = 0~%uint8 VEHICLE_BRAKELIGHT_OFF = 1~%uint8 VEHICLE_BRAKELIGHT_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleBrakeLightEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleBrakeLightEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleBrakeLightEnum
    (cl:cons ':value (value msg))
))
