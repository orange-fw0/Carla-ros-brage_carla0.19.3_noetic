;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::DayOfYear)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'DayOfYear (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::DAYOFYEAR")
  (make-package "LANE_NAVI_INFO_MSGS::DAYOFYEAR"))

(in-package "ROS")
;;//! \htmlinclude DayOfYear.msg.html


(defclass lane_navi_info_msgs::DayOfYear
  :super ros::object
  :slots (_year _month _day ))

(defmethod lane_navi_info_msgs::DayOfYear
  (:init
   (&key
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    )
   (send-super :init)
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   self)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:month
   (&optional __month)
   (if __month (setq _month __month)) _month)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:serialization-length
   ()
   (+
    ;; uint16 _year
    2
    ;; uint8 _month
    1
    ;; uint8 _day
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _year
       (write-word _year s)
     ;; uint8 _month
       (write-byte _month s)
     ;; uint8 _day
       (write-byte _day s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _year
     (setq _year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _month
     (setq _month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _day
     (setq _day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::DayOfYear :md5sum-) "d49dd6ce1e6cb85b55fcf076e56f5636")
(setf (get lane_navi_info_msgs::DayOfYear :datatype-) "lane_navi_info_msgs/DayOfYear")
(setf (get lane_navi_info_msgs::DayOfYear :definition-)
      "uint16 year
uint8 month
uint8 day

")



(provide :lane_navi_info_msgs/DayOfYear "d49dd6ce1e6cb85b55fcf076e56f5636")


