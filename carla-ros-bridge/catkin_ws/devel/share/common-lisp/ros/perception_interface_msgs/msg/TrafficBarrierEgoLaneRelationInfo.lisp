; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficBarrierEgoLaneRelationInfo.msg.html

(cl:defclass <TrafficBarrierEgoLaneRelationInfo> (roslisp-msg-protocol:ros-message)
  ((distance_to_left_line
    :reader distance_to_left_line
    :initarg :distance_to_left_line
    :type cl:float
    :initform 0.0)
   (distance_to_right_line
    :reader distance_to_right_line
    :initarg :distance_to_right_line
    :type cl:float
    :initform 0.0)
   (ego_lane_relation
    :reader ego_lane_relation
    :initarg :ego_lane_relation
    :type perception_interface_msgs-msg:TrafficBarrierEgoLaneRelationEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficBarrierEgoLaneRelationEnum))
   (useful
    :reader useful
    :initarg :useful
    :type perception_interface_msgs-msg:TrafficBarrierUsefulEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:TrafficBarrierUsefulEnum)))
)

(cl:defclass TrafficBarrierEgoLaneRelationInfo (<TrafficBarrierEgoLaneRelationInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficBarrierEgoLaneRelationInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficBarrierEgoLaneRelationInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficBarrierEgoLaneRelationInfo> is deprecated: use perception_interface_msgs-msg:TrafficBarrierEgoLaneRelationInfo instead.")))

(cl:ensure-generic-function 'distance_to_left_line-val :lambda-list '(m))
(cl:defmethod distance_to_left_line-val ((m <TrafficBarrierEgoLaneRelationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:distance_to_left_line-val is deprecated.  Use perception_interface_msgs-msg:distance_to_left_line instead.")
  (distance_to_left_line m))

(cl:ensure-generic-function 'distance_to_right_line-val :lambda-list '(m))
(cl:defmethod distance_to_right_line-val ((m <TrafficBarrierEgoLaneRelationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:distance_to_right_line-val is deprecated.  Use perception_interface_msgs-msg:distance_to_right_line instead.")
  (distance_to_right_line m))

(cl:ensure-generic-function 'ego_lane_relation-val :lambda-list '(m))
(cl:defmethod ego_lane_relation-val ((m <TrafficBarrierEgoLaneRelationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ego_lane_relation-val is deprecated.  Use perception_interface_msgs-msg:ego_lane_relation instead.")
  (ego_lane_relation m))

(cl:ensure-generic-function 'useful-val :lambda-list '(m))
(cl:defmethod useful-val ((m <TrafficBarrierEgoLaneRelationInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:useful-val is deprecated.  Use perception_interface_msgs-msg:useful instead.")
  (useful m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficBarrierEgoLaneRelationInfo>) ostream)
  "Serializes a message object of type '<TrafficBarrierEgoLaneRelationInfo>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_left_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance_to_right_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ego_lane_relation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'useful) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficBarrierEgoLaneRelationInfo>) istream)
  "Deserializes a message object of type '<TrafficBarrierEgoLaneRelationInfo>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_left_line) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_to_right_line) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ego_lane_relation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'useful) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficBarrierEgoLaneRelationInfo>)))
  "Returns string type for a message object of type '<TrafficBarrierEgoLaneRelationInfo>"
  "perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficBarrierEgoLaneRelationInfo)))
  "Returns string type for a message object of type 'TrafficBarrierEgoLaneRelationInfo"
  "perception_interface_msgs/TrafficBarrierEgoLaneRelationInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficBarrierEgoLaneRelationInfo>)))
  "Returns md5sum for a message object of type '<TrafficBarrierEgoLaneRelationInfo>"
  "7bc86d60438d376cf6651538ae553991")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficBarrierEgoLaneRelationInfo)))
  "Returns md5sum for a message object of type 'TrafficBarrierEgoLaneRelationInfo"
  "7bc86d60438d376cf6651538ae553991")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficBarrierEgoLaneRelationInfo>)))
  "Returns full string definition for message of type '<TrafficBarrierEgoLaneRelationInfo>"
  (cl:format cl:nil "float32 distance_to_left_line~%float32 distance_to_right_line~%perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation~%perception_interface_msgs/TrafficBarrierUsefulEnum useful~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierUsefulEnum~%uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficBarrierEgoLaneRelationInfo)))
  "Returns full string definition for message of type 'TrafficBarrierEgoLaneRelationInfo"
  (cl:format cl:nil "float32 distance_to_left_line~%float32 distance_to_right_line~%perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum ego_lane_relation~%perception_interface_msgs/TrafficBarrierUsefulEnum useful~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierEgoLaneRelationEnum~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_INSIDE_EGO_LANE = 0~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_OUTSIDE_EGO_LANE = 1~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_ON_LINE = 2~%uint8 TRAFFIC_BARRIER_EGO_LANE_RELATION_UNKNOWN = 3~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/TrafficBarrierUsefulEnum~%uint8 TRAFFIC_BARRIER_UNUSEFUL = 0~%uint8 TRAFFIC_BARRIER_USEFUL = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficBarrierEgoLaneRelationInfo>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ego_lane_relation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'useful))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficBarrierEgoLaneRelationInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficBarrierEgoLaneRelationInfo
    (cl:cons ':distance_to_left_line (distance_to_left_line msg))
    (cl:cons ':distance_to_right_line (distance_to_right_line msg))
    (cl:cons ':ego_lane_relation (ego_lane_relation msg))
    (cl:cons ':useful (useful msg))
))
