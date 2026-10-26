;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::DaysOfWeek)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'DaysOfWeek (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEK")
  (make-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEK"))

(in-package "ROS")
;;//! \htmlinclude DaysOfWeek.msg.html


(defclass lane_navi_info_msgs::DaysOfWeek
  :super ros::object
  :slots (_days_of_week_type _is_limited ))

(defmethod lane_navi_info_msgs::DaysOfWeek
  (:init
   (&key
    ((:days_of_week_type __days_of_week_type) ())
    ((:is_limited __is_limited) nil)
    )
   (send-super :init)
   (setq _days_of_week_type __days_of_week_type)
   (setq _is_limited __is_limited)
   self)
  (:days_of_week_type
   (&rest __days_of_week_type)
   (if (keywordp (car __days_of_week_type))
       (send* _days_of_week_type __days_of_week_type)
     (progn
       (if __days_of_week_type (setq _days_of_week_type (car __days_of_week_type)))
       _days_of_week_type)))
  (:is_limited
   (&optional (__is_limited :null))
   (if (not (eq __is_limited :null)) (setq _is_limited __is_limited)) _is_limited)
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/DaysOfWeekType[] _days_of_week_type
    (apply #'+ (send-all _days_of_week_type :serialization-length)) 4
    ;; bool _is_limited
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/DaysOfWeekType[] _days_of_week_type
     (write-long (length _days_of_week_type) s)
     (dolist (elem _days_of_week_type)
       (send elem :serialize s)
       )
     ;; bool _is_limited
       (if _is_limited (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/DaysOfWeekType[] _days_of_week_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _days_of_week_type (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::DaysOfWeekType :init) r)) r))
     (dolist (elem- _days_of_week_type)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_limited
     (setq _is_limited (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::DaysOfWeek :md5sum-) "32e0fc2f826cfdacfcf20a3a41e35f76")
(setf (get lane_navi_info_msgs::DaysOfWeek :datatype-) "lane_navi_info_msgs/DaysOfWeek")
(setf (get lane_navi_info_msgs::DaysOfWeek :definition-)
      "lane_navi_info_msgs/DaysOfWeekType[] days_of_week_type
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

")



(provide :lane_navi_info_msgs/DaysOfWeek "32e0fc2f826cfdacfcf20a3a41e35f76")


