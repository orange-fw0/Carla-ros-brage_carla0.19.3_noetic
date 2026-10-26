;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadSurfaceNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadSurfaceNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADSURFACENODE")
  (make-package "LANDMARK_MSGS::ROADSURFACENODE"))

(in-package "ROS")
;;//! \htmlinclude RoadSurfaceNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*NODE_TYPE_VALID*" (find-package "LANDMARK_MSGS::ROADSURFACENODE"))
(shadow '*NODE_TYPE_VALID* (find-package "LANDMARK_MSGS::ROADSURFACENODE"))
(defconstant landmark_msgs::RoadSurfaceNode::*NODE_TYPE_VALID* 1)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::ROADSURFACENODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::ROADSURFACENODE"))
(defconstant landmark_msgs::RoadSurfaceNode::*SCORE_VALID* 2)
(intern "*POLYGON_VALID*" (find-package "LANDMARK_MSGS::ROADSURFACENODE"))
(shadow '*POLYGON_VALID* (find-package "LANDMARK_MSGS::ROADSURFACENODE"))
(defconstant landmark_msgs::RoadSurfaceNode::*POLYGON_VALID* 4)

(defun landmark_msgs::RoadSurfaceNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::RoadSurfaceNode::*NODE_TYPE_VALID*)
        ((= const 2) 'landmark_msgs::RoadSurfaceNode::*SCORE_VALID*)
        ((= const 4) 'landmark_msgs::RoadSurfaceNode::*POLYGON_VALID*)
        (t nil)))

(defclass landmark_msgs::RoadSurfaceNode
  :super ros::object
  :slots (_track_id _available _type _score _polygon ))

(defmethod landmark_msgs::RoadSurfaceNode
  (:init
   (&key
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:available __available) 0)
    ((:type __type) (instance landmark_msgs::RoadSurfaceTypeEnum :init))
    ((:score __score) 0.0)
    ((:polygon __polygon) ())
    )
   (send-super :init)
   (setq _track_id __track_id)
   (setq _available (round __available))
   (setq _type __type)
   (setq _score (float __score))
   (setq _polygon __polygon)
   self)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
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
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; uint16 _available
    2
    ;; landmark_msgs/RoadSurfaceTypeEnum _type
    (send _type :serialization-length)
    ;; float32 _score
    4
    ;; perception_interface_msgs/Point3f[] _polygon
    (apply #'+ (send-all _polygon :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; uint16 _available
       (write-word _available s)
     ;; landmark_msgs/RoadSurfaceTypeEnum _type
       (send _type :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Point3f[] _polygon
     (write-long (length _polygon) s)
     (dolist (elem _polygon)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; landmark_msgs/RoadSurfaceTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Point3f[] _polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::RoadSurfaceNode :md5sum-) "e4a174b8fb9396f8d1e466656df9f158")
(setf (get landmark_msgs::RoadSurfaceNode :datatype-) "landmark_msgs/RoadSurfaceNode")
(setf (get landmark_msgs::RoadSurfaceNode :definition-)
      "uint16 NODE_TYPE_VALID = 1
uint16 SCORE_VALID = 2
uint16 POLYGON_VALID = 4
landmark_msgs/TrackId track_id
uint16 available
landmark_msgs/RoadSurfaceTypeEnum type
float32 score
perception_interface_msgs/Point3f[] polygon

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/RoadSurfaceTypeEnum
uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0
uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :landmark_msgs/RoadSurfaceNode "e4a174b8fb9396f8d1e466656df9f158")


