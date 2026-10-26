;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::NaviStatusEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'NaviStatusEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::NAVISTATUSENUM")
  (make-package "TBT_MSGS::NAVISTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude NaviStatusEnum.msg.html


(intern "*NAVSTS_0_INVALID*" (find-package "TBT_MSGS::NAVISTATUSENUM"))
(shadow '*NAVSTS_0_INVALID* (find-package "TBT_MSGS::NAVISTATUSENUM"))
(defconstant tbt_msgs::NaviStatusEnum::*NAVSTS_0_INVALID* 0)
(intern "*NAVSTS_1_NAVIGATION*" (find-package "TBT_MSGS::NAVISTATUSENUM"))
(shadow '*NAVSTS_1_NAVIGATION* (find-package "TBT_MSGS::NAVISTATUSENUM"))
(defconstant tbt_msgs::NaviStatusEnum::*NAVSTS_1_NAVIGATION* 1)
(intern "*NAVSTS_2_ROUTING*" (find-package "TBT_MSGS::NAVISTATUSENUM"))
(shadow '*NAVSTS_2_ROUTING* (find-package "TBT_MSGS::NAVISTATUSENUM"))
(defconstant tbt_msgs::NaviStatusEnum::*NAVSTS_2_ROUTING* 2)
(intern "*NAVSTS_3_CRUISE*" (find-package "TBT_MSGS::NAVISTATUSENUM"))
(shadow '*NAVSTS_3_CRUISE* (find-package "TBT_MSGS::NAVISTATUSENUM"))
(defconstant tbt_msgs::NaviStatusEnum::*NAVSTS_3_CRUISE* 3)
(intern "*NAVSTS_4_YAW*" (find-package "TBT_MSGS::NAVISTATUSENUM"))
(shadow '*NAVSTS_4_YAW* (find-package "TBT_MSGS::NAVISTATUSENUM"))
(defconstant tbt_msgs::NaviStatusEnum::*NAVSTS_4_YAW* 4)

(defun tbt_msgs::NaviStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::NaviStatusEnum::*NavSts_0_invalid*)
        ((= const 1) 'tbt_msgs::NaviStatusEnum::*NavSts_1_navigation*)
        ((= const 2) 'tbt_msgs::NaviStatusEnum::*NavSts_2_routing*)
        ((= const 3) 'tbt_msgs::NaviStatusEnum::*NavSts_3_Cruise*)
        ((= const 4) 'tbt_msgs::NaviStatusEnum::*NavSts_4_yaw*)
        (t nil)))

(defclass tbt_msgs::NaviStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::NaviStatusEnum
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

(setf (get tbt_msgs::NaviStatusEnum :md5sum-) "73362584a1b2cc63689724f52287d253")
(setf (get tbt_msgs::NaviStatusEnum :datatype-) "tbt_msgs/NaviStatusEnum")
(setf (get tbt_msgs::NaviStatusEnum :definition-)
      "uint8 NavSts_0_invalid = 0
uint8 NavSts_1_navigation = 1
uint8 NavSts_2_routing = 2
uint8 NavSts_3_Cruise = 3
uint8 NavSts_4_yaw = 4
uint8 value

")



(provide :tbt_msgs/NaviStatusEnum "73362584a1b2cc63689724f52287d253")


