;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::ValidRoiNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'ValidRoiNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::VALIDROINODE")
  (make-package "LANDMARK_MSGS::VALIDROINODE"))

(in-package "ROS")
;;//! \htmlinclude ValidRoiNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::VALIDROINODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::VALIDROINODE"))
(defconstant landmark_msgs::ValidRoiNode::*SCORE_VALID* 1)
(intern "*POLYGON_POINTS_VALID*" (find-package "LANDMARK_MSGS::VALIDROINODE"))
(shadow '*POLYGON_POINTS_VALID* (find-package "LANDMARK_MSGS::VALIDROINODE"))
(defconstant landmark_msgs::ValidRoiNode::*POLYGON_POINTS_VALID* 2)

(defun landmark_msgs::ValidRoiNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::ValidRoiNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::ValidRoiNode::*POLYGON_POINTS_VALID*)
        (t nil)))

(defclass landmark_msgs::ValidRoiNode
  :super ros::object
  :slots (_available _score _track_id _polygon_points ))

(defmethod landmark_msgs::ValidRoiNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:polygon_points __polygon_points) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _polygon_points __polygon_points)
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
   ;;
   self)
  )

(setf (get landmark_msgs::ValidRoiNode :md5sum-) "b677bbfb92f59db6bac869c3a5129447")
(setf (get landmark_msgs::ValidRoiNode :datatype-) "landmark_msgs/ValidRoiNode")
(setf (get landmark_msgs::ValidRoiNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 POLYGON_POINTS_VALID = 2
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] polygon_points

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



(provide :landmark_msgs/ValidRoiNode "b677bbfb92f59db6bac869c3a5129447")


