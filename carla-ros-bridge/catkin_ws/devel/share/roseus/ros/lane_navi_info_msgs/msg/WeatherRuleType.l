;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::WeatherRuleType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'WeatherRuleType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE")
  (make-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))

(in-package "ROS")
;;//! \htmlinclude WeatherRuleType.msg.html


(intern "*WEATHERTYPE_INVALID*" (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(shadow '*WEATHERTYPE_INVALID* (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(defconstant lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_INVALID* 0)
(intern "*WEATHERTYPE_SUNSHINE*" (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(shadow '*WEATHERTYPE_SUNSHINE* (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(defconstant lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_SUNSHINE* 1)
(intern "*WEATHERTYPE_RAINSNOW*" (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(shadow '*WEATHERTYPE_RAINSNOW* (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(defconstant lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_RAINSNOW* 2)
(intern "*WEATHERTYPE_ICE*" (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(shadow '*WEATHERTYPE_ICE* (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(defconstant lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_ICE* 3)
(intern "*WEATHERTYPE_FOG*" (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(shadow '*WEATHERTYPE_FOG* (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(defconstant lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_FOG* 4)
(intern "*WEATHERTYPE_WIND*" (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(shadow '*WEATHERTYPE_WIND* (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULETYPE"))
(defconstant lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_WIND* 5)

(defun lane_navi_info_msgs::WeatherRuleType-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_INVALID*)
        ((= const 1) 'lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_SUNSHINE*)
        ((= const 2) 'lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_RAINSNOW*)
        ((= const 3) 'lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_ICE*)
        ((= const 4) 'lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_FOG*)
        ((= const 5) 'lane_navi_info_msgs::WeatherRuleType::*WEATHERTYPE_WIND*)
        (t nil)))

(defclass lane_navi_info_msgs::WeatherRuleType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::WeatherRuleType
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

(setf (get lane_navi_info_msgs::WeatherRuleType :md5sum-) "7ba6de65c9d99b9e8281b1ebdfb9929e")
(setf (get lane_navi_info_msgs::WeatherRuleType :datatype-) "lane_navi_info_msgs/WeatherRuleType")
(setf (get lane_navi_info_msgs::WeatherRuleType :definition-)
      "uint8 WEATHERTYPE_INVALID = 0
uint8 WEATHERTYPE_SUNSHINE = 1
uint8 WEATHERTYPE_RAINSNOW = 2
uint8 WEATHERTYPE_ICE = 3
uint8 WEATHERTYPE_FOG = 4
uint8 WEATHERTYPE_WIND = 5
uint8 type

")



(provide :lane_navi_info_msgs/WeatherRuleType "7ba6de65c9d99b9e8281b1ebdfb9929e")


