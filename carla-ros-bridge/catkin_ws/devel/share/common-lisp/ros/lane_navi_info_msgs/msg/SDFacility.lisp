; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SDFacility.msg.html

(cl:defclass <SDFacility> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (facility_type
    :reader facility_type
    :initarg :facility_type
    :type lane_navi_info_msgs-msg:SDFacilityType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:SDFacilityType))
   (speed_limit_type
    :reader speed_limit_type
    :initarg :speed_limit_type
    :type lane_navi_info_msgs-msg:SDSpeedLimitType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:SDSpeedLimitType))
   (speed_limit_value
    :reader speed_limit_value
    :initarg :speed_limit_value
    :type cl:fixnum
    :initform 0)
   (time_limit_list
    :reader time_limit_list
    :initarg :time_limit_list
    :type (cl:vector lane_navi_info_msgs-msg:TimeRegulationRange)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TimeRegulationRange :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TimeRegulationRange)))
   (weather_limit
    :reader weather_limit
    :initarg :weather_limit
    :type lane_navi_info_msgs-msg:WeatherRule
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:WeatherRule)))
)

(cl:defclass SDFacility (<SDFacility>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDFacility>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDFacility)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SDFacility> is deprecated: use lane_navi_info_msgs-msg:SDFacility instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <SDFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'facility_type-val :lambda-list '(m))
(cl:defmethod facility_type-val ((m <SDFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:facility_type-val is deprecated.  Use lane_navi_info_msgs-msg:facility_type instead.")
  (facility_type m))

(cl:ensure-generic-function 'speed_limit_type-val :lambda-list '(m))
(cl:defmethod speed_limit_type-val ((m <SDFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:speed_limit_type-val is deprecated.  Use lane_navi_info_msgs-msg:speed_limit_type instead.")
  (speed_limit_type m))

(cl:ensure-generic-function 'speed_limit_value-val :lambda-list '(m))
(cl:defmethod speed_limit_value-val ((m <SDFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:speed_limit_value-val is deprecated.  Use lane_navi_info_msgs-msg:speed_limit_value instead.")
  (speed_limit_value m))

(cl:ensure-generic-function 'time_limit_list-val :lambda-list '(m))
(cl:defmethod time_limit_list-val ((m <SDFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:time_limit_list-val is deprecated.  Use lane_navi_info_msgs-msg:time_limit_list instead.")
  (time_limit_list m))

(cl:ensure-generic-function 'weather_limit-val :lambda-list '(m))
(cl:defmethod weather_limit-val ((m <SDFacility>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:weather_limit-val is deprecated.  Use lane_navi_info_msgs-msg:weather_limit instead.")
  (weather_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDFacility>) ostream)
  "Serializes a message object of type '<SDFacility>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'facility_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_limit_type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_limit_value)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time_limit_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'time_limit_list))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'weather_limit) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDFacility>) istream)
  "Deserializes a message object of type '<SDFacility>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'facility_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_limit_type) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_limit_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_limit_value)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time_limit_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time_limit_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TimeRegulationRange))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'weather_limit) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDFacility>)))
  "Returns string type for a message object of type '<SDFacility>"
  "lane_navi_info_msgs/SDFacility")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDFacility)))
  "Returns string type for a message object of type 'SDFacility"
  "lane_navi_info_msgs/SDFacility")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDFacility>)))
  "Returns md5sum for a message object of type '<SDFacility>"
  "704e402118b95161ec3c53cc3b1fb070")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDFacility)))
  "Returns md5sum for a message object of type 'SDFacility"
  "704e402118b95161ec3c53cc3b1fb070")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDFacility>)))
  "Returns full string definition for message of type '<SDFacility>"
  (cl:format cl:nil "float32 offset~%lane_navi_info_msgs/SDFacilityType facility_type~%lane_navi_info_msgs/SDSpeedLimitType speed_limit_type~%uint16 speed_limit_value~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/WeatherRule weather_limit~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacilityType~%uint8 FACILITY_LEFT_INTER_FLOW = 1~%uint8 FACILITY_RIGHT_INTER_FLOW = 2~%uint8 FACILITY_REVERSE_TURN = 4~%uint8 FACILITY_LINKING_TURN = 5~%uint8 FACILITY_ACCIDENT_AREA = 6~%uint8 FACILITY_RAILWAY_CROSS = 8~%uint8 FACILITY_SLIPPERY = 9~%uint8 FACILITY_MAX_SPEED_LIMIT = 10~%uint8 FACILITY_MIN_SPEED_LIMIT = 11~%uint8 FACILITY_VILLAGE = 12~%uint8 FACILITY_LEFT_NARROW = 13~%uint8 FACILITY_RIGHT_NARROW = 14~%uint8 FACILITY_DOUBLE_NARROW = 15~%uint8 FACILITY_CROSS_WIND_AREA = 16~%uint8 FACILITY_SCHOOL = 17~%uint8 FACILITY_NOPASSING = 18~%uint8 FACILITY_NARROW_BRIDGE = 19~%uint8 FACILITY_AROUND_THE_LINE = 20~%uint8 FACILITY_LEFT_BYPASS = 21~%uint8 FACILITY_RIGHT_BYPASS = 22~%uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23~%uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24~%uint8 FACILITY_ONSTEEPLOPE = 25~%uint8 FACILITY_UNDERSTEEPLOPE = 26~%uint8 FACILITY_OVER_WATER_ROAD = 27~%uint8 FACILITY_UNEVEN_ROAD = 28~%uint8 FACILITY_STROLL = 29~%uint8 FACILITY_ATTENTION_TO_DANGER = 30~%uint8 FACILITY_CROSSWALK = 31~%uint8 FACILITY_RIVER_BANK_LEFT = 33~%uint8 FACILITY_RIVER_BANK_RIGHT = 34~%uint8 FACILITY_CHILDREN = 35~%uint8 FACILITY_CYCLISTS = 36~%uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37~%uint8 FACILITY_GIVE_WAY = 38~%uint8 FACILITY_STOP = 39~%uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40~%uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41~%uint8 FACILITY_HUMPBACK_BRIDGE = 42~%uint8 FACILITY_END_OF_SPEED_LIMIT = 43~%uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44~%uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50~%uint8 FACILITY_RAILWAY_WITH_GATES = 51~%uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52~%uint8 FACILITY_VARIABLE_SPEED = 53~%uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54~%uint8 FACILITY_PEDESTRIANS = 56~%uint8 FACILITY_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDSpeedLimitType~%uint8 SPEED_LIMIT_TYPE_DEFAULT = 0~%uint8 SPEED_LIMIT_TYPE_RAMP = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRule~%lane_navi_info_msgs/WeatherRuleType[] weather_rule_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRuleType~%uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDFacility)))
  "Returns full string definition for message of type 'SDFacility"
  (cl:format cl:nil "float32 offset~%lane_navi_info_msgs/SDFacilityType facility_type~%lane_navi_info_msgs/SDSpeedLimitType speed_limit_type~%uint16 speed_limit_value~%lane_navi_info_msgs/TimeRegulationRange[] time_limit_list~%lane_navi_info_msgs/WeatherRule weather_limit~%~%================================================================================~%MSG: lane_navi_info_msgs/SDFacilityType~%uint8 FACILITY_LEFT_INTER_FLOW = 1~%uint8 FACILITY_RIGHT_INTER_FLOW = 2~%uint8 FACILITY_REVERSE_TURN = 4~%uint8 FACILITY_LINKING_TURN = 5~%uint8 FACILITY_ACCIDENT_AREA = 6~%uint8 FACILITY_RAILWAY_CROSS = 8~%uint8 FACILITY_SLIPPERY = 9~%uint8 FACILITY_MAX_SPEED_LIMIT = 10~%uint8 FACILITY_MIN_SPEED_LIMIT = 11~%uint8 FACILITY_VILLAGE = 12~%uint8 FACILITY_LEFT_NARROW = 13~%uint8 FACILITY_RIGHT_NARROW = 14~%uint8 FACILITY_DOUBLE_NARROW = 15~%uint8 FACILITY_CROSS_WIND_AREA = 16~%uint8 FACILITY_SCHOOL = 17~%uint8 FACILITY_NOPASSING = 18~%uint8 FACILITY_NARROW_BRIDGE = 19~%uint8 FACILITY_AROUND_THE_LINE = 20~%uint8 FACILITY_LEFT_BYPASS = 21~%uint8 FACILITY_RIGHT_BYPASS = 22~%uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23~%uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24~%uint8 FACILITY_ONSTEEPLOPE = 25~%uint8 FACILITY_UNDERSTEEPLOPE = 26~%uint8 FACILITY_OVER_WATER_ROAD = 27~%uint8 FACILITY_UNEVEN_ROAD = 28~%uint8 FACILITY_STROLL = 29~%uint8 FACILITY_ATTENTION_TO_DANGER = 30~%uint8 FACILITY_CROSSWALK = 31~%uint8 FACILITY_RIVER_BANK_LEFT = 33~%uint8 FACILITY_RIVER_BANK_RIGHT = 34~%uint8 FACILITY_CHILDREN = 35~%uint8 FACILITY_CYCLISTS = 36~%uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37~%uint8 FACILITY_GIVE_WAY = 38~%uint8 FACILITY_STOP = 39~%uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40~%uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41~%uint8 FACILITY_HUMPBACK_BRIDGE = 42~%uint8 FACILITY_END_OF_SPEED_LIMIT = 43~%uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44~%uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50~%uint8 FACILITY_RAILWAY_WITH_GATES = 51~%uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52~%uint8 FACILITY_VARIABLE_SPEED = 53~%uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54~%uint8 FACILITY_PEDESTRIANS = 56~%uint8 FACILITY_UNKNOWN = 255~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/SDSpeedLimitType~%uint8 SPEED_LIMIT_TYPE_DEFAULT = 0~%uint8 SPEED_LIMIT_TYPE_RAMP = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulationRange~%lane_navi_info_msgs/TimeRegulation start_time~%lane_navi_info_msgs/TimeRegulation end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRegulation~%lane_navi_info_msgs/TimeOfDay day~%uint8 week~%lane_navi_info_msgs/DayOfYear year~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRule~%lane_navi_info_msgs/WeatherRuleType[] weather_rule_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/WeatherRuleType~%uint8 WEATHERTYPE_INVALID = 0~%uint8 WEATHERTYPE_SUNSHINE = 1~%uint8 WEATHERTYPE_RAINSNOW = 2~%uint8 WEATHERTYPE_ICE = 3~%uint8 WEATHERTYPE_FOG = 4~%uint8 WEATHERTYPE_WIND = 5~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDFacility>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'facility_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_limit_type))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time_limit_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'weather_limit))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDFacility>))
  "Converts a ROS message object to a list"
  (cl:list 'SDFacility
    (cl:cons ':offset (offset msg))
    (cl:cons ':facility_type (facility_type msg))
    (cl:cons ':speed_limit_type (speed_limit_type msg))
    (cl:cons ':speed_limit_value (speed_limit_value msg))
    (cl:cons ':time_limit_list (time_limit_list msg))
    (cl:cons ':weather_limit (weather_limit msg))
))
