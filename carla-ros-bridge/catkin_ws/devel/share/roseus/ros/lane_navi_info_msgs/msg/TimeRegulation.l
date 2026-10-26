;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TimeRegulation)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TimeRegulation (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TIMEREGULATION")
  (make-package "LANE_NAVI_INFO_MSGS::TIMEREGULATION"))

(in-package "ROS")
;;//! \htmlinclude TimeRegulation.msg.html


(defclass lane_navi_info_msgs::TimeRegulation
  :super ros::object
  :slots (_day _week _year ))

(defmethod lane_navi_info_msgs::TimeRegulation
  (:init
   (&key
    ((:day __day) (instance lane_navi_info_msgs::TimeOfDay :init))
    ((:week __week) 0)
    ((:year __year) (instance lane_navi_info_msgs::DayOfYear :init))
    )
   (send-super :init)
   (setq _day __day)
   (setq _week (round __week))
   (setq _year __year)
   self)
  (:day
   (&rest __day)
   (if (keywordp (car __day))
       (send* _day __day)
     (progn
       (if __day (setq _day (car __day)))
       _day)))
  (:week
   (&optional __week)
   (if __week (setq _week __week)) _week)
  (:year
   (&rest __year)
   (if (keywordp (car __year))
       (send* _year __year)
     (progn
       (if __year (setq _year (car __year)))
       _year)))
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/TimeOfDay _day
    (send _day :serialization-length)
    ;; uint8 _week
    1
    ;; lane_navi_info_msgs/DayOfYear _year
    (send _year :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/TimeOfDay _day
       (send _day :serialize s)
     ;; uint8 _week
       (write-byte _week s)
     ;; lane_navi_info_msgs/DayOfYear _year
       (send _year :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/TimeOfDay _day
     (send _day :deserialize buf ptr-) (incf ptr- (send _day :serialization-length))
   ;; uint8 _week
     (setq _week (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; lane_navi_info_msgs/DayOfYear _year
     (send _year :deserialize buf ptr-) (incf ptr- (send _year :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TimeRegulation :md5sum-) "0bdaa79b298433721a197fa7c89ea150")
(setf (get lane_navi_info_msgs::TimeRegulation :datatype-) "lane_navi_info_msgs/TimeRegulation")
(setf (get lane_navi_info_msgs::TimeRegulation :definition-)
      "lane_navi_info_msgs/TimeOfDay day
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

")



(provide :lane_navi_info_msgs/TimeRegulation "0bdaa79b298433721a197fa7c89ea150")


