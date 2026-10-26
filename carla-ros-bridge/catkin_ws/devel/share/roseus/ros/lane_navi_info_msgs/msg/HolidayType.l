;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::HolidayType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'HolidayType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::HOLIDAYTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::HOLIDAYTYPE"))

(in-package "ROS")
;;//! \htmlinclude HolidayType.msg.html


(intern "*HOLIDAYTYPE_NONE*" (find-package "LANE_NAVI_INFO_MSGS::HOLIDAYTYPE"))
(shadow '*HOLIDAYTYPE_NONE* (find-package "LANE_NAVI_INFO_MSGS::HOLIDAYTYPE"))
(defconstant lane_navi_info_msgs::HolidayType::*HOLIDAYTYPE_NONE* 0)
(intern "*HOLIDAYTYPE_VALID*" (find-package "LANE_NAVI_INFO_MSGS::HOLIDAYTYPE"))
(shadow '*HOLIDAYTYPE_VALID* (find-package "LANE_NAVI_INFO_MSGS::HOLIDAYTYPE"))
(defconstant lane_navi_info_msgs::HolidayType::*HOLIDAYTYPE_VALID* 1)
(intern "*HOLIDAYTYPE_EXCEPT*" (find-package "LANE_NAVI_INFO_MSGS::HOLIDAYTYPE"))
(shadow '*HOLIDAYTYPE_EXCEPT* (find-package "LANE_NAVI_INFO_MSGS::HOLIDAYTYPE"))
(defconstant lane_navi_info_msgs::HolidayType::*HOLIDAYTYPE_EXCEPT* 2)

(defun lane_navi_info_msgs::HolidayType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::HolidayType::*HOLIDAYTYPE_NONE*)
        ((= const 1) 'lane_navi_info_msgs::HolidayType::*HOLIDAYTYPE_VALID*)
        ((= const 2) 'lane_navi_info_msgs::HolidayType::*HOLIDAYTYPE_EXCEPT*)
        (t nil)))

(defclass lane_navi_info_msgs::HolidayType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::HolidayType
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

(setf (get lane_navi_info_msgs::HolidayType :md5sum-) "3df50e6b77ba0513892e5cb105e9637c")
(setf (get lane_navi_info_msgs::HolidayType :datatype-) "lane_navi_info_msgs/HolidayType")
(setf (get lane_navi_info_msgs::HolidayType :definition-)
      "uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

")



(provide :lane_navi_info_msgs/HolidayType "3df50e6b77ba0513892e5cb105e9637c")


