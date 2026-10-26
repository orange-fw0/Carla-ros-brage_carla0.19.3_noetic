;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TimeOfDay)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TimeOfDay (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TIMEOFDAY")
  (make-package "LANE_NAVI_INFO_MSGS::TIMEOFDAY"))

(in-package "ROS")
;;//! \htmlinclude TimeOfDay.msg.html


(defclass lane_navi_info_msgs::TimeOfDay
  :super ros::object
  :slots (_hours _minutes ))

(defmethod lane_navi_info_msgs::TimeOfDay
  (:init
   (&key
    ((:hours __hours) 0)
    ((:minutes __minutes) 0)
    )
   (send-super :init)
   (setq _hours (round __hours))
   (setq _minutes (round __minutes))
   self)
  (:hours
   (&optional __hours)
   (if __hours (setq _hours __hours)) _hours)
  (:minutes
   (&optional __minutes)
   (if __minutes (setq _minutes __minutes)) _minutes)
  (:serialization-length
   ()
   (+
    ;; uint8 _hours
    1
    ;; uint8 _minutes
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _hours
       (write-byte _hours s)
     ;; uint8 _minutes
       (write-byte _minutes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _hours
     (setq _hours (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _minutes
     (setq _minutes (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TimeOfDay :md5sum-) "85e50a6bb0fc8b267a30544fb5165be0")
(setf (get lane_navi_info_msgs::TimeOfDay :datatype-) "lane_navi_info_msgs/TimeOfDay")
(setf (get lane_navi_info_msgs::TimeOfDay :definition-)
      "uint8 hours
uint8 minutes

")



(provide :lane_navi_info_msgs/TimeOfDay "85e50a6bb0fc8b267a30544fb5165be0")


