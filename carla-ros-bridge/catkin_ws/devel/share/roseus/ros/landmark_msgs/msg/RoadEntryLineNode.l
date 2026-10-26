;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadEntryLineNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadEntryLineNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADENTRYLINENODE")
  (make-package "LANDMARK_MSGS::ROADENTRYLINENODE"))

(in-package "ROS")
;;//! \htmlinclude RoadEntryLineNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::ROADENTRYLINENODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::ROADENTRYLINENODE"))
(defconstant landmark_msgs::RoadEntryLineNode::*SCORE_VALID* 1)
(intern "*LINE_POINTS_VALID*" (find-package "LANDMARK_MSGS::ROADENTRYLINENODE"))
(shadow '*LINE_POINTS_VALID* (find-package "LANDMARK_MSGS::ROADENTRYLINENODE"))
(defconstant landmark_msgs::RoadEntryLineNode::*LINE_POINTS_VALID* 2)
(intern "*IS_VIRTUAL_VALID*" (find-package "LANDMARK_MSGS::ROADENTRYLINENODE"))
(shadow '*IS_VIRTUAL_VALID* (find-package "LANDMARK_MSGS::ROADENTRYLINENODE"))
(defconstant landmark_msgs::RoadEntryLineNode::*IS_VIRTUAL_VALID* 4)
(intern "*PASS_DIRECTION_VALID*" (find-package "LANDMARK_MSGS::ROADENTRYLINENODE"))
(shadow '*PASS_DIRECTION_VALID* (find-package "LANDMARK_MSGS::ROADENTRYLINENODE"))
(defconstant landmark_msgs::RoadEntryLineNode::*PASS_DIRECTION_VALID* 8)

(defun landmark_msgs::RoadEntryLineNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::RoadEntryLineNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::RoadEntryLineNode::*LINE_POINTS_VALID*)
        ((= const 4) 'landmark_msgs::RoadEntryLineNode::*IS_VIRTUAL_VALID*)
        ((= const 8) 'landmark_msgs::RoadEntryLineNode::*PASS_DIRECTION_VALID*)
        (t nil)))

(defclass landmark_msgs::RoadEntryLineNode
  :super ros::object
  :slots (_available _score _track_id _line_points _is_virtual _pass_direction ))

(defmethod landmark_msgs::RoadEntryLineNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:line_points __line_points) ())
    ((:is_virtual __is_virtual) nil)
    ((:pass_direction __pass_direction) (instance landmark_msgs::RoadEntryLinePassDirectionTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _line_points __line_points)
   (setq _is_virtual __is_virtual)
   (setq _pass_direction __pass_direction)
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
  (:is_virtual
   (&optional (__is_virtual :null))
   (if (not (eq __is_virtual :null)) (setq _is_virtual __is_virtual)) _is_virtual)
  (:pass_direction
   (&rest __pass_direction)
   (if (keywordp (car __pass_direction))
       (send* _pass_direction __pass_direction)
     (progn
       (if __pass_direction (setq _pass_direction (car __pass_direction)))
       _pass_direction)))
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
    ;; bool _is_virtual
    1
    ;; landmark_msgs/RoadEntryLinePassDirectionTypeEnum _pass_direction
    (send _pass_direction :serialization-length)
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
     ;; bool _is_virtual
       (if _is_virtual (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/RoadEntryLinePassDirectionTypeEnum _pass_direction
       (send _pass_direction :serialize s)
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
   ;; bool _is_virtual
     (setq _is_virtual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/RoadEntryLinePassDirectionTypeEnum _pass_direction
     (send _pass_direction :deserialize buf ptr-) (incf ptr- (send _pass_direction :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::RoadEntryLineNode :md5sum-) "8f7c7ccb425606a4cb27c92e583e3eca")
(setf (get landmark_msgs::RoadEntryLineNode :datatype-) "landmark_msgs/RoadEntryLineNode")
(setf (get landmark_msgs::RoadEntryLineNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 LINE_POINTS_VALID = 2
uint16 IS_VIRTUAL_VALID = 4
uint16 PASS_DIRECTION_VALID = 8
uint16 available
float32 score
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f[] line_points
bool is_virtual
landmark_msgs/RoadEntryLinePassDirectionTypeEnum pass_direction

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
MSG: landmark_msgs/RoadEntryLinePassDirectionTypeEnum
uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1
uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2
uint8 value

")



(provide :landmark_msgs/RoadEntryLineNode "8f7c7ccb425606a4cb27c92e583e3eca")


