;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNode)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNode (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNode.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(intern "*POSITION_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*POSITION_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*POSITION_VALID* 1)
(intern "*SHAPE_POINTS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*SHAPE_POINTS_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*SHAPE_POINTS_VALID* 2)
(intern "*TYPE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*TYPE_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*TYPE_VALID* 4)
(intern "*SHAPE_TYPE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*SHAPE_TYPE_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*SHAPE_TYPE_VALID* 8)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*SCORE_VALID* 16)
(intern "*IGNORED_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*IGNORED_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*IGNORED_VALID* 32)
(intern "*SPEED_LIMIT_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*SPEED_LIMIT_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*SPEED_LIMIT_VALID* 64)
(intern "*HEIGHT_LIMIT_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*HEIGHT_LIMIT_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*HEIGHT_LIMIT_VALID* 128)
(intern "*PARKING_SUBTYPE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*PARKING_SUBTYPE_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*PARKING_SUBTYPE_VALID* 256)
(intern "*PARKING_ARROW_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*PARKING_ARROW_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*PARKING_ARROW_VALID* 512)
(intern "*LANE_POSITION_ARROW_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*LANE_POSITION_ARROW_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*LANE_POSITION_ARROW_VALID* 1024)
(intern "*REGION_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*REGION_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*REGION_VALID* 2048)
(intern "*SPEED_LIMIT_CONDITIONS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*SPEED_LIMIT_CONDITIONS_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*SPEED_LIMIT_CONDITIONS_VALID* 4096)
(intern "*DIRECTIONS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*DIRECTIONS_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*DIRECTIONS_VALID* 8192)
(intern "*IS_ELECTRONIC_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*IS_ELECTRONIC_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*IS_ELECTRONIC_VALID* 16384)
(intern "*TOLL_STATION_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*TOLL_STATION_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*TOLL_STATION_VALID* 32768)
(intern "*STAY_ON_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*STAY_ON_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*STAY_ON_VALID* 65536)
(intern "*PASS_ON_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*PASS_ON_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*PASS_ON_VALID* 131072)
(intern "*DRIVE_TO_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*DRIVE_TO_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*DRIVE_TO_VALID* 262144)
(intern "*IS_LANE_LEVEL_LIMIT_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*IS_LANE_LEVEL_LIMIT_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*IS_LANE_LEVEL_LIMIT_VALID* 524288)
(intern "*IS_DIRECTION_GROUPED_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*IS_DIRECTION_GROUPED_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*IS_DIRECTION_GROUPED_VALID* 1048576)
(intern "*WAITING_AREA_ALLOW_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*WAITING_AREA_ALLOW_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*WAITING_AREA_ALLOW_VALID* 2097152)
(intern "*WAITING_AREA_DIRECTIONS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*WAITING_AREA_DIRECTIONS_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*WAITING_AREA_DIRECTIONS_VALID* 4194304)
(intern "*ETC_DISTRIBUTION_DIRECTIONS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(shadow '*ETC_DISTRIBUTION_DIRECTIONS_VALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODE"))
(defconstant landmark_msgs::TrafficSignNode::*ETC_DISTRIBUTION_DIRECTIONS_VALID* 8388608)

(defun landmark_msgs::TrafficSignNode-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::TrafficSignNode::*POSITION_VALID*)
        ((= const 2) 'landmark_msgs::TrafficSignNode::*SHAPE_POINTS_VALID*)
        ((= const 4) 'landmark_msgs::TrafficSignNode::*TYPE_VALID*)
        ((= const 8) 'landmark_msgs::TrafficSignNode::*SHAPE_TYPE_VALID*)
        ((= const 16) 'landmark_msgs::TrafficSignNode::*SCORE_VALID*)
        ((= const 32) 'landmark_msgs::TrafficSignNode::*IGNORED_VALID*)
        ((= const 64) 'landmark_msgs::TrafficSignNode::*SPEED_LIMIT_VALID*)
        ((= const 128) 'landmark_msgs::TrafficSignNode::*HEIGHT_LIMIT_VALID*)
        ((= const 256) 'landmark_msgs::TrafficSignNode::*PARKING_SUBTYPE_VALID*)
        ((= const 512) 'landmark_msgs::TrafficSignNode::*PARKING_ARROW_VALID*)
        ((= const 1024) 'landmark_msgs::TrafficSignNode::*LANE_POSITION_ARROW_VALID*)
        ((= const 2048) 'landmark_msgs::TrafficSignNode::*REGION_VALID*)
        ((= const 4096) 'landmark_msgs::TrafficSignNode::*SPEED_LIMIT_CONDITIONS_VALID*)
        ((= const 8192) 'landmark_msgs::TrafficSignNode::*DIRECTIONS_VALID*)
        ((= const 16384) 'landmark_msgs::TrafficSignNode::*IS_ELECTRONIC_VALID*)
        ((= const 32768) 'landmark_msgs::TrafficSignNode::*TOLL_STATION_VALID*)
        ((= const 65536) 'landmark_msgs::TrafficSignNode::*STAY_ON_VALID*)
        ((= const 131072) 'landmark_msgs::TrafficSignNode::*PASS_ON_VALID*)
        ((= const 262144) 'landmark_msgs::TrafficSignNode::*DRIVE_TO_VALID*)
        ((= const 524288) 'landmark_msgs::TrafficSignNode::*IS_LANE_LEVEL_LIMIT_VALID*)
        ((= const 1048576) 'landmark_msgs::TrafficSignNode::*IS_DIRECTION_GROUPED_VALID*)
        ((= const 2097152) 'landmark_msgs::TrafficSignNode::*WAITING_AREA_ALLOW_VALID*)
        ((= const 4194304) 'landmark_msgs::TrafficSignNode::*WAITING_AREA_DIRECTIONS_VALID*)
        ((= const 8388608) 'landmark_msgs::TrafficSignNode::*ETC_DISTRIBUTION_DIRECTIONS_VALID*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNode
  :super ros::object
  :slots (_available _track_id _position _shape_points _type _shape_type _score _ignored _speed_limit _height_limit_unit _height_limit_tenths _parking_subtype _parking_arrow _lane_position_arrow _region _speed_limit_conditions _directions _is_electronic _toll_station _stay_on _pass_on _drive_to _is_lane_level_limit _is_direction_grouped _waiting_area_allow _waiting_area_directions _etc_distribution_directions ))

(defmethod landmark_msgs::TrafficSignNode
  (:init
   (&key
    ((:available __available) 0)
    ((:track_id __track_id) (instance landmark_msgs::TrackId :init))
    ((:position __position) (instance perception_interface_msgs::Point3f :init))
    ((:shape_points __shape_points) ())
    ((:type __type) (instance landmark_msgs::TrafficSignNodeTypeEnum :init))
    ((:shape_type __shape_type) (instance landmark_msgs::TrafficSignShapeTypeEnum :init))
    ((:score __score) 0.0)
    ((:ignored __ignored) nil)
    ((:speed_limit __speed_limit) (instance landmark_msgs::TrafficSignNodeSpeedLimitEnum :init))
    ((:height_limit_unit __height_limit_unit) (instance landmark_msgs::TrafficSignNodeHeightLimitEnum :init))
    ((:height_limit_tenths __height_limit_tenths) (instance landmark_msgs::TrafficSignNodeHeightLimitEnum :init))
    ((:parking_subtype __parking_subtype) (instance landmark_msgs::TrafficSignNodeParkingSubTypeEnum :init))
    ((:parking_arrow __parking_arrow) (instance landmark_msgs::TrafficSignNodeParkingArrowEnum :init))
    ((:lane_position_arrow __lane_position_arrow) (instance landmark_msgs::TrafficSignNodeLanePositionArrowEnum :init))
    ((:region __region) (instance landmark_msgs::TrafficSignNodeRegionEnum :init))
    ((:speed_limit_conditions __speed_limit_conditions) ())
    ((:directions __directions) ())
    ((:is_electronic __is_electronic) nil)
    ((:toll_station __toll_station) (instance landmark_msgs::TrafficSignNodeTollStationEnum :init))
    ((:stay_on __stay_on) (instance landmark_msgs::TrafficSignNodeStayOnEnum :init))
    ((:pass_on __pass_on) (instance landmark_msgs::TrafficSignNodePassOnEnum :init))
    ((:drive_to __drive_to) (instance landmark_msgs::TrafficSignNodeDriveToEnum :init))
    ((:is_lane_level_limit __is_lane_level_limit) nil)
    ((:is_direction_grouped __is_direction_grouped) nil)
    ((:waiting_area_allow __waiting_area_allow) (instance landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum :init))
    ((:waiting_area_directions __waiting_area_directions) ())
    ((:etc_distribution_directions __etc_distribution_directions) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _track_id __track_id)
   (setq _position __position)
   (setq _shape_points __shape_points)
   (setq _type __type)
   (setq _shape_type __shape_type)
   (setq _score (float __score))
   (setq _ignored __ignored)
   (setq _speed_limit __speed_limit)
   (setq _height_limit_unit __height_limit_unit)
   (setq _height_limit_tenths __height_limit_tenths)
   (setq _parking_subtype __parking_subtype)
   (setq _parking_arrow __parking_arrow)
   (setq _lane_position_arrow __lane_position_arrow)
   (setq _region __region)
   (setq _speed_limit_conditions __speed_limit_conditions)
   (setq _directions __directions)
   (setq _is_electronic __is_electronic)
   (setq _toll_station __toll_station)
   (setq _stay_on __stay_on)
   (setq _pass_on __pass_on)
   (setq _drive_to __drive_to)
   (setq _is_lane_level_limit __is_lane_level_limit)
   (setq _is_direction_grouped __is_direction_grouped)
   (setq _waiting_area_allow __waiting_area_allow)
   (setq _waiting_area_directions __waiting_area_directions)
   (setq _etc_distribution_directions __etc_distribution_directions)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:track_id
   (&rest __track_id)
   (if (keywordp (car __track_id))
       (send* _track_id __track_id)
     (progn
       (if __track_id (setq _track_id (car __track_id)))
       _track_id)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:shape_points
   (&rest __shape_points)
   (if (keywordp (car __shape_points))
       (send* _shape_points __shape_points)
     (progn
       (if __shape_points (setq _shape_points (car __shape_points)))
       _shape_points)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:shape_type
   (&rest __shape_type)
   (if (keywordp (car __shape_type))
       (send* _shape_type __shape_type)
     (progn
       (if __shape_type (setq _shape_type (car __shape_type)))
       _shape_type)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:ignored
   (&optional (__ignored :null))
   (if (not (eq __ignored :null)) (setq _ignored __ignored)) _ignored)
  (:speed_limit
   (&rest __speed_limit)
   (if (keywordp (car __speed_limit))
       (send* _speed_limit __speed_limit)
     (progn
       (if __speed_limit (setq _speed_limit (car __speed_limit)))
       _speed_limit)))
  (:height_limit_unit
   (&rest __height_limit_unit)
   (if (keywordp (car __height_limit_unit))
       (send* _height_limit_unit __height_limit_unit)
     (progn
       (if __height_limit_unit (setq _height_limit_unit (car __height_limit_unit)))
       _height_limit_unit)))
  (:height_limit_tenths
   (&rest __height_limit_tenths)
   (if (keywordp (car __height_limit_tenths))
       (send* _height_limit_tenths __height_limit_tenths)
     (progn
       (if __height_limit_tenths (setq _height_limit_tenths (car __height_limit_tenths)))
       _height_limit_tenths)))
  (:parking_subtype
   (&rest __parking_subtype)
   (if (keywordp (car __parking_subtype))
       (send* _parking_subtype __parking_subtype)
     (progn
       (if __parking_subtype (setq _parking_subtype (car __parking_subtype)))
       _parking_subtype)))
  (:parking_arrow
   (&rest __parking_arrow)
   (if (keywordp (car __parking_arrow))
       (send* _parking_arrow __parking_arrow)
     (progn
       (if __parking_arrow (setq _parking_arrow (car __parking_arrow)))
       _parking_arrow)))
  (:lane_position_arrow
   (&rest __lane_position_arrow)
   (if (keywordp (car __lane_position_arrow))
       (send* _lane_position_arrow __lane_position_arrow)
     (progn
       (if __lane_position_arrow (setq _lane_position_arrow (car __lane_position_arrow)))
       _lane_position_arrow)))
  (:region
   (&rest __region)
   (if (keywordp (car __region))
       (send* _region __region)
     (progn
       (if __region (setq _region (car __region)))
       _region)))
  (:speed_limit_conditions
   (&rest __speed_limit_conditions)
   (if (keywordp (car __speed_limit_conditions))
       (send* _speed_limit_conditions __speed_limit_conditions)
     (progn
       (if __speed_limit_conditions (setq _speed_limit_conditions (car __speed_limit_conditions)))
       _speed_limit_conditions)))
  (:directions
   (&rest __directions)
   (if (keywordp (car __directions))
       (send* _directions __directions)
     (progn
       (if __directions (setq _directions (car __directions)))
       _directions)))
  (:is_electronic
   (&optional (__is_electronic :null))
   (if (not (eq __is_electronic :null)) (setq _is_electronic __is_electronic)) _is_electronic)
  (:toll_station
   (&rest __toll_station)
   (if (keywordp (car __toll_station))
       (send* _toll_station __toll_station)
     (progn
       (if __toll_station (setq _toll_station (car __toll_station)))
       _toll_station)))
  (:stay_on
   (&rest __stay_on)
   (if (keywordp (car __stay_on))
       (send* _stay_on __stay_on)
     (progn
       (if __stay_on (setq _stay_on (car __stay_on)))
       _stay_on)))
  (:pass_on
   (&rest __pass_on)
   (if (keywordp (car __pass_on))
       (send* _pass_on __pass_on)
     (progn
       (if __pass_on (setq _pass_on (car __pass_on)))
       _pass_on)))
  (:drive_to
   (&rest __drive_to)
   (if (keywordp (car __drive_to))
       (send* _drive_to __drive_to)
     (progn
       (if __drive_to (setq _drive_to (car __drive_to)))
       _drive_to)))
  (:is_lane_level_limit
   (&optional (__is_lane_level_limit :null))
   (if (not (eq __is_lane_level_limit :null)) (setq _is_lane_level_limit __is_lane_level_limit)) _is_lane_level_limit)
  (:is_direction_grouped
   (&optional (__is_direction_grouped :null))
   (if (not (eq __is_direction_grouped :null)) (setq _is_direction_grouped __is_direction_grouped)) _is_direction_grouped)
  (:waiting_area_allow
   (&rest __waiting_area_allow)
   (if (keywordp (car __waiting_area_allow))
       (send* _waiting_area_allow __waiting_area_allow)
     (progn
       (if __waiting_area_allow (setq _waiting_area_allow (car __waiting_area_allow)))
       _waiting_area_allow)))
  (:waiting_area_directions
   (&rest __waiting_area_directions)
   (if (keywordp (car __waiting_area_directions))
       (send* _waiting_area_directions __waiting_area_directions)
     (progn
       (if __waiting_area_directions (setq _waiting_area_directions (car __waiting_area_directions)))
       _waiting_area_directions)))
  (:etc_distribution_directions
   (&rest __etc_distribution_directions)
   (if (keywordp (car __etc_distribution_directions))
       (send* _etc_distribution_directions __etc_distribution_directions)
     (progn
       (if __etc_distribution_directions (setq _etc_distribution_directions (car __etc_distribution_directions)))
       _etc_distribution_directions)))
  (:serialization-length
   ()
   (+
    ;; uint32 _available
    4
    ;; landmark_msgs/TrackId _track_id
    (send _track_id :serialization-length)
    ;; perception_interface_msgs/Point3f _position
    (send _position :serialization-length)
    ;; perception_interface_msgs/Point3f[] _shape_points
    (apply #'+ (send-all _shape_points :serialization-length)) 4
    ;; landmark_msgs/TrafficSignNodeTypeEnum _type
    (send _type :serialization-length)
    ;; landmark_msgs/TrafficSignShapeTypeEnum _shape_type
    (send _shape_type :serialization-length)
    ;; float32 _score
    4
    ;; bool _ignored
    1
    ;; landmark_msgs/TrafficSignNodeSpeedLimitEnum _speed_limit
    (send _speed_limit :serialization-length)
    ;; landmark_msgs/TrafficSignNodeHeightLimitEnum _height_limit_unit
    (send _height_limit_unit :serialization-length)
    ;; landmark_msgs/TrafficSignNodeHeightLimitEnum _height_limit_tenths
    (send _height_limit_tenths :serialization-length)
    ;; landmark_msgs/TrafficSignNodeParkingSubTypeEnum _parking_subtype
    (send _parking_subtype :serialization-length)
    ;; landmark_msgs/TrafficSignNodeParkingArrowEnum _parking_arrow
    (send _parking_arrow :serialization-length)
    ;; landmark_msgs/TrafficSignNodeLanePositionArrowEnum _lane_position_arrow
    (send _lane_position_arrow :serialization-length)
    ;; landmark_msgs/TrafficSignNodeRegionEnum _region
    (send _region :serialization-length)
    ;; landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] _speed_limit_conditions
    (apply #'+ (send-all _speed_limit_conditions :serialization-length)) 4
    ;; landmark_msgs/TrafficSignNodeDirectionEnum[] _directions
    (apply #'+ (send-all _directions :serialization-length)) 4
    ;; bool _is_electronic
    1
    ;; landmark_msgs/TrafficSignNodeTollStationEnum _toll_station
    (send _toll_station :serialization-length)
    ;; landmark_msgs/TrafficSignNodeStayOnEnum _stay_on
    (send _stay_on :serialization-length)
    ;; landmark_msgs/TrafficSignNodePassOnEnum _pass_on
    (send _pass_on :serialization-length)
    ;; landmark_msgs/TrafficSignNodeDriveToEnum _drive_to
    (send _drive_to :serialization-length)
    ;; bool _is_lane_level_limit
    1
    ;; bool _is_direction_grouped
    1
    ;; landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum _waiting_area_allow
    (send _waiting_area_allow :serialization-length)
    ;; landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] _waiting_area_directions
    (apply #'+ (send-all _waiting_area_directions :serialization-length)) 4
    ;; landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] _etc_distribution_directions
    (apply #'+ (send-all _etc_distribution_directions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _available
       (write-long _available s)
     ;; landmark_msgs/TrackId _track_id
       (send _track_id :serialize s)
     ;; perception_interface_msgs/Point3f _position
       (send _position :serialize s)
     ;; perception_interface_msgs/Point3f[] _shape_points
     (write-long (length _shape_points) s)
     (dolist (elem _shape_points)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficSignNodeTypeEnum _type
       (send _type :serialize s)
     ;; landmark_msgs/TrafficSignShapeTypeEnum _shape_type
       (send _shape_type :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _ignored
       (if _ignored (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/TrafficSignNodeSpeedLimitEnum _speed_limit
       (send _speed_limit :serialize s)
     ;; landmark_msgs/TrafficSignNodeHeightLimitEnum _height_limit_unit
       (send _height_limit_unit :serialize s)
     ;; landmark_msgs/TrafficSignNodeHeightLimitEnum _height_limit_tenths
       (send _height_limit_tenths :serialize s)
     ;; landmark_msgs/TrafficSignNodeParkingSubTypeEnum _parking_subtype
       (send _parking_subtype :serialize s)
     ;; landmark_msgs/TrafficSignNodeParkingArrowEnum _parking_arrow
       (send _parking_arrow :serialize s)
     ;; landmark_msgs/TrafficSignNodeLanePositionArrowEnum _lane_position_arrow
       (send _lane_position_arrow :serialize s)
     ;; landmark_msgs/TrafficSignNodeRegionEnum _region
       (send _region :serialize s)
     ;; landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] _speed_limit_conditions
     (write-long (length _speed_limit_conditions) s)
     (dolist (elem _speed_limit_conditions)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficSignNodeDirectionEnum[] _directions
     (write-long (length _directions) s)
     (dolist (elem _directions)
       (send elem :serialize s)
       )
     ;; bool _is_electronic
       (if _is_electronic (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/TrafficSignNodeTollStationEnum _toll_station
       (send _toll_station :serialize s)
     ;; landmark_msgs/TrafficSignNodeStayOnEnum _stay_on
       (send _stay_on :serialize s)
     ;; landmark_msgs/TrafficSignNodePassOnEnum _pass_on
       (send _pass_on :serialize s)
     ;; landmark_msgs/TrafficSignNodeDriveToEnum _drive_to
       (send _drive_to :serialize s)
     ;; bool _is_lane_level_limit
       (if _is_lane_level_limit (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_direction_grouped
       (if _is_direction_grouped (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum _waiting_area_allow
       (send _waiting_area_allow :serialize s)
     ;; landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] _waiting_area_directions
     (write-long (length _waiting_area_directions) s)
     (dolist (elem _waiting_area_directions)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] _etc_distribution_directions
     (write-long (length _etc_distribution_directions) s)
     (dolist (elem _etc_distribution_directions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; landmark_msgs/TrackId _track_id
     (send _track_id :deserialize buf ptr-) (incf ptr- (send _track_id :serialization-length))
   ;; perception_interface_msgs/Point3f _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; perception_interface_msgs/Point3f[] _shape_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shape_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _shape_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficSignNodeTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; landmark_msgs/TrafficSignShapeTypeEnum _shape_type
     (send _shape_type :deserialize buf ptr-) (incf ptr- (send _shape_type :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _ignored
     (setq _ignored (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/TrafficSignNodeSpeedLimitEnum _speed_limit
     (send _speed_limit :deserialize buf ptr-) (incf ptr- (send _speed_limit :serialization-length))
   ;; landmark_msgs/TrafficSignNodeHeightLimitEnum _height_limit_unit
     (send _height_limit_unit :deserialize buf ptr-) (incf ptr- (send _height_limit_unit :serialization-length))
   ;; landmark_msgs/TrafficSignNodeHeightLimitEnum _height_limit_tenths
     (send _height_limit_tenths :deserialize buf ptr-) (incf ptr- (send _height_limit_tenths :serialization-length))
   ;; landmark_msgs/TrafficSignNodeParkingSubTypeEnum _parking_subtype
     (send _parking_subtype :deserialize buf ptr-) (incf ptr- (send _parking_subtype :serialization-length))
   ;; landmark_msgs/TrafficSignNodeParkingArrowEnum _parking_arrow
     (send _parking_arrow :deserialize buf ptr-) (incf ptr- (send _parking_arrow :serialization-length))
   ;; landmark_msgs/TrafficSignNodeLanePositionArrowEnum _lane_position_arrow
     (send _lane_position_arrow :deserialize buf ptr-) (incf ptr- (send _lane_position_arrow :serialization-length))
   ;; landmark_msgs/TrafficSignNodeRegionEnum _region
     (send _region :deserialize buf ptr-) (incf ptr- (send _region :serialization-length))
   ;; landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] _speed_limit_conditions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed_limit_conditions (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficSignNodeSpeedLimitConditionEnum :init) r)) r))
     (dolist (elem- _speed_limit_conditions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficSignNodeDirectionEnum[] _directions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _directions (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficSignNodeDirectionEnum :init) r)) r))
     (dolist (elem- _directions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_electronic
     (setq _is_electronic (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/TrafficSignNodeTollStationEnum _toll_station
     (send _toll_station :deserialize buf ptr-) (incf ptr- (send _toll_station :serialization-length))
   ;; landmark_msgs/TrafficSignNodeStayOnEnum _stay_on
     (send _stay_on :deserialize buf ptr-) (incf ptr- (send _stay_on :serialization-length))
   ;; landmark_msgs/TrafficSignNodePassOnEnum _pass_on
     (send _pass_on :deserialize buf ptr-) (incf ptr- (send _pass_on :serialization-length))
   ;; landmark_msgs/TrafficSignNodeDriveToEnum _drive_to
     (send _drive_to :deserialize buf ptr-) (incf ptr- (send _drive_to :serialization-length))
   ;; bool _is_lane_level_limit
     (setq _is_lane_level_limit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_direction_grouped
     (setq _is_direction_grouped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum _waiting_area_allow
     (send _waiting_area_allow :deserialize buf ptr-) (incf ptr- (send _waiting_area_allow :serialization-length))
   ;; landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] _waiting_area_directions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waiting_area_directions (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficSignNodeWaitingAreaDirectionEnum :init) r)) r))
     (dolist (elem- _waiting_area_directions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] _etc_distribution_directions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _etc_distribution_directions (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum :init) r)) r))
     (dolist (elem- _etc_distribution_directions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::TrafficSignNode :md5sum-) "59835f78b2c6116703c083b80b9899cd")
(setf (get landmark_msgs::TrafficSignNode :datatype-) "landmark_msgs/TrafficSignNode")
(setf (get landmark_msgs::TrafficSignNode :definition-)
      "uint32 POSITION_VALID = 1
uint32 SHAPE_POINTS_VALID = 2
uint32 TYPE_VALID = 4
uint32 SHAPE_TYPE_VALID = 8
uint32 SCORE_VALID = 16
uint32 IGNORED_VALID = 32
uint32 SPEED_LIMIT_VALID = 64
uint32 HEIGHT_LIMIT_VALID = 128
uint32 PARKING_SUBTYPE_VALID = 256
uint32 PARKING_ARROW_VALID = 512
uint32 LANE_POSITION_ARROW_VALID = 1024
uint32 REGION_VALID = 2048
uint32 SPEED_LIMIT_CONDITIONS_VALID = 4096
uint32 DIRECTIONS_VALID = 8192
uint32 IS_ELECTRONIC_VALID = 16384
uint32 TOLL_STATION_VALID = 32768
uint32 STAY_ON_VALID = 65536
uint32 PASS_ON_VALID = 131072
uint32 DRIVE_TO_VALID = 262144
uint32 IS_LANE_LEVEL_LIMIT_VALID = 524288
uint32 IS_DIRECTION_GROUPED_VALID = 1048576
uint32 WAITING_AREA_ALLOW_VALID = 2097152
uint32 WAITING_AREA_DIRECTIONS_VALID = 4194304
uint32 ETC_DISTRIBUTION_DIRECTIONS_VALID = 8388608
uint32 available
landmark_msgs/TrackId track_id
perception_interface_msgs/Point3f position
perception_interface_msgs/Point3f[] shape_points
landmark_msgs/TrafficSignNodeTypeEnum type
landmark_msgs/TrafficSignShapeTypeEnum shape_type
float32 score
bool ignored
landmark_msgs/TrafficSignNodeSpeedLimitEnum speed_limit
landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_unit
landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_tenths
landmark_msgs/TrafficSignNodeParkingSubTypeEnum parking_subtype
landmark_msgs/TrafficSignNodeParkingArrowEnum parking_arrow
landmark_msgs/TrafficSignNodeLanePositionArrowEnum lane_position_arrow
landmark_msgs/TrafficSignNodeRegionEnum region
landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] speed_limit_conditions
landmark_msgs/TrafficSignNodeDirectionEnum[] directions
bool is_electronic
landmark_msgs/TrafficSignNodeTollStationEnum toll_station
landmark_msgs/TrafficSignNodeStayOnEnum stay_on
landmark_msgs/TrafficSignNodePassOnEnum pass_on
landmark_msgs/TrafficSignNodeDriveToEnum drive_to
bool is_lane_level_limit
bool is_direction_grouped
landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum waiting_area_allow
landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] waiting_area_directions
landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] etc_distribution_directions

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
MSG: landmark_msgs/TrafficSignNodeTypeEnum
uint8 TRAFFIC_SIGN_NODE_TYPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_TYPE_SPEED_LIMIT = 1
uint8 TRAFFIC_SIGN_NODE_TYPE_MIN_SPEED = 2
uint8 TRAFFIC_SIGN_NODE_TYPE_CANCEL_SPEED_LIMIT = 3
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD = 4
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD_END = 5
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_AUXILIARY = 6
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_NEXT_INTERSECTION = 7
uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD = 8
uint8 TRAFFIC_SIGN_NODE_TYPE_STOP = 9
uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_OVER_ONCOMMING = 10
uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD_TO_ONCOMMING = 11
uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_SPEED_LIMIT = 13
uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_LANE_CONTROL = 14
uint8 TRAFFIC_SIGN_NODE_TYPE_ROAD_WORK = 15
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_ENTRY = 16
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE_ENTRY = 17
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_MINIBUS_ENTRY = 18
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_LARGEBUS_ENTRY = 19
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE = 20
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_HONKING = 21
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_TURING = 22
uint8 TRAFFIC_SIGN_NODE_TYPE_OVERTAKING_PROHIBITED = 46
uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_OVERTAKING = 47
uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_SPEED_AND_OVERTAKING = 48
uint8 TRAFFIC_SIGN_NODE_TYPE_UNGUARDED_RAILWAY_CROSSING = 50
uint8 TRAFFIC_SIGN_NODE_TYPE_GUARDED_RAILWAY_CROSSING = 51
uint8 TRAFFIC_SIGN_NODE_TYPE_CHILDREN_AND_SCHOOL_ZONE = 52
uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_CHILDREN = 53
uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_PEDESTRIAN = 54
uint8 TRAFFIC_SIGN_NODE_TYPE_SLIPPERY_SURFACE = 55
uint8 TRAFFIC_SIGN_NODE_TYPE_DANGER_AHEAD = 56
uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 57
uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 58
uint8 TRAFFIC_SIGN_NODE_TYPE_UPHILL_AHEAD = 59
uint8 TRAFFIC_SIGN_NODE_TYPE_DOWNHILL_AHEAD = 60
uint8 TRAFFIC_SIGN_NODE_TYPE_OTHER = 99
uint8 TRAFFIC_SIGN_NODE_TYPE_PEDESTRIAN_CROSSING = 100
uint8 TRAFFIC_SIGN_NODE_TYPE_LANE_DIRECTION_INDICATOR = 101
uint8 TRAFFIC_SIGN_NODE_TYPE_BUS_LANE = 102
uint8 TRAFFIC_SIGN_NODE_TYPE_MOTOR_LANE = 103
uint8 TRAFFIC_SIGN_NODE_TYPE_NON_MOTOR_LANE = 104
uint8 TRAFFIC_SIGN_NODE_TYPE_TIDAL_LANE = 105
uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_ENTRANCE = 106
uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_EXIT = 107
uint8 TRAFFIC_SIGN_NODE_TYPE_TOLL_STATION = 108
uint8 TRAFFIC_SIGN_NODE_TYPE_STAY_ON = 109
uint8 TRAFFIC_SIGN_NODE_TYPE_PASS_ON = 110
uint8 TRAFFIC_SIGN_NODE_TYPE_DRIVE_TO = 111
uint8 TRAFFIC_SIGN_NODE_TYPE_EMERGENCY_PARKING = 112
uint8 TRAFFIC_SIGN_NODE_TYPE_ONE_WAY = 113
uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_TEXT = 114
uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_ARROW = 115
uint8 TRAFFIC_SIGN_NODE_TYPE_ROUNDABOUT = 116
uint8 TRAFFIC_SIGN_NODE_TYPE_WAITING_AREA = 117
uint8 TRAFFIC_SIGN_NODE_TYPE_NO_PARKING = 150
uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PARKING = 151
uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PROLONGED_PARKING = 152
uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING = 153
uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING_CROSS = 154
uint8 TRAFFIC_SIGN_NODE_TYPE_PARKING = 156
uint8 TRAFFIC_SIGN_NODE_TYPE_RESERVED_PARKING = 157
uint8 TRAFFIC_SIGN_NODE_TYPE_PAYMENT_PARKING = 158
uint8 TRAFFIC_SIGN_NODE_TYPE_HEIGHT_LIMIT = 248
uint8 TRAFFIC_SIGN_NODE_TYPE_WEIGHT_LIMIT = 249
uint8 TRAFFIC_SIGN_NODE_TYPE_WIDTH_LIMIT = 250
uint8 TRAFFIC_SIGN_NODE_TYPE_AXLE_WEIGHT_LIMIT = 251
uint8 TRAFFIC_SIGN_NODE_TYPE_RECOMMENDED_SPEED = 252
uint8 TRAFFIC_SIGN_NODE_TYPE_LEFT_CURVE = 253
uint8 TRAFFIC_SIGN_NODE_TYPE_RIGHT_CURVE = 254
uint8 TRAFFIC_SIGN_NODE_TYPE_SERIES_CURVES = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignShapeTypeEnum
uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1
uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2
uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3
uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4
uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5
uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6
uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeSpeedLimitEnum
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeHeightLimitEnum
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeParkingSubTypeEnum
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeParkingArrowEnum
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE = 2
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT = 4
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH = 5
uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeLanePositionArrowEnum
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6
uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeRegionEnum
uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2
uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3
uint8 TRAFFIC_SIGN_NODE_REGION_US = 4
uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12
uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeDirectionEnum
uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1
uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3
uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4
uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5
uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6
uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7
uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8
uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeTollStationEnum
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeStayOnEnum
uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0
uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1
uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2
uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodePassOnEnum
uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0
uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1
uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2
uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeDriveToEnum
uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT = 0
uint8 TRAFFIC_SIGN_NODE_DRIVETO_RIGHT = 1
uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT = 2
uint8 TRAFFIC_SIGN_NODE_DRIVETO_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_DRIVETO_OTHER = 255
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE = 1
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT = 2
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT = 4
uint8 value

================================================================================
MSG: landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4
uint8 value

")



(provide :landmark_msgs/TrafficSignNode "59835f78b2c6116703c083b80b9899cd")


