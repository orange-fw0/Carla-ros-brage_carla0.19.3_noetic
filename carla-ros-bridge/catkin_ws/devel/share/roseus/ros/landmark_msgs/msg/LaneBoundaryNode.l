;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneBoundaryNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneBoundaryNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE")
  (make-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))

(in-package "ROS")
;;//! \htmlinclude LaneBoundaryNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*SCORE_VALID* 1)
(intern "*COEFFICIENT_BV_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*COEFFICIENT_BV_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*COEFFICIENT_BV_VALID* 2)
(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*TYPE_VALID* 4)
(intern "*COLOR_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*COLOR_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*COLOR_VALID* 8)
(intern "*WIDTH_TYPE_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*WIDTH_TYPE_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*WIDTH_TYPE_VALID* 16)
(intern "*LINE_WIDTH_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*LINE_WIDTH_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*LINE_WIDTH_VALID* 32)
(intern "*LINE_POINTS_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*LINE_POINTS_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*LINE_POINTS_VALID* 64)
(intern "*IS_VIRTUAL_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*IS_VIRTUAL_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*IS_VIRTUAL_VALID* 128)
(intern "*DIRECTION_TYPE_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*DIRECTION_TYPE_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*DIRECTION_TYPE_VALID* 256)
(intern "*SOURCE_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*SOURCE_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*SOURCE_VALID* 512)
(intern "*SCENE_TYPE_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*SCENE_TYPE_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*SCENE_TYPE_VALID* 1024)
(intern "*SPECIAL_TYPE_VALID*" (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(shadow '*SPECIAL_TYPE_VALID* (find-package "LANDMARK_MSGS::LANEBOUNDARYNODE"))
(defconstant landmark_msgs::LaneBoundaryNode::*SPECIAL_TYPE_VALID* 2048)

(defun landmark_msgs::LaneBoundaryNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::LaneBoundaryNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::LaneBoundaryNode::*COEFFICIENT_BV_VALID*)
        ((= const 4) 'landmark_msgs::LaneBoundaryNode::*TYPE_VALID*)
        ((= const 8) 'landmark_msgs::LaneBoundaryNode::*COLOR_VALID*)
        ((= const 16) 'landmark_msgs::LaneBoundaryNode::*WIDTH_TYPE_VALID*)
        ((= const 32) 'landmark_msgs::LaneBoundaryNode::*LINE_WIDTH_VALID*)
        ((= const 64) 'landmark_msgs::LaneBoundaryNode::*LINE_POINTS_VALID*)
        ((= const 128) 'landmark_msgs::LaneBoundaryNode::*IS_VIRTUAL_VALID*)
        ((= const 256) 'landmark_msgs::LaneBoundaryNode::*DIRECTION_TYPE_VALID*)
        ((= const 512) 'landmark_msgs::LaneBoundaryNode::*SOURCE_VALID*)
        ((= const 1024) 'landmark_msgs::LaneBoundaryNode::*SCENE_TYPE_VALID*)
        ((= const 2048) 'landmark_msgs::LaneBoundaryNode::*SPECIAL_TYPE_VALID*)
        (t nil)))

(defclass landmark_msgs::LaneBoundaryNode
  :super ros::object
  :slots (_available _score _index _track_id _coefficient_bv _type _color _width_type _line_width _line_points _is_virtual _direction_type _source _scene_type _special_type ))

(defmethod landmark_msgs::LaneBoundaryNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:index __index) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:coefficient_bv __coefficient_bv) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:type __type) (instance landmark_msgs::LaneBoundaryTypeEnum :init))
    ((:color __color) (instance landmark_msgs::LaneBoundaryColorEnum :init))
    ((:width_type __width_type) (instance landmark_msgs::LaneBoundaryWidthTypeEnum :init))
    ((:line_width __line_width) 0.0)
    ((:line_points __line_points) ())
    ((:is_virtual __is_virtual) nil)
    ((:direction_type __direction_type) (instance landmark_msgs::LaneBoundaryDirectionTypeEnum :init))
    ((:source __source) (instance landmark_msgs::BoundarySourceEnum :init))
    ((:scene_type __scene_type) (instance landmark_msgs::LaneBoundarySceneTypeEnum :init))
    ((:special_type __special_type) (instance landmark_msgs::LaneBoundarySpecialTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _index (round __index))
   (setq _track_id __track_id)
   (setq _coefficient_bv __coefficient_bv)
   (setq _type __type)
   (setq _color __color)
   (setq _width_type __width_type)
   (setq _line_width (float __line_width))
   (setq _line_points __line_points)
   (setq _is_virtual __is_virtual)
   (setq _direction_type __direction_type)
   (setq _source __source)
   (setq _scene_type __scene_type)
   (setq _special_type __special_type)
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
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:width_type
   (&rest __width_type)
   (if (keywordp (car __width_type))
       (send* _width_type __width_type)
     (progn
       (if __width_type (setq _width_type (car __width_type)))
       _width_type)))
  (:line_width
   (&optional __line_width)
   (if __line_width (setq _line_width __line_width)) _line_width)
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
  (:direction_type
   (&rest __direction_type)
   (if (keywordp (car __direction_type))
       (send* _direction_type __direction_type)
     (progn
       (if __direction_type (setq _direction_type (car __direction_type)))
       _direction_type)))
  (:source
   (&rest __source)
   (if (keywordp (car __source))
       (send* _source __source)
     (progn
       (if __source (setq _source (car __source)))
       _source)))
  (:scene_type
   (&rest __scene_type)
   (if (keywordp (car __scene_type))
       (send* _scene_type __scene_type)
     (progn
       (if __scene_type (setq _scene_type (car __scene_type)))
       _scene_type)))
  (:special_type
   (&rest __special_type)
   (if (keywordp (car __special_type))
       (send* _special_type __special_type)
     (progn
       (if __special_type (setq _special_type (car __special_type)))
       _special_type)))
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
    ;; float32[] _coefficient_bv
    (* 4    (length _coefficient_bv)) 4
    ;; landmark_msgs/LaneBoundaryTypeEnum _type
    (send _type :serialization-length)
    ;; landmark_msgs/LaneBoundaryColorEnum _color
    (send _color :serialization-length)
    ;; landmark_msgs/LaneBoundaryWidthTypeEnum _width_type
    (send _width_type :serialization-length)
    ;; float32 _line_width
    4
    ;; perception_interface_msgs/Point3f[] _line_points
    (apply #'+ (send-all _line_points :serialization-length)) 4
    ;; bool _is_virtual
    1
    ;; landmark_msgs/LaneBoundaryDirectionTypeEnum _direction_type
    (send _direction_type :serialization-length)
    ;; landmark_msgs/BoundarySourceEnum _source
    (send _source :serialization-length)
    ;; landmark_msgs/LaneBoundarySceneTypeEnum _scene_type
    (send _scene_type :serialization-length)
    ;; landmark_msgs/LaneBoundarySpecialTypeEnum _special_type
    (send _special_type :serialization-length)
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
     ;; float32[] _coefficient_bv
     (write-long (length _coefficient_bv) s)
     (dotimes (i (length _coefficient_bv))
       (sys::poke (elt _coefficient_bv i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; landmark_msgs/LaneBoundaryTypeEnum _type
       (send _type :serialize s)
     ;; landmark_msgs/LaneBoundaryColorEnum _color
       (send _color :serialize s)
     ;; landmark_msgs/LaneBoundaryWidthTypeEnum _width_type
       (send _width_type :serialize s)
     ;; float32 _line_width
       (sys::poke _line_width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; perception_interface_msgs/Point3f[] _line_points
     (write-long (length _line_points) s)
     (dolist (elem _line_points)
       (send elem :serialize s)
       )
     ;; bool _is_virtual
       (if _is_virtual (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/LaneBoundaryDirectionTypeEnum _direction_type
       (send _direction_type :serialize s)
     ;; landmark_msgs/BoundarySourceEnum _source
       (send _source :serialize s)
     ;; landmark_msgs/LaneBoundarySceneTypeEnum _scene_type
       (send _scene_type :serialize s)
     ;; landmark_msgs/LaneBoundarySpecialTypeEnum _special_type
       (send _special_type :serialize s)
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
   ;; float32[] _coefficient_bv
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coefficient_bv (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coefficient_bv i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; landmark_msgs/LaneBoundaryTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; landmark_msgs/LaneBoundaryColorEnum _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; landmark_msgs/LaneBoundaryWidthTypeEnum _width_type
     (send _width_type :deserialize buf ptr-) (incf ptr- (send _width_type :serialization-length))
   ;; float32 _line_width
     (setq _line_width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; perception_interface_msgs/Point3f[] _line_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _line_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_virtual
     (setq _is_virtual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/LaneBoundaryDirectionTypeEnum _direction_type
     (send _direction_type :deserialize buf ptr-) (incf ptr- (send _direction_type :serialization-length))
   ;; landmark_msgs/BoundarySourceEnum _source
     (send _source :deserialize buf ptr-) (incf ptr- (send _source :serialization-length))
   ;; landmark_msgs/LaneBoundarySceneTypeEnum _scene_type
     (send _scene_type :deserialize buf ptr-) (incf ptr- (send _scene_type :serialization-length))
   ;; landmark_msgs/LaneBoundarySpecialTypeEnum _special_type
     (send _special_type :deserialize buf ptr-) (incf ptr- (send _special_type :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::LaneBoundaryNode :md5sum-) "45e3879b0bbeb44ccc514b606f167ca7")
(setf (get landmark_msgs::LaneBoundaryNode :datatype-) "landmark_msgs/LaneBoundaryNode")
(setf (get landmark_msgs::LaneBoundaryNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 TYPE_VALID = 4
uint16 COLOR_VALID = 8
uint16 WIDTH_TYPE_VALID = 16
uint16 LINE_WIDTH_VALID = 32
uint16 LINE_POINTS_VALID = 64
uint16 IS_VIRTUAL_VALID = 128
uint16 DIRECTION_TYPE_VALID = 256
uint16 SOURCE_VALID = 512
uint16 SCENE_TYPE_VALID = 1024
uint16 SPECIAL_TYPE_VALID = 2048
uint16 available
float32 score
int32 index
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/LaneBoundaryTypeEnum type
landmark_msgs/LaneBoundaryColorEnum color
landmark_msgs/LaneBoundaryWidthTypeEnum width_type
float32 line_width
perception_interface_msgs/Point3f[] line_points
bool is_virtual
landmark_msgs/LaneBoundaryDirectionTypeEnum direction_type
landmark_msgs/BoundarySourceEnum source
landmark_msgs/LaneBoundarySceneTypeEnum scene_type
landmark_msgs/LaneBoundarySpecialTypeEnum special_type

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/LaneBoundaryTypeEnum
uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_TYPE_DASHED = 1
uint8 LANE_BOUNDARY_TYPE_SOLID = 2
uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3
uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6
uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7
uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8
uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9
uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10
uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11
uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12
uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13
uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14
uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15
uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16
uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17
uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18
uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19
uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20
uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21
uint8 LANE_BOUNDARY_TYPE_OTHERS = 99
uint8 value

================================================================================
MSG: landmark_msgs/LaneBoundaryColorEnum
uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0
uint8 LANE_BOUNDARY_COLOR_WHITE = 1
uint8 LANE_BOUNDARY_COLOR_YELLOW = 2
uint8 LANE_BOUNDARY_COLOR_ORANGE = 3
uint8 LANE_BOUNDARY_COLOR_BLUE = 4
uint8 LANE_BOUNDARY_COLOR_GREEN = 5
uint8 LANE_BOUNDARY_COLOR_GRAY = 6
uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7
uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8
uint8 LANE_BOUNDARY_OTHER = 99
uint8 value

================================================================================
MSG: landmark_msgs/LaneBoundaryWidthTypeEnum
uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1
uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: landmark_msgs/LaneBoundaryDirectionTypeEnum
uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1
uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2
uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3
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

================================================================================
MSG: landmark_msgs/LaneBoundarySceneTypeEnum
uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1
uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2
uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3
uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4
uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5
uint8 value

================================================================================
MSG: landmark_msgs/LaneBoundarySpecialTypeEnum
uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2
uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5
uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6
uint8 value

")



(provide :landmark_msgs/LaneBoundaryNode "45e3879b0bbeb44ccc514b606f167ca7")


