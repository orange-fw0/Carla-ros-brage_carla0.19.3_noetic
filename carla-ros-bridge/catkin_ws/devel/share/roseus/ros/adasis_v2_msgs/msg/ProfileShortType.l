;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::ProfileShortType)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'ProfileShortType (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE")
  (make-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))

(in-package "ROS")
;;//! \htmlinclude ProfileShortType.msg.html


(intern "*CURVATURE*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*CURVATURE* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*CURVATURE* 1)
(intern "*ROUTE_NUMBER_TYPES*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*ROUTE_NUMBER_TYPES* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*ROUTE_NUMBER_TYPES* 2)
(intern "*SLOPE_STEP*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*SLOPE_STEP* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*SLOPE_STEP* 3)
(intern "*SLOPE_LINEAR*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*SLOPE_LINEAR* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*SLOPE_LINEAR* 4)
(intern "*ROAD_ACCESSIBILITY*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*ROAD_ACCESSIBILITY* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*ROAD_ACCESSIBILITY* 5)
(intern "*ROAD_CONDITION*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*ROAD_CONDITION* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*ROAD_CONDITION* 6)
(intern "*VARIABLE_SPEED_SIGN_POSITION*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*VARIABLE_SPEED_SIGN_POSITION* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*VARIABLE_SPEED_SIGN_POSITION* 7)
(intern "*HEADING_CHANGE*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*HEADING_CHANGE* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*HEADING_CHANGE* 8)
(intern "*SPEED_LIMIT_ASSIST_LOCATION*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*SPEED_LIMIT_ASSIST_LOCATION* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*SPEED_LIMIT_ASSIST_LOCATION* 16)
(intern "*HISTORY_AVERAGE_SPEED*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*HISTORY_AVERAGE_SPEED* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*HISTORY_AVERAGE_SPEED* 18)
(intern "*TRAFFIC_FLOW*" (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(shadow '*TRAFFIC_FLOW* (find-package "ADASIS_V2_MSGS::PROFILESHORTTYPE"))
(defconstant adasis_v2_msgs::ProfileShortType::*TRAFFIC_FLOW* 19)

(defun adasis_v2_msgs::ProfileShortType-to-symbol (const)
  (cond
        ((= const 1) 'adasis_v2_msgs::ProfileShortType::*CURVATURE*)
        ((= const 2) 'adasis_v2_msgs::ProfileShortType::*ROUTE_NUMBER_TYPES*)
        ((= const 3) 'adasis_v2_msgs::ProfileShortType::*SLOPE_STEP*)
        ((= const 4) 'adasis_v2_msgs::ProfileShortType::*SLOPE_LINEAR*)
        ((= const 5) 'adasis_v2_msgs::ProfileShortType::*ROAD_ACCESSIBILITY*)
        ((= const 6) 'adasis_v2_msgs::ProfileShortType::*ROAD_CONDITION*)
        ((= const 7) 'adasis_v2_msgs::ProfileShortType::*VARIABLE_SPEED_SIGN_POSITION*)
        ((= const 8) 'adasis_v2_msgs::ProfileShortType::*HEADING_CHANGE*)
        ((= const 16) 'adasis_v2_msgs::ProfileShortType::*SPEED_LIMIT_ASSIST_LOCATION*)
        ((= const 18) 'adasis_v2_msgs::ProfileShortType::*HISTORY_AVERAGE_SPEED*)
        ((= const 19) 'adasis_v2_msgs::ProfileShortType::*TRAFFIC_FLOW*)
        (t nil)))

(defclass adasis_v2_msgs::ProfileShortType
  :super ros::object
  :slots (_value ))

(defmethod adasis_v2_msgs::ProfileShortType
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

(setf (get adasis_v2_msgs::ProfileShortType :md5sum-) "ff195243e3bdc4f717336e14b7b79d5f")
(setf (get adasis_v2_msgs::ProfileShortType :datatype-) "adasis_v2_msgs/ProfileShortType")
(setf (get adasis_v2_msgs::ProfileShortType :definition-)
      "uint8 CURVATURE = 1
uint8 ROUTE_NUMBER_TYPES = 2
uint8 SLOPE_STEP = 3
uint8 SLOPE_LINEAR = 4
uint8 ROAD_ACCESSIBILITY = 5
uint8 ROAD_CONDITION = 6
uint8 VARIABLE_SPEED_SIGN_POSITION = 7
uint8 HEADING_CHANGE = 8
uint8 SPEED_LIMIT_ASSIST_LOCATION = 16
uint8 HISTORY_AVERAGE_SPEED = 18
uint8 TRAFFIC_FLOW = 19
uint8 value

")



(provide :adasis_v2_msgs/ProfileShortType "ff195243e3bdc4f717336e14b7b79d5f")


