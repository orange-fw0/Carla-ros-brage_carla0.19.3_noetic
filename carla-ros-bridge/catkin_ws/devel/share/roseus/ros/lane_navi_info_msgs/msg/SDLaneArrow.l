;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDLaneArrow)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDLaneArrow (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDLANEARROW")
  (make-package "LANE_NAVI_INFO_MSGS::SDLANEARROW"))

(in-package "ROS")
;;//! \htmlinclude SDLaneArrow.msg.html


(defclass lane_navi_info_msgs::SDLaneArrow
  :super ros::object
  :slots (_arrow_types _time _holiday _work_holiday ))

(defmethod lane_navi_info_msgs::SDLaneArrow
  (:init
   (&key
    ((:arrow_types __arrow_types) ())
    ((:time __time) ())
    ((:holiday __holiday) (instance lane_navi_info_msgs::HolidayType :init))
    ((:work_holiday __work_holiday) (instance lane_navi_info_msgs::WorkHolidayType :init))
    )
   (send-super :init)
   (setq _arrow_types __arrow_types)
   (setq _time __time)
   (setq _holiday __holiday)
   (setq _work_holiday __work_holiday)
   self)
  (:arrow_types
   (&rest __arrow_types)
   (if (keywordp (car __arrow_types))
       (send* _arrow_types __arrow_types)
     (progn
       (if __arrow_types (setq _arrow_types (car __arrow_types)))
       _arrow_types)))
  (:time
   (&rest __time)
   (if (keywordp (car __time))
       (send* _time __time)
     (progn
       (if __time (setq _time (car __time)))
       _time)))
  (:holiday
   (&rest __holiday)
   (if (keywordp (car __holiday))
       (send* _holiday __holiday)
     (progn
       (if __holiday (setq _holiday (car __holiday)))
       _holiday)))
  (:work_holiday
   (&rest __work_holiday)
   (if (keywordp (car __work_holiday))
       (send* _work_holiday __work_holiday)
     (progn
       (if __work_holiday (setq _work_holiday (car __work_holiday)))
       _work_holiday)))
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/SDArrowType[] _arrow_types
    (apply #'+ (send-all _arrow_types :serialization-length)) 4
    ;; lane_navi_info_msgs/TimeRegulationRange[] _time
    (apply #'+ (send-all _time :serialization-length)) 4
    ;; lane_navi_info_msgs/HolidayType _holiday
    (send _holiday :serialization-length)
    ;; lane_navi_info_msgs/WorkHolidayType _work_holiday
    (send _work_holiday :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/SDArrowType[] _arrow_types
     (write-long (length _arrow_types) s)
     (dolist (elem _arrow_types)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/TimeRegulationRange[] _time
     (write-long (length _time) s)
     (dolist (elem _time)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/HolidayType _holiday
       (send _holiday :serialize s)
     ;; lane_navi_info_msgs/WorkHolidayType _work_holiday
       (send _work_holiday :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/SDArrowType[] _arrow_types
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arrow_types (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDArrowType :init) r)) r))
     (dolist (elem- _arrow_types)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/TimeRegulationRange[] _time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TimeRegulationRange :init) r)) r))
     (dolist (elem- _time)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/HolidayType _holiday
     (send _holiday :deserialize buf ptr-) (incf ptr- (send _holiday :serialization-length))
   ;; lane_navi_info_msgs/WorkHolidayType _work_holiday
     (send _work_holiday :deserialize buf ptr-) (incf ptr- (send _work_holiday :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDLaneArrow :md5sum-) "542f81a766b74acd179d45e4d4d4a836")
(setf (get lane_navi_info_msgs::SDLaneArrow :datatype-) "lane_navi_info_msgs/SDLaneArrow")
(setf (get lane_navi_info_msgs::SDLaneArrow :definition-)
      "lane_navi_info_msgs/SDArrowType[] arrow_types
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

")



(provide :lane_navi_info_msgs/SDLaneArrow "542f81a766b74acd179d45e4d4d4a836")


