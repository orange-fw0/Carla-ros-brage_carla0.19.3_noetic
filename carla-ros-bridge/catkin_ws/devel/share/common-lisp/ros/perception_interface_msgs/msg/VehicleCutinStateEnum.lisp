; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleCutinStateEnum.msg.html

(cl:defclass <VehicleCutinStateEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleCutinStateEnum (<VehicleCutinStateEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCutinStateEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCutinStateEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleCutinStateEnum> is deprecated: use perception_interface_msgs-msg:VehicleCutinStateEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleCutinStateEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleCutinStateEnum>)))
    "Constants for message type '<VehicleCutinStateEnum>"
  '((:VEHICLE_CUTINSTATE_UNKNOWN . 0)
    (:VEHICLE_CUTINSTATE_OFF . 1)
    (:VEHICLE_CUTINSTATE_ON . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleCutinStateEnum)))
    "Constants for message type 'VehicleCutinStateEnum"
  '((:VEHICLE_CUTINSTATE_UNKNOWN . 0)
    (:VEHICLE_CUTINSTATE_OFF . 1)
    (:VEHICLE_CUTINSTATE_ON . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCutinStateEnum>) ostream)
  "Serializes a message object of type '<VehicleCutinStateEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCutinStateEnum>) istream)
  "Deserializes a message object of type '<VehicleCutinStateEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCutinStateEnum>)))
  "Returns string type for a message object of type '<VehicleCutinStateEnum>"
  "perception_interface_msgs/VehicleCutinStateEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCutinStateEnum)))
  "Returns string type for a message object of type 'VehicleCutinStateEnum"
  "perception_interface_msgs/VehicleCutinStateEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCutinStateEnum>)))
  "Returns md5sum for a message object of type '<VehicleCutinStateEnum>"
  "d2b9272c31e91772f816a2e160a22c0d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCutinStateEnum)))
  "Returns md5sum for a message object of type 'VehicleCutinStateEnum"
  "d2b9272c31e91772f816a2e160a22c0d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCutinStateEnum>)))
  "Returns full string definition for message of type '<VehicleCutinStateEnum>"
  (cl:format cl:nil "uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCutinStateEnum)))
  "Returns full string definition for message of type 'VehicleCutinStateEnum"
  (cl:format cl:nil "uint8 VEHICLE_CUTINSTATE_UNKNOWN = 0~%uint8 VEHICLE_CUTINSTATE_OFF = 1~%uint8 VEHICLE_CUTINSTATE_ON = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCutinStateEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCutinStateEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCutinStateEnum
    (cl:cons ':value (value msg))
))
