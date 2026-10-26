; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude LaneLimitInfo.msg.html

(cl:defclass <LaneLimitInfo> (roslisp-msg-protocol:ros-message)
  ((day_of_year_list
    :reader day_of_year_list
    :initarg :day_of_year_list
    :type (cl:vector lane_navi_info_msgs-msg:DayOfYear)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:DayOfYear :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:DayOfYear)))
   (day_of_week_list
    :reader day_of_week_list
    :initarg :day_of_week_list
    :type (cl:vector lane_navi_info_msgs-msg:DaysOfWeek)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:DaysOfWeek :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:DaysOfWeek)))
   (time_range_list
    :reader time_range_list
    :initarg :time_range_list
    :type (cl:vector lane_navi_info_msgs-msg:TimeRangeOfDay)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TimeRangeOfDay :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TimeRangeOfDay)))
   (holiday_list
    :reader holiday_list
    :initarg :holiday_list
    :type (cl:vector lane_navi_info_msgs-msg:Holiday)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:Holiday :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:Holiday)))
   (vehicle_type_list
    :reader vehicle_type_list
    :initarg :vehicle_type_list
    :type (cl:vector lane_navi_info_msgs-msg:VehicleType)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:VehicleType :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:VehicleType))))
)

(cl:defclass LaneLimitInfo (<LaneLimitInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneLimitInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneLimitInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<LaneLimitInfo> is deprecated: use lane_navi_info_msgs-msg:LaneLimitInfo instead.")))

(cl:ensure-generic-function 'day_of_year_list-val :lambda-list '(m))
(cl:defmethod day_of_year_list-val ((m <LaneLimitInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:day_of_year_list-val is deprecated.  Use lane_navi_info_msgs-msg:day_of_year_list instead.")
  (day_of_year_list m))

(cl:ensure-generic-function 'day_of_week_list-val :lambda-list '(m))
(cl:defmethod day_of_week_list-val ((m <LaneLimitInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:day_of_week_list-val is deprecated.  Use lane_navi_info_msgs-msg:day_of_week_list instead.")
  (day_of_week_list m))

(cl:ensure-generic-function 'time_range_list-val :lambda-list '(m))
(cl:defmethod time_range_list-val ((m <LaneLimitInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:time_range_list-val is deprecated.  Use lane_navi_info_msgs-msg:time_range_list instead.")
  (time_range_list m))

(cl:ensure-generic-function 'holiday_list-val :lambda-list '(m))
(cl:defmethod holiday_list-val ((m <LaneLimitInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:holiday_list-val is deprecated.  Use lane_navi_info_msgs-msg:holiday_list instead.")
  (holiday_list m))

(cl:ensure-generic-function 'vehicle_type_list-val :lambda-list '(m))
(cl:defmethod vehicle_type_list-val ((m <LaneLimitInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:vehicle_type_list-val is deprecated.  Use lane_navi_info_msgs-msg:vehicle_type_list instead.")
  (vehicle_type_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneLimitInfo>) ostream)
  "Serializes a message object of type '<LaneLimitInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'day_of_year_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'day_of_year_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'day_of_week_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'day_of_week_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time_range_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'time_range_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'holiday_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'holiday_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vehicle_type_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'vehicle_type_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneLimitInfo>) istream)
  "Deserializes a message object of type '<LaneLimitInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'day_of_year_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'day_of_year_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:DayOfYear))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'day_of_week_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'day_of_week_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:DaysOfWeek))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time_range_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time_range_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TimeRangeOfDay))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'holiday_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'holiday_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:Holiday))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vehicle_type_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vehicle_type_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:VehicleType))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneLimitInfo>)))
  "Returns string type for a message object of type '<LaneLimitInfo>"
  "lane_navi_info_msgs/LaneLimitInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneLimitInfo)))
  "Returns string type for a message object of type 'LaneLimitInfo"
  "lane_navi_info_msgs/LaneLimitInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneLimitInfo>)))
  "Returns md5sum for a message object of type '<LaneLimitInfo>"
  "e16733ddf062bd49558ea03269816e0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneLimitInfo)))
  "Returns md5sum for a message object of type 'LaneLimitInfo"
  "e16733ddf062bd49558ea03269816e0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneLimitInfo>)))
  "Returns full string definition for message of type '<LaneLimitInfo>"
  (cl:format cl:nil "lane_navi_info_msgs/DayOfYear[] day_of_year_list~%lane_navi_info_msgs/DaysOfWeek[] day_of_week_list~%lane_navi_info_msgs/TimeRangeOfDay[] time_range_list~%lane_navi_info_msgs/Holiday[] holiday_list~%lane_navi_info_msgs/VehicleType[] vehicle_type_list~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeek~%lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeekType~%uint8 DAYSOFWEEKTYPE_INVALID = 0~%uint8 DAYSOFWEEKTYPE_SUNDAY = 1~%uint8 DAYSOFWEEKTYPE_MONDAY = 2~%uint8 DAYSOFWEEKTYPE_TUESDAY = 3~%uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4~%uint8 DAYSOFWEEKTYPE_THURSDAY = 5~%uint8 DAYSOFWEEKTYPE_FRIDAY = 6~%uint8 DAYSOFWEEKTYPE_SATURDAY = 7~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRangeOfDay~%lane_navi_info_msgs/TimeOfDay start_time~%lane_navi_info_msgs/TimeOfDay end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/Holiday~%lane_navi_info_msgs/HolidayType holiday_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/VehicleType~%uint8 RESTRICTION_VEHICLE_ALL = 0~%uint8 RESTRICTION_VEHICLE_MOTOR = 1~%uint8 RESTRICTION_VEHICLE_CAR = 2~%uint8 RESTRICTION_VEHICLE_BUS = 3~%uint8 RESTRICTION_VEHICLE_HOV = 4~%uint8 RESTRICTION_VEHICLE_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneLimitInfo)))
  "Returns full string definition for message of type 'LaneLimitInfo"
  (cl:format cl:nil "lane_navi_info_msgs/DayOfYear[] day_of_year_list~%lane_navi_info_msgs/DaysOfWeek[] day_of_week_list~%lane_navi_info_msgs/TimeRangeOfDay[] time_range_list~%lane_navi_info_msgs/Holiday[] holiday_list~%lane_navi_info_msgs/VehicleType[] vehicle_type_list~%~%================================================================================~%MSG: lane_navi_info_msgs/DayOfYear~%uint16 year~%uint8 month~%uint8 day~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeek~%lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/DaysOfWeekType~%uint8 DAYSOFWEEKTYPE_INVALID = 0~%uint8 DAYSOFWEEKTYPE_SUNDAY = 1~%uint8 DAYSOFWEEKTYPE_MONDAY = 2~%uint8 DAYSOFWEEKTYPE_TUESDAY = 3~%uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4~%uint8 DAYSOFWEEKTYPE_THURSDAY = 5~%uint8 DAYSOFWEEKTYPE_FRIDAY = 6~%uint8 DAYSOFWEEKTYPE_SATURDAY = 7~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeRangeOfDay~%lane_navi_info_msgs/TimeOfDay start_time~%lane_navi_info_msgs/TimeOfDay end_time~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/TimeOfDay~%uint8 hours~%uint8 minutes~%~%================================================================================~%MSG: lane_navi_info_msgs/Holiday~%lane_navi_info_msgs/HolidayType holiday_type~%bool is_limited~%~%================================================================================~%MSG: lane_navi_info_msgs/HolidayType~%uint8 HOLIDAYTYPE_NONE = 0~%uint8 HOLIDAYTYPE_VALID = 1~%uint8 HOLIDAYTYPE_EXCEPT = 2~%uint8 type~%~%================================================================================~%MSG: lane_navi_info_msgs/VehicleType~%uint8 RESTRICTION_VEHICLE_ALL = 0~%uint8 RESTRICTION_VEHICLE_MOTOR = 1~%uint8 RESTRICTION_VEHICLE_CAR = 2~%uint8 RESTRICTION_VEHICLE_BUS = 3~%uint8 RESTRICTION_VEHICLE_HOV = 4~%uint8 RESTRICTION_VEHICLE_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneLimitInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'day_of_year_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'day_of_week_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time_range_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'holiday_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vehicle_type_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneLimitInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneLimitInfo
    (cl:cons ':day_of_year_list (day_of_year_list msg))
    (cl:cons ':day_of_week_list (day_of_week_list msg))
    (cl:cons ':time_range_list (time_range_list msg))
    (cl:cons ':holiday_list (holiday_list msg))
    (cl:cons ':vehicle_type_list (vehicle_type_list msg))
))
