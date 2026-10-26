;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::CrossWalkNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'CrossWalkNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::CROSSWALKNODE")
  (make-package "LANDMARK_MSGS::CROSSWALKNODE"))

(in-package "ROS")
;;//! \htmlinclude CrossWalkNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::CROSSWALKNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::CROSSWALKNODE"))
(defconstant landmark_msgs::CrossWalkNode::*SCORE_VALID* 1)
(intern "*CENTER_LINE_VALID*" (find-package "LANDMARK_MSGS::CROSSWALKNODE"))
(shadow '*CENTER_LINE_VALID* (find-package "LANDMARK_MSGS::CROSSWALKNODE"))
(defconstant landmark_msgs::CrossWalkNode::*CENTER_LINE_VALID* 2)
(intern "*WIDTH_VALID*" (find-package "LANDMARK_MSGS::CROSSWALKNODE"))
(shadow '*WIDTH_VALID* (find-package "LANDMARK_MSGS::CROSSWALKNODE"))
(defconstant landmark_msgs::CrossWalkNode::*WIDTH_VALID* 4)
(intern "*IS_VIRETUAL_VALID*" (find-package "LANDMARK_MSGS::CROSSWALKNODE"))
(shadow '*IS_VIRETUAL_VALID* (find-package "LANDMARK_MSGS::CROSSWALKNODE"))
(defconstant landmark_msgs::CrossWalkNode::*IS_VIRETUAL_VALID* 8)

(defun landmark_msgs::CrossWalkNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::CrossWalkNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::CrossWalkNode::*CENTER_LINE_VALID*)
        ((= const 4) 'landmark_msgs::CrossWalkNode::*WIDTH_VALID*)
        ((= const 8) 'landmark_msgs::CrossWalkNode::*IS_VIRETUAL_VALID*)
        (t nil)))

(defclass landmark_msgs::CrossWalkNode
  :super ros::object
  :slots (_available _score _track_id _center_line_points _width _is_virtual ))

(defmethod landmark_msgs::CrossWalkNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:center_line_points __center_line_points) ())
    ((:width __width) 0.0)
    ((:is_virtual __is_virtual) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _center_line_points __center_line_points)
   (setq _width (float __width))
   (setq _is_virtual __is_virtual)
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
  (:center_line_points
   (&rest __center_line_points)
   (if (keywordp (car __center_line_points))
       (send* _center_line_points __center_line_points)
     (progn
       (if __center_line_points (setq _center_line_points (car __center_line_points)))
       _center_line_points)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:is_virtual
   (&optional (__is_virtual :null))
   (if (not (eq __is_virtual :null)) (setq _is_virtual __is_virtual)) _is_virtual)
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f[] _center_line_points
    (apply #'+ (send-all _center_line_points :serialization-length)) 4
    ;; float32 _width
    4
    ;; bool _is_virtual
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
     ;; perception_interface_msgs/Point3f[] _center_line_points
     (write-long (length _center_line_points) s)
     (dolist (elem _center_line_points)
       (send elem :serialize s)
       )
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_virtual
       (if _is_virtual (write-byte -1 s) (write-byte 0 s))
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
   ;; perception_interface_msgs/Point3f[] _center_line_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center_line_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _center_line_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_virtual
     (setq _is_virtual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::CrossWalkNode :md5sum-) "849c5dc51953225ba3242c8dcebe7f77")
(setf (get landmark_msgs::CrossWalkNode :datatype-) "landmark_msgs/CrossWalkNode")
(setf (get landmark_msgs::CrossWalkNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 CENTER_LINE_VALID = 2
uint16 WIDTH_VALID = 4
uint16 IS_VIRETUAL_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] center_line_points
float32 width
bool is_virtual

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



(provide :landmark_msgs/CrossWalkNode "849c5dc51953225ba3242c8dcebe7f77")


