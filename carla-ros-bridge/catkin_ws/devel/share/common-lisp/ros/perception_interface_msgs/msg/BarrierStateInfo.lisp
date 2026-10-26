; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude BarrierStateInfo.msg.html

(cl:defclass <BarrierStateInfo> (roslisp-msg-protocol:ros-message)
  ((traffic_barrier_ego_lane_relation_info
    :reader traffic_barrier_ego_lane_relation_info
    :initarg :traffic_barrier_ego_lane_relation_info
    :type perception_interface_msgs-msg:TrafficBarrierEgoLaneRelationInfo
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficBarrierEgoLaneRelationInfo)))
)

(cl:defclass BarrierStateInfo (<BarrierStateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BarrierStateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BarrierStateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<BarrierStateInfo> is deprecated: use perception_interface_msgs-msg:BarrierStateInfo instead.")))

(cl:ensure-generic-function 'traffic_barrier_ego_lane_relation_info-val :lambda-list '(m))
(cl:defmethod traffic_barrier_ego_lane_relation_info-val ((m <BarrierStateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:traffic_barrier_ego_lane_relation_info-val is deprecated.  Use perception_interface_msgs-msg:traffic_barrier_ego_lane_relation_info instead.")
  (traffic_barrier_ego_lane_relation_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BarrierStateInfo>) ostream)
  "Serializes a message object of type '<BarrierStateInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'traffic_barrier_ego_lane_relation_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BarrierStateInfo>) istream)
  "Deserializes a message object of type '<BarrierStateInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'traffic_barrier_ego_lane_relation_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BarrierStateInfo>)))
  "Returns string type for a message object of type '<BarrierStateInfo>"
  "perception_interface_msgs/BarrierStateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BarrierStateInfo)))
  "Returns string type for a message object of type 'BarrierStateInfo"
  "perception_interface_msgs/BarrierStateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BarrierStateInfo>)))
  "Returns md5sum for a message object of type '<BarrierStateInfo>"
  "cc7ea95f1c37971401aaf8cef9929ef9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BarrierStateInfo)))
  "Returns md5sum for a message object of type 'BarrierStateInfo"
  "cc7ea95f1c37971401aaf8cef9929ef9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BarrierStateInfo>)))
  "Returns full string definition for message of type '<BarrierStateInfo>"
  (cl:format cl:nil "perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo~%float32 distance_to_left_line~%float32 distance_to_right_line~%perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation~%perception_interface_msgs/TrafficBarrierUsefulEnum useful~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierUsefulEnum~%uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BarrierStateInfo)))
  "Returns full string definition for message of type 'BarrierStateInfo"
  (cl:format cl:nil "perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo traffic_barrier_ego_lane_relation_info~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo~%float32 distance_to_left_line~%float32 distance_to_right_line~%perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation~%perception_interface_msgs/TrafficBarrierUsefulEnum useful~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierUsefulEnum~%uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BarrierStateInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'traffic_barrier_ego_lane_relation_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BarrierStateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'BarrierStateInfo
    (cl:cons ':traffic_barrier_ego_lane_relation_info (traffic_barrier_ego_lane_relation_info msg))
))
