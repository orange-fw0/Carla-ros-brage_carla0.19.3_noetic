;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::IntersectionGuideLineNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'IntersectionGuideLineNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::INTERSECTIONGUIDELINENODE")
  (make-package "LANDMARK_MSGS::INTERSECTIONGUIDELINENODE"))

(in-package "ROS")
;;//! \htmlinclude IntersectionGuideLineNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::INTERSECTIONGUIDELINENODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::INTERSECTIONGUIDELINENODE"))
(defconstant landmark_msgs::IntersectionGuideLineNode::*SCORE_VALID* 1)
(intern "*LINE_POINTS_VALID*" (find-package "LANDMARK_MSGS::INTERSECTIONGUIDELINENODE"))
(shadow '*LINE_POINTS_VALID* (find-package "LANDMARK_MSGS::INTERSECTIONGUIDELINENODE"))
(defconstant landmark_msgs::IntersectionGuideLineNode::*LINE_POINTS_VALID* 2)

(defun landmark_msgs::IntersectionGuideLineNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::IntersectionGuideLineNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::IntersectionGuideLineNode::*LINE_POINTS_VALID*)
        (t nil)))

(defclass landmark_msgs::IntersectionGuideLineNode
  :super ros::object
  :slots (_available _score _index _track_id _line_points _reserved_info ))

(defmethod landmark_msgs::IntersectionGuideLineNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:index __index) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:line_points __line_points) ())
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _index (round __index))
   (setq _track_id __track_id)
   (setq _line_points __line_points)
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:line_points
   (&rest __line_points)
   (if (keywordp (car __line_points))
       (send* _line_points __line_points)
     (progn
       (if __line_points (setq _line_points (car __line_points)))
       _line_points)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; int32 _index
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f[] _line_points
    (apply #'+ (send-all _line_points :serialization-length)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _available
       (write-word _available s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _index
       (write-long _index s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; perception_interface_msgs/Point3f[] _line_points
     (write-long (length _line_points) s)
     (dolist (elem _line_points)
       (send elem :serialize s)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _available
     (setq _available (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; perception_interface_msgs/Point3f[] _line_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _line_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::IntersectionGuideLineNode :md5sum-) "dbc3bd0d40a09d9b591c9c0f40f2ef32")
(setf (get landmark_msgs::IntersectionGuideLineNode :datatype-) "landmark_msgs/IntersectionGuideLineNode")
(setf (get landmark_msgs::IntersectionGuideLineNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 LINE_POINTS_VALID = 2
uint16 available
float32 score
int32 index
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] line_points
string reserved_info

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



(provide :landmark_msgs/IntersectionGuideLineNode "dbc3bd0d40a09d9b591c9c0f40f2ef32")


