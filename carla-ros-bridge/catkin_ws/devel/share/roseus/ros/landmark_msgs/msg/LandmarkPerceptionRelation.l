;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkPerceptionRelation)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkPerceptionRelation (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATION")
  (make-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATION"))

(in-package "ROS")
;;//! \htmlinclude LandmarkPerceptionRelation.msg.html


(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATION"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATION"))
(defconstant landmark_msgs::LandmarkPerceptionRelation::*TYPE_VALID* 1)
(intern "*LANE_CENTER_CONNECTION_TYPE_VALID*" (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATION"))
(shadow '*LANE_CENTER_CONNECTION_TYPE_VALID* (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATION"))
(defconstant landmark_msgs::LandmarkPerceptionRelation::*LANE_CENTER_CONNECTION_TYPE_VALID* 2)

(defun landmark_msgs::LandmarkPerceptionRelation-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::LandmarkPerceptionRelation::*TYPE_VALID*)
        ((= const 2) 'landmark_msgs::LandmarkPerceptionRelation::*LANE_CENTER_CONNECTION_TYPE_VALID*)
        (t nil)))

(defclass landmark_msgs::LandmarkPerceptionRelation
  :super ros::object
  :slots (_available _type _start_node _end_node _lane_center_connection_type ))

(defmethod landmark_msgs::LandmarkPerceptionRelation
  (:init
   (&key
    ((:available __available) 0)
    ((:type __type) (instance landmark_msgs::LandmarkPerceptionRelationType :init))
    ((:start_node __start_node) (instance landmark_msgs::LandmarkPerceptionRelationNode :init))
    ((:end_node __end_node) (instance landmark_msgs::LandmarkPerceptionRelationNode :init))
    ((:lane_center_connection_type __lane_center_connection_type) (instance landmark_msgs::LaneCenterLineConnectionTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _type __type)
   (setq _start_node __start_node)
   (setq _end_node __end_node)
   (setq _lane_center_connection_type __lane_center_connection_type)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:start_node
   (&rest __start_node)
   (if (keywordp (car __start_node))
       (send* _start_node __start_node)
     (progn
       (if __start_node (setq _start_node (car __start_node)))
       _start_node)))
  (:end_node
   (&rest __end_node)
   (if (keywordp (car __end_node))
       (send* _end_node __end_node)
     (progn
       (if __end_node (setq _end_node (car __end_node)))
       _end_node)))
  (:lane_center_connection_type
   (&rest __lane_center_connection_type)
   (if (keywordp (car __lane_center_connection_type))
       (send* _lane_center_connection_type __lane_center_connection_type)
     (progn
       (if __lane_center_connection_type (setq _lane_center_connection_type (car __lane_center_connection_type)))
       _lane_center_connection_type)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/LandmarkPerceptionRelationType _type
    (send _type :serialization-length)
    ;; landmark_msgs/LandmarkPerceptionRelationNode _start_node
    (send _start_node :serialization-length)
    ;; landmark_msgs/LandmarkPerceptionRelationNode _end_node
    (send _end_node :serialization-length)
    ;; landmark_msgs/LaneCenterLineConnectionTypeEnum _lane_center_connection_type
    (send _lane_center_connection_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/LandmarkPerceptionRelationType _type
       (send _type :serialize s)
     ;; landmark_msgs/LandmarkPerceptionRelationNode _start_node
       (send _start_node :serialize s)
     ;; landmark_msgs/LandmarkPerceptionRelationNode _end_node
       (send _end_node :serialize s)
     ;; landmark_msgs/LaneCenterLineConnectionTypeEnum _lane_center_connection_type
       (send _lane_center_connection_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/LandmarkPerceptionRelationType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; landmark_msgs/LandmarkPerceptionRelationNode _start_node
     (send _start_node :deserialize buf ptr-) (incf ptr- (send _start_node :serialization-length))
   ;; landmark_msgs/LandmarkPerceptionRelationNode _end_node
     (send _end_node :deserialize buf ptr-) (incf ptr- (send _end_node :serialization-length))
   ;; landmark_msgs/LaneCenterLineConnectionTypeEnum _lane_center_connection_type
     (send _lane_center_connection_type :deserialize buf ptr-) (incf ptr- (send _lane_center_connection_type :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::LandmarkPerceptionRelation :md5sum-) "234d16ce8bcc44b7b33650d05fb64533")
(setf (get landmark_msgs::LandmarkPerceptionRelation :datatype-) "landmark_msgs/LandmarkPerceptionRelation")
(setf (get landmark_msgs::LandmarkPerceptionRelation :definition-)
      "uint8 TYPE_VALID = 1
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



(provide :landmark_msgs/LandmarkPerceptionRelation "234d16ce8bcc44b7b33650d05fb64533")


