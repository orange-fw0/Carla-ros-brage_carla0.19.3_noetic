;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadObstacleNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadObstacleNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADOBSTACLENODE")
  (make-package "LANDMARK_MSGS::ROADOBSTACLENODE"))

(in-package "ROS")
;;//! \htmlinclude RoadObstacleNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::ROADOBSTACLENODE"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::ROADOBSTACLENODE"))
(defconstant landmark_msgs::RoadObstacleNode::*TYPE_VALID* 1)
(intern "*PILLAR_CENTER_VALID*" (find-package "LANDMARK_MSGS::ROADOBSTACLENODE"))
(shadow '*PILLAR_CENTER_VALID* (find-package "LANDMARK_MSGS::ROADOBSTACLENODE"))
(defconstant landmark_msgs::RoadObstacleNode::*PILLAR_CENTER_VALID* 2)
(intern "*POINTS_VALID*" (find-package "LANDMARK_MSGS::ROADOBSTACLENODE"))
(shadow '*POINTS_VALID* (find-package "LANDMARK_MSGS::ROADOBSTACLENODE"))
(defconstant landmark_msgs::RoadObstacleNode::*POINTS_VALID* 4)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::ROADOBSTACLENODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::ROADOBSTACLENODE"))
(defconstant landmark_msgs::RoadObstacleNode::*SCORE_VALID* 8)

(defun landmark_msgs::RoadObstacleNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::RoadObstacleNode::*TYPE_VALID*)
        ((= const 2) 'landmark_msgs::RoadObstacleNode::*PILLAR_CENTER_VALID*)
        ((= const 4) 'landmark_msgs::RoadObstacleNode::*POINTS_VALID*)
        ((= const 8) 'landmark_msgs::RoadObstacleNode::*SCORE_VALID*)
        (t nil)))

(defclass landmark_msgs::RoadObstacleNode
  :super ros::object
  :slots (_available _track_id _type _pillar_center _points _score ))

(defmethod landmark_msgs::RoadObstacleNode
  (:init
   (&key
    ((:available __available) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:type __type) (instance landmark_msgs::RoadObstacleTypeEnum :init))
    ((:pillar_center __pillar_center) (instance perception_interface_msgs::Point3f :init))
    ((:points __points) ())
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _track_id __track_id)
   (setq _type __type)
   (setq _pillar_center __pillar_center)
   (setq _points __points)
   (setq _score (float __score))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:pillar_center
   (&rest __pillar_center)
   (if (keywordp (car __pillar_center))
       (send* _pillar_center __pillar_center)
     (progn
       (if __pillar_center (setq _pillar_center (car __pillar_center)))
       _pillar_center)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; landmark_msgs/RoadObstacleTypeEnum _type
    (send _type :serialization-length)
    ;; perception_interface_msgs/Point3f _pillar_center
    (send _pillar_center :serialization-length)
    ;; perception_interface_msgs/Point3f[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; landmark_msgs/RoadObstacleTypeEnum _type
       (send _type :serialize s)
     ;; perception_interface_msgs/Point3f _pillar_center
       (send _pillar_center :serialize s)
     ;; perception_interface_msgs/Point3f[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; landmark_msgs/RoadObstacleTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; perception_interface_msgs/Point3f _pillar_center
     (send _pillar_center :deserialize buf ptr-) (incf ptr- (send _pillar_center :serialization-length))
   ;; perception_interface_msgs/Point3f[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::RoadObstacleNode :md5sum-) "edd789b3e1c31edfa30ce59d19511a65")
(setf (get landmark_msgs::RoadObstacleNode :datatype-) "landmark_msgs/RoadObstacleNode")
(setf (get landmark_msgs::RoadObstacleNode :definition-)
      "uint16 TYPE_VALID = 1
uint16 PILLAR_CENTER_VALID = 2
uint16 POINTS_VALID = 4
uint16 SCORE_VALID = 8
uint8 available
landmark_msgs/TrackId track_id
landmark_msgs/RoadObstacleTypeEnum type
perception_interface_msgs/Point3f pillar_center
perception_interface_msgs/Point3f[] points
float32 score

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/RoadObstacleTypeEnum
uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4
uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5
uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :landmark_msgs/RoadObstacleNode "edd789b3e1c31edfa30ce59d19511a65")


