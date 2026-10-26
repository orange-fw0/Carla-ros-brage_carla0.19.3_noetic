;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::LaneLimitInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'LaneLimitInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::LANELIMITINFO")
  (make-package "LANE_NAVI_INFO_MSGS::LANELIMITINFO"))

(in-package "ROS")
;;//! \htmlinclude LaneLimitInfo.msg.html


(defclass lane_navi_info_msgs::LaneLimitInfo
  :super ros::object
  :slots (_day_of_year_list _day_of_week_list _time_range_list _holiday_list _vehicle_type_list ))

(defmethod lane_navi_info_msgs::LaneLimitInfo
  (:init
   (&key
    ((:day_of_year_list __day_of_year_list) ())
    ((:day_of_week_list __day_of_week_list) ())
    ((:time_range_list __time_range_list) ())
    ((:holiday_list __holiday_list) ())
    ((:vehicle_type_list __vehicle_type_list) ())
    )
   (send-super :init)
   (setq _day_of_year_list __day_of_year_list)
   (setq _day_of_week_list __day_of_week_list)
   (setq _time_range_list __time_range_list)
   (setq _holiday_list __holiday_list)
   (setq _vehicle_type_list __vehicle_type_list)
   self)
  (:day_of_year_list
   (&rest __day_of_year_list)
   (if (keywordp (car __day_of_year_list))
       (send* _day_of_year_list __day_of_year_list)
     (progn
       (if __day_of_year_list (setq _day_of_year_list (car __day_of_year_list)))
       _day_of_year_list)))
  (:day_of_week_list
   (&rest __day_of_week_list)
   (if (keywordp (car __day_of_week_list))
       (send* _day_of_week_list __day_of_week_list)
     (progn
       (if __day_of_week_list (setq _day_of_week_list (car __day_of_week_list)))
       _day_of_week_list)))
  (:time_range_list
   (&rest __time_range_list)
   (if (keywordp (car __time_range_list))
       (send* _time_range_list __time_range_list)
     (progn
       (if __time_range_list (setq _time_range_list (car __time_range_list)))
       _time_range_list)))
  (:holiday_list
   (&rest __holiday_list)
   (if (keywordp (car __holiday_list))
       (send* _holiday_list __holiday_list)
     (progn
       (if __holiday_list (setq _holiday_list (car __holiday_list)))
       _holiday_list)))
  (:vehicle_type_list
   (&rest __vehicle_type_list)
   (if (keywordp (car __vehicle_type_list))
       (send* _vehicle_type_list __vehicle_type_list)
     (progn
       (if __vehicle_type_list (setq _vehicle_type_list (car __vehicle_type_list)))
       _vehicle_type_list)))
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/DayOfYear[] _day_of_year_list
    (apply #'+ (send-all _day_of_year_list :serialization-length)) 4
    ;; lane_navi_info_msgs/DaysOfWeek[] _day_of_week_list
    (apply #'+ (send-all _day_of_week_list :serialization-length)) 4
    ;; lane_navi_info_msgs/TimeRangeOfDay[] _time_range_list
    (apply #'+ (send-all _time_range_list :serialization-length)) 4
    ;; lane_navi_info_msgs/Holiday[] _holiday_list
    (apply #'+ (send-all _holiday_list :serialization-length)) 4
    ;; lane_navi_info_msgs/VehicleType[] _vehicle_type_list
    (apply #'+ (send-all _vehicle_type_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/DayOfYear[] _day_of_year_list
     (write-long (length _day_of_year_list) s)
     (dolist (elem _day_of_year_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/DaysOfWeek[] _day_of_week_list
     (write-long (length _day_of_week_list) s)
     (dolist (elem _day_of_week_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/TimeRangeOfDay[] _time_range_list
     (write-long (length _time_range_list) s)
     (dolist (elem _time_range_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Holiday[] _holiday_list
     (write-long (length _holiday_list) s)
     (dolist (elem _holiday_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/VehicleType[] _vehicle_type_list
     (write-long (length _vehicle_type_list) s)
     (dolist (elem _vehicle_type_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/DayOfYear[] _day_of_year_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _day_of_year_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::DayOfYear :init) r)) r))
     (dolist (elem- _day_of_year_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/DaysOfWeek[] _day_of_week_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _day_of_week_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::DaysOfWeek :init) r)) r))
     (dolist (elem- _day_of_week_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/TimeRangeOfDay[] _time_range_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_range_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TimeRangeOfDay :init) r)) r))
     (dolist (elem- _time_range_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Holiday[] _holiday_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _holiday_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Holiday :init) r)) r))
     (dolist (elem- _holiday_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/VehicleType[] _vehicle_type_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vehicle_type_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::VehicleType :init) r)) r))
     (dolist (elem- _vehicle_type_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::LaneLimitInfo :md5sum-) "e16733ddf062bd49558ea03269816e0f")
(setf (get lane_navi_info_msgs::LaneLimitInfo :datatype-) "lane_navi_info_msgs/LaneLimitInfo")
(setf (get lane_navi_info_msgs::LaneLimitInfo :definition-)
      "lane_navi_info_msgs/DayOfYear[] day_of_year_list
lane_navi_info_msgs/DaysOfWeek[] day_of_week_list
lane_navi_info_msgs/TimeRangeOfDay[] time_range_list
lane_navi_info_msgs/Holiday[] holiday_list
lane_navi_info_msgs/VehicleType[] vehicle_type_list

================================================================================
MSG: lane_navi_info_msgs/DayOfYear
uint16 year
uint8 month
uint8 day

================================================================================
MSG: lane_navi_info_msgs/DaysOfWeek
lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/DaysOfWeekType
uint8 DAYSOFWEEKTYPE_INVALID = 0
uint8 DAYSOFWEEKTYPE_SUNDAY = 1
uint8 DAYSOFWEEKTYPE_MONDAY = 2
uint8 DAYSOFWEEKTYPE_TUESDAY = 3
uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4
uint8 DAYSOFWEEKTYPE_THURSDAY = 5
uint8 DAYSOFWEEKTYPE_FRIDAY = 6
uint8 DAYSOFWEEKTYPE_SATURDAY = 7
uint8 type

================================================================================
MSG: lane_navi_info_msgs/TimeRangeOfDay
lane_navi_info_msgs/TimeOfDay start_time
lane_navi_info_msgs/TimeOfDay end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/TimeOfDay
uint8 hours
uint8 minutes

================================================================================
MSG: lane_navi_info_msgs/Holiday
lane_navi_info_msgs/HolidayType holiday_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/HolidayType
uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/VehicleType
uint8 RESTRICTION_VEHICLE_ALL = 0
uint8 RESTRICTION_VEHICLE_MOTOR = 1
uint8 RESTRICTION_VEHICLE_CAR = 2
uint8 RESTRICTION_VEHICLE_BUS = 3
uint8 RESTRICTION_VEHICLE_HOV = 4
uint8 RESTRICTION_VEHICLE_UNKNOWN = 255
uint8 type

")



(provide :lane_navi_info_msgs/LaneLimitInfo "e16733ddf062bd49558ea03269816e0f")


