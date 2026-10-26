; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude VehicleEgoLaneRelationEnum.msg.html

(cl:defclass <VehicleEgoLaneRelationEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleEgoLaneRelationEnum (<VehicleEgoLaneRelationEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleEgoLaneRelationEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleEgoLaneRelationEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<VehicleEgoLaneRelationEnum> is deprecated: use perception_interface_msgs-msg:VehicleEgoLaneRelationEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <VehicleEgoLaneRelationEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleEgoLaneRelationEnum>)))
    "Constants for message type '<VehicleEgoLaneRelationEnum>"
  '((:VEHICLE_EGO_LANE_RELATION_OVERLAP . 0)
    (:VEHICLE_EGO_LANE_RELATION_NO_OVERLAP . 1)
    (:VEHICLE_EGO_LANE_RELATION_OTHERS . 2)
    (:VEHICLE_EGO_LANE_RELATION_UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleEgoLaneRelationEnum)))
    "Constants for message type 'VehicleEgoLaneRelationEnum"
  '((:VEHICLE_EGO_LANE_RELATION_OVERLAP . 0)
    (:VEHICLE_EGO_LANE_RELATION_NO_OVERLAP . 1)
    (:VEHICLE_EGO_LANE_RELATION_OTHERS . 2)
    (:VEHICLE_EGO_LANE_RELATION_UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleEgoLaneRelationEnum>) ostream)
  "Serializes a message object of type '<VehicleEgoLaneRelationEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleEgoLaneRelationEnum>) istream)
  "Deserializes a message object of type '<VehicleEgoLaneRelationEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleEgoLaneRelationEnum>)))
  "Returns string type for a message object of type '<VehicleEgoLaneRelationEnum>"
  "perception_interface_msgs/VehicleEgoLaneRelationEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleEgoLaneRelationEnum)))
  "Returns string type for a message object of type 'VehicleEgoLaneRelationEnum"
  "perception_interface_msgs/VehicleEgoLaneRelationEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleEgoLaneRelationEnum>)))
  "Returns md5sum for a message object of type '<VehicleEgoLaneRelationEnum>"
  "33f97627370f7b320e564c07cd1cb39d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleEgoLaneRelationEnum)))
  "Returns md5sum for a message object of type 'VehicleEgoLaneRelationEnum"
  "33f97627370f7b320e564c07cd1cb39d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleEgoLaneRelationEnum>)))
  "Returns full string definition for message of type '<VehicleEgoLaneRelationEnum>"
  (cl:format cl:nil "uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleEgoLaneRelationEnum)))
  "Returns full string definition for message of type 'VehicleEgoLaneRelationEnum"
  (cl:format cl:nil "uint8 VEHICLE_EGO_LANE_RELATION_OVERLAP = 0~%uint8 VEHICLE_EGO_LANE_RELATION_NO_OVERLAP = 1~%uint8 VEHICLE_EGO_LANE_RELATION_OTHERS = 2~%uint8 VEHICLE_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleEgoLaneRelationEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleEgoLaneRelationEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleEgoLaneRelationEnum
    (cl:cons ':value (value msg))
))
