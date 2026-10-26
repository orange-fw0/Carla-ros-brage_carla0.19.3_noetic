;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDRoadInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDRoadInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDROADINFO")
  (make-package "LANE_NAVI_INFO_MSGS::SDROADINFO"))

(in-package "ROS")
;;//! \htmlinclude SDRoadInfo.msg.html


(defclass lane_navi_info_msgs::SDRoadInfo
  :super ros::object
  :slots (_f_angle _t_angle _has_toll _has_traffic_light _history_average_speed _max_speed_limit_list _derived_speed_limit_list _facility_list _camera_list _arrow_marking_list _point_curvature_list _long_solid_line_list _bus_lane_info_list _back_lane_list _front_lane_list _check_point_list _ownership _region_code ))

(defmethod lane_navi_info_msgs::SDRoadInfo
  (:init
   (&key
    ((:f_angle __f_angle) 0)
    ((:t_angle __t_angle) 0)
    ((:has_toll __has_toll) nil)
    ((:has_traffic_light __has_traffic_light) nil)
    ((:history_average_speed __history_average_speed) 0)
    ((:max_speed_limit_list __max_speed_limit_list) ())
    ((:derived_speed_limit_list __derived_speed_limit_list) ())
    ((:facility_list __facility_list) ())
    ((:camera_list __camera_list) ())
    ((:arrow_marking_list __arrow_marking_list) ())
    ((:point_curvature_list __point_curvature_list) ())
    ((:long_solid_line_list __long_solid_line_list) ())
    ((:bus_lane_info_list __bus_lane_info_list) ())
    ((:back_lane_list __back_lane_list) ())
    ((:front_lane_list __front_lane_list) ())
    ((:check_point_list __check_point_list) ())
    ((:ownership __ownership) (instance lane_navi_info_msgs::SDOwnership :init))
    ((:region_code __region_code) 0)
    )
   (send-super :init)
   (setq _f_angle (round __f_angle))
   (setq _t_angle (round __t_angle))
   (setq _has_toll __has_toll)
   (setq _has_traffic_light __has_traffic_light)
   (setq _history_average_speed (round __history_average_speed))
   (setq _max_speed_limit_list __max_speed_limit_list)
   (setq _derived_speed_limit_list __derived_speed_limit_list)
   (setq _facility_list __facility_list)
   (setq _camera_list __camera_list)
   (setq _arrow_marking_list __arrow_marking_list)
   (setq _point_curvature_list __point_curvature_list)
   (setq _long_solid_line_list __long_solid_line_list)
   (setq _bus_lane_info_list __bus_lane_info_list)
   (setq _back_lane_list __back_lane_list)
   (setq _front_lane_list __front_lane_list)
   (setq _check_point_list __check_point_list)
   (setq _ownership __ownership)
   (setq _region_code (round __region_code))
   self)
  (:f_angle
   (&optional __f_angle)
   (if __f_angle (setq _f_angle __f_angle)) _f_angle)
  (:t_angle
   (&optional __t_angle)
   (if __t_angle (setq _t_angle __t_angle)) _t_angle)
  (:has_toll
   (&optional (__has_toll :null))
   (if (not (eq __has_toll :null)) (setq _has_toll __has_toll)) _has_toll)
  (:has_traffic_light
   (&optional (__has_traffic_light :null))
   (if (not (eq __has_traffic_light :null)) (setq _has_traffic_light __has_traffic_light)) _has_traffic_light)
  (:history_average_speed
   (&optional __history_average_speed)
   (if __history_average_speed (setq _history_average_speed __history_average_speed)) _history_average_speed)
  (:max_speed_limit_list
   (&rest __max_speed_limit_list)
   (if (keywordp (car __max_speed_limit_list))
       (send* _max_speed_limit_list __max_speed_limit_list)
     (progn
       (if __max_speed_limit_list (setq _max_speed_limit_list (car __max_speed_limit_list)))
       _max_speed_limit_list)))
  (:derived_speed_limit_list
   (&rest __derived_speed_limit_list)
   (if (keywordp (car __derived_speed_limit_list))
       (send* _derived_speed_limit_list __derived_speed_limit_list)
     (progn
       (if __derived_speed_limit_list (setq _derived_speed_limit_list (car __derived_speed_limit_list)))
       _derived_speed_limit_list)))
  (:facility_list
   (&rest __facility_list)
   (if (keywordp (car __facility_list))
       (send* _facility_list __facility_list)
     (progn
       (if __facility_list (setq _facility_list (car __facility_list)))
       _facility_list)))
  (:camera_list
   (&rest __camera_list)
   (if (keywordp (car __camera_list))
       (send* _camera_list __camera_list)
     (progn
       (if __camera_list (setq _camera_list (car __camera_list)))
       _camera_list)))
  (:arrow_marking_list
   (&rest __arrow_marking_list)
   (if (keywordp (car __arrow_marking_list))
       (send* _arrow_marking_list __arrow_marking_list)
     (progn
       (if __arrow_marking_list (setq _arrow_marking_list (car __arrow_marking_list)))
       _arrow_marking_list)))
  (:point_curvature_list
   (&rest __point_curvature_list)
   (if (keywordp (car __point_curvature_list))
       (send* _point_curvature_list __point_curvature_list)
     (progn
       (if __point_curvature_list (setq _point_curvature_list (car __point_curvature_list)))
       _point_curvature_list)))
  (:long_solid_line_list
   (&rest __long_solid_line_list)
   (if (keywordp (car __long_solid_line_list))
       (send* _long_solid_line_list __long_solid_line_list)
     (progn
       (if __long_solid_line_list (setq _long_solid_line_list (car __long_solid_line_list)))
       _long_solid_line_list)))
  (:bus_lane_info_list
   (&rest __bus_lane_info_list)
   (if (keywordp (car __bus_lane_info_list))
       (send* _bus_lane_info_list __bus_lane_info_list)
     (progn
       (if __bus_lane_info_list (setq _bus_lane_info_list (car __bus_lane_info_list)))
       _bus_lane_info_list)))
  (:back_lane_list
   (&rest __back_lane_list)
   (if (keywordp (car __back_lane_list))
       (send* _back_lane_list __back_lane_list)
     (progn
       (if __back_lane_list (setq _back_lane_list (car __back_lane_list)))
       _back_lane_list)))
  (:front_lane_list
   (&rest __front_lane_list)
   (if (keywordp (car __front_lane_list))
       (send* _front_lane_list __front_lane_list)
     (progn
       (if __front_lane_list (setq _front_lane_list (car __front_lane_list)))
       _front_lane_list)))
  (:check_point_list
   (&rest __check_point_list)
   (if (keywordp (car __check_point_list))
       (send* _check_point_list __check_point_list)
     (progn
       (if __check_point_list (setq _check_point_list (car __check_point_list)))
       _check_point_list)))
  (:ownership
   (&rest __ownership)
   (if (keywordp (car __ownership))
       (send* _ownership __ownership)
     (progn
       (if __ownership (setq _ownership (car __ownership)))
       _ownership)))
  (:region_code
   (&optional __region_code)
   (if __region_code (setq _region_code __region_code)) _region_code)
  (:serialization-length
   ()
   (+
    ;; uint16 _f_angle
    2
    ;; uint16 _t_angle
    2
    ;; bool _has_toll
    1
    ;; bool _has_traffic_light
    1
    ;; uint16 _history_average_speed
    2
    ;; lane_navi_info_msgs/SpeedLimit[] _max_speed_limit_list
    (apply #'+ (send-all _max_speed_limit_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SpeedLimit[] _derived_speed_limit_list
    (apply #'+ (send-all _derived_speed_limit_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDFacility[] _facility_list
    (apply #'+ (send-all _facility_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDCameraInfo[] _camera_list
    (apply #'+ (send-all _camera_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDArrowMarking[] _arrow_marking_list
    (apply #'+ (send-all _arrow_marking_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDPointCurvature[] _point_curvature_list
    (apply #'+ (send-all _point_curvature_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDLongSolidLine[] _long_solid_line_list
    (apply #'+ (send-all _long_solid_line_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDBusLaneInfo[] _bus_lane_info_list
    (apply #'+ (send-all _bus_lane_info_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDBackLaneInfo[] _back_lane_list
    (apply #'+ (send-all _back_lane_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDFrontLaneInfo[] _front_lane_list
    (apply #'+ (send-all _front_lane_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDCheckPoint[] _check_point_list
    (apply #'+ (send-all _check_point_list :serialization-length)) 4
    ;; lane_navi_info_msgs/SDOwnership _ownership
    (send _ownership :serialization-length)
    ;; uint16 _region_code
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _f_angle
       (write-word _f_angle s)
     ;; uint16 _t_angle
       (write-word _t_angle s)
     ;; bool _has_toll
       (if _has_toll (write-byte -1 s) (write-byte 0 s))
     ;; bool _has_traffic_light
       (if _has_traffic_light (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _history_average_speed
       (write-word _history_average_speed s)
     ;; lane_navi_info_msgs/SpeedLimit[] _max_speed_limit_list
     (write-long (length _max_speed_limit_list) s)
     (dolist (elem _max_speed_limit_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SpeedLimit[] _derived_speed_limit_list
     (write-long (length _derived_speed_limit_list) s)
     (dolist (elem _derived_speed_limit_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDFacility[] _facility_list
     (write-long (length _facility_list) s)
     (dolist (elem _facility_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDCameraInfo[] _camera_list
     (write-long (length _camera_list) s)
     (dolist (elem _camera_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDArrowMarking[] _arrow_marking_list
     (write-long (length _arrow_marking_list) s)
     (dolist (elem _arrow_marking_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDPointCurvature[] _point_curvature_list
     (write-long (length _point_curvature_list) s)
     (dolist (elem _point_curvature_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDLongSolidLine[] _long_solid_line_list
     (write-long (length _long_solid_line_list) s)
     (dolist (elem _long_solid_line_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDBusLaneInfo[] _bus_lane_info_list
     (write-long (length _bus_lane_info_list) s)
     (dolist (elem _bus_lane_info_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDBackLaneInfo[] _back_lane_list
     (write-long (length _back_lane_list) s)
     (dolist (elem _back_lane_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDFrontLaneInfo[] _front_lane_list
     (write-long (length _front_lane_list) s)
     (dolist (elem _front_lane_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDCheckPoint[] _check_point_list
     (write-long (length _check_point_list) s)
     (dolist (elem _check_point_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SDOwnership _ownership
       (send _ownership :serialize s)
     ;; uint16 _region_code
       (write-word _region_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _f_angle
     (setq _f_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _t_angle
     (setq _t_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _has_toll
     (setq _has_toll (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _has_traffic_light
     (setq _has_traffic_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _history_average_speed
     (setq _history_average_speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; lane_navi_info_msgs/SpeedLimit[] _max_speed_limit_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_speed_limit_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SpeedLimit :init) r)) r))
     (dolist (elem- _max_speed_limit_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SpeedLimit[] _derived_speed_limit_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _derived_speed_limit_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SpeedLimit :init) r)) r))
     (dolist (elem- _derived_speed_limit_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDFacility[] _facility_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _facility_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDFacility :init) r)) r))
     (dolist (elem- _facility_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDCameraInfo[] _camera_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDCameraInfo :init) r)) r))
     (dolist (elem- _camera_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDArrowMarking[] _arrow_marking_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arrow_marking_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDArrowMarking :init) r)) r))
     (dolist (elem- _arrow_marking_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDPointCurvature[] _point_curvature_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point_curvature_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDPointCurvature :init) r)) r))
     (dolist (elem- _point_curvature_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDLongSolidLine[] _long_solid_line_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _long_solid_line_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDLongSolidLine :init) r)) r))
     (dolist (elem- _long_solid_line_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDBusLaneInfo[] _bus_lane_info_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bus_lane_info_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDBusLaneInfo :init) r)) r))
     (dolist (elem- _bus_lane_info_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDBackLaneInfo[] _back_lane_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _back_lane_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDBackLaneInfo :init) r)) r))
     (dolist (elem- _back_lane_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDFrontLaneInfo[] _front_lane_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _front_lane_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDFrontLaneInfo :init) r)) r))
     (dolist (elem- _front_lane_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDCheckPoint[] _check_point_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _check_point_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDCheckPoint :init) r)) r))
     (dolist (elem- _check_point_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SDOwnership _ownership
     (send _ownership :deserialize buf ptr-) (incf ptr- (send _ownership :serialization-length))
   ;; uint16 _region_code
     (setq _region_code (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDRoadInfo :md5sum-) "d34c104b809605835e0b8447af0af4e5")
(setf (get lane_navi_info_msgs::SDRoadInfo :datatype-) "lane_navi_info_msgs/SDRoadInfo")
(setf (get lane_navi_info_msgs::SDRoadInfo :definition-)
      "uint16 f_angle
uint16 t_angle
bool has_toll
bool has_traffic_light
uint16 history_average_speed
lane_navi_info_msgs/SpeedLimit[] max_speed_limit_list
lane_navi_info_msgs/SpeedLimit[] derived_speed_limit_list
lane_navi_info_msgs/SDFacility[] facility_list
lane_navi_info_msgs/SDCameraInfo[] camera_list
lane_navi_info_msgs/SDArrowMarking[] arrow_marking_list
lane_navi_info_msgs/SDPointCurvature[] point_curvature_list
lane_navi_info_msgs/SDLongSolidLine[] long_solid_line_list
lane_navi_info_msgs/SDBusLaneInfo[] bus_lane_info_list
lane_navi_info_msgs/SDBackLaneInfo[] back_lane_list
lane_navi_info_msgs/SDFrontLaneInfo[] front_lane_list
lane_navi_info_msgs/SDCheckPoint[] check_point_list
lane_navi_info_msgs/SDOwnership ownership
uint16 region_code

================================================================================
MSG: lane_navi_info_msgs/SpeedLimit
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/InterpolationType
uint8 UNKNOWN = 0
uint8 STEP = 1
uint8 LINEAR = 2
uint8 GENERAL = 3
uint8 OHTERS = 255
uint8 type
float32[] addition_values
float32[] params

================================================================================
MSG: lane_navi_info_msgs/SDFacility
float32 offset
lane_navi_info_msgs/SDFacilityType facility_type
lane_navi_info_msgs/SDSpeedLimitType speed_limit_type
uint16 speed_limit_value
lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
lane_navi_info_msgs/WeatherRule weather_limit

================================================================================
MSG: lane_navi_info_msgs/SDFacilityType
uint8 FACILITY_LEFT_INTER_FLOW = 1
uint8 FACILITY_RIGHT_INTER_FLOW = 2
uint8 FACILITY_REVERSE_TURN = 4
uint8 FACILITY_LINKING_TURN = 5
uint8 FACILITY_ACCIDENT_AREA = 6
uint8 FACILITY_RAILWAY_CROSS = 8
uint8 FACILITY_SLIPPERY = 9
uint8 FACILITY_MAX_SPEED_LIMIT = 10
uint8 FACILITY_MIN_SPEED_LIMIT = 11
uint8 FACILITY_VILLAGE = 12
uint8 FACILITY_LEFT_NARROW = 13
uint8 FACILITY_RIGHT_NARROW = 14
uint8 FACILITY_DOUBLE_NARROW = 15
uint8 FACILITY_CROSS_WIND_AREA = 16
uint8 FACILITY_SCHOOL = 17
uint8 FACILITY_NOPASSING = 18
uint8 FACILITY_NARROW_BRIDGE = 19
uint8 FACILITY_AROUND_THE_LINE = 20
uint8 FACILITY_LEFT_BYPASS = 21
uint8 FACILITY_RIGHT_BYPASS = 22
uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23
uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24
uint8 FACILITY_ONSTEEPLOPE = 25
uint8 FACILITY_UNDERSTEEPLOPE = 26
uint8 FACILITY_OVER_WATER_ROAD = 27
uint8 FACILITY_UNEVEN_ROAD = 28
uint8 FACILITY_STROLL = 29
uint8 FACILITY_ATTENTION_TO_DANGER = 30
uint8 FACILITY_CROSSWALK = 31
uint8 FACILITY_RIVER_BANK_LEFT = 33
uint8 FACILITY_RIVER_BANK_RIGHT = 34
uint8 FACILITY_CHILDREN = 35
uint8 FACILITY_CYCLISTS = 36
uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37
uint8 FACILITY_GIVE_WAY = 38
uint8 FACILITY_STOP = 39
uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40
uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41
uint8 FACILITY_HUMPBACK_BRIDGE = 42
uint8 FACILITY_END_OF_SPEED_LIMIT = 43
uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44
uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50
uint8 FACILITY_RAILWAY_WITH_GATES = 51
uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52
uint8 FACILITY_VARIABLE_SPEED = 53
uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54
uint8 FACILITY_PEDESTRIANS = 56
uint8 FACILITY_UNKNOWN = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDSpeedLimitType
uint8 SPEED_LIMIT_TYPE_DEFAULT = 0
uint8 SPEED_LIMIT_TYPE_RAMP = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/TimeRegulationRange
lane_navi_info_msgs/TimeRegulation start_time
lane_navi_info_msgs/TimeRegulation end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/TimeRegulation
lane_navi_info_msgs/TimeOfDay day
uint8 week
lane_navi_info_msgs/DayOfYear year

================================================================================
MSG: lane_navi_info_msgs/TimeOfDay
uint8 hours
uint8 minutes

================================================================================
MSG: lane_navi_info_msgs/DayOfYear
uint16 year
uint8 month
uint8 day

================================================================================
MSG: lane_navi_info_msgs/WeatherRule
lane_navi_info_msgs/WeatherRuleType[] weather_rule_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/WeatherRuleType
uint8 WEATHERTYPE_INVALID = 0
uint8 WEATHERTYPE_SUNSHINE = 1
uint8 WEATHERTYPE_RAINSNOW = 2
uint8 WEATHERTYPE_ICE = 3
uint8 WEATHERTYPE_FOG = 4
uint8 WEATHERTYPE_WIND = 5
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDCameraInfo
float32 offset
lane_navi_info_msgs/ECameraType ecamera_type
uint32 speed_limit_value

================================================================================
MSG: lane_navi_info_msgs/ECameraType
uint8 ECAMERA_SPEED = 0
uint8 ECAMERA_MONITOR = 1
uint8 ECAMERA_TRAFIC_LIGHT = 2
uint8 ECAMERA_RULE = 3
uint8 ECAMERA_BUS = 4
uint8 ECAMERA_EMERGENCY = 5
uint8 ECAMERA_NON_MOTORIZED = 6
uint8 ECAMERA_RANGE = 7
uint8 ECAMERA_INTER_SPEED_START = 8
uint8 ECAMERA_INTER_SPEED_END = 9
uint8 ECAMERA_UNKNOWN = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDArrowMarking
uint8 ARROWMARKING_STRAIGHT = 0
uint8 ARROWMARKING_LEFT = 1
uint8 ARROWMARKING_STRAIGHT_LEFT = 2
uint8 ARROWMARKING_RIGHT = 3
uint8 ARROWMARKING_STRAIGHT_RIGHT = 4
uint8 ARROWMARKING_LEFT_UTURN = 5
uint8 ARROWMARKING_LEFT_RIGHT = 6
uint8 ARROWMARKING_LEFT_RIGHT_STRAIGHT = 7
uint8 ARROWMARKING_RIGHT_UTURN = 8
uint8 ARROWMARKING_STRAIGHT_LEFT_UTURN = 9
uint8 ARROWMARKING_STRAIGHT_RIGHT_UTURN = 10
uint8 ARROWMARKING_LEFT_LEFT_UTURN = 11
uint8 ARROWMARKING_RIGHT_RIGHT_UTURN = 12
uint8 ARROWMARKING_STRAIGHT_LEFT_LEFT_UTURN = 16
uint8 ARROWMARKING_RIGHT_LEFT_UTURN = 17
uint8 ARROWMARKING_LEFT_RIGHT_LEFT_UTURN = 18
uint8 ARROWMARKING_STRAIGHT_RIGHT_LEFT_UTURN = 19
uint8 ARROWMARKING_LEFT_RIGHT_UTURN = 20
uint8 ARROWMARKING_UNKNOWN = 255
uint8 value

================================================================================
MSG: lane_navi_info_msgs/SDPointCurvature
float32 offset
float32 value

================================================================================
MSG: lane_navi_info_msgs/SDLongSolidLine
landmark_msgs/TrackId[] effect_road_ids
uint32[] valid_lanes

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/SDBusLaneInfo
uint32 offset
uint8[] on_lanes
lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
lane_navi_info_msgs/HolidayType holiday
lane_navi_info_msgs/WorkHolidayType work_holiday

================================================================================
MSG: lane_navi_info_msgs/HolidayType
uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/WorkHolidayType
uint8 WORKHOLIDAYTYPE_NONE = 0
uint8 WORKHOLIDAYTYPE_VALID = 1
uint8 WORKHOLIDAYTYPE_INVALID = 2
uint8 WORKHOLIDAYTYPE_WEEKEND = 3
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDBackLaneInfo
int32 number
lane_navi_info_msgs/SDLaneDirectType lane_type
lane_navi_info_msgs/SDLaneArrow[] arrows

================================================================================
MSG: lane_navi_info_msgs/SDLaneDirectType
uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0
uint8 SD_LANE_DIRECT_TYPE_BUS = 1
uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2
uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3
uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDLaneArrow
lane_navi_info_msgs/SDArrowType[] arrow_types
lane_navi_info_msgs/TimeRegulationRange[] time
lane_navi_info_msgs/HolidayType holiday
lane_navi_info_msgs/WorkHolidayType work_holiday

================================================================================
MSG: lane_navi_info_msgs/SDArrowType
uint8 SD_ARROW_TYPE_LEFTUTURN = 0
uint8 SD_ARROW_TYPE_TURNLEFT = 1
uint8 SD_ARROW_TYPE_STRAIGHT = 2
uint8 SD_ARROW_TYPE_TURNRIGHT = 3
uint8 SD_ARROW_TYPE_RIGHTUTURN = 4
uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5
uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6
uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7
uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8
uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9
uint8 SD_ARROW_TYPE_EMPTY_LANE = 10
uint8 SD_ARROW_TYPE_INVALID = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDFrontLaneInfo
landmark_msgs/TrackId to_road_id
lane_navi_info_msgs/SDFrontLane[] lanes

================================================================================
MSG: lane_navi_info_msgs/SDFrontLane
int32 number
lane_navi_info_msgs/SDLaneDirectType lane_type
lane_navi_info_msgs/SDLaneArrow[] arrows

================================================================================
MSG: lane_navi_info_msgs/SDCheckPoint
float32 offset

================================================================================
MSG: lane_navi_info_msgs/SDOwnership
uint8 OWNERSHIP_PUBLIC = 0
uint8 OWNERSHIP_INNER = 1
uint8 OWNERSHIP_PRIVATE = 2
uint8 OWNERSHIP_UNKNOWN = 255
uint8 value

")



(provide :lane_navi_info_msgs/SDRoadInfo "d34c104b809605835e0b8447af0af4e5")


