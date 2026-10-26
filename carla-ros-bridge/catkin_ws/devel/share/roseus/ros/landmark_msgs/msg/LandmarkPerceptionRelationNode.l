;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LandmarkPerceptionRelationNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LandmarkPerceptionRelationNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONNODE")
  (make-package "LANDMARK_MSGS::LANDMARKPERCEPTIONRELATIONNODE"))

(in-package "ROS")
;;//! \htmlinclude LandmarkPerceptionRelationNode.msg.html


(defclass landmark_msgs::LandmarkPerceptionRelationNode
  :super ros::object
  :slots (_node_type _track_id ))

(defmethod landmark_msgs::LandmarkPerceptionRelationNode
  (:init
   (&key
    ((:node_type __node_type) (instance landmark_msgs::LandmarkPerceptionNodeType :init))
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    )
   (send-super :init)
   (setq _node_type __node_type)
   (setq _track_id __track_id)
   self)
  (:node_type
   (&rest __node_type)
   (if (keywordp (car __node_type))
       (send* _node_type __node_type)
     (progn
       (if __node_type (setq _node_type (car __node_type)))
       _node_type)))
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/LandmarkPerceptionNodeType _node_type
    (send _node_type :serialization-length)
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/LandmarkPerceptionNodeType _node_type
       (send _node_type :serialize s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/LandmarkPerceptionNodeType _node_type
     (send _node_type :deserialize buf ptr-) (incf ptr- (send _node_type :serialization-length))
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::LandmarkPerceptionRelationNode :md5sum-) "efd8e8426214064b0e2f32c806a78300")
(setf (get landmark_msgs::LandmarkPerceptionRelationNode :datatype-) "landmark_msgs/LandmarkPerceptionRelationNode")
(setf (get landmark_msgs::LandmarkPerceptionRelationNode :definition-)
      "landmark_msgs/LandmarkPerceptionNodeType node_type
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

")



(provide :landmark_msgs/LandmarkPerceptionRelationNode "efd8e8426214064b0e2f32c806a78300")


