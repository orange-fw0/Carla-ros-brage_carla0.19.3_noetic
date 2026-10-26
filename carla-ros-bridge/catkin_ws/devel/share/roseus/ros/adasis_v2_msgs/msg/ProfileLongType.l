;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::ProfileLongType)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'ProfileLongType (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE")
  (make-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))

(in-package "ROS")
;;//! \htmlinclude ProfileLongType.msg.html


(intern "*LONGITUDE*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*LONGITUDE* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*LONGITUDE* 1)
(intern "*LATITUDE*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*LATITUDE* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*LATITUDE* 2)
(intern "*ALTITUDE*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*ALTITUDE* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*ALTITUDE* 3)
(intern "*CONTROL_POINT_LONGITUDE*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*CONTROL_POINT_LONGITUDE* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*CONTROL_POINT_LONGITUDE* 4)
(intern "*CONTROL_POINT_LATITUDE*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*CONTROL_POINT_LATITUDE* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*CONTROL_POINT_LATITUDE* 5)
(intern "*CONTROL_POINT_ALTITUDE*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*CONTROL_POINT_ALTITUDE* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*CONTROL_POINT_ALTITUDE* 6)
(intern "*LINK_IDENTIFIER*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*LINK_IDENTIFIER* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*LINK_IDENTIFIER* 7)
(intern "*TRAFFIC_SIGN*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*TRAFFIC_SIGN* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*TRAFFIC_SIGN* 8)
(intern "*TRUCK_SPEED_LIMIT*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*TRUCK_SPEED_LIMIT* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*TRUCK_SPEED_LIMIT* 9)
(intern "*EXTENDED_LANE*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*EXTENDED_LANE* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*EXTENDED_LANE* 10)
(intern "*HARZ_SPEED_LIMIT_0_AND_1*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*HARZ_SPEED_LIMIT_0_AND_1* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*HARZ_SPEED_LIMIT_0_AND_1* 16)
(intern "*HARZ_SPEED_LIMIT_1*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*HARZ_SPEED_LIMIT_1* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*HARZ_SPEED_LIMIT_1* 17)
(intern "*TRAFFIC_EVENT*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*TRAFFIC_EVENT* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*TRAFFIC_EVENT* 19)
(intern "*WEATHER*" (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(shadow '*WEATHER* (find-package "ADASIS_V2_MSGS::PROFILELONGTYPE"))
(defconstant adasis_v2_msgs::ProfileLongType::*WEATHER* 20)

(defun adasis_v2_msgs::ProfileLongType-to-symbol (const)
  (cond
        ((= const 1) 'adasis_v2_msgs::ProfileLongType::*LONGITUDE*)
        ((= const 2) 'adasis_v2_msgs::ProfileLongType::*LATITUDE*)
        ((= const 3) 'adasis_v2_msgs::ProfileLongType::*ALTITUDE*)
        ((= const 4) 'adasis_v2_msgs::ProfileLongType::*CONTROL_POINT_LONGITUDE*)
        ((= const 5) 'adasis_v2_msgs::ProfileLongType::*CONTROL_POINT_LATITUDE*)
        ((= const 6) 'adasis_v2_msgs::ProfileLongType::*CONTROL_POINT_ALTITUDE*)
        ((= const 7) 'adasis_v2_msgs::ProfileLongType::*LINK_IDENTIFIER*)
        ((= const 8) 'adasis_v2_msgs::ProfileLongType::*TRAFFIC_SIGN*)
        ((= const 9) 'adasis_v2_msgs::ProfileLongType::*TRUCK_SPEED_LIMIT*)
        ((= const 10) 'adasis_v2_msgs::ProfileLongType::*EXTENDED_LANE*)
        ((= const 16) 'adasis_v2_msgs::ProfileLongType::*HARZ_SPEED_LIMIT_0_AND_1*)
        ((= const 17) 'adasis_v2_msgs::ProfileLongType::*HARZ_SPEED_LIMIT_1*)
        ((= const 19) 'adasis_v2_msgs::ProfileLongType::*TRAFFIC_EVENT*)
        ((= const 20) 'adasis_v2_msgs::ProfileLongType::*WEATHER*)
        (t nil)))

(defclass adasis_v2_msgs::ProfileLongType
  :super ros::object
  :slots (_value ))

(defmethod adasis_v2_msgs::ProfileLongType
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

(setf (get adasis_v2_msgs::ProfileLongType :md5sum-) "4c05289cf9e11da36b33fae39a854b02")
(setf (get adasis_v2_msgs::ProfileLongType :datatype-) "adasis_v2_msgs/ProfileLongType")
(setf (get adasis_v2_msgs::ProfileLongType :definition-)
      "uint8 LONGITUDE = 1
uint8 LATITUDE = 2
uint8 ALTITUDE = 3
uint8 CONTROL_POINT_LONGITUDE = 4
uint8 CONTROL_POINT_LATITUDE = 5
uint8 CONTROL_POINT_ALTITUDE = 6
uint8 LINK_IDENTIFIER = 7
uint8 TRAFFIC_SIGN = 8
uint8 TRUCK_SPEED_LIMIT = 9
uint8 EXTENDED_LANE = 10
uint8 HARZ_SPEED_LIMIT_0_AND_1 = 16
uint8 HARZ_SPEED_LIMIT_1 = 17
uint8 TRAFFIC_EVENT = 19
uint8 WEATHER = 20
uint8 value

")



(provide :adasis_v2_msgs/ProfileLongType "4c05289cf9e11da36b33fae39a854b02")


