;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERNODE")
  (make-package "LANDMARK_MSGS::LANECENTERNODE"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*SCORE_VALID* 1)
(intern "*COEFFICIENT_BV_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*COEFFICIENT_BV_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*COEFFICIENT_BV_VALID* 2)
(intern "*LANE_TYPE_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*LANE_TYPE_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*LANE_TYPE_VALID* 4)
(intern "*DIRECTION_TYPE_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*DIRECTION_TYPE_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*DIRECTION_TYPE_VALID* 8)
(intern "*FLOW_TYPE_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*FLOW_TYPE_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*FLOW_TYPE_VALID* 16)
(intern "*LANE_ATTRIBUTE_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*LANE_ATTRIBUTE_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*LANE_ATTRIBUTE_VALID* 32)
(intern "*LINE_POINTS_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*LINE_POINTS_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*LINE_POINTS_VALID* 64)
(intern "*IS_VIRTUAL_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*IS_VIRTUAL_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*IS_VIRTUAL_VALID* 128)
(intern "*IN_INTERSECTION_VALID*" (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(shadow '*IN_INTERSECTION_VALID* (find-package "LANDMARK_MSGS::LANECENTERNODE"))
(defconstant landmark_msgs::LaneCenterNode::*IN_INTERSECTION_VALID* 256)

(defun landmark_msgs::LaneCenterNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::LaneCenterNode::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::LaneCenterNode::*COEFFICIENT_BV_VALID*)
        ((= const 4) 'landmark_msgs::LaneCenterNode::*LANE_TYPE_VALID*)
        ((= const 8) 'landmark_msgs::LaneCenterNode::*DIRECTION_TYPE_VALID*)
        ((= const 16) 'landmark_msgs::LaneCenterNode::*FLOW_TYPE_VALID*)
        ((= const 32) 'landmark_msgs::LaneCenterNode::*LANE_ATTRIBUTE_VALID*)
        ((= const 64) 'landmark_msgs::LaneCenterNode::*LINE_POINTS_VALID*)
        ((= const 128) 'landmark_msgs::LaneCenterNode::*IS_VIRTUAL_VALID*)
        ((= const 256) 'landmark_msgs::LaneCenterNode::*IN_INTERSECTION_VALID*)
        (t nil)))

(defclass landmark_msgs::LaneCenterNode
  :super ros::object
  :slots (_available _score _index _track_id _coefficient_bv _lane_types _direction_types _flow_type _lane_attribute _line_points _is_virtual _in_intersection ))

(defmethod landmark_msgs::LaneCenterNode
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:index __index) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:coefficient_bv __coefficient_bv) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lane_types __lane_types) ())
    ((:direction_types __direction_types) ())
    ((:flow_type __flow_type) (instance landmark_msgs::LaneCenterFlowTypeEnum :init))
    ((:lane_attribute __lane_attribute) ())
    ((:line_points __line_points) ())
    ((:is_virtual __is_virtual) nil)
    ((:in_intersection __in_intersection) nil)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _index (round __index))
   (setq _track_id __track_id)
   (setq _coefficient_bv __coefficient_bv)
   (setq _lane_types __lane_types)
   (setq _direction_types __direction_types)
   (setq _flow_type __flow_type)
   (setq _lane_attribute __lane_attribute)
   (setq _line_points __line_points)
   (setq _is_virtual __is_virtual)
   (setq _in_intersection __in_intersection)
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
  (:lane_types
   (&rest __lane_types)
   (if (keywordp (car __lane_types))
       (send* _lane_types __lane_types)
     (progn
       (if __lane_types (setq _lane_types (car __lane_types)))
       _lane_types)))
  (:direction_types
   (&rest __direction_types)
   (if (keywordp (car __direction_types))
       (send* _direction_types __direction_types)
     (progn
       (if __direction_types (setq _direction_types (car __direction_types)))
       _direction_types)))
  (:flow_type
   (&rest __flow_type)
   (if (keywordp (car __flow_type))
       (send* _flow_type __flow_type)
     (progn
       (if __flow_type (setq _flow_type (car __flow_type)))
       _flow_type)))
  (:lane_attribute
   (&rest __lane_attribute)
   (if (keywordp (car __lane_attribute))
       (send* _lane_attribute __lane_attribute)
     (progn
       (if __lane_attribute (setq _lane_attribute (car __lane_attribute)))
       _lane_attribute)))
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
  (:in_intersection
   (&optional (__in_intersection :null))
   (if (not (eq __in_intersection :null)) (setq _in_intersection __in_intersection)) _in_intersection)
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
    ;; landmark_msgs/LaneCenterNodeLaneTypeEnum[] _lane_types
    (apply #'+ (send-all _lane_types :serialization-length)) 4
    ;; landmark_msgs/LaneCenterNodeDirectionTypeEnum[] _direction_types
    (apply #'+ (send-all _direction_types :serialization-length)) 4
    ;; landmark_msgs/LaneCenterFlowTypeEnum _flow_type
    (send _flow_type :serialization-length)
    ;; landmark_msgs/LaneCenterNodeLaneAttribute[] _lane_attribute
    (apply #'+ (send-all _lane_attribute :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _line_points
    (apply #'+ (send-all _line_points :serialization-length)) 4
    ;; bool _is_virtual
    1
    ;; bool _in_intersection
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
     ;; int32 _index
       (write-long _index s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; float32[] _coefficient_bv
     (write-long (length _coefficient_bv) s)
     (dotimes (i (length _coefficient_bv))
       (sys::poke (elt _coefficient_bv i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; landmark_msgs/LaneCenterNodeLaneTypeEnum[] _lane_types
     (write-long (length _lane_types) s)
     (dolist (elem _lane_types)
       (send elem :serialize s)
       )
     ;; landmark_msgs/LaneCenterNodeDirectionTypeEnum[] _direction_types
     (write-long (length _direction_types) s)
     (dolist (elem _direction_types)
       (send elem :serialize s)
       )
     ;; landmark_msgs/LaneCenterFlowTypeEnum _flow_type
       (send _flow_type :serialize s)
     ;; landmark_msgs/LaneCenterNodeLaneAttribute[] _lane_attribute
     (write-long (length _lane_attribute) s)
     (dolist (elem _lane_attribute)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _line_points
     (write-long (length _line_points) s)
     (dolist (elem _line_points)
       (send elem :serialize s)
       )
     ;; bool _is_virtual
       (if _is_virtual (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_intersection
       (if _in_intersection (write-byte -1 s) (write-byte 0 s))
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
   ;; landmark_msgs/LaneCenterNodeLaneTypeEnum[] _lane_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_types (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneCenterNodeLaneTypeEnum :init) r)) r))
     (dolist (elem- _lane_types)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/LaneCenterNodeDirectionTypeEnum[] _direction_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _direction_types (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneCenterNodeDirectionTypeEnum :init) r)) r))
     (dolist (elem- _direction_types)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/LaneCenterFlowTypeEnum _flow_type
     (send _flow_type :deserialize buf ptr-) (incf ptr- (send _flow_type :serialization-length))
   ;; landmark_msgs/LaneCenterNodeLaneAttribute[] _lane_attribute
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_attribute (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneCenterNodeLaneAttribute :init) r)) r))
     (dolist (elem- _lane_attribute)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _line_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _line_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _line_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_virtual
     (setq _is_virtual (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_intersection
     (setq _in_intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get landmark_msgs::LaneCenterNode :md5sum-) "a377ef8bb24b68f12c1050df737414ed")
(setf (get landmark_msgs::LaneCenterNode :datatype-) "landmark_msgs/LaneCenterNode")
(setf (get landmark_msgs::LaneCenterNode :definition-)
      "uint16 SCORE_VALID = 1
uint16 COEFFICIENT_BV_VALID = 2
uint16 LANE_TYPE_VALID = 4
uint16 DIRECTION_TYPE_VALID = 8
uint16 FLOW_TYPE_VALID = 16
uint16 LANE_ATTRIBUTE_VALID = 32
uint16 LINE_POINTS_VALID = 64
uint16 IS_VIRTUAL_VALID = 128
uint16 IN_INTERSECTION_VALID = 256
uint16 available
float32 score
int32 index
landmark_msgs/TrackId track_id
float32[] coefficient_bv
landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types
landmark_msgs/LaneCenterNodeDirectionTypeEnum[] direction_types
landmark_msgs/LaneCenterFlowTypeEnum flow_type
landmark_msgs/LaneCenterNodeLaneAttribute[] lane_attribute
perception_interface_msgs/Point3f[] line_points
bool is_virtual
bool in_intersection

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum
uint8 LANE_TYPE_UNKNOWN = 0
uint8 LANE_TYPE_NORMAL = 1
uint8 LANE_TYPE_EMERGENCY = 5
uint8 LANE_TYPE_BUS = 6
uint8 LANE_TYPE_PASSING = 7
uint8 LANE_TYPE_HOV = 8
uint8 LANE_TYPE_ACCELERATE = 9
uint8 LANE_TYPE_UTURN = 10
uint8 LANE_TYPE_DECELERATE = 11
uint8 LANE_TYPE_SHOULDER = 12
uint8 LANE_TYPE_INTERSECTION = 14
uint8 LANE_TYPE_NON_MOTOR = 15
uint8 LANE_TYPE_MIXED_MOTOR = 16
uint8 LANE_TYPE_SIDE_WALK = 17
uint8 LANE_TYPE_MOTORCYCLE = 18
uint8 LANE_TYPE_TOLL_ETC = 19
uint8 LANE_TYPE_TOLL = 20
uint8 LANE_TYPE_CHECKPOINT = 21
uint8 LANE_TYPE_RAMP = 22
uint8 LANE_TYPE_BARRIER = 23
uint8 LANE_TYPE_CHANNELIZATION = 24
uint8 LANE_TYPE_EMERGENCE_STOP = 25
uint8 LANE_TYPE_HAZARDOUS_GOODS = 26
uint8 LANE_TYPE_STEEP_GRADE = 27
uint8 LANE_TYPE_DIREC_VARIABLE = 28
uint8 LANE_TYPE_CUSTOMS_SUP = 29
uint8 LANE_TYPE_EMERGENCE_RAMP = 30
uint8 LANE_TYPE_PARKING = 31
uint8 LANE_TYPE_TIDAL = 32
uint8 LANE_TYPE_TEMPORARY = 33
uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34
uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35
uint8 LANE_TYPE_LEFT_ACC = 36
uint8 LANE_TYPE_RIGHT_ACC = 37
uint8 LANE_TYPE_LEFT_DEC = 38
uint8 LANE_TYPE_RIGHT_DEC = 39
uint8 LANE_TYPE_SERVICE_RAMP = 40
uint8 LANE_TYPE_CURB = 41
uint8 LANE_TYPE_RAILWAY = 42
uint8 LANE_TYPE_BUS_STOP = 43
uint8 LANE_TYPE_ROUNDABOUT = 44
uint8 LANE_TYPE_INVALID = 45
uint8 LANE_TYPE_WIDE = 46
uint8 LANE_TYPE_VIRTUAL = 47
uint8 LANE_TYPE_OTHERS = 63
uint8 LANE_TYPE_ACC_DEC = 70
uint8 LANE_TYPE_WAITING_AREA = 71
uint8 LANE_TYPE_TOLL_MANUAL = 72
uint8 LANE_TYPE_INCOMPLETE = 73
uint8 value

================================================================================
MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum
uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0
uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2
uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8
uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9
uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26
uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27
uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30
uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32
uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33
uint8 value

================================================================================
MSG: landmark_msgs/LaneCenterFlowTypeEnum
uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0
uint8 LANE_CENTER_FLOW_TYPE_SAME = 1
uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2
uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3
uint8 value

================================================================================
MSG: landmark_msgs/LaneCenterNodeLaneAttribute
uint8 SPEED_LIMIT_VALID = 1
uint8 CURVATURE_VALID = 2
uint8 SLOPE_VALID = 4
uint8 OFFSET_VALID = 8
uint8 available
float32 speed_limit
float32 curvature
float32 slope
float32 start_offset
float32 end_offset

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :landmark_msgs/LaneCenterNode "a377ef8bb24b68f12c1050df737414ed")


