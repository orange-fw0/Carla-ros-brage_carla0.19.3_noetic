;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadBoundaryPointNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadBoundaryPointNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADBOUNDARYPOINTNODE")
  (make-package "LANDMARK_MSGS::ROADBOUNDARYPOINTNODE"))

(in-package "ROS")
;;//! \htmlinclude RoadBoundaryPointNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass landmark_msgs::RoadBoundaryPointNode
  :super ros::object
  :slots (_available _score _type _height _directions ))

(defmethod landmark_msgs::RoadBoundaryPointNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:type __type) (instance landmark_msgs::RoadBoundaryTypeEnum :init))
    ((:height __height) 0.0)
    ((:directions __directions) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _type __type)
   (setq _height (float __height))
   (setq _directions __directions)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:directions
   (&rest __directions)
   (if (keywordp (car __directions))
       (send* _directions __directions)
     (progn
       (if __directions (setq _directions (car __directions)))
       _directions)))
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; landmark_msgs/RoadBoundaryTypeEnum _type
    (send _type :serialization-length)
    ;; float32 _height
    4
    ;; perception_interface_msgs/Vector3d[] _directions
    (apply #'+ (send-all _directions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/RoadBoundaryTypeEnum _type
       (send _type :serialize s)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Vector3d[] _directions
     (write-long (length _directions) s)
     (dolist (elem _directions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/RoadBoundaryTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Vector3d[] _directions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _directions (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Vector3d :init) r)) r))
     (dolist (elem- _directions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::RoadBoundaryPointNode :md5sum-) "b6008473d7a81a3a631645c639f402da")
(setf (get landmark_msgs::RoadBoundaryPointNode :datatype-) "landmark_msgs/RoadBoundaryPointNode")
(setf (get landmark_msgs::RoadBoundaryPointNode :definition-)
      "uint16 available
float32 score
landmark_msgs/RoadBoundaryTypeEnum type
float32 height
perception_interface_msgs/Vector3d[] directions

================================================================================
MSG: landmark_msgs/RoadBoundaryTypeEnum
uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
uint8 ROAD_BOUNDARY_TYPE_NONE = 1
uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
uint8 ROAD_BOUNDARY_TYPE_CONE = 5
uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
uint8 ROAD_BOUNDARY_TYPE_CURB = 15
uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
uint8 ROAD_BOUNDARY_TYPE_WALL = 17
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
uint8 value

================================================================================
MSG: perception_interface_msgs/Vector3d
float64 x
float64 y
float64 z

")



(provide :landmark_msgs/RoadBoundaryPointNode "b6008473d7a81a3a631645c639f402da")


