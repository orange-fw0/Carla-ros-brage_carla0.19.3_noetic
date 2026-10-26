;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::WorkHolidayType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'WorkHolidayType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))

(in-package "ROS")
;;//! \htmlinclude WorkHolidayType.msg.html


(intern "*WORKHOLIDAYTYPE_NONE*" (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))
(shadow '*WORKHOLIDAYTYPE_NONE* (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))
(defconstant lane_navi_info_msgs::WorkHolidayType::*WORKHOLIDAYTYPE_NONE* 0)
(intern "*WORKHOLIDAYTYPE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))
(shadow '*WORKHOLIDAYTYPE_VALID* (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))
(defconstant lane_navi_info_msgs::WorkHolidayType::*WORKHOLIDAYTYPE_VALID* 1)
(intern "*WORKHOLIDAYTYPE_INVALID*" (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))
(shadow '*WORKHOLIDAYTYPE_INVALID* (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))
(defconstant lane_navi_info_msgs::WorkHolidayType::*WORKHOLIDAYTYPE_INVALID* 2)
(intern "*WORKHOLIDAYTYPE_WEEKEND*" (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))
(shadow '*WORKHOLIDAYTYPE_WEEKEND* (find-package "LANE_NAVI_INFO_MSGS::WORKHOLIDAYTYPE"))
(defconstant lane_navi_info_msgs::WorkHolidayType::*WORKHOLIDAYTYPE_WEEKEND* 3)

(defun lane_navi_info_msgs::WorkHolidayType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::WorkHolidayType::*WORKHOLIDAYTYPE_NONE*)
        ((= const 1) 'lane_navi_info_msgs::WorkHolidayType::*WORKHOLIDAYTYPE_VALID*)
        ((= const 2) 'lane_navi_info_msgs::WorkHolidayType::*WORKHOLIDAYTYPE_INVALID*)
        ((= const 3) 'lane_navi_info_msgs::WorkHolidayType::*WORKHOLIDAYTYPE_WEEKEND*)
        (t nil)))

(defclass lane_navi_info_msgs::WorkHolidayType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::WorkHolidayType
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

(setf (get lane_navi_info_msgs::WorkHolidayType :md5sum-) "0a8f58778e15201357d7a171a57f38ca")
(setf (get lane_navi_info_msgs::WorkHolidayType :datatype-) "lane_navi_info_msgs/WorkHolidayType")
(setf (get lane_navi_info_msgs::WorkHolidayType :definition-)
      "uint8 WORKHOLIDAYTYPE_NONE = 0
uint8 WORKHOLIDAYTYPE_VALID = 1
uint8 WORKHOLIDAYTYPE_INVALID = 2
uint8 WORKHOLIDAYTYPE_WEEKEND = 3
uint8 type

")



(provide :lane_navi_info_msgs/WorkHolidayType "0a8f58778e15201357d7a171a57f38ca")


