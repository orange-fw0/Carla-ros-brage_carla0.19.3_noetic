; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LandmarkRelations.msg.html

(cl:defclass <LandmarkRelations> (roslisp-msg-protocol:ros-message)
  ((relations
    :reader relations
    :initarg :relations
    :type (cl:vector landmark_msgs-msg:LandmarkPerceptionRelation)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LandmarkPerceptionRelation :initial-element (cl:make-instance 'landmark_msgs-msg:LandmarkPerceptionRelation))))
)

(cl:defclass LandmarkRelations (<LandmarkRelations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkRelations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkRelations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LandmarkRelations> is deprecated: use landmark_msgs-msg:LandmarkRelations instead.")))

(cl:ensure-generic-function 'relations-val :lambda-list '(m))
(cl:defmethod relations-val ((m <LandmarkRelations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:relations-val is deprecated.  Use landmark_msgs-msg:relations instead.")
  (relations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkRelations>) ostream)
  "Serializes a message object of type '<LandmarkRelations>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'relations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'relations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkRelations>) istream)
  "Deserializes a message object of type '<LandmarkRelations>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'relations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'relations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LandmarkPerceptionRelation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkRelations>)))
  "Returns string type for a message object of type '<LandmarkRelations>"
  "landmark_msgs/LandmarkRelations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkRelations)))
  "Returns string type for a message object of type 'LandmarkRelations"
  "landmark_msgs/LandmarkRelations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkRelations>)))
  "Returns md5sum for a message object of type '<LandmarkRelations>"
  "430a87b572e41a5dfe4bafa34511cecc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkRelations)))
  "Returns md5sum for a message object of type 'LandmarkRelations"
  "430a87b572e41a5dfe4bafa34511cecc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkRelations>)))
  "Returns full string definition for message of type '<LandmarkRelations>"
  (cl:format cl:nil "landmark_msgs/LandmarkPerceptionRelation[] relations~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelation~%uint8 TYPE_VALID = 1~%uint8 LANE_CENTER_CONNECTION_TYPE_VALID = 2~%uint8 available~%landmark_msgs/LandmarkPerceptionRelationType type~%landmark_msgs/LandmarkPerceptionRelationNode start_node~%landmark_msgs/LandmarkPerceptionRelationNode end_node~%landmark_msgs/LaneCenterLineConnectionTypeEnum lane_center_connection_type~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelationType~%uint8 RELATION_TYPE_UNKNOWN = 0~%uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1~%uint8 RELATION_TYPE_ROAD_CONNECTION = 2~%uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3~%uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4~%uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5~%uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6~%uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7~%uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8~%uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9~%uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10~%uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11~%uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12~%uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13~%uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16~%uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17~%uint8 RELATION_TYPE_AOI_AOI_BINDING = 18~%uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19~%uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22~%uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23~%uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24~%uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25~%uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26~%uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27~%uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28~%uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29~%uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30~%uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31~%uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50~%uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51~%uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52~%uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53~%uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54~%uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelationNode~%landmark_msgs/LandmarkPerceptionNodeType node_type~%landmark_msgs/TrackId track_id~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionNodeType~%uint8 NODE_TYPE_UNKNOWN = 0~%uint8 NODE_TYPE_LANE_CENTER = 1~%uint8 NODE_TYPE_LANE_BOUNDARY = 2~%uint8 NODE_TYPE_ROAD_BOUNDARY = 3~%uint8 NODE_TYPE_ROAD = 4~%uint8 NODE_TYPE_STOP_LINE = 5~%uint8 NODE_TYPE_CROSS_WALK = 6~%uint8 NODE_TYPE_VALID_ROI = 7~%uint8 NODE_TYPE_ROAD_MARK = 8~%uint8 NODE_TYPE_AOI = 9~%uint8 NODE_TYPE_TRAFFIC_SIGN = 10~%uint8 NODE_TYPE_TRAFFIC_POLE = 11~%uint8 NODE_TYPE_TRAFFIC_LIGHT = 12~%uint8 NODE_TYPE_SPEEDBUMP = 13~%uint8 NODE_TYPE_DASH_LINE_END = 14~%uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15~%uint8 NODE_TYPE_ROAD_OBSTACLE = 50~%uint8 NODE_TYPE_PARKING_SPACE = 51~%uint8 NODE_TYPE_PARKING_FACILITY = 52~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneCenterLineConnectionTypeEnum~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_NORMAL = 1~%uint8 POINT_TYPE_TURN_LEFT = 2~%uint8 POINT_TYPE_TURN_RIGHT = 3~%uint8 POINT_TYPE_SPLIT = 4~%uint8 POINT_TYPE_MERGE = 5~%uint8 POINT_TYPE_LEFT_TURN_BACK = 6~%uint8 POINT_TYPE_RIGHT_TURN_BACK = 7~%uint8 POINT_TYPE_SPLIT_CONTINUE = 8~%uint8 POINT_TYPE_MERGE_CONTINUE = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkRelations)))
  "Returns full string definition for message of type 'LandmarkRelations"
  (cl:format cl:nil "landmark_msgs/LandmarkPerceptionRelation[] relations~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelation~%uint8 TYPE_VALID = 1~%uint8 LANE_CENTER_CONNECTION_TYPE_VALID = 2~%uint8 available~%landmark_msgs/LandmarkPerceptionRelationType type~%landmark_msgs/LandmarkPerceptionRelationNode start_node~%landmark_msgs/LandmarkPerceptionRelationNode end_node~%landmark_msgs/LaneCenterLineConnectionTypeEnum lane_center_connection_type~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelationType~%uint8 RELATION_TYPE_UNKNOWN = 0~%uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1~%uint8 RELATION_TYPE_ROAD_CONNECTION = 2~%uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3~%uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4~%uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5~%uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6~%uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7~%uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8~%uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9~%uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10~%uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11~%uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12~%uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13~%uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16~%uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17~%uint8 RELATION_TYPE_AOI_AOI_BINDING = 18~%uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19~%uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22~%uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23~%uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24~%uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25~%uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26~%uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27~%uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28~%uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29~%uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30~%uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31~%uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50~%uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51~%uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52~%uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53~%uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54~%uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionRelationNode~%landmark_msgs/LandmarkPerceptionNodeType node_type~%landmark_msgs/TrackId track_id~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionNodeType~%uint8 NODE_TYPE_UNKNOWN = 0~%uint8 NODE_TYPE_LANE_CENTER = 1~%uint8 NODE_TYPE_LANE_BOUNDARY = 2~%uint8 NODE_TYPE_ROAD_BOUNDARY = 3~%uint8 NODE_TYPE_ROAD = 4~%uint8 NODE_TYPE_STOP_LINE = 5~%uint8 NODE_TYPE_CROSS_WALK = 6~%uint8 NODE_TYPE_VALID_ROI = 7~%uint8 NODE_TYPE_ROAD_MARK = 8~%uint8 NODE_TYPE_AOI = 9~%uint8 NODE_TYPE_TRAFFIC_SIGN = 10~%uint8 NODE_TYPE_TRAFFIC_POLE = 11~%uint8 NODE_TYPE_TRAFFIC_LIGHT = 12~%uint8 NODE_TYPE_SPEEDBUMP = 13~%uint8 NODE_TYPE_DASH_LINE_END = 14~%uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15~%uint8 NODE_TYPE_ROAD_OBSTACLE = 50~%uint8 NODE_TYPE_PARKING_SPACE = 51~%uint8 NODE_TYPE_PARKING_FACILITY = 52~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneCenterLineConnectionTypeEnum~%uint8 POINT_TYPE_UNKNOWN = 0~%uint8 POINT_TYPE_NORMAL = 1~%uint8 POINT_TYPE_TURN_LEFT = 2~%uint8 POINT_TYPE_TURN_RIGHT = 3~%uint8 POINT_TYPE_SPLIT = 4~%uint8 POINT_TYPE_MERGE = 5~%uint8 POINT_TYPE_LEFT_TURN_BACK = 6~%uint8 POINT_TYPE_RIGHT_TURN_BACK = 7~%uint8 POINT_TYPE_SPLIT_CONTINUE = 8~%uint8 POINT_TYPE_MERGE_CONTINUE = 9~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkRelations>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'relations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkRelations>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkRelations
    (cl:cons ':relations (relations msg))
))
