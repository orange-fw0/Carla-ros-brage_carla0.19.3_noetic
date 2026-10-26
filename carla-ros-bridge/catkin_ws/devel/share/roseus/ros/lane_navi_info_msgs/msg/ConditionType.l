;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::ConditionType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'ConditionType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))

(in-package "ROS")
;;//! \htmlinclude ConditionType.msg.html


(intern "*ALWAYS_VALID*" (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(shadow '*ALWAYS_VALID* (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(defconstant lane_navi_info_msgs::ConditionType::*ALWAYS_VALID* 0)
(intern "*SIGN_IS_NOT_VALID_AT_ALL*" (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(shadow '*SIGN_IS_NOT_VALID_AT_ALL* (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(defconstant lane_navi_info_msgs::ConditionType::*SIGN_IS_NOT_VALID_AT_ALL* 5)
(intern "*VALID_ONLY_IF_SNOW*" (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(shadow '*VALID_ONLY_IF_SNOW* (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(defconstant lane_navi_info_msgs::ConditionType::*VALID_ONLY_IF_SNOW* 6)
(intern "*VALID_ONLY_IF_FOG*" (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(shadow '*VALID_ONLY_IF_FOG* (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(defconstant lane_navi_info_msgs::ConditionType::*VALID_ONLY_IF_FOG* 7)
(intern "*VALID_ONLY_IF_RAIN*" (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(shadow '*VALID_ONLY_IF_RAIN* (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(defconstant lane_navi_info_msgs::ConditionType::*VALID_ONLY_IF_RAIN* 8)
(intern "*VALID_ONLY_BY_DAY*" (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(shadow '*VALID_ONLY_BY_DAY* (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(defconstant lane_navi_info_msgs::ConditionType::*VALID_ONLY_BY_DAY* 9)
(intern "*VALID_ONLY_BY_NIGHT*" (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(shadow '*VALID_ONLY_BY_NIGHT* (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(defconstant lane_navi_info_msgs::ConditionType::*VALID_ONLY_BY_NIGHT* 10)
(intern "*VALID_DEPENDING_ON_TURN_DIRECTION*" (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(shadow '*VALID_DEPENDING_ON_TURN_DIRECTION* (find-package "LANE_NAVI_INFO_MSGS::CONDITIONTYPE"))
(defconstant lane_navi_info_msgs::ConditionType::*VALID_DEPENDING_ON_TURN_DIRECTION* 11)

(defun lane_navi_info_msgs::ConditionType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::ConditionType::*ALWAYS_VALID*)
        ((= const 5) 'lane_navi_info_msgs::ConditionType::*SIGN_IS_NOT_VALID_AT_ALL*)
        ((= const 6) 'lane_navi_info_msgs::ConditionType::*VALID_ONLY_IF_SNOW*)
        ((= const 7) 'lane_navi_info_msgs::ConditionType::*VALID_ONLY_IF_FOG*)
        ((= const 8) 'lane_navi_info_msgs::ConditionType::*VALID_ONLY_IF_RAIN*)
        ((= const 9) 'lane_navi_info_msgs::ConditionType::*VALID_ONLY_BY_DAY*)
        ((= const 10) 'lane_navi_info_msgs::ConditionType::*VALID_ONLY_BY_NIGHT*)
        ((= const 11) 'lane_navi_info_msgs::ConditionType::*VALID_DEPENDING_ON_TURN_DIRECTION*)
        (t nil)))

(defclass lane_navi_info_msgs::ConditionType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::ConditionType
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

(setf (get lane_navi_info_msgs::ConditionType :md5sum-) "6077c3800042b45e319943481f163e50")
(setf (get lane_navi_info_msgs::ConditionType :datatype-) "lane_navi_info_msgs/ConditionType")
(setf (get lane_navi_info_msgs::ConditionType :definition-)
      "uint8 ALWAYS_VALID = 0
uint8 SIGN_IS_NOT_VALID_AT_ALL = 5
uint8 VALID_ONLY_IF_SNOW = 6
uint8 VALID_ONLY_IF_FOG = 7
uint8 VALID_ONLY_IF_RAIN = 8
uint8 VALID_ONLY_BY_DAY = 9
uint8 VALID_ONLY_BY_NIGHT = 10
uint8 VALID_DEPENDING_ON_TURN_DIRECTION = 11
uint8 type

")



(provide :lane_navi_info_msgs/ConditionType "6077c3800042b45e319943481f163e50")


