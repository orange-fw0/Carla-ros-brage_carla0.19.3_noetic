;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::DateRangeOfYear)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'DateRangeOfYear (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::DATERANGEOFYEAR")
  (make-package "LANE_NAVI_INFO_MSGS::DATERANGEOFYEAR"))

(in-package "ROS")
;;//! \htmlinclude DateRangeOfYear.msg.html


(defclass lane_navi_info_msgs::DateRangeOfYear
  :super ros::object
  :slots (_start_day _end_day _is_limited ))

(defmethod lane_navi_info_msgs::DateRangeOfYear
  (:init
   (&key
    ((:start_day __start_day) (instance lane_navi_info_msgs::DayOfYear :init))
    ((:end_day __end_day) (instance lane_navi_info_msgs::DayOfYear :init))
    ((:is_limited __is_limited) nil)
    )
   (send-super :init)
   (setq _start_day __start_day)
   (setq _end_day __end_day)
   (setq _is_limited __is_limited)
   self)
  (:start_day
   (&rest __start_day)
   (if (keywordp (car __start_day))
       (send* _start_day __start_day)
     (progn
       (if __start_day (setq _start_day (car __start_day)))
       _start_day)))
  (:end_day
   (&rest __end_day)
   (if (keywordp (car __end_day))
       (send* _end_day __end_day)
     (progn
       (if __end_day (setq _end_day (car __end_day)))
       _end_day)))
  (:is_limited
   (&optional (__is_limited :null))
   (if (not (eq __is_limited :null)) (setq _is_limited __is_limited)) _is_limited)
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/DayOfYear _start_day
    (send _start_day :serialization-length)
    ;; lane_navi_info_msgs/DayOfYear _end_day
    (send _end_day :serialization-length)
    ;; bool _is_limited
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/DayOfYear _start_day
       (send _start_day :serialize s)
     ;; lane_navi_info_msgs/DayOfYear _end_day
       (send _end_day :serialize s)
     ;; bool _is_limited
       (if _is_limited (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/DayOfYear _start_day
     (send _start_day :deserialize buf ptr-) (incf ptr- (send _start_day :serialization-length))
   ;; lane_navi_info_msgs/DayOfYear _end_day
     (send _end_day :deserialize buf ptr-) (incf ptr- (send _end_day :serialization-length))
   ;; bool _is_limited
     (setq _is_limited (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::DateRangeOfYear :md5sum-) "c9ecd0c343a628f50867ddfecfd00d10")
(setf (get lane_navi_info_msgs::DateRangeOfYear :datatype-) "lane_navi_info_msgs/DateRangeOfYear")
(setf (get lane_navi_info_msgs::DateRangeOfYear :definition-)
      "lane_navi_info_msgs/DayOfYear start_day
lane_navi_info_msgs/DayOfYear end_day
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/DayOfYear
uint16 year
uint8 month
uint8 day

")



(provide :lane_navi_info_msgs/DateRangeOfYear "c9ecd0c343a628f50867ddfecfd00d10")


