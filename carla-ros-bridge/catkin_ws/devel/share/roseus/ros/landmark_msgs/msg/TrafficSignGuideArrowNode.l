;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignGuideArrowNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignGuideArrowNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODE")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODE"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignGuideArrowNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*POLYGON_POINTS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODE"))
(shadow '*POLYGON_POINTS_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODE"))
(defconstant landmark_msgs::TrafficSignGuideArrowNode::*POLYGON_POINTS_VALID* 1)
(intern "*TYPES_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODE"))
(shadow '*TYPES_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODE"))
(defconstant landmark_msgs::TrafficSignGuideArrowNode::*TYPES_VALID* 2)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNGUIDEARROWNODE"))
(defconstant landmark_msgs::TrafficSignGuideArrowNode::*SCORE_VALID* 4)

(defun landmark_msgs::TrafficSignGuideArrowNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::TrafficSignGuideArrowNode::*POLYGON_POINTS_VALID*)
        ((= const 2) 'landmark_msgs::TrafficSignGuideArrowNode::*TYPES_VALID*)
        ((= const 4) 'landmark_msgs::TrafficSignGuideArrowNode::*SCORE_VALID*)
        (t nil)))

(defclass landmark_msgs::TrafficSignGuideArrowNode
  :super ros::object
  :slots (_available _track_id _polygon_points _types _score ))

(defmethod landmark_msgs::TrafficSignGuideArrowNode
  (:init
   (&key
    ((:available __available) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:polygon_points __polygon_points) ())
    ((:types __types) ())
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _track_id __track_id)
   (setq _polygon_points __polygon_points)
   (setq _types __types)
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
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f[] _polygon_points
    (apply #'+ (send-all _polygon_points :serialization-length)) 4
    ;; landmark_msgs/TrafficSignGuideArrowNodeTypeEnum[] _types
    (apply #'+ (send-all _types :serialization-length)) 4
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; perception_interface_msgs/Point3f[] _polygon_points
     (write-long (length _polygon_points) s)
     (dolist (elem _polygon_points)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficSignGuideArrowNodeTypeEnum[] _types
     (write-long (length _types) s)
     (dolist (elem _types)
       (send elem :serialize s)
       )
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; perception_interface_msgs/Point3f[] _polygon_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _polygon_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficSignGuideArrowNodeTypeEnum[] _types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _types (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficSignGuideArrowNodeTypeEnum :init) r)) r))
     (dolist (elem- _types)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::TrafficSignGuideArrowNode :md5sum-) "75c52174a1974b182e81b1edbd170ef7")
(setf (get landmark_msgs::TrafficSignGuideArrowNode :datatype-) "landmark_msgs/TrafficSignGuideArrowNode")
(setf (get landmark_msgs::TrafficSignGuideArrowNode :definition-)
      "uint16 POLYGON_POINTS_VALID = 1
uint16 TYPES_VALID = 2
uint16 SCORE_VALID = 4
uint16 available
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points
landmark_msgs/TrafficSignGuideArrowNodeTypeEnum[] types
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
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: landmark_msgs/TrafficSignGuideArrowNodeTypeEnum
uint8 UNKNOWN = 0
uint8 DIRECTIONAL_ARROW_POINTING_UP = 1
uint8 DIRECTIONAL_ARROW_POINTING_BACK = 2
uint8 DIRECTIONAL_ARROW_POINTING_LEFT = 3
uint8 DIRECTIONAL_ARROW_POINTING_RIGHT = 4
uint8 DIRECTIONAL_ARROW_POINTING_UP_LEFT = 5
uint8 DIRECTIONAL_ARROW_POINTING_UP_RIGHT = 6
uint8 value

")



(provide :landmark_msgs/TrafficSignGuideArrowNode "75c52174a1974b182e81b1edbd170ef7")


