; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LandmarkPerceptionRelation.msg.html

(cl:defclass <LandmarkPerceptionRelation> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:LandmarkPerceptionRelationType
    :initform (cl:make-instance 'landmark_msgs-msg:LandmarkPerceptionRelationType))
   (start_node
    :reader start_node
    :initarg :start_node
    :type landmark_msgs-msg:LandmarkPerceptionRelationNode
    :initform (cl:make-instance 'landmark_msgs-msg:LandmarkPerceptionRelationNode))
   (end_node
    :reader end_node
    :initarg :end_node
    :type landmark_msgs-msg:LandmarkPerceptionRelationNode
    :initform (cl:make-instance 'landmark_msgs-msg:LandmarkPerceptionRelationNode))
   (lane_center_connection_type
    :reader lane_center_connection_type
    :initarg :lane_center_connection_type
    :type landmark_msgs-msg:LaneCenterLineConnectionTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneCenterLineConnectionTypeEnum)))
)

(cl:defclass LandmarkPerceptionRelation (<LandmarkPerceptionRelation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkPerceptionRelation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkPerceptionRelation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LandmarkPerceptionRelation> is deprecated: use landmark_msgs-msg:LandmarkPerceptionRelation instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LandmarkPerceptionRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LandmarkPerceptionRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'start_node-val :lambda-list '(m))
(cl:defmethod start_node-val ((m <LandmarkPerceptionRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:start_node-val is deprecated.  Use landmark_msgs-msg:start_node instead.")
  (start_node m))

(cl:ensure-generic-function 'end_node-val :lambda-list '(m))
(cl:defmethod end_node-val ((m <LandmarkPerceptionRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:end_node-val is deprecated.  Use landmark_msgs-msg:end_node instead.")
  (end_node m))

(cl:ensure-generic-function 'lane_center_connection_type-val :lambda-list '(m))
(cl:defmethod lane_center_connection_type-val ((m <LandmarkPerceptionRelation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_center_connection_type-val is deprecated.  Use landmark_msgs-msg:lane_center_connection_type instead.")
  (lane_center_connection_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LandmarkPerceptionRelation>)))
    "Constants for message type '<LandmarkPerceptionRelation>"
  '((:TYPE_VALID . 1)
    (:LANE_CENTER_CONNECTION_TYPE_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LandmarkPerceptionRelation)))
    "Constants for message type 'LandmarkPerceptionRelation"
  '((:TYPE_VALID . 1)
    (:LANE_CENTER_CONNECTION_TYPE_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkPerceptionRelation>) ostream)
  "Serializes a message object of type '<LandmarkPerceptionRelation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_node) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end_node) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_center_connection_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkPerceptionRelation>) istream)
  "Deserializes a message object of type '<LandmarkPerceptionRelation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_node) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end_node) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_center_connection_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkPerceptionRelation>)))
  "Returns string type for a message object of type '<LandmarkPerceptionRelation>"
  "landmark_msgs/LandmarkPerceptionRelation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkPerceptionRelation)))
  "Returns string type for a message object of type 'LandmarkPerceptionRelation"
  "landmark_msgs/LandmarkPerceptionRelation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkPerceptionRelation>)))
  "Returns md5sum for a message object of type '<LandmarkPerceptionRelation>"
  "234d16ce8bcc44b7b33650d05fb64533")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkPerceptionRelation)))
  "Returns md5sum for a message object of type 'LandmarkPerceptionRelation"
  "234d16ce8bcc44b7b33650d05fb64533")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkPerceptionRelation>)))
  "Returns full string definition for message of type '<LandmarkPerceptionRelation>"
  (cl:format cl:nil "uint8 TYPE_VALID = 1~%uint8 LANE_CENTER_CONNECTION_TYPE_VALID = 2~%uint8 available~%landmark_msgs/LandmarkPerceptionRelationType type~%landmark_msgs/LandmarkPerceptionRelationNode start_node~%landmark_msgs/LandmarkPerceptionRelationNode end_node~%landmark_msgs/LaneCenterLineConnectionTypeEnum lane_center_connection_type~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelationType~%uint8 RELATION_TYPE_UNKNOWN = 0~%uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1~%uint8 RELATION_TYPE_ROAD_CONNECTION = 2~%uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3~%uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4~%uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5~%uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6~%uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7~%uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8~%uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9~%uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10~%uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11~%uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12~%uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13~%uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16~%uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17~%uint8 RELATION_TYPE_AOI_AOI_BINDING = 18~%uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19~%uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22~%uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23~%uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24~%uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25~%uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26~%uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27~%uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28~%uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29~%uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30~%uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31~%uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50~%uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51~%uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52~%uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53~%uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54~%uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelationNode~%landmark_msgs/LandmarkPerceptionNodeType node_type~%landmark_msgs/TrackId track_id~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionNodeType~%uint8 NODE_TYPE_UNKNOWN = 0~%uint8 NODE_TYPE_LANE_CENTER = 1~%uint8 NODE_TYPE_LANE_BOUNDARY = 2~%uint8 NODE_TYPE_ROAD_BOUNDARY = 3~%uint8 NODE_TYPE_ROAD = 4~%uint8 NODE_TYPE_STOP_LINE = 5~%uint8 NODE_TYPE_CROSS_WALK = 6~%uint8 NODE_TYPE_VALID_ROI = 7~%uint8 NODE_TYPE_ROAD_MARK = 8~%uint8 NODE_TYPE_AOI = 9~%uint8 NODE_TYPE_TRAFFIC_SIGN = 10~%uint8 NODE_TYPE_TRAFFIC_POLE = 11~%uint8 NODE_TYPE_TRAFFIC_LIGHT = 12~%uint8 NODE_TYPE_SPEEDBUMP = 13~%uint8 NODE_TYPE_DASH_LINE_END = 14~%uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15~%uint8 NODE_TYPE_ROAD_OBSTACLE = 50~%uint8 NODE_TYPE_PARKING_SPACE = 51~%uint8 NODE_TYPE_PARKING_FACILITY = 52~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneCenterLineConnectionTypeEnum~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_NORMAL = 1~%uint8 POINT_TYPE_TURN_LEFT = 2~%uint8 POINT_TYPE_TURN_RIGHT = 3~%uint8 POINT_TYPE_SPLIT = 4~%uint8 POINT_TYPE_MERGE = 5~%uint8 POINT_TYPE_LEFT_TURN_BACK = 6~%uint8 POINT_TYPE_RIGHT_TURN_BACK = 7~%uint8 POINT_TYPE_SPLIT_CONTINUE = 8~%uint8 POINT_TYPE_MERGE_CONTINUE = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkPerceptionRelation)))
  "Returns full string definition for message of type 'LandmarkPerceptionRelation"
  (cl:format cl:nil "uint8 TYPE_VALID = 1~%uint8 LANE_CENTER_CONNECTION_TYPE_VALID = 2~%uint8 available~%landmark_msgs/LandmarkPerceptionRelationType type~%landmark_msgs/LandmarkPerceptionRelationNode start_node~%landmark_msgs/LandmarkPerceptionRelationNode end_node~%landmark_msgs/LaneCenterLineConnectionTypeEnum lane_center_connection_type~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelationType~%uint8 RELATION_TYPE_UNKNOWN = 0~%uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1~%uint8 RELATION_TYPE_ROAD_CONNECTION = 2~%uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3~%uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4~%uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5~%uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6~%uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7~%uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8~%uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9~%uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10~%uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11~%uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12~%uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13~%uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16~%uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17~%uint8 RELATION_TYPE_AOI_AOI_BINDING = 18~%uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19~%uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22~%uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23~%uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24~%uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25~%uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26~%uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27~%uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28~%uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29~%uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30~%uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31~%uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50~%uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51~%uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52~%uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53~%uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54~%uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelationNode~%landmark_msgs/LandmarkPerceptionNodeType node_type~%landmark_msgs/TrackId track_id~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionNodeType~%uint8 NODE_TYPE_UNKNOWN = 0~%uint8 NODE_TYPE_LANE_CENTER = 1~%uint8 NODE_TYPE_LANE_BOUNDARY = 2~%uint8 NODE_TYPE_ROAD_BOUNDARY = 3~%uint8 NODE_TYPE_ROAD = 4~%uint8 NODE_TYPE_STOP_LINE = 5~%uint8 NODE_TYPE_CROSS_WALK = 6~%uint8 NODE_TYPE_VALID_ROI = 7~%uint8 NODE_TYPE_ROAD_MARK = 8~%uint8 NODE_TYPE_AOI = 9~%uint8 NODE_TYPE_TRAFFIC_SIGN = 10~%uint8 NODE_TYPE_TRAFFIC_POLE = 11~%uint8 NODE_TYPE_TRAFFIC_LIGHT = 12~%uint8 NODE_TYPE_SPEEDBUMP = 13~%uint8 NODE_TYPE_DASH_LINE_END = 14~%uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15~%uint8 NODE_TYPE_ROAD_OBSTACLE = 50~%uint8 NODE_TYPE_PARKING_SPACE = 51~%uint8 NODE_TYPE_PARKING_FACILITY = 52~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneCenterLineConnectionTypeEnum~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_NORMAL = 1~%uint8 POINT_TYPE_TURN_LEFT = 2~%uint8 POINT_TYPE_TURN_RIGHT = 3~%uint8 POINT_TYPE_SPLIT = 4~%uint8 POINT_TYPE_MERGE = 5~%uint8 POINT_TYPE_LEFT_TURN_BACK = 6~%uint8 POINT_TYPE_RIGHT_TURN_BACK = 7~%uint8 POINT_TYPE_SPLIT_CONTINUE = 8~%uint8 POINT_TYPE_MERGE_CONTINUE = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkPerceptionRelation>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_node))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end_node))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_center_connection_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkPerceptionRelation>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkPerceptionRelation
    (cl:cons ':available (available msg))
    (cl:cons ':type (type msg))
    (cl:cons ':start_node (start_node msg))
    (cl:cons ':end_node (end_node msg))
    (cl:cons ':lane_center_connection_type (lane_center_connection_type msg))
))
