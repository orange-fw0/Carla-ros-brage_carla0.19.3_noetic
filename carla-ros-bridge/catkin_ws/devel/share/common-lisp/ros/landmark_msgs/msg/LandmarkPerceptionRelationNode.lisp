; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LandmarkPerceptionRelationNode.msg.html

(cl:defclass <LandmarkPerceptionRelationNode> (roslisp-msg-protocol:ros-message)
  ((node_type
    :reader node_type
    :initarg :node_type
    :type landmark_msgs-msg:LandmarkPerceptionNodeType
    :initform (cl:make-instance 'landmark_msgs-msg:LandmarkPerceptionNodeType))
   (track_id
    :reader track_id
    :initarg :track_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId)))
)

(cl:defclass LandmarkPerceptionRelationNode (<LandmarkPerceptionRelationNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkPerceptionRelationNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkPerceptionRelationNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LandmarkPerceptionRelationNode> is deprecated: use landmark_msgs-msg:LandmarkPerceptionRelationNode instead.")))

(cl:ensure-generic-function 'node_type-val :lambda-list '(m))
(cl:defmethod node_type-val ((m <LandmarkPerceptionRelationNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:node_type-val is deprecated.  Use landmark_msgs-msg:node_type instead.")
  (node_type m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LandmarkPerceptionRelationNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkPerceptionRelationNode>) ostream)
  "Serializes a message object of type '<LandmarkPerceptionRelationNode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkPerceptionRelationNode>) istream)
  "Deserializes a message object of type '<LandmarkPerceptionRelationNode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkPerceptionRelationNode>)))
  "Returns string type for a message object of type '<LandmarkPerceptionRelationNode>"
  "landmark_msgs/LandmarkPerceptionRelationNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkPerceptionRelationNode)))
  "Returns string type for a message object of type 'LandmarkPerceptionRelationNode"
  "landmark_msgs/LandmarkPerceptionRelationNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkPerceptionRelationNode>)))
  "Returns md5sum for a message object of type '<LandmarkPerceptionRelationNode>"
  "efd8e8426214064b0e2f32c806a78300")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkPerceptionRelationNode)))
  "Returns md5sum for a message object of type 'LandmarkPerceptionRelationNode"
  "efd8e8426214064b0e2f32c806a78300")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkPerceptionRelationNode>)))
  "Returns full string definition for message of type '<LandmarkPerceptionRelationNode>"
  (cl:format cl:nil "landmark_msgs/LandmarkPerceptionNodeType node_type~%landmark_msgs/TrackId track_id~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionNodeType~%uint8 NODE_TYPE_UNKNOWN = 0~%uint8 NODE_TYPE_LANE_CENTER = 1~%uint8 NODE_TYPE_LANE_BOUNDARY = 2~%uint8 NODE_TYPE_ROAD_BOUNDARY = 3~%uint8 NODE_TYPE_ROAD = 4~%uint8 NODE_TYPE_STOP_LINE = 5~%uint8 NODE_TYPE_CROSS_WALK = 6~%uint8 NODE_TYPE_VALID_ROI = 7~%uint8 NODE_TYPE_ROAD_MARK = 8~%uint8 NODE_TYPE_AOI = 9~%uint8 NODE_TYPE_TRAFFIC_SIGN = 10~%uint8 NODE_TYPE_TRAFFIC_POLE = 11~%uint8 NODE_TYPE_TRAFFIC_LIGHT = 12~%uint8 NODE_TYPE_SPEEDBUMP = 13~%uint8 NODE_TYPE_DASH_LINE_END = 14~%uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15~%uint8 NODE_TYPE_ROAD_OBSTACLE = 50~%uint8 NODE_TYPE_PARKING_SPACE = 51~%uint8 NODE_TYPE_PARKING_FACILITY = 52~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkPerceptionRelationNode)))
  "Returns full string definition for message of type 'LandmarkPerceptionRelationNode"
  (cl:format cl:nil "landmark_msgs/LandmarkPerceptionNodeType node_type~%landmark_msgs/TrackId track_id~%~%================================================================================~%MSG: landmark_msgs/LandmarkPerceptionNodeType~%uint8 NODE_TYPE_UNKNOWN = 0~%uint8 NODE_TYPE_LANE_CENTER = 1~%uint8 NODE_TYPE_LANE_BOUNDARY = 2~%uint8 NODE_TYPE_ROAD_BOUNDARY = 3~%uint8 NODE_TYPE_ROAD = 4~%uint8 NODE_TYPE_STOP_LINE = 5~%uint8 NODE_TYPE_CROSS_WALK = 6~%uint8 NODE_TYPE_VALID_ROI = 7~%uint8 NODE_TYPE_ROAD_MARK = 8~%uint8 NODE_TYPE_AOI = 9~%uint8 NODE_TYPE_TRAFFIC_SIGN = 10~%uint8 NODE_TYPE_TRAFFIC_POLE = 11~%uint8 NODE_TYPE_TRAFFIC_LIGHT = 12~%uint8 NODE_TYPE_SPEEDBUMP = 13~%uint8 NODE_TYPE_DASH_LINE_END = 14~%uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15~%uint8 NODE_TYPE_ROAD_OBSTACLE = 50~%uint8 NODE_TYPE_PARKING_SPACE = 51~%uint8 NODE_TYPE_PARKING_FACILITY = 52~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkPerceptionRelationNode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkPerceptionRelationNode>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkPerceptionRelationNode
    (cl:cons ':node_type (node_type msg))
    (cl:cons ':track_id (track_id msg))
))
