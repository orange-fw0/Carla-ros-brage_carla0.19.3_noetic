;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDBusLaneInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDBusLaneInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDBUSLANEINFO")
  (make-package "LANE_NAVI_INFO_MSGS::SDBUSLANEINFO"))

(in-package "ROS")
;;//! \htmlinclude SDBusLaneInfo.msg.html


(defclass lane_navi_info_msgs::SDBusLaneInfo
  :super ros::object
  :slots (_offset _on_lanes _time_limit_list _holiday _work_holiday ))

(defmethod lane_navi_info_msgs::SDBusLaneInfo
  (:init
   (&key
    ((:offset __offset) 0)
    ((:on_lanes __on_lanes) (make-array 0 :initial-element 0 :element-type :char))
    ((:time_limit_list __time_limit_list) ())
    ((:holiday __holiday) (instance lane_navi_info_msgs::HolidayType :init))
    ((:work_holiday __work_holiday) (instance lane_navi_info_msgs::WorkHolidayType :init))
    )
   (send-super :init)
   (setq _offset (round __offset))
   (setq _on_lanes __on_lanes)
   (setq _time_limit_list __time_limit_list)
   (setq _holiday __holiday)
   (setq _work_holiday __work_holiday)
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:on_lanes
   (&optional __on_lanes)
   (if __on_lanes (setq _on_lanes __on_lanes)) _on_lanes)
  (:time_limit_list
   (&rest __time_limit_list)
   (if (keywordp (car __time_limit_list))
       (send* _time_limit_list __time_limit_list)
     (progn
       (if __time_limit_list (setq _time_limit_list (car __time_limit_list)))
       _time_limit_list)))
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
    ;; uint32 _offset
    4
    ;; uint8[] _on_lanes
    (* 1    (length _on_lanes)) 4
    ;; lane_navi_info_msgs/TimeRegulationRange[] _time_limit_list
    (apply #'+ (send-all _time_limit_list :serialization-length)) 4
    ;; lane_navi_info_msgs/HolidayType _holiday
    (send _holiday :serialization-length)
    ;; lane_navi_info_msgs/WorkHolidayType _work_holiday
    (send _work_holiday :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _offset
       (write-long _offset s)
     ;; uint8[] _on_lanes
     (write-long (length _on_lanes) s)
     (princ _on_lanes s)
     ;; lane_navi_info_msgs/TimeRegulationRange[] _time_limit_list
     (write-long (length _time_limit_list) s)
     (dolist (elem _time_limit_list)
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
   ;; uint32 _offset
     (setq _offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _on_lanes
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _on_lanes (make-array n :element-type :char))
     (replace _on_lanes buf :start2 ptr-) (incf ptr- n))
   ;; lane_navi_info_msgs/TimeRegulationRange[] _time_limit_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_limit_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TimeRegulationRange :init) r)) r))
     (dolist (elem- _time_limit_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/HolidayType _holiday
     (send _holiday :deserialize buf ptr-) (incf ptr- (send _holiday :serialization-length))
   ;; lane_navi_info_msgs/WorkHolidayType _work_holiday
     (send _work_holiday :deserialize buf ptr-) (incf ptr- (send _work_holiday :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDBusLaneInfo :md5sum-) "bd9e2451eb9157f4f818b640c56ed458")
(setf (get lane_navi_info_msgs::SDBusLaneInfo :datatype-) "lane_navi_info_msgs/SDBusLaneInfo")
(setf (get lane_navi_info_msgs::SDBusLaneInfo :definition-)
      "uint32 offset
uint8[] on_lanes
lane_navi_info_msgs/TimeRegulationRange[] time_limit_list
lane_navi_info_msgs/HolidayType holiday
lane_navi_info_msgs/WorkHolidayType work_holiday

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



(provide :lane_navi_info_msgs/SDBusLaneInfo "bd9e2451eb9157f4f818b640c56ed458")


