; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficBarrierEgoLaneRelationEnum.msg.html

(cl:defclass <TrafficBarrierEgoLaneRelationEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficBarrierEgoLaneRelationEnum (<TrafficBarrierEgoLaneRelationEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficBarrierEgoLaneRelationEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficBarrierEgoLaneRelationEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficBarrierEgoLaneRelationEnum> is deprecated: use perception_interface_msgs-msg:TrafficBarrierEgoLaneRelationEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficBarrierEgoLaneRelationEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficBarrierEgoLaneRelationEnum>)))
    "Constants for message type '<TrafficBarrierEgoLaneRelationEnum>"
  '((:TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE . 0)
    (:TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE . 1)
    (:TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE . 2)
    (:TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficBarrierEgoLaneRelationEnum)))
    "Constants for message type 'TrafficBarrierEgoLaneRelationEnum"
  '((:TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE . 0)
    (:TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE . 1)
    (:TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE . 2)
    (:TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficBarrierEgoLaneRelationEnum>) ostream)
  "Serializes a message object of type '<TrafficBarrierEgoLaneRelationEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficBarrierEgoLaneRelationEnum>) istream)
  "Deserializes a message object of type '<TrafficBarrierEgoLaneRelationEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficBarrierEgoLaneRelationEnum>)))
  "Returns string type for a message object of type '<TrafficBarrierEgoLaneRelationEnum>"
  "perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficBarrierEgoLaneRelationEnum)))
  "Returns string type for a message object of type 'TrafficBarrierEgoLaneRelationEnum"
  "perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficBarrierEgoLaneRelationEnum>)))
  "Returns md5sum for a message object of type '<TrafficBarrierEgoLaneRelationEnum>"
  "48636154521fbcbfb134950150689afa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficBarrierEgoLaneRelationEnum)))
  "Returns md5sum for a message object of type 'TrafficBarrierEgoLaneRelationEnum"
  "48636154521fbcbfb134950150689afa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficBarrierEgoLaneRelationEnum>)))
  "Returns full string definition for message of type '<TrafficBarrierEgoLaneRelationEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficBarrierEgoLaneRelationEnum)))
  "Returns full string definition for message of type 'TrafficBarrierEgoLaneRelationEnum"
  (cl:format cl:nil "uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficBarrierEgoLaneRelationEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficBarrierEgoLaneRelationEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficBarrierEgoLaneRelationEnum
    (cl:cons ':value (value msg))
))
