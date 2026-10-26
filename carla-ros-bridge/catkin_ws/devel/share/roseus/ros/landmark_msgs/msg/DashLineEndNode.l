;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::DashLineEndNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'DashLineEndNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::DASHLINEENDNODE")
  (make-package "LANDMARK_MSGS::DASHLINEENDNODE"))

(in-package "ROS")
;;//! \htmlinclude DashLineEndNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::DASHLINEENDNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::DASHLINEENDNODE"))
(defconstant landmark_msgs::DashLineEndNode::*SCORE_VALID* 1)
(intern "*CENTER_VALID*" (find-package "LANDMARK_MSGS::DASHLINEENDNODE"))
(shadow '*CENTER_VALID* (find-package "LANDMARK_MSGS::DASHLINEENDNODE"))
(defconstant landmark_msgs::DashLineEndNode::*CENTER_VALID* 2)
(intern "*SEGMENT_START_VALID*" (find-package "LANDMARK_MSGS::DASHLINEENDNODE"))
(shadow '*SEGMENT_START_VALID* (find-package "LANDMARK_MSGS::DASHLINEENDNODE"))
(defconstant landmark_msgs::DashLineEndNode::*SEGMENT_START_VALID* 4)
(intern "*SEGMENT_END_VALID*" (find-package "LANDMARK_MSGS::DASHLINEENDNODE"))
(shadow '*SEGMENT_END_VALID* (find-package "LANDMARK_MSGS::DASHLINEENDNODE"))
(defconstant landmark_msgs::DashLineEndNode::*SEGMENT_END_VALID* 8)

(defun landmark_msgs::DashLineEndNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::DashLineEndNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::DashLineEndNode::*CENTER_VALID*)
        ((= const 4) 'landmark_msgs::DashLineEndNode::*SEGMENT_START_VALID*)
        ((= const 8) 'landmark_msgs::DashLineEndNode::*SEGMENT_END_VALID*)
        (t nil)))

(defclass landmark_msgs::DashLineEndNode
  :super ros::object
  :slots (_available _score _track_id _center _segment_start _segment_end ))

(defmethod landmark_msgs::DashLineEndNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:center __center) (instance perception_interface_msgs::Point3f :init))
    ((:segment_start __segment_start) (instance perception_interface_msgs::Point3f :init))
    ((:segment_end __segment_end) (instance perception_interface_msgs::Point3f :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _center __center)
   (setq _segment_start __segment_start)
   (setq _segment_end __segment_end)
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
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:segment_start
   (&rest __segment_start)
   (if (keywordp (car __segment_start))
       (send* _segment_start __segment_start)
     (progn
       (if __segment_start (setq _segment_start (car __segment_start)))
       _segment_start)))
  (:segment_end
   (&rest __segment_end)
   (if (keywordp (car __segment_end))
       (send* _segment_end __segment_end)
     (progn
       (if __segment_end (setq _segment_end (car __segment_end)))
       _segment_end)))
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f _center
    (send _center :serialization-length)
    ;; perception_interface_msgs/Point3f _segment_start
    (send _segment_start :serialization-length)
    ;; perception_interface_msgs/Point3f _segment_end
    (send _segment_end :serialization-length)
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
     ;; perception_interface_msgs/Point3f _center
       (send _center :serialize s)
     ;; perception_interface_msgs/Point3f _segment_start
       (send _segment_start :serialize s)
     ;; perception_interface_msgs/Point3f _segment_end
       (send _segment_end :serialize s)
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
   ;; perception_interface_msgs/Point3f _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; perception_interface_msgs/Point3f _segment_start
     (send _segment_start :deserialize buf ptr-) (incf ptr- (send _segment_start :serialization-length))
   ;; perception_interface_msgs/Point3f _segment_end
     (send _segment_end :deserialize buf ptr-) (incf ptr- (send _segment_end :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::DashLineEndNode :md5sum-) "5d3f1496b28f03f904353895dc6597f2")
(setf (get landmark_msgs::DashLineEndNode :datatype-) "landmark_msgs/DashLineEndNode")
(setf (get landmark_msgs::DashLineEndNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 CENTER_VALID = 2
uint16 SEGMENT_START_VALID = 4
uint16 SEGMENT_END_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f center
perception_interface_msgs/Point3f segment_start
perception_interface_msgs/Point3f segment_end

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

")



(provide :landmark_msgs/DashLineEndNode "5d3f1496b28f03f904353895dc6597f2")


