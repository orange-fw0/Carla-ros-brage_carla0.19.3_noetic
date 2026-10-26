;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadBoundaryNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadBoundaryNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE")
  (make-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))

(in-package "ROS")
;;//! \htmlinclude RoadBoundaryNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(defconstant landmark_msgs::RoadBoundaryNode::*SCORE_VALID* 1)
(intern "*COEFFICIENT_BV_VALID*" (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(shadow '*COEFFICIENT_BV_VALID* (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(defconstant landmark_msgs::RoadBoundaryNode::*COEFFICIENT_BV_VALID* 2)
(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(defconstant landmark_msgs::RoadBoundaryNode::*TYPE_VALID* 4)
(intern "*POINTS_VALID*" (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(shadow '*POINTS_VALID* (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(defconstant landmark_msgs::RoadBoundaryNode::*POINTS_VALID* 8)
(intern "*IS_VIRTUAL_VALID*" (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(shadow '*IS_VIRTUAL_VALID* (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(defconstant landmark_msgs::RoadBoundaryNode::*IS_VIRTUAL_VALID* 16)
(intern "*HEIGHT_VALID*" (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(shadow '*HEIGHT_VALID* (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(defconstant landmark_msgs::RoadBoundaryNode::*HEIGHT_VALID* 32)
(intern "*PASS_DIRECTION_VALID*" (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(shadow '*PASS_DIRECTION_VALID* (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(defconstant landmark_msgs::RoadBoundaryNode::*PASS_DIRECTION_VALID* 64)
(intern "*SOURCE_VALID*" (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(shadow '*SOURCE_VALID* (find-package "LANDMARK_MSGS::ROADBOUNDARYNODE"))
(defconstant landmark_msgs::RoadBoundaryNode::*SOURCE_VALID* 128)

(defun landmark_msgs::RoadBoundaryNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::RoadBoundaryNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::RoadBoundaryNode::*COEFFICIENT_BV_VALID*)
        ((= const 4) 'landmark_msgs::RoadBoundaryNode::*TYPE_VALID*)
        ((= const 8) 'landmark_msgs::RoadBoundaryNode::*POINTS_VALID*)
        ((= const 16) 'landmark_msgs::RoadBoundaryNode::*IS_VIRTUAL_VALID*)
        ((= const 32) 'landmark_msgs::RoadBoundaryNode::*HEIGHT_VALID*)
        ((= const 64) 'landmark_msgs::RoadBoundaryNode::*PASS_DIRECTION_VALID*)
        ((= const 128) 'landmark_msgs::RoadBoundaryNode::*SOURCE_VALID*)
        (t nil)))

(defclass landmark_msgs::RoadBoundaryNode
  :super ros::object
  :slots (_available _score _track_id _coefficient_bv _type _line_points _is_virtual _height _pass_direction _source ))

(defmethod landmark_msgs::RoadBoundaryNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:coefficient_bv __coefficient_bv) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:type __type) (instance landmark_msgs::RoadBoundaryTypeEnum :init))
    ((:line_points __line_points) ())
    ((:is_virtual __is_virtual) nil)
    ((:height __height) 0.0)
    ((:pass_direction __pass_direction) (instance landmark_msgs::RoadBoundaryPassDirectionTypeEnum :init))
    ((:source __source) (instance landmark_msgs::BoundarySourceEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _track_id __track_id)
   (setq _coefficient_bv __coefficient_bv)
   (setq _type __type)
   (setq _line_points __line_points)
   (setq _is_virtual __is_virtual)
   (setq _height (float __height))
   (setq _pass_direction __pass_direction)
   (setq _source __source)
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
  (:coefficient_bv
   (&optional __coefficient_bv)
   (if __coefficient_bv (setq _coefficient_bv __coefficient_bv)) _coefficient_bv)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
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
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:pass_direction
   (&rest __pass_direction)
   (if (keywordp (car __pass_direction))
       (send* _pass_direction __pass_direction)
     (progn
       (if __pass_direction (setq _pass_direction (car __pass_direction)))
       _pass_direction)))
  (:source
   (&rest __source)
   (if (keywordp (car __source))
       (send* _source __source)
     (progn
       (if __source (setq _source (car __source)))
       _source)))
  (:serialization-length
   ()
   (+
    ;; uint16 _available
    2
    ;; float32 _score
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; float32[] _coefficient_bv
    (* 4    (length _coefficient_bv)) 4
    ;; landmark_msgs/RoadBoundaryTypeEnum _type
    (send _type :serialization-length)
    ;; perception_interface_msgs/Point3f[] _line_points
    (apply #'+ (send-all _line_points :serialization-length)) 4
    ;; bool _is_virtual
    1
    ;; float32 _height
    4
    ;; landmark_msgs/RoadBoundaryPassDirectionTypeEnum _pass_direction
    (send _pass_direction :serialization-length)
    ;; landmark_msgs/BoundarySourceEnum _source
    (send _source :serialization-length)
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
     ;; float32[] _coefficient_bv
     (write-long (length _coefficient_bv) s)
     (dotimes (i (length _coefficient_bv))
       (sys::poke (elt _coefficient_bv i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; landmark_msgs/RoadBoundaryTypeEnum _type
       (send _type :serialize s)
     ;; perception_interface_msgs/Point3f[] _line_points
     (write-long (length _line_points) s)
     (dolist (elem _line_points)
       (send elem :serialize s)
       )
     ;; bool _is_virtual
       (if _is_virtual (write-byte -1 s) (write-byte 0 s))
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/RoadBoundaryPassDirectionTypeEnum _pass_direction
       (send _pass_direction :serialize s)
     ;; landmark_msgs/BoundarySourceEnum _source
       (send _source :serialize s)
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
   ;; float32[] _coefficient_bv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coefficient_bv (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coefficient_bv i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; landmark_msgs/RoadBoundaryTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; perception_interface_msgs/Point3f[] _line_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _line_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_virtual
     (setq _is_virtual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/RoadBoundaryPassDirectionTypeEnum _pass_direction
     (send _pass_direction :deserialize buf ptr-) (incf ptr- (send _pass_direction :serialization-length))
   ;; landmark_msgs/BoundarySourceEnum _source
     (send _source :deserialize buf ptr-) (incf ptr- (send _source :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::RoadBoundaryNode :md5sum-) "96ed600a60cdb6c63fc39fdb4205ab21")
(setf (get landmark_msgs::RoadBoundaryNode :datatype-) "landmark_msgs/RoadBoundaryNode")
(setf (get landmark_msgs::RoadBoundaryNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 TYPE_VALID = 4
uint16 POINTS_VALID = 8
uint16 IS_VIRTUAL_VALID = 16
uint16 HEIGHT_VALID = 32
uint16 PASS_DIRECTION_VALID = 64
uint16 SOURCE_VALID = 128
uint16 available
float32 score
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/RoadBoundaryTypeEnum type
perception_interface_msgs/Point3f[] line_points
bool is_virtual
float32 height
landmark_msgs/RoadBoundaryPassDirectionTypeEnum pass_direction
landmark_msgs/BoundarySourceEnum source

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

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
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: landmark_msgs/RoadBoundaryPassDirectionTypeEnum
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2
uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3
uint8 value

================================================================================
MSG: landmark_msgs/BoundarySourceEnum
uint8 OTHER = 0
uint8 AUTO_MAPPING = 1
uint8 MANUAL_VALID = 2
uint8 MANUAL_GUESS = 3
uint8 INTERNAL = 4
uint8 EXTERNAL = 5
uint8 INTERNAL_SHARED = 6
uint8 NONE = 7
uint8 value

")



(provide :landmark_msgs/RoadBoundaryNode "96ed600a60cdb6c63fc39fdb4205ab21")


