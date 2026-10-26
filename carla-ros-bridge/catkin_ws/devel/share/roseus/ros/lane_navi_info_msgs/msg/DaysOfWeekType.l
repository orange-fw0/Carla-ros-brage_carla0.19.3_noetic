;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::DaysOfWeekType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'DaysOfWeekType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))

(in-package "ROS")
;;//! \htmlinclude DaysOfWeekType.msg.html


(intern "*DAYSOFWEEKTYPE_INVALID*" (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(shadow '*DAYSOFWEEKTYPE_INVALID* (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(defconstant lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_INVALID* 0)
(intern "*DAYSOFWEEKTYPE_SUNDAY*" (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(shadow '*DAYSOFWEEKTYPE_SUNDAY* (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(defconstant lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_SUNDAY* 1)
(intern "*DAYSOFWEEKTYPE_MONDAY*" (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(shadow '*DAYSOFWEEKTYPE_MONDAY* (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(defconstant lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_MONDAY* 2)
(intern "*DAYSOFWEEKTYPE_TUESDAY*" (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(shadow '*DAYSOFWEEKTYPE_TUESDAY* (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(defconstant lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_TUESDAY* 3)
(intern "*DAYSOFWEEKTYPE_WEDNESDAY*" (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(shadow '*DAYSOFWEEKTYPE_WEDNESDAY* (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(defconstant lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_WEDNESDAY* 4)
(intern "*DAYSOFWEEKTYPE_THURSDAY*" (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(shadow '*DAYSOFWEEKTYPE_THURSDAY* (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(defconstant lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_THURSDAY* 5)
(intern "*DAYSOFWEEKTYPE_FRIDAY*" (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(shadow '*DAYSOFWEEKTYPE_FRIDAY* (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(defconstant lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_FRIDAY* 6)
(intern "*DAYSOFWEEKTYPE_SATURDAY*" (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(shadow '*DAYSOFWEEKTYPE_SATURDAY* (find-package "LANE_NAVI_INFO_MSGS::DAYSOFWEEKTYPE"))
(defconstant lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_SATURDAY* 7)

(defun lane_navi_info_msgs::DaysOfWeekType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_INVALID*)
        ((= const 1) 'lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_SUNDAY*)
        ((= const 2) 'lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_MONDAY*)
        ((= const 3) 'lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_TUESDAY*)
        ((= const 4) 'lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_WEDNESDAY*)
        ((= const 5) 'lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_THURSDAY*)
        ((= const 6) 'lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_FRIDAY*)
        ((= const 7) 'lane_navi_info_msgs::DaysOfWeekType::*DAYSOFWEEKTYPE_SATURDAY*)
        (t nil)))

(defclass lane_navi_info_msgs::DaysOfWeekType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::DaysOfWeekType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::DaysOfWeekType :md5sum-) "f2cb84d546f7ff966764d161e0c65525")
(setf (get lane_navi_info_msgs::DaysOfWeekType :datatype-) "lane_navi_info_msgs/DaysOfWeekType")
(setf (get lane_navi_info_msgs::DaysOfWeekType :definition-)
      "uint8 DAYSOFWEEKTYPE_INVALID = 0
uint8 DAYSOFWEEKTYPE_SUNDAY = 1
uint8 DAYSOFWEEKTYPE_MONDAY = 2
uint8 DAYSOFWEEKTYPE_TUESDAY = 3
uint8 DAYSOFWEEKTYPE_WEDNESDAY = 4
uint8 DAYSOFWEEKTYPE_THURSDAY = 5
uint8 DAYSOFWEEKTYPE_FRIDAY = 6
uint8 DAYSOFWEEKTYPE_SATURDAY = 7
uint8 type

")



(provide :lane_navi_info_msgs/DaysOfWeekType "f2cb84d546f7ff966764d161e0c65525")


