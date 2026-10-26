;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::SpeedBumpNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'SpeedBumpNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::SPEEDBUMPNODE")
  (make-package "LANDMARK_MSGS::SPEEDBUMPNODE"))

(in-package "ROS")
;;//! \htmlinclude SpeedBumpNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(defconstant landmark_msgs::SpeedBumpNode::*SCORE_VALID* 1)
(intern "*LINE_POINTS_VALID*" (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(shadow '*LINE_POINTS_VALID* (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(defconstant landmark_msgs::SpeedBumpNode::*LINE_POINTS_VALID* 2)
(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(defconstant landmark_msgs::SpeedBumpNode::*TYPE_VALID* 4)
(intern "*WIDTH_VALID*" (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(shadow '*WIDTH_VALID* (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(defconstant landmark_msgs::SpeedBumpNode::*WIDTH_VALID* 8)
(intern "*IS_VIRETUAL_VALID*" (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(shadow '*IS_VIRETUAL_VALID* (find-package "LANDMARK_MSGS::SPEEDBUMPNODE"))
(defconstant landmark_msgs::SpeedBumpNode::*IS_VIRETUAL_VALID* 16)

(defun landmark_msgs::SpeedBumpNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::SpeedBumpNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::SpeedBumpNode::*LINE_POINTS_VALID*)
        ((= const 4) 'landmark_msgs::SpeedBumpNode::*TYPE_VALID*)
        ((= const 8) 'landmark_msgs::SpeedBumpNode::*WIDTH_VALID*)
        ((= const 16) 'landmark_msgs::SpeedBumpNode::*IS_VIRETUAL_VALID*)
        (t nil)))

(defclass landmark_msgs::SpeedBumpNode
  :super ros::object
  :slots (_available _score _track_id _line_points _type _width _is_virtual ))

(defmethod landmark_msgs::SpeedBumpNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:line_points __line_points) ())
    ((:type __type) (instance landmark_msgs::SpeedBumpTypeEnum :init))
    ((:width __width) 0.0)
    ((:is_virtual __is_virtual) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _line_points __line_points)
   (setq _type __type)
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
  (:line_points
   (&rest __line_points)
   (if (keywordp (car __line_points))
       (send* _line_points __line_points)
     (progn
       (if __line_points (setq _line_points (car __line_points)))
       _line_points)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
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
    ;; perception_interface_msgs/Point3f[] _line_points
    (apply #'+ (send-all _line_points :serialization-length)) 4
    ;; landmark_msgs/SpeedBumpTypeEnum _type
    (send _type :serialization-length)
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
     ;; perception_interface_msgs/Point3f[] _line_points
     (write-long (length _line_points) s)
     (dolist (elem _line_points)
       (send elem :serialize s)
       )
     ;; landmark_msgs/SpeedBumpTypeEnum _type
       (send _type :serialize s)
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
   ;; perception_interface_msgs/Point3f[] _line_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _line_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/SpeedBumpTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_virtual
     (setq _is_virtual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::SpeedBumpNode :md5sum-) "835401ebb3f247cb98b5f886c8b970e1")
(setf (get landmark_msgs::SpeedBumpNode :datatype-) "landmark_msgs/SpeedBumpNode")
(setf (get landmark_msgs::SpeedBumpNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 LINE_POINTS_VALID = 2
uint16 TYPE_VALID = 4
uint16 WIDTH_VALID = 8
uint16 IS_VIRETUAL_VALID = 16
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] line_points
landmark_msgs/SpeedBumpTypeEnum type
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

================================================================================
MSG: landmark_msgs/SpeedBumpTypeEnum
uint8 SPEED_BUMP_TYPE_UNKNOWN = 0
uint8 SPEED_BUMP_TYPE_NORMAL = 1
uint8 SPEED_BUMP_TYPE_BLOCK = 2
uint8 SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING = 3
uint8 value

")



(provide :landmark_msgs/SpeedBumpNode "835401ebb3f247cb98b5f886c8b970e1")


