;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDBackLaneInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDBackLaneInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDBACKLANEINFO")
  (make-package "LANE_NAVI_INFO_MSGS::SDBACKLANEINFO"))

(in-package "ROS")
;;//! \htmlinclude SDBackLaneInfo.msg.html


(defclass lane_navi_info_msgs::SDBackLaneInfo
  :super ros::object
  :slots (_number _lane_type _arrows ))

(defmethod lane_navi_info_msgs::SDBackLaneInfo
  (:init
   (&key
    ((:number __number) 0)
    ((:lane_type __lane_type) (instance lane_navi_info_msgs::SDLaneDirectType :init))
    ((:arrows __arrows) ())
    )
   (send-super :init)
   (setq _number (round __number))
   (setq _lane_type __lane_type)
   (setq _arrows __arrows)
   self)
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:lane_type
   (&rest __lane_type)
   (if (keywordp (car __lane_type))
       (send* _lane_type __lane_type)
     (progn
       (if __lane_type (setq _lane_type (car __lane_type)))
       _lane_type)))
  (:arrows
   (&rest __arrows)
   (if (keywordp (car __arrows))
       (send* _arrows __arrows)
     (progn
       (if __arrows (setq _arrows (car __arrows)))
       _arrows)))
  (:serialization-length
   ()
   (+
    ;; int32 _number
    4
    ;; lane_navi_info_msgs/SDLaneDirectType _lane_type
    (send _lane_type :serialization-length)
    ;; lane_navi_info_msgs/SDLaneArrow[] _arrows
    (apply #'+ (send-all _arrows :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number
       (write-long _number s)
     ;; lane_navi_info_msgs/SDLaneDirectType _lane_type
       (send _lane_type :serialize s)
     ;; lane_navi_info_msgs/SDLaneArrow[] _arrows
     (write-long (length _arrows) s)
     (dolist (elem _arrows)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; lane_navi_info_msgs/SDLaneDirectType _lane_type
     (send _lane_type :deserialize buf ptr-) (incf ptr- (send _lane_type :serialization-length))
   ;; lane_navi_info_msgs/SDLaneArrow[] _arrows
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arrows (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDLaneArrow :init) r)) r))
     (dolist (elem- _arrows)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDBackLaneInfo :md5sum-) "c5f4562fb405e568bda4f4efdd27ca74")
(setf (get lane_navi_info_msgs::SDBackLaneInfo :datatype-) "lane_navi_info_msgs/SDBackLaneInfo")
(setf (get lane_navi_info_msgs::SDBackLaneInfo :definition-)
      "int32 number
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



(provide :lane_navi_info_msgs/SDBackLaneInfo "c5f4562fb405e568bda4f4efdd27ca74")


