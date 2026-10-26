;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RefPathGoal)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RefPathGoal (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::REFPATHGOAL")
  (make-package "LANDMARK_MSGS::REFPATHGOAL"))

(in-package "ROS")
;;//! \htmlinclude RefPathGoal.msg.html


(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(defconstant landmark_msgs::RefPathGoal::*SCORE_VALID* 1)
(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(defconstant landmark_msgs::RefPathGoal::*TYPE_VALID* 2)
(intern "*LANDMARK_ID_VALID*" (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(shadow '*LANDMARK_ID_VALID* (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(defconstant landmark_msgs::RefPathGoal::*LANDMARK_ID_VALID* 4)
(intern "*GOAL_POINT_VALID*" (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(shadow '*GOAL_POINT_VALID* (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(defconstant landmark_msgs::RefPathGoal::*GOAL_POINT_VALID* 8)
(intern "*TURN_DIRECTION_VALID*" (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(shadow '*TURN_DIRECTION_VALID* (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(defconstant landmark_msgs::RefPathGoal::*TURN_DIRECTION_VALID* 16)
(intern "*ONROUTE_DISTANCE_VALID*" (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(shadow '*ONROUTE_DISTANCE_VALID* (find-package "LANDMARK_MSGS::REFPATHGOAL"))
(defconstant landmark_msgs::RefPathGoal::*ONROUTE_DISTANCE_VALID* 32)

(defun landmark_msgs::RefPathGoal-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::RefPathGoal::*SCORE_VALID*)
        ((= const 2) 'landmark_msgs::RefPathGoal::*TYPE_VALID*)
        ((= const 4) 'landmark_msgs::RefPathGoal::*LANDMARK_ID_VALID*)
        ((= const 8) 'landmark_msgs::RefPathGoal::*GOAL_POINT_VALID*)
        ((= const 16) 'landmark_msgs::RefPathGoal::*TURN_DIRECTION_VALID*)
        ((= const 32) 'landmark_msgs::RefPathGoal::*ONROUTE_DISTANCE_VALID*)
        (t nil)))

(defclass landmark_msgs::RefPathGoal
  :super ros::object
  :slots (_available _score _id _type _landmark_id _goal_point _turn_direction _onroute_distance _navi_info_source _reserved_info ))

(defmethod landmark_msgs::RefPathGoal
  (:init
   (&key
    ((:available __available) 0)
    ((:score __score) 0.0)
    ((:id __id) (instance landmark_msgs::TrackId :init))
    ((:type __type) (instance landmark_msgs::RefPathGoalTypeEnum :init))
    ((:landmark_id __landmark_id) (instance landmark_msgs::TrackId :init))
    ((:goal_point __goal_point) (instance landmark_msgs::WayPoint :init))
    ((:turn_direction __turn_direction) (instance landmark_msgs::Direction :init))
    ((:onroute_distance __onroute_distance) 0.0)
    ((:navi_info_source __navi_info_source) (instance landmark_msgs::NaviInfoSource :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score (float __score))
   (setq _id __id)
   (setq _type __type)
   (setq _landmark_id __landmark_id)
   (setq _goal_point __goal_point)
   (setq _turn_direction __turn_direction)
   (setq _onroute_distance (float __onroute_distance))
   (setq _navi_info_source __navi_info_source)
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:landmark_id
   (&rest __landmark_id)
   (if (keywordp (car __landmark_id))
       (send* _landmark_id __landmark_id)
     (progn
       (if __landmark_id (setq _landmark_id (car __landmark_id)))
       _landmark_id)))
  (:goal_point
   (&rest __goal_point)
   (if (keywordp (car __goal_point))
       (send* _goal_point __goal_point)
     (progn
       (if __goal_point (setq _goal_point (car __goal_point)))
       _goal_point)))
  (:turn_direction
   (&rest __turn_direction)
   (if (keywordp (car __turn_direction))
       (send* _turn_direction __turn_direction)
     (progn
       (if __turn_direction (setq _turn_direction (car __turn_direction)))
       _turn_direction)))
  (:onroute_distance
   (&optional __onroute_distance)
   (if __onroute_distance (setq _onroute_distance __onroute_distance)) _onroute_distance)
  (:navi_info_source
   (&rest __navi_info_source)
   (if (keywordp (car __navi_info_source))
       (send* _navi_info_source __navi_info_source)
     (progn
       (if __navi_info_source (setq _navi_info_source (car __navi_info_source)))
       _navi_info_source)))
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
    ;; landmark_msgs/TrackId _id
    (send _id :serialization-length)
    ;; landmark_msgs/RefPathGoalTypeEnum _type
    (send _type :serialization-length)
    ;; landmark_msgs/TrackId _landmark_id
    (send _landmark_id :serialization-length)
    ;; landmark_msgs/WayPoint _goal_point
    (send _goal_point :serialization-length)
    ;; landmark_msgs/Direction _turn_direction
    (send _turn_direction :serialization-length)
    ;; float32 _onroute_distance
    4
    ;; landmark_msgs/NaviInfoSource _navi_info_source
    (send _navi_info_source :serialization-length)
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
     ;; landmark_msgs/TrackId _id
       (send _id :serialize s)
     ;; landmark_msgs/RefPathGoalTypeEnum _type
       (send _type :serialize s)
     ;; landmark_msgs/TrackId _landmark_id
       (send _landmark_id :serialize s)
     ;; landmark_msgs/WayPoint _goal_point
       (send _goal_point :serialize s)
     ;; landmark_msgs/Direction _turn_direction
       (send _turn_direction :serialize s)
     ;; float32 _onroute_distance
       (sys::poke _onroute_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; landmark_msgs/NaviInfoSource _navi_info_source
       (send _navi_info_source :serialize s)
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
   ;; landmark_msgs/TrackId _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; landmark_msgs/RefPathGoalTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; landmark_msgs/TrackId _landmark_id
     (send _landmark_id :deserialize buf ptr-) (incf ptr- (send _landmark_id :serialization-length))
   ;; landmark_msgs/WayPoint _goal_point
     (send _goal_point :deserialize buf ptr-) (incf ptr- (send _goal_point :serialization-length))
   ;; landmark_msgs/Direction _turn_direction
     (send _turn_direction :deserialize buf ptr-) (incf ptr- (send _turn_direction :serialization-length))
   ;; float32 _onroute_distance
     (setq _onroute_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; landmark_msgs/NaviInfoSource _navi_info_source
     (send _navi_info_source :deserialize buf ptr-) (incf ptr- (send _navi_info_source :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get landmark_msgs::RefPathGoal :md5sum-) "2bd89040e58393330e0af90dbf389bb3")
(setf (get landmark_msgs::RefPathGoal :datatype-) "landmark_msgs/RefPathGoal")
(setf (get landmark_msgs::RefPathGoal :definition-)
      "uint16 SCORE_VALID = 1
uint16 TYPE_VALID = 2
uint16 LANDMARK_ID_VALID = 4
uint16 GOAL_POINT_VALID = 8
uint16 TURN_DIRECTION_VALID = 16
uint16 ONROUTE_DISTANCE_VALID = 32
uint16 available
float32 score
landmark_msgs/TrackId id
landmark_msgs/RefPathGoalTypeEnum type
landmark_msgs/TrackId landmark_id
landmark_msgs/WayPoint goal_point
landmark_msgs/Direction turn_direction
float32 onroute_distance
landmark_msgs/NaviInfoSource navi_info_source
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
MSG: landmark_msgs/RefPathGoalTypeEnum
uint8 GOAL_TYPE_UNKNOWN = 0
uint8 GOAL_TYPE_WAY_POINT = 1
uint8 GOAL_TYPE_LANE_CENTER = 2
uint8 GOAL_TYPE_ROAD_MARK = 3
uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4
uint8 value

================================================================================
MSG: landmark_msgs/WayPoint
uint16 SCORE_VALID = 1
uint16 POSITION_VALID = 2
uint16 HEADING_ANGLE_VALID = 4
uint16 OFFSET_VALID = 8
uint16 SPEED_MEAN_VALID = 16
uint16 SPEED_STD_VALID = 32
uint16 TURN_DIRECTION_VALID = 64
uint16 ON_ROUTE_VALID = 128
uint16 available
float32 score
perception_interface_msgs/Point3f position
float32 heading_angle
float32 offset
float32 speed_mean
float32 speed_std
landmark_msgs/Direction turn_direction
bool on_route
string reserved_info

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: landmark_msgs/Direction
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 LEFT_LEFT = 10
uint8 LEFT_LEFT_UT = 11
uint8 LEFT_RIGHT = 12
uint8 LEFT_RIGHT_UT = 13
uint8 LEFT_GO_STRAIGHT = 14
uint8 LEFT_UNKNOWN = 15
uint8 RIGHT_RIGHT = 20
uint8 RIGHT_RIGHT_UT = 21
uint8 RIGHT_LEFT = 22
uint8 RIGHT_LEFT_UT = 23
uint8 RIGHT_GO_STRAIGHT = 24
uint8 RIGHT_UNKNOWN = 25
uint8 LEFT_UT_LEFT_UT = 30
uint8 LEFT_UT_LEFT = 31
uint8 LEFT_UT_RIGHT = 32
uint8 LEFT_UT_RIGHT_UT = 33
uint8 LEFT_UT_GO_STRAIGHT = 34
uint8 LEFT_UT_UNKNOWN = 35
uint8 RIGHT_UT_RIGHT_UT = 40
uint8 RIGHT_UT_RIGHT = 41
uint8 RIGHT_UT_LEFT = 42
uint8 RIGHT_UT_LEFT_UT = 43
uint8 RIGHT_UT_GO_STRAIGHT = 44
uint8 RIGHT_UT_UNKNOWN = 45
uint8 GO_STRAIGHT_GO_STRAIGHT = 50
uint8 GO_STRAIGHT_LEFT = 51
uint8 GO_STRAIGHT_LEFT_UT = 52
uint8 GO_STRAIGHT_RIGHT = 53
uint8 GO_STRAIGHT_RIGHT_UT = 54
uint8 GO_STRAIGHT_UNKNOWN = 55
uint8 OTHER_LEFT = 61
uint8 OTHER_LEFT_UT = 62
uint8 OTHER_RIGHT = 63
uint8 OTHER_RIGHT_UT = 64
uint8 OTHER_GO_STRAIGHT = 65
uint8 OTHER_UNKNOWN = 66
uint8 UNKNOWN_LEFT = 91
uint8 UNKNOWN_LEFT_UT = 92
uint8 UNKNOWN_RIGHT = 93
uint8 UNKNOWN_RIGHT_UT = 94
uint8 UNKNOWN_GO_STRAIGHT = 95
uint8 UNKNOWN_UNKNOWN = 96
uint8 value

================================================================================
MSG: landmark_msgs/NaviInfoSource
uint8 UNKNOWN = 0
uint8 DEFAULT = 1
uint8 HDMAP = 2
uint8 LANDTOPO = 3
uint8 TBT = 4
uint8 value

")



(provide :landmark_msgs/RefPathGoal "2bd89040e58393330e0af90dbf389bb3")


