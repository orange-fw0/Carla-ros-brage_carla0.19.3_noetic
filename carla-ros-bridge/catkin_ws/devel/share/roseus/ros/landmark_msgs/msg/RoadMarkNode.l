;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadMarkNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadMarkNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADMARKNODE")
  (make-package "LANDMARK_MSGS::ROADMARKNODE"))

(in-package "ROS")
;;//! \htmlinclude RoadMarkNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*POLYGON_POINTS_VALID*" (find-package "LANDMARK_MSGS::ROADMARKNODE"))
(shadow '*POLYGON_POINTS_VALID* (find-package "LANDMARK_MSGS::ROADMARKNODE"))
(defconstant landmark_msgs::RoadMarkNode::*POLYGON_POINTS_VALID* 1)
(intern "*TYPES_VALID*" (find-package "LANDMARK_MSGS::ROADMARKNODE"))
(shadow '*TYPES_VALID* (find-package "LANDMARK_MSGS::ROADMARKNODE"))
(defconstant landmark_msgs::RoadMarkNode::*TYPES_VALID* 2)
(intern "*IS_PROHIBITED_VALID*" (find-package "LANDMARK_MSGS::ROADMARKNODE"))
(shadow '*IS_PROHIBITED_VALID* (find-package "LANDMARK_MSGS::ROADMARKNODE"))
(defconstant landmark_msgs::RoadMarkNode::*IS_PROHIBITED_VALID* 4)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::ROADMARKNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::ROADMARKNODE"))
(defconstant landmark_msgs::RoadMarkNode::*SCORE_VALID* 8)

(defun landmark_msgs::RoadMarkNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::RoadMarkNode::*POLYGON_POINTS_VALID*)
        ((= const 2) 'landmark_msgs::RoadMarkNode::*TYPES_VALID*)
        ((= const 4) 'landmark_msgs::RoadMarkNode::*IS_PROHIBITED_VALID*)
        ((= const 8) 'landmark_msgs::RoadMarkNode::*SCORE_VALID*)
        (t nil)))

(defclass landmark_msgs::RoadMarkNode
  :super ros::object
  :slots (_available _score _track_id _polygon_points _types _is_prohibited ))

(defmethod landmark_msgs::RoadMarkNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:polygon_points __polygon_points) ())
    ((:types __types) ())
    ((:is_prohibited __is_prohibited) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _polygon_points __polygon_points)
   (setq _types __types)
   (setq _is_prohibited __is_prohibited)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:polygon_points
   (&rest __polygon_points)
   (if (keywordp (car __polygon_points))
       (send* _polygon_points __polygon_points)
     (progn
       (if __polygon_points (setq _polygon_points (car __polygon_points)))
       _polygon_points)))
  (:types
   (&rest __types)
   (if (keywordp (car __types))
       (send* _types __types)
     (progn
       (if __types (setq _types (car __types)))
       _types)))
  (:is_prohibited
   (&optional (__is_prohibited :null))
   (if (not (eq __is_prohibited :null)) (setq _is_prohibited __is_prohibited)) _is_prohibited)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f[] _polygon_points
    (apply #'+ (send-all _polygon_points :serialization-length)) 4
    ;; landmark_msgs/RoadMarkNodeTypeEnum[] _types
    (apply #'+ (send-all _types :serialization-length)) 4
    ;; bool _is_prohibited
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; perception_interface_msgs/Point3f[] _polygon_points
     (write-long (length _polygon_points) s)
     (dolist (elem _polygon_points)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadMarkNodeTypeEnum[] _types
     (write-long (length _types) s)
     (dolist (elem _types)
       (send elem :serialize s)
       )
     ;; bool _is_prohibited
       (if _is_prohibited (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; perception_interface_msgs/Point3f[] _polygon_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _polygon_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadMarkNodeTypeEnum[] _types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _types (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadMarkNodeTypeEnum :init) r)) r))
     (dolist (elem- _types)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_prohibited
     (setq _is_prohibited (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::RoadMarkNode :md5sum-) "50a66bd216458c671c4885a316a564cd")
(setf (get landmark_msgs::RoadMarkNode :datatype-) "landmark_msgs/RoadMarkNode")
(setf (get landmark_msgs::RoadMarkNode :definition-)
      "uint16 POLYGON_POINTS_VALID = 1
uint16 TYPES_VALID = 2
uint16 IS_PROHIBITED_VALID = 4
uint16 SCORE_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points
landmark_msgs/RoadMarkNodeTypeEnum[] types
bool is_prohibited

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: landmark_msgs/RoadMarkNodeTypeEnum
uint8 ROAD_MARK_TYPE_UNKNOWN = 0
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8
uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9
uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10
uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11
uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12
uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13
uint8 ROAD_MARK_TYPE_SYMBOL = 14
uint8 ROAD_MARK_TYPE_TEXT = 15
uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16
uint8 ROAD_MARK_TYPE_PROHIBIT = 17
uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18
uint8 ROAD_MARK_TYPE_YIELD_LINE = 21
uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22
uint8 ROAD_MARK_TYPE_NON_MOTOR = 24
uint8 ROAD_MARK_TYPE_STOP = 25
uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26
uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27
uint8 value

")



(provide :landmark_msgs/RoadMarkNode "50a66bd216458c671c4885a316a564cd")


