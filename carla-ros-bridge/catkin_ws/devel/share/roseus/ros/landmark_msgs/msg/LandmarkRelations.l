;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkRelations)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkRelations (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKRELATIONS")
  (make-package "LANDMARK_MSGS::LANDMARKRELATIONS"))

(in-package "ROS")
;;//! \htmlinclude LandmarkRelations.msg.html


(defclass landmark_msgs::LandmarkRelations
  :super ros::object
  :slots (_relations ))

(defmethod landmark_msgs::LandmarkRelations
  (:init
   (&key
    ((:relations __relations) ())
    )
   (send-super :init)
   (setq _relations __relations)
   self)
  (:relations
   (&rest __relations)
   (if (keywordp (car __relations))
       (send* _relations __relations)
     (progn
       (if __relations (setq _relations (car __relations)))
       _relations)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/LandmarkPerceptionRelation[] _relations
    (apply #'+ (send-all _relations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/LandmarkPerceptionRelation[] _relations
     (write-long (length _relations) s)
     (dolist (elem _relations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/LandmarkPerceptionRelation[] _relations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _relations (let (r) (dotimes (i n) (push (instance landmark_msgs::LandmarkPerceptionRelation :init) r)) r))
     (dolist (elem- _relations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::LandmarkRelations :md5sum-) "430a87b572e41a5dfe4bafa34511cecc")
(setf (get landmark_msgs::LandmarkRelations :datatype-) "landmark_msgs/LandmarkRelations")
(setf (get landmark_msgs::LandmarkRelations :definition-)
      "landmark_msgs/LandmarkPerceptionRelation[] relations

================================================================================
MSG: landmark_msgs/LandmarkPerceptionRelation
uint8 TYPE_VALID = 1
uint8 LANE_CENTER_CONNECTION_TYPE_VALID = 2
uint8 available
landmark_msgs/LandmarkPerceptionRelationType type
landmark_msgs/LandmarkPerceptionRelationNode start_node
landmark_msgs/LandmarkPerceptionRelationNode end_node
landmark_msgs/LaneCenterLineConnectionTypeEnum lane_center_connection_type

================================================================================
MSG: landmark_msgs/LandmarkPerceptionRelationType
uint8 RELATION_TYPE_UNKNOWN = 0
uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1
uint8 RELATION_TYPE_ROAD_CONNECTION = 2
uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3
uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4
uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5
uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6
uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7
uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8
uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9
uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10
uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11
uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12
uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13
uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14
uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15
uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16
uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17
uint8 RELATION_TYPE_AOI_AOI_BINDING = 18
uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19
uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20
uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21
uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22
uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23
uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24
uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25
uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26
uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27
uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28
uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29
uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30
uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31
uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50
uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51
uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52
uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53
uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54
uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55
uint8 value

================================================================================
MSG: landmark_msgs/LandmarkPerceptionRelationNode
landmark_msgs/LandmarkPerceptionNodeType node_type
landmark_msgs/TrackId track_id

================================================================================
MSG: landmark_msgs/LandmarkPerceptionNodeType
uint8 NODE_TYPE_UNKNOWN = 0
uint8 NODE_TYPE_LANE_CENTER = 1
uint8 NODE_TYPE_LANE_BOUNDARY = 2
uint8 NODE_TYPE_ROAD_BOUNDARY = 3
uint8 NODE_TYPE_ROAD = 4
uint8 NODE_TYPE_STOP_LINE = 5
uint8 NODE_TYPE_CROSS_WALK = 6
uint8 NODE_TYPE_VALID_ROI = 7
uint8 NODE_TYPE_ROAD_MARK = 8
uint8 NODE_TYPE_AOI = 9
uint8 NODE_TYPE_TRAFFIC_SIGN = 10
uint8 NODE_TYPE_TRAFFIC_POLE = 11
uint8 NODE_TYPE_TRAFFIC_LIGHT = 12
uint8 NODE_TYPE_SPEEDBUMP = 13
uint8 NODE_TYPE_DASH_LINE_END = 14
uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15
uint8 NODE_TYPE_ROAD_OBSTACLE = 50
uint8 NODE_TYPE_PARKING_SPACE = 51
uint8 NODE_TYPE_PARKING_FACILITY = 52
uint8 value

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/LaneCenterLineConnectionTypeEnum
uint8 POINT_TYPE_UNKNOWN = 0
uint8 POINT_TYPE_NORMAL = 1
uint8 POINT_TYPE_TURN_LEFT = 2
uint8 POINT_TYPE_TURN_RIGHT = 3
uint8 POINT_TYPE_SPLIT = 4
uint8 POINT_TYPE_MERGE = 5
uint8 POINT_TYPE_LEFT_TURN_BACK = 6
uint8 POINT_TYPE_RIGHT_TURN_BACK = 7
uint8 POINT_TYPE_SPLIT_CONTINUE = 8
uint8 POINT_TYPE_MERGE_CONTINUE = 9
uint8 value

")



(provide :landmark_msgs/LandmarkRelations "430a87b572e41a5dfe4bafa34511cecc")


