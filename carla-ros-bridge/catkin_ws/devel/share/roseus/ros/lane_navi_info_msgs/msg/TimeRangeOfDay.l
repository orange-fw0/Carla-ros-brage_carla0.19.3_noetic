;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TimeRangeOfDay)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TimeRangeOfDay (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TIMERANGEOFDAY")
  (make-package "LANE_NAVI_INFO_MSGS::TIMERANGEOFDAY"))

(in-package "ROS")
;;//! \htmlinclude TimeRangeOfDay.msg.html


(defclass lane_navi_info_msgs::TimeRangeOfDay
  :super ros::object
  :slots (_start_time _end_time _is_limited ))

(defmethod lane_navi_info_msgs::TimeRangeOfDay
  (:init
   (&key
    ((:start_time __start_time) (instance lane_navi_info_msgs::TimeOfDay :init))
    ((:end_time __end_time) (instance lane_navi_info_msgs::TimeOfDay :init))
    ((:is_limited __is_limited) nil)
    )
   (send-super :init)
   (setq _start_time __start_time)
   (setq _end_time __end_time)
   (setq _is_limited __is_limited)
   self)
  (:start_time
   (&rest __start_time)
   (if (keywordp (car __start_time))
       (send* _start_time __start_time)
     (progn
       (if __start_time (setq _start_time (car __start_time)))
       _start_time)))
  (:end_time
   (&rest __end_time)
   (if (keywordp (car __end_time))
       (send* _end_time __end_time)
     (progn
       (if __end_time (setq _end_time (car __end_time)))
       _end_time)))
  (:is_limited
   (&optional (__is_limited :null))
   (if (not (eq __is_limited :null)) (setq _is_limited __is_limited)) _is_limited)
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/TimeOfDay _start_time
    (send _start_time :serialization-length)
    ;; lane_navi_info_msgs/TimeOfDay _end_time
    (send _end_time :serialization-length)
    ;; bool _is_limited
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/TimeOfDay _start_time
       (send _start_time :serialize s)
     ;; lane_navi_info_msgs/TimeOfDay _end_time
       (send _end_time :serialize s)
     ;; bool _is_limited
       (if _is_limited (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/TimeOfDay _start_time
     (send _start_time :deserialize buf ptr-) (incf ptr- (send _start_time :serialization-length))
   ;; lane_navi_info_msgs/TimeOfDay _end_time
     (send _end_time :deserialize buf ptr-) (incf ptr- (send _end_time :serialization-length))
   ;; bool _is_limited
     (setq _is_limited (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TimeRangeOfDay :md5sum-) "d64816f00386664350bca76cedc111ff")
(setf (get lane_navi_info_msgs::TimeRangeOfDay :datatype-) "lane_navi_info_msgs/TimeRangeOfDay")
(setf (get lane_navi_info_msgs::TimeRangeOfDay :definition-)
      "lane_navi_info_msgs/TimeOfDay start_time
lane_navi_info_msgs/TimeOfDay end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/TimeOfDay
uint8 hours
uint8 minutes

")



(provide :lane_navi_info_msgs/TimeRangeOfDay "d64816f00386664350bca76cedc111ff")


