;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::AdministrativeWideDrivingRule)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'AdministrativeWideDrivingRule (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::ADMINISTRATIVEWIDEDRIVINGRULE")
  (make-package "LANE_NAVI_INFO_MSGS::ADMINISTRATIVEWIDEDRIVINGRULE"))

(in-package "ROS")
;;//! \htmlinclude AdministrativeWideDrivingRule.msg.html


(intern "*UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::ADMINISTRATIVEWIDEDRIVINGRULE"))
(shadow '*UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::ADMINISTRATIVEWIDEDRIVINGRULE"))
(defconstant lane_navi_info_msgs::AdministrativeWideDrivingRule::*UNKNOWN* 0)
(intern "*LEFT*" (find-package "LANE_NAVI_INFO_MSGS::ADMINISTRATIVEWIDEDRIVINGRULE"))
(shadow '*LEFT* (find-package "LANE_NAVI_INFO_MSGS::ADMINISTRATIVEWIDEDRIVINGRULE"))
(defconstant lane_navi_info_msgs::AdministrativeWideDrivingRule::*LEFT* 1)
(intern "*RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::ADMINISTRATIVEWIDEDRIVINGRULE"))
(shadow '*RIGHT* (find-package "LANE_NAVI_INFO_MSGS::ADMINISTRATIVEWIDEDRIVINGRULE"))
(defconstant lane_navi_info_msgs::AdministrativeWideDrivingRule::*RIGHT* 2)

(defun lane_navi_info_msgs::AdministrativeWideDrivingRule-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::AdministrativeWideDrivingRule::*UNKNOWN*)
        ((= const 1) 'lane_navi_info_msgs::AdministrativeWideDrivingRule::*LEFT*)
        ((= const 2) 'lane_navi_info_msgs::AdministrativeWideDrivingRule::*RIGHT*)
        (t nil)))

(defclass lane_navi_info_msgs::AdministrativeWideDrivingRule
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::AdministrativeWideDrivingRule
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::AdministrativeWideDrivingRule :md5sum-) "ab6373b645f2053fa99932ec0dd92755")
(setf (get lane_navi_info_msgs::AdministrativeWideDrivingRule :datatype-) "lane_navi_info_msgs/AdministrativeWideDrivingRule")
(setf (get lane_navi_info_msgs::AdministrativeWideDrivingRule :definition-)
      "uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 value

")



(provide :lane_navi_info_msgs/AdministrativeWideDrivingRule "ab6373b645f2053fa99932ec0dd92755")


