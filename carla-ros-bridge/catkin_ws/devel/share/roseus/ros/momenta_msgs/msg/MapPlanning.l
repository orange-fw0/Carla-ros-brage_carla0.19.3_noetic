;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MapPlanning)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MapPlanning (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MAPPLANNING")
  (make-package "MOMENTA_MSGS::MAPPLANNING"))

(in-package "ROS")
;;//! \htmlinclude MapPlanning.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::MapPlanning
  :super ros::object
  :slots (_header _lane_boundaries _next_maneuver _last_maneuver _next_merge _tasks _current_refline _left_left_refline _left_refline _right_refline _right_right_refline _left_boundary_info _right_boundary_info _traffic_light _lanes_info _distance_to_stop_line _distance_to_car_park _distance_to_destination _distance_to_left_waiting_area _distance_to_left_waiting_area_stop_line _distance_to_barrier_gap _current_lane_speed_limit _speed_change_point _is_in_map_area _is_in_intersection _current_lane_index _mono_time _pose _enu _wgs84_position ))

(defmethod momenta_msgs::MapPlanning
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lane_boundaries __lane_boundaries) ())
    ((:next_maneuver __next_maneuver) (instance momenta_msgs::IntersectionManeuver :init))
    ((:last_maneuver __last_maneuver) (instance momenta_msgs::IntersectionManeuver :init))
    ((:next_merge __next_merge) (instance momenta_msgs::MergePoint :init))
    ((:tasks __tasks) (instance momenta_msgs::MapTask :init))
    ((:current_refline __current_refline) (instance momenta_msgs::Refline :init))
    ((:left_left_refline __left_left_refline) (instance momenta_msgs::Refline :init))
    ((:left_refline __left_refline) (instance momenta_msgs::Refline :init))
    ((:right_refline __right_refline) (instance momenta_msgs::Refline :init))
    ((:right_right_refline __right_right_refline) (instance momenta_msgs::Refline :init))
    ((:left_boundary_info __left_boundary_info) ())
    ((:right_boundary_info __right_boundary_info) ())
    ((:traffic_light __traffic_light) (instance momenta_msgs::TrafficLightInfo :init))
    ((:lanes_info __lanes_info) ())
    ((:distance_to_stop_line __distance_to_stop_line) 0.0)
    ((:distance_to_car_park __distance_to_car_park) 0.0)
    ((:distance_to_destination __distance_to_destination) 0.0)
    ((:distance_to_left_waiting_area __distance_to_left_waiting_area) 0.0)
    ((:distance_to_left_waiting_area_stop_line __distance_to_left_waiting_area_stop_line) 0.0)
    ((:distance_to_barrier_gap __distance_to_barrier_gap) 0.0)
    ((:current_lane_speed_limit __current_lane_speed_limit) 0.0)
    ((:speed_change_point __speed_change_point) (instance momenta_msgs::SpeedChangePoint :init))
    ((:is_in_map_area __is_in_map_area) nil)
    ((:is_in_intersection __is_in_intersection) nil)
    ((:current_lane_index __current_lane_index) 0)
    ((:mono_time __mono_time) 0)
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:enu __enu) (instance geometry_msgs::Pose :init))
    ((:wgs84_position __wgs84_position) (instance sensor_msgs::NavSatFix :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lane_boundaries __lane_boundaries)
   (setq _next_maneuver __next_maneuver)
   (setq _last_maneuver __last_maneuver)
   (setq _next_merge __next_merge)
   (setq _tasks __tasks)
   (setq _current_refline __current_refline)
   (setq _left_left_refline __left_left_refline)
   (setq _left_refline __left_refline)
   (setq _right_refline __right_refline)
   (setq _right_right_refline __right_right_refline)
   (setq _left_boundary_info __left_boundary_info)
   (setq _right_boundary_info __right_boundary_info)
   (setq _traffic_light __traffic_light)
   (setq _lanes_info __lanes_info)
   (setq _distance_to_stop_line (float __distance_to_stop_line))
   (setq _distance_to_car_park (float __distance_to_car_park))
   (setq _distance_to_destination (float __distance_to_destination))
   (setq _distance_to_left_waiting_area (float __distance_to_left_waiting_area))
   (setq _distance_to_left_waiting_area_stop_line (float __distance_to_left_waiting_area_stop_line))
   (setq _distance_to_barrier_gap (float __distance_to_barrier_gap))
   (setq _current_lane_speed_limit (float __current_lane_speed_limit))
   (setq _speed_change_point __speed_change_point)
   (setq _is_in_map_area __is_in_map_area)
   (setq _is_in_intersection __is_in_intersection)
   (setq _current_lane_index (round __current_lane_index))
   (setq _mono_time (round __mono_time))
   (setq _pose __pose)
   (setq _enu __enu)
   (setq _wgs84_position __wgs84_position)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lane_boundaries
   (&rest __lane_boundaries)
   (if (keywordp (car __lane_boundaries))
       (send* _lane_boundaries __lane_boundaries)
     (progn
       (if __lane_boundaries (setq _lane_boundaries (car __lane_boundaries)))
       _lane_boundaries)))
  (:next_maneuver
   (&rest __next_maneuver)
   (if (keywordp (car __next_maneuver))
       (send* _next_maneuver __next_maneuver)
     (progn
       (if __next_maneuver (setq _next_maneuver (car __next_maneuver)))
       _next_maneuver)))
  (:last_maneuver
   (&rest __last_maneuver)
   (if (keywordp (car __last_maneuver))
       (send* _last_maneuver __last_maneuver)
     (progn
       (if __last_maneuver (setq _last_maneuver (car __last_maneuver)))
       _last_maneuver)))
  (:next_merge
   (&rest __next_merge)
   (if (keywordp (car __next_merge))
       (send* _next_merge __next_merge)
     (progn
       (if __next_merge (setq _next_merge (car __next_merge)))
       _next_merge)))
  (:tasks
   (&rest __tasks)
   (if (keywordp (car __tasks))
       (send* _tasks __tasks)
     (progn
       (if __tasks (setq _tasks (car __tasks)))
       _tasks)))
  (:current_refline
   (&rest __current_refline)
   (if (keywordp (car __current_refline))
       (send* _current_refline __current_refline)
     (progn
       (if __current_refline (setq _current_refline (car __current_refline)))
       _current_refline)))
  (:left_left_refline
   (&rest __left_left_refline)
   (if (keywordp (car __left_left_refline))
       (send* _left_left_refline __left_left_refline)
     (progn
       (if __left_left_refline (setq _left_left_refline (car __left_left_refline)))
       _left_left_refline)))
  (:left_refline
   (&rest __left_refline)
   (if (keywordp (car __left_refline))
       (send* _left_refline __left_refline)
     (progn
       (if __left_refline (setq _left_refline (car __left_refline)))
       _left_refline)))
  (:right_refline
   (&rest __right_refline)
   (if (keywordp (car __right_refline))
       (send* _right_refline __right_refline)
     (progn
       (if __right_refline (setq _right_refline (car __right_refline)))
       _right_refline)))
  (:right_right_refline
   (&rest __right_right_refline)
   (if (keywordp (car __right_right_refline))
       (send* _right_right_refline __right_right_refline)
     (progn
       (if __right_right_refline (setq _right_right_refline (car __right_right_refline)))
       _right_right_refline)))
  (:left_boundary_info
   (&rest __left_boundary_info)
   (if (keywordp (car __left_boundary_info))
       (send* _left_boundary_info __left_boundary_info)
     (progn
       (if __left_boundary_info (setq _left_boundary_info (car __left_boundary_info)))
       _left_boundary_info)))
  (:right_boundary_info
   (&rest __right_boundary_info)
   (if (keywordp (car __right_boundary_info))
       (send* _right_boundary_info __right_boundary_info)
     (progn
       (if __right_boundary_info (setq _right_boundary_info (car __right_boundary_info)))
       _right_boundary_info)))
  (:traffic_light
   (&rest __traffic_light)
   (if (keywordp (car __traffic_light))
       (send* _traffic_light __traffic_light)
     (progn
       (if __traffic_light (setq _traffic_light (car __traffic_light)))
       _traffic_light)))
  (:lanes_info
   (&rest __lanes_info)
   (if (keywordp (car __lanes_info))
       (send* _lanes_info __lanes_info)
     (progn
       (if __lanes_info (setq _lanes_info (car __lanes_info)))
       _lanes_info)))
  (:distance_to_stop_line
   (&optional __distance_to_stop_line)
   (if __distance_to_stop_line (setq _distance_to_stop_line __distance_to_stop_line)) _distance_to_stop_line)
  (:distance_to_car_park
   (&optional __distance_to_car_park)
   (if __distance_to_car_park (setq _distance_to_car_park __distance_to_car_park)) _distance_to_car_park)
  (:distance_to_destination
   (&optional __distance_to_destination)
   (if __distance_to_destination (setq _distance_to_destination __distance_to_destination)) _distance_to_destination)
  (:distance_to_left_waiting_area
   (&optional __distance_to_left_waiting_area)
   (if __distance_to_left_waiting_area (setq _distance_to_left_waiting_area __distance_to_left_waiting_area)) _distance_to_left_waiting_area)
  (:distance_to_left_waiting_area_stop_line
   (&optional __distance_to_left_waiting_area_stop_line)
   (if __distance_to_left_waiting_area_stop_line (setq _distance_to_left_waiting_area_stop_line __distance_to_left_waiting_area_stop_line)) _distance_to_left_waiting_area_stop_line)
  (:distance_to_barrier_gap
   (&optional __distance_to_barrier_gap)
   (if __distance_to_barrier_gap (setq _distance_to_barrier_gap __distance_to_barrier_gap)) _distance_to_barrier_gap)
  (:current_lane_speed_limit
   (&optional __current_lane_speed_limit)
   (if __current_lane_speed_limit (setq _current_lane_speed_limit __current_lane_speed_limit)) _current_lane_speed_limit)
  (:speed_change_point
   (&rest __speed_change_point)
   (if (keywordp (car __speed_change_point))
       (send* _speed_change_point __speed_change_point)
     (progn
       (if __speed_change_point (setq _speed_change_point (car __speed_change_point)))
       _speed_change_point)))
  (:is_in_map_area
   (&optional (__is_in_map_area :null))
   (if (not (eq __is_in_map_area :null)) (setq _is_in_map_area __is_in_map_area)) _is_in_map_area)
  (:is_in_intersection
   (&optional (__is_in_intersection :null))
   (if (not (eq __is_in_intersection :null)) (setq _is_in_intersection __is_in_intersection)) _is_in_intersection)
  (:current_lane_index
   (&optional __current_lane_index)
   (if __current_lane_index (setq _current_lane_index __current_lane_index)) _current_lane_index)
  (:mono_time
   (&optional __mono_time)
   (if __mono_time (setq _mono_time __mono_time)) _mono_time)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:enu
   (&rest __enu)
   (if (keywordp (car __enu))
       (send* _enu __enu)
     (progn
       (if __enu (setq _enu (car __enu)))
       _enu)))
  (:wgs84_position
   (&rest __wgs84_position)
   (if (keywordp (car __wgs84_position))
       (send* _wgs84_position __wgs84_position)
     (progn
       (if __wgs84_position (setq _wgs84_position (car __wgs84_position)))
       _wgs84_position)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/LaneBoundary[] _lane_boundaries
    (apply #'+ (send-all _lane_boundaries :serialization-length)) 4
    ;; momenta_msgs/IntersectionManeuver _next_maneuver
    (send _next_maneuver :serialization-length)
    ;; momenta_msgs/IntersectionManeuver _last_maneuver
    (send _last_maneuver :serialization-length)
    ;; momenta_msgs/MergePoint _next_merge
    (send _next_merge :serialization-length)
    ;; momenta_msgs/MapTask _tasks
    (send _tasks :serialization-length)
    ;; momenta_msgs/Refline _current_refline
    (send _current_refline :serialization-length)
    ;; momenta_msgs/Refline _left_left_refline
    (send _left_left_refline :serialization-length)
    ;; momenta_msgs/Refline _left_refline
    (send _left_refline :serialization-length)
    ;; momenta_msgs/Refline _right_refline
    (send _right_refline :serialization-length)
    ;; momenta_msgs/Refline _right_right_refline
    (send _right_right_refline :serialization-length)
    ;; momenta_msgs/BoundaryInfo[] _left_boundary_info
    (apply #'+ (send-all _left_boundary_info :serialization-length)) 4
    ;; momenta_msgs/BoundaryInfo[] _right_boundary_info
    (apply #'+ (send-all _right_boundary_info :serialization-length)) 4
    ;; momenta_msgs/TrafficLightInfo _traffic_light
    (send _traffic_light :serialization-length)
    ;; momenta_msgs/LaneInfo[] _lanes_info
    (apply #'+ (send-all _lanes_info :serialization-length)) 4
    ;; float64 _distance_to_stop_line
    8
    ;; float64 _distance_to_car_park
    8
    ;; float64 _distance_to_destination
    8
    ;; float64 _distance_to_left_waiting_area
    8
    ;; float64 _distance_to_left_waiting_area_stop_line
    8
    ;; float64 _distance_to_barrier_gap
    8
    ;; float64 _current_lane_speed_limit
    8
    ;; momenta_msgs/SpeedChangePoint _speed_change_point
    (send _speed_change_point :serialization-length)
    ;; bool _is_in_map_area
    1
    ;; bool _is_in_intersection
    1
    ;; uint8 _current_lane_index
    1
    ;; int64 _mono_time
    8
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Pose _enu
    (send _enu :serialization-length)
    ;; sensor_msgs/NavSatFix _wgs84_position
    (send _wgs84_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/LaneBoundary[] _lane_boundaries
     (write-long (length _lane_boundaries) s)
     (dolist (elem _lane_boundaries)
       (send elem :serialize s)
       )
     ;; momenta_msgs/IntersectionManeuver _next_maneuver
       (send _next_maneuver :serialize s)
     ;; momenta_msgs/IntersectionManeuver _last_maneuver
       (send _last_maneuver :serialize s)
     ;; momenta_msgs/MergePoint _next_merge
       (send _next_merge :serialize s)
     ;; momenta_msgs/MapTask _tasks
       (send _tasks :serialize s)
     ;; momenta_msgs/Refline _current_refline
       (send _current_refline :serialize s)
     ;; momenta_msgs/Refline _left_left_refline
       (send _left_left_refline :serialize s)
     ;; momenta_msgs/Refline _left_refline
       (send _left_refline :serialize s)
     ;; momenta_msgs/Refline _right_refline
       (send _right_refline :serialize s)
     ;; momenta_msgs/Refline _right_right_refline
       (send _right_right_refline :serialize s)
     ;; momenta_msgs/BoundaryInfo[] _left_boundary_info
     (write-long (length _left_boundary_info) s)
     (dolist (elem _left_boundary_info)
       (send elem :serialize s)
       )
     ;; momenta_msgs/BoundaryInfo[] _right_boundary_info
     (write-long (length _right_boundary_info) s)
     (dolist (elem _right_boundary_info)
       (send elem :serialize s)
       )
     ;; momenta_msgs/TrafficLightInfo _traffic_light
       (send _traffic_light :serialize s)
     ;; momenta_msgs/LaneInfo[] _lanes_info
     (write-long (length _lanes_info) s)
     (dolist (elem _lanes_info)
       (send elem :serialize s)
       )
     ;; float64 _distance_to_stop_line
       (sys::poke _distance_to_stop_line (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_car_park
       (sys::poke _distance_to_car_park (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_destination
       (sys::poke _distance_to_destination (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_left_waiting_area
       (sys::poke _distance_to_left_waiting_area (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_left_waiting_area_stop_line
       (sys::poke _distance_to_left_waiting_area_stop_line (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_to_barrier_gap
       (sys::poke _distance_to_barrier_gap (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_lane_speed_limit
       (sys::poke _current_lane_speed_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; momenta_msgs/SpeedChangePoint _speed_change_point
       (send _speed_change_point :serialize s)
     ;; bool _is_in_map_area
       (if _is_in_map_area (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_in_intersection
       (if _is_in_intersection (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _current_lane_index
       (write-byte _current_lane_index s)
     ;; int64 _mono_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _mono_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _mono_time) (= (length (_mono_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_mono_time . bv) 0) 0) s)
              (write-long (ash (elt (_mono_time . bv) 1) -1) s))
             ((and (class _mono_time) (= (length (_mono_time . bv)) 1)) ;; big1
              (write-long (elt (_mono_time . bv) 0) s)
              (write-long (if (>= _mono_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _mono_time s)(write-long (if (>= _mono_time 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Pose _enu
       (send _enu :serialize s)
     ;; sensor_msgs/NavSatFix _wgs84_position
       (send _wgs84_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/LaneBoundary[] _lane_boundaries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_boundaries (let (r) (dotimes (i n) (push (instance momenta_msgs::LaneBoundary :init) r)) r))
     (dolist (elem- _lane_boundaries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; momenta_msgs/IntersectionManeuver _next_maneuver
     (send _next_maneuver :deserialize buf ptr-) (incf ptr- (send _next_maneuver :serialization-length))
   ;; momenta_msgs/IntersectionManeuver _last_maneuver
     (send _last_maneuver :deserialize buf ptr-) (incf ptr- (send _last_maneuver :serialization-length))
   ;; momenta_msgs/MergePoint _next_merge
     (send _next_merge :deserialize buf ptr-) (incf ptr- (send _next_merge :serialization-length))
   ;; momenta_msgs/MapTask _tasks
     (send _tasks :deserialize buf ptr-) (incf ptr- (send _tasks :serialization-length))
   ;; momenta_msgs/Refline _current_refline
     (send _current_refline :deserialize buf ptr-) (incf ptr- (send _current_refline :serialization-length))
   ;; momenta_msgs/Refline _left_left_refline
     (send _left_left_refline :deserialize buf ptr-) (incf ptr- (send _left_left_refline :serialization-length))
   ;; momenta_msgs/Refline _left_refline
     (send _left_refline :deserialize buf ptr-) (incf ptr- (send _left_refline :serialization-length))
   ;; momenta_msgs/Refline _right_refline
     (send _right_refline :deserialize buf ptr-) (incf ptr- (send _right_refline :serialization-length))
   ;; momenta_msgs/Refline _right_right_refline
     (send _right_right_refline :deserialize buf ptr-) (incf ptr- (send _right_right_refline :serialization-length))
   ;; momenta_msgs/BoundaryInfo[] _left_boundary_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left_boundary_info (let (r) (dotimes (i n) (push (instance momenta_msgs::BoundaryInfo :init) r)) r))
     (dolist (elem- _left_boundary_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; momenta_msgs/BoundaryInfo[] _right_boundary_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right_boundary_info (let (r) (dotimes (i n) (push (instance momenta_msgs::BoundaryInfo :init) r)) r))
     (dolist (elem- _right_boundary_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; momenta_msgs/TrafficLightInfo _traffic_light
     (send _traffic_light :deserialize buf ptr-) (incf ptr- (send _traffic_light :serialization-length))
   ;; momenta_msgs/LaneInfo[] _lanes_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes_info (let (r) (dotimes (i n) (push (instance momenta_msgs::LaneInfo :init) r)) r))
     (dolist (elem- _lanes_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _distance_to_stop_line
     (setq _distance_to_stop_line (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_car_park
     (setq _distance_to_car_park (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_destination
     (setq _distance_to_destination (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_left_waiting_area
     (setq _distance_to_left_waiting_area (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_left_waiting_area_stop_line
     (setq _distance_to_left_waiting_area_stop_line (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_to_barrier_gap
     (setq _distance_to_barrier_gap (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_lane_speed_limit
     (setq _current_lane_speed_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; momenta_msgs/SpeedChangePoint _speed_change_point
     (send _speed_change_point :deserialize buf ptr-) (incf ptr- (send _speed_change_point :serialization-length))
   ;; bool _is_in_map_area
     (setq _is_in_map_area (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_in_intersection
     (setq _is_in_intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _current_lane_index
     (setq _current_lane_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int64 _mono_time
#+(or :alpha :irix6 :x86_64)
      (setf _mono_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _mono_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Pose _enu
     (send _enu :deserialize buf ptr-) (incf ptr- (send _enu :serialization-length))
   ;; sensor_msgs/NavSatFix _wgs84_position
     (send _wgs84_position :deserialize buf ptr-) (incf ptr- (send _wgs84_position :serialization-length))
   ;;
   self)
  )

(setf (get momenta_msgs::MapPlanning :md5sum-) "508245ebd9190b4916a201f05fa0bcd8")
(setf (get momenta_msgs::MapPlanning :datatype-) "momenta_msgs/MapPlanning")
(setf (get momenta_msgs::MapPlanning :definition-)
      "std_msgs/Header header
momenta_msgs/LaneBoundary[] lane_boundaries
momenta_msgs/IntersectionManeuver next_maneuver
momenta_msgs/IntersectionManeuver last_maneuver
momenta_msgs/MergePoint next_merge
momenta_msgs/MapTask tasks
momenta_msgs/Refline current_refline
momenta_msgs/Refline left_left_refline
momenta_msgs/Refline left_refline
momenta_msgs/Refline right_refline
momenta_msgs/Refline right_right_refline
momenta_msgs/BoundaryInfo[] left_boundary_info
momenta_msgs/BoundaryInfo[] right_boundary_info
momenta_msgs/TrafficLightInfo traffic_light
momenta_msgs/LaneInfo[] lanes_info
float64 distance_to_stop_line
float64 distance_to_car_park
float64 distance_to_destination
float64 distance_to_left_waiting_area
float64 distance_to_left_waiting_area_stop_line
float64 distance_to_barrier_gap
float64 current_lane_speed_limit
momenta_msgs/SpeedChangePoint speed_change_point
bool is_in_map_area
bool is_in_intersection
uint8 current_lane_index
int64 mono_time
geometry_msgs/Pose2D pose
geometry_msgs/Pose enu
sensor_msgs/NavSatFix wgs84_position

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: momenta_msgs/LaneBoundary
float64[] polycoeff
float64 head
float64 tail
int8 relative_id
uint64 track_id

================================================================================
MSG: momenta_msgs/IntersectionManeuver
uint8 direction
float64 distance
float64 length

================================================================================
MSG: momenta_msgs/MergePoint
float64 distance
uint8 merge_type

================================================================================
MSG: momenta_msgs/MapTask
int8[] current_tasks
int8[] left_lane_tasks
int8[] right_lane_tasks
momenta_msgs/MapTaskRange[] first_task_ranges

================================================================================
MSG: momenta_msgs/MapTaskRange
float64 begin_pos
float64 end_pos

================================================================================
MSG: momenta_msgs/Refline
momenta_msgs/Segment[] segments
momenta_msgs/RefLinePoint[] points

================================================================================
MSG: momenta_msgs/Segment
uint16 begin_index
uint16 end_index
uint8 connection_type
uint8 direction
uint8 lane_type
int64 lane_original_id
bool is_in_intersection
bool is_on_route

================================================================================
MSG: momenta_msgs/RefLinePoint
float64 x
float64 y
float64 z
float64 curvature
float64 yaw
float64 left_road_border_distance
float64 right_road_border_distance
float64 left_lane_border_distance
float64 right_lane_border_distance
float64 left_obstacle_distance
float64 right_obstacle_distance
float64 lane_width
float64 speed_limit
string track_id

================================================================================
MSG: momenta_msgs/BoundaryInfo
float64 length
uint8 type

================================================================================
MSG: momenta_msgs/TrafficLightInfo
uint8[] patterns
uint8 direction

================================================================================
MSG: momenta_msgs/LaneInfo
uint8[] lane_marks
uint8 lane_type
uint8 lane_boundary_existence

================================================================================
MSG: momenta_msgs/SpeedChangePoint
float64 x
float64 y
float64 speed

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/NavSatFix
# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

================================================================================
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

")



(provide :momenta_msgs/MapPlanning "508245ebd9190b4916a201f05fa0bcd8")


