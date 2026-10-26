;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDFacility)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDFacility (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDFACILITY")
  (make-package "LANE_NAVI_INFO_MSGS::SDFACILITY"))

(in-package "ROS")
;;//! \htmlinclude SDFacility.msg.html


(defclass lane_navi_info_msgs::SDFacility
  :super ros::object
  :slots (_offset _facility_type _speed_limit_type _speed_limit_value _time_limit_list _weather_limit ))

(defmethod lane_navi_info_msgs::SDFacility
  (:init
   (&key
    ((:offset __offset) 0.0)
    ((:facility_type __facility_type) (instance lane_navi_info_msgs::SDFacilityType :init))
    ((:speed_limit_type __speed_limit_type) (instance lane_navi_info_msgs::SDSpeedLimitType :init))
    ((:speed_limit_value __speed_limit_value) 0)
    ((:time_limit_list __time_limit_list) ())
    ((:weather_limit __weather_limit) (instance lane_navi_info_msgs::WeatherRule :init))
    )
   (send-super :init)
   (setq _offset (float __offset))
   (setq _facility_type __facility_type)
   (setq _speed_limit_type __speed_limit_type)
   (setq _speed_limit_value (round __speed_limit_value))
   (setq _time_limit_list __time_limit_list)
   (setq _weather_limit __weather_limit)
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:facility_type
   (&rest __facility_type)
   (if (keywordp (car __facility_type))
       (send* _facility_type __facility_type)
     (progn
       (if __facility_type (setq _facility_type (car __facility_type)))
       _facility_type)))
  (:speed_limit_type
   (&rest __speed_limit_type)
   (if (keywordp (car __speed_limit_type))
       (send* _speed_limit_type __speed_limit_type)
     (progn
       (if __speed_limit_type (setq _speed_limit_type (car __speed_limit_type)))
       _speed_limit_type)))
  (:speed_limit_value
   (&optional __speed_limit_value)
   (if __speed_limit_value (setq _speed_limit_value __speed_limit_value)) _speed_limit_value)
  (:time_limit_list
   (&rest __time_limit_list)
   (if (keywordp (car __time_limit_list))
       (send* _time_limit_list __time_limit_list)
     (progn
       (if __time_limit_list (setq _time_limit_list (car __time_limit_list)))
       _time_limit_list)))
  (:weather_limit
   (&rest __weather_limit)
   (if (keywordp (car __weather_limit))
       (send* _weather_limit __weather_limit)
     (progn
       (if __weather_limit (setq _weather_limit (car __weather_limit)))
       _weather_limit)))
  (:serialization-length
   ()
   (+
    ;; float32 _offset
    4
    ;; lane_navi_info_msgs/SDFacilityType _facility_type
    (send _facility_type :serialization-length)
    ;; lane_navi_info_msgs/SDSpeedLimitType _speed_limit_type
    (send _speed_limit_type :serialization-length)
    ;; uint16 _speed_limit_value
    2
    ;; lane_navi_info_msgs/TimeRegulationRange[] _time_limit_list
    (apply #'+ (send-all _time_limit_list :serialization-length)) 4
    ;; lane_navi_info_msgs/WeatherRule _weather_limit
    (send _weather_limit :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/SDFacilityType _facility_type
       (send _facility_type :serialize s)
     ;; lane_navi_info_msgs/SDSpeedLimitType _speed_limit_type
       (send _speed_limit_type :serialize s)
     ;; uint16 _speed_limit_value
       (write-word _speed_limit_value s)
     ;; lane_navi_info_msgs/TimeRegulationRange[] _time_limit_list
     (write-long (length _time_limit_list) s)
     (dolist (elem _time_limit_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/WeatherRule _weather_limit
       (send _weather_limit :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/SDFacilityType _facility_type
     (send _facility_type :deserialize buf ptr-) (incf ptr- (send _facility_type :serialization-length))
   ;; lane_navi_info_msgs/SDSpeedLimitType _speed_limit_type
     (send _speed_limit_type :deserialize buf ptr-) (incf ptr- (send _speed_limit_type :serialization-length))
   ;; uint16 _speed_limit_value
     (setq _speed_limit_value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; lane_navi_info_msgs/TimeRegulationRange[] _time_limit_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_limit_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TimeRegulationRange :init) r)) r))
     (dolist (elem- _time_limit_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/WeatherRule _weather_limit
     (send _weather_limit :deserialize buf ptr-) (incf ptr- (send _weather_limit :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDFacility :md5sum-) "704e402118b95161ec3c53cc3b1fb070")
(setf (get lane_navi_info_msgs::SDFacility :datatype-) "lane_navi_info_msgs/SDFacility")
(setf (get lane_navi_info_msgs::SDFacility :definition-)
      "float32 offset
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

")



(provide :lane_navi_info_msgs/SDFacility "704e402118b95161ec3c53cc3b1fb070")


