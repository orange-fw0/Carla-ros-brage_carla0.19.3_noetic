;; Auto-generated. Do not edit!


(when (boundp 'sensor_adas_msgs::Bosch_TSR)
  (if (not (find-package "SENSOR_ADAS_MSGS"))
    (make-package "SENSOR_ADAS_MSGS"))
  (shadow 'Bosch_TSR (find-package "SENSOR_ADAS_MSGS")))
(unless (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR")
  (make-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))

(in-package "ROS")
;;//! \htmlinclude Bosch_TSR.msg.html


(intern "*SLA_OUTPUT_SPEED_LIMIT_NODISPLAY*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SLA_OUTPUT_SPEED_LIMIT_NODISPLAY* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SLA_OUTPUT_SPEED_LIMIT_NODISPLAY* 0)
(intern "*SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL* 1)
(intern "*SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL* 2)
(intern "*SPEED_UNIT_INVALID*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SPEED_UNIT_INVALID* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SPEED_UNIT_INVALID* 0)
(intern "*SPEED_UNIT_KMH*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SPEED_UNIT_KMH* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SPEED_UNIT_KMH* 1)
(intern "*SPEED_UNIT_MPH*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SPEED_UNIT_MPH* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SPEED_UNIT_MPH* 2)
(intern "*SPEED_UNIT_RESERVED*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SPEED_UNIT_RESERVED* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SPEED_UNIT_RESERVED* 3)
(intern "*SPEED_TYPE_NONE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SPEED_TYPE_NONE* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SPEED_TYPE_NONE* 0)
(intern "*SPEED_TYPE_NORMAL_SPEED*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SPEED_TYPE_NORMAL_SPEED* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SPEED_TYPE_NORMAL_SPEED* 1)
(intern "*SPEED_TYPE_LED_SPEED*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SPEED_TYPE_LED_SPEED* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SPEED_TYPE_LED_SPEED* 2)
(intern "*SPEED_TYPE_NAVI_SPEED*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*SPEED_TYPE_NAVI_SPEED* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*SPEED_TYPE_NAVI_SPEED* 3)
(intern "*RSI_DEFAULT_NO_DISPLAY*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_DEFAULT_NO_DISPLAY* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_DEFAULT_NO_DISPLAY* 0)
(intern "*RSI_NO_ENTRY_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_NO_ENTRY_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_NO_ENTRY_SIGN* 1)
(intern "*RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN* 2)
(intern "*RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN* 3)
(intern "*RSI_NO_PARKING_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_NO_PARKING_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_NO_PARKING_SIGN* 4)
(intern "*RSI_NO_OVERTAKING_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_NO_OVERTAKING_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_NO_OVERTAKING_SIGN* 5)
(intern "*RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN* 6)
(intern "*RSI_NO_LEFT_TURN_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_NO_LEFT_TURN_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_NO_LEFT_TURN_SIGN* 7)
(intern "*RSI_NO_RIGHT_TURN_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_NO_RIGHT_TURN_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_NO_RIGHT_TURN_SIGN* 8)
(intern "*RSI_U_TURN_PROHIBITED_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_U_TURN_PROHIBITED_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_U_TURN_PROHIBITED_SIGN* 9)
(intern "*RSI_PARKING_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_PARKING_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_PARKING_SIGN* 10)
(intern "*RSI_YIELD_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_YIELD_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_YIELD_SIGN* 11)
(intern "*RSI_NO_HORN_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_NO_HORN_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_NO_HORN_SIGN* 12)
(intern "*RSI_CHILDREN_YIELD_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_CHILDREN_YIELD_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_CHILDREN_YIELD_SIGN* 13)
(intern "*RSI_PEDESTRIANS_CROSSING*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_PEDESTRIANS_CROSSING* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_PEDESTRIANS_CROSSING* 14)
(intern "*RSI_ROAD_CONSTRUCTION_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_ROAD_CONSTRUCTION_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_ROAD_CONSTRUCTION_SIGN* 15)
(intern "*RSI_CAUTION_SLIPPERY_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_CAUTION_SLIPPERY_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_CAUTION_SLIPPERY_SIGN* 16)
(intern "*RSI_CAUTION_DANGER_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_CAUTION_DANGER_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_CAUTION_DANGER_SIGN* 17)
(intern "*RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN* 18)
(intern "*RSI_HIGHWAY_STARTING_POINT_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_HIGHWAY_STARTING_POINT_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_HIGHWAY_STARTING_POINT_SIGN* 19)
(intern "*RSI_HIGHWAY_END_POINT_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_HIGHWAY_END_POINT_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_HIGHWAY_END_POINT_SIGN* 20)
(intern "*RSI_SHARP_RIGHT_TURN_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_SHARP_RIGHT_TURN_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_SHARP_RIGHT_TURN_SIGN* 21)
(intern "*RSI_SHARP_LEFT_TURN_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_SHARP_LEFT_TURN_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_SHARP_LEFT_TURN_SIGN* 22)
(intern "*RSI_LONG_TERM_PARKING_PROHIBITED_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_LONG_TERM_PARKING_PROHIBITED_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_LONG_TERM_PARKING_PROHIBITED_SIGN* 23)
(intern "*RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN* 24)
(intern "*RSI_CAUTION_STEEP_ASCENT_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_CAUTION_STEEP_ASCENT_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_CAUTION_STEEP_ASCENT_SIGN* 25)
(intern "*RSI_CAUTION_STEEP_DESCENT_SIGN*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*RSI_CAUTION_STEEP_DESCENT_SIGN* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*RSI_CAUTION_STEEP_DESCENT_SIGN* 26)
(intern "*TSR_FUNCTION_STATUS_OFF*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*TSR_FUNCTION_STATUS_OFF* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_OFF* 0)
(intern "*TSR_FUNCTION_STATUS_FUSION_MODE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*TSR_FUNCTION_STATUS_FUSION_MODE* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_FUSION_MODE* 1)
(intern "*TSR_FUNCTION_STATUS_VISION_MODE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*TSR_FUNCTION_STATUS_VISION_MODE* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_VISION_MODE* 2)
(intern "*TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE* 3)
(intern "*TSR_FUNCTION_STATUS_PASSIVE*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*TSR_FUNCTION_STATUS_PASSIVE* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_PASSIVE* 4)
(intern "*TSR_FUNCTION_STATUS_FAULT*" (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(shadow '*TSR_FUNCTION_STATUS_FAULT* (find-package "SENSOR_ADAS_MSGS::BOSCH_TSR"))
(defconstant sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_FAULT* 5)

(defun sensor_adas_msgs::Bosch_TSR-to-symbol (const)
  (cond
        ((= const 0) 'sensor_adas_msgs::Bosch_TSR::*SLA_OUTPUT_SPEED_LIMIT_NODISPLAY*)
        ((= const 1) 'sensor_adas_msgs::Bosch_TSR::*SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL*)
        ((= const 2) 'sensor_adas_msgs::Bosch_TSR::*SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL*)
        ((= const 0) 'sensor_adas_msgs::Bosch_TSR::*SPEED_UNIT_INVALID*)
        ((= const 1) 'sensor_adas_msgs::Bosch_TSR::*SPEED_UNIT_KMH*)
        ((= const 2) 'sensor_adas_msgs::Bosch_TSR::*SPEED_UNIT_MPH*)
        ((= const 3) 'sensor_adas_msgs::Bosch_TSR::*SPEED_UNIT_RESERVED*)
        ((= const 0) 'sensor_adas_msgs::Bosch_TSR::*SPEED_TYPE_NONE*)
        ((= const 1) 'sensor_adas_msgs::Bosch_TSR::*SPEED_TYPE_NORMAL_SPEED*)
        ((= const 2) 'sensor_adas_msgs::Bosch_TSR::*SPEED_TYPE_LED_SPEED*)
        ((= const 3) 'sensor_adas_msgs::Bosch_TSR::*SPEED_TYPE_NAVI_SPEED*)
        ((= const 0) 'sensor_adas_msgs::Bosch_TSR::*RSI_DEFAULT_NO_DISPLAY*)
        ((= const 1) 'sensor_adas_msgs::Bosch_TSR::*RSI_NO_ENTRY_SIGN*)
        ((= const 2) 'sensor_adas_msgs::Bosch_TSR::*RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN*)
        ((= const 3) 'sensor_adas_msgs::Bosch_TSR::*RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN*)
        ((= const 4) 'sensor_adas_msgs::Bosch_TSR::*RSI_NO_PARKING_SIGN*)
        ((= const 5) 'sensor_adas_msgs::Bosch_TSR::*RSI_NO_OVERTAKING_SIGN*)
        ((= const 6) 'sensor_adas_msgs::Bosch_TSR::*RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN*)
        ((= const 7) 'sensor_adas_msgs::Bosch_TSR::*RSI_NO_LEFT_TURN_SIGN*)
        ((= const 8) 'sensor_adas_msgs::Bosch_TSR::*RSI_NO_RIGHT_TURN_SIGN*)
        ((= const 9) 'sensor_adas_msgs::Bosch_TSR::*RSI_U_TURN_PROHIBITED_SIGN*)
        ((= const 10) 'sensor_adas_msgs::Bosch_TSR::*RSI_PARKING_SIGN*)
        ((= const 11) 'sensor_adas_msgs::Bosch_TSR::*RSI_YIELD_SIGN*)
        ((= const 12) 'sensor_adas_msgs::Bosch_TSR::*RSI_NO_HORN_SIGN*)
        ((= const 13) 'sensor_adas_msgs::Bosch_TSR::*RSI_CHILDREN_YIELD_SIGN*)
        ((= const 14) 'sensor_adas_msgs::Bosch_TSR::*RSI_PEDESTRIANS_CROSSING*)
        ((= const 15) 'sensor_adas_msgs::Bosch_TSR::*RSI_ROAD_CONSTRUCTION_SIGN*)
        ((= const 16) 'sensor_adas_msgs::Bosch_TSR::*RSI_CAUTION_SLIPPERY_SIGN*)
        ((= const 17) 'sensor_adas_msgs::Bosch_TSR::*RSI_CAUTION_DANGER_SIGN*)
        ((= const 18) 'sensor_adas_msgs::Bosch_TSR::*RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN*)
        ((= const 19) 'sensor_adas_msgs::Bosch_TSR::*RSI_HIGHWAY_STARTING_POINT_SIGN*)
        ((= const 20) 'sensor_adas_msgs::Bosch_TSR::*RSI_HIGHWAY_END_POINT_SIGN*)
        ((= const 21) 'sensor_adas_msgs::Bosch_TSR::*RSI_SHARP_RIGHT_TURN_SIGN*)
        ((= const 22) 'sensor_adas_msgs::Bosch_TSR::*RSI_SHARP_LEFT_TURN_SIGN*)
        ((= const 23) 'sensor_adas_msgs::Bosch_TSR::*RSI_LONG_TERM_PARKING_PROHIBITED_SIGN*)
        ((= const 24) 'sensor_adas_msgs::Bosch_TSR::*RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN*)
        ((= const 25) 'sensor_adas_msgs::Bosch_TSR::*RSI_CAUTION_STEEP_ASCENT_SIGN*)
        ((= const 26) 'sensor_adas_msgs::Bosch_TSR::*RSI_CAUTION_STEEP_DESCENT_SIGN*)
        ((= const 0) 'sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_OFF*)
        ((= const 1) 'sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_FUSION_MODE*)
        ((= const 2) 'sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_VISION_MODE*)
        ((= const 3) 'sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE*)
        ((= const 4) 'sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_PASSIVE*)
        ((= const 5) 'sensor_adas_msgs::Bosch_TSR::*TSR_FUNCTION_STATUS_FAULT*)
        (t nil)))

(defclass sensor_adas_msgs::Bosch_TSR
  :super ros::object
  :slots (_TSR_Fusion_Speed _TSR_Function_Status _SLA_Output_Speed_Limit _SLA_Output_Speed_Limit_Status _SLA_Output_Speed_Limit_Unit _RSI_SignMisc _reserved1 _reserved2 ))

(defmethod sensor_adas_msgs::Bosch_TSR
  (:init
   (&key
    ((:TSR_Fusion_Speed __TSR_Fusion_Speed) 0)
    ((:TSR_Function_Status __TSR_Function_Status) 0)
    ((:SLA_Output_Speed_Limit __SLA_Output_Speed_Limit) 0)
    ((:SLA_Output_Speed_Limit_Status __SLA_Output_Speed_Limit_Status) 0)
    ((:SLA_Output_Speed_Limit_Unit __SLA_Output_Speed_Limit_Unit) 0)
    ((:RSI_SignMisc __RSI_SignMisc) 0)
    ((:reserved1 __reserved1) 0.0)
    ((:reserved2 __reserved2) 0.0)
    )
   (send-super :init)
   (setq _TSR_Fusion_Speed (round __TSR_Fusion_Speed))
   (setq _TSR_Function_Status (round __TSR_Function_Status))
   (setq _SLA_Output_Speed_Limit (round __SLA_Output_Speed_Limit))
   (setq _SLA_Output_Speed_Limit_Status (round __SLA_Output_Speed_Limit_Status))
   (setq _SLA_Output_Speed_Limit_Unit (round __SLA_Output_Speed_Limit_Unit))
   (setq _RSI_SignMisc (round __RSI_SignMisc))
   (setq _reserved1 (float __reserved1))
   (setq _reserved2 (float __reserved2))
   self)
  (:TSR_Fusion_Speed
   (&optional __TSR_Fusion_Speed)
   (if __TSR_Fusion_Speed (setq _TSR_Fusion_Speed __TSR_Fusion_Speed)) _TSR_Fusion_Speed)
  (:TSR_Function_Status
   (&optional __TSR_Function_Status)
   (if __TSR_Function_Status (setq _TSR_Function_Status __TSR_Function_Status)) _TSR_Function_Status)
  (:SLA_Output_Speed_Limit
   (&optional __SLA_Output_Speed_Limit)
   (if __SLA_Output_Speed_Limit (setq _SLA_Output_Speed_Limit __SLA_Output_Speed_Limit)) _SLA_Output_Speed_Limit)
  (:SLA_Output_Speed_Limit_Status
   (&optional __SLA_Output_Speed_Limit_Status)
   (if __SLA_Output_Speed_Limit_Status (setq _SLA_Output_Speed_Limit_Status __SLA_Output_Speed_Limit_Status)) _SLA_Output_Speed_Limit_Status)
  (:SLA_Output_Speed_Limit_Unit
   (&optional __SLA_Output_Speed_Limit_Unit)
   (if __SLA_Output_Speed_Limit_Unit (setq _SLA_Output_Speed_Limit_Unit __SLA_Output_Speed_Limit_Unit)) _SLA_Output_Speed_Limit_Unit)
  (:RSI_SignMisc
   (&optional __RSI_SignMisc)
   (if __RSI_SignMisc (setq _RSI_SignMisc __RSI_SignMisc)) _RSI_SignMisc)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:serialization-length
   ()
   (+
    ;; uint16 _TSR_Fusion_Speed
    2
    ;; uint16 _TSR_Function_Status
    2
    ;; uint16 _SLA_Output_Speed_Limit
    2
    ;; uint16 _SLA_Output_Speed_Limit_Status
    2
    ;; uint16 _SLA_Output_Speed_Limit_Unit
    2
    ;; uint16 _RSI_SignMisc
    2
    ;; float64 _reserved1
    8
    ;; float64 _reserved2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _TSR_Fusion_Speed
       (write-word _TSR_Fusion_Speed s)
     ;; uint16 _TSR_Function_Status
       (write-word _TSR_Function_Status s)
     ;; uint16 _SLA_Output_Speed_Limit
       (write-word _SLA_Output_Speed_Limit s)
     ;; uint16 _SLA_Output_Speed_Limit_Status
       (write-word _SLA_Output_Speed_Limit_Status s)
     ;; uint16 _SLA_Output_Speed_Limit_Unit
       (write-word _SLA_Output_Speed_Limit_Unit s)
     ;; uint16 _RSI_SignMisc
       (write-word _RSI_SignMisc s)
     ;; float64 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reserved2
       (sys::poke _reserved2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _TSR_Fusion_Speed
     (setq _TSR_Fusion_Speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _TSR_Function_Status
     (setq _TSR_Function_Status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _SLA_Output_Speed_Limit
     (setq _SLA_Output_Speed_Limit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _SLA_Output_Speed_Limit_Status
     (setq _SLA_Output_Speed_Limit_Status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _SLA_Output_Speed_Limit_Unit
     (setq _SLA_Output_Speed_Limit_Unit (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _RSI_SignMisc
     (setq _RSI_SignMisc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get sensor_adas_msgs::Bosch_TSR :md5sum-) "81a303defd0e65a4559f0a0455c731e5")
(setf (get sensor_adas_msgs::Bosch_TSR :datatype-) "sensor_adas_msgs/Bosch_TSR")
(setf (get sensor_adas_msgs::Bosch_TSR :definition-)
      "uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0
uint8 SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL = 1
uint8 SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL = 2
uint8 SPEED_UNIT_INVALID = 0
uint8 SPEED_UNIT_KMH = 1
uint8 SPEED_UNIT_MPH = 2
uint8 SPEED_UNIT_RESERVED = 3
uint8 SPEED_TYPE_NONE = 0
uint8 SPEED_TYPE_NORMAL_SPEED = 1
uint8 SPEED_TYPE_LED_SPEED = 2
uint8 SPEED_TYPE_NAVI_SPEED = 3
uint8 RSI_DEFAULT_NO_DISPLAY = 0
uint8 RSI_NO_ENTRY_SIGN = 1
uint8 RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN = 2
uint8 RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN = 3
uint8 RSI_NO_PARKING_SIGN = 4
uint8 RSI_NO_OVERTAKING_SIGN = 5
uint8 RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN = 6
uint8 RSI_NO_LEFT_TURN_SIGN = 7
uint8 RSI_NO_RIGHT_TURN_SIGN = 8
uint8 RSI_U_TURN_PROHIBITED_SIGN = 9
uint8 RSI_PARKING_SIGN = 10
uint8 RSI_YIELD_SIGN = 11
uint8 RSI_NO_HORN_SIGN = 12
uint8 RSI_CHILDREN_YIELD_SIGN = 13
uint8 RSI_PEDESTRIANS_CROSSING = 14
uint8 RSI_ROAD_CONSTRUCTION_SIGN = 15
uint8 RSI_CAUTION_SLIPPERY_SIGN = 16
uint8 RSI_CAUTION_DANGER_SIGN = 17
uint8 RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN = 18
uint8 RSI_HIGHWAY_STARTING_POINT_SIGN = 19
uint8 RSI_HIGHWAY_END_POINT_SIGN = 20
uint8 RSI_SHARP_RIGHT_TURN_SIGN = 21
uint8 RSI_SHARP_LEFT_TURN_SIGN = 22
uint8 RSI_LONG_TERM_PARKING_PROHIBITED_SIGN = 23
uint8 RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN = 24
uint8 RSI_CAUTION_STEEP_ASCENT_SIGN = 25
uint8 RSI_CAUTION_STEEP_DESCENT_SIGN = 26
uint8 TSR_FUNCTION_STATUS_OFF = 0
uint8 TSR_FUNCTION_STATUS_FUSION_MODE = 1
uint8 TSR_FUNCTION_STATUS_VISION_MODE = 2
uint8 TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE = 3
uint8 TSR_FUNCTION_STATUS_PASSIVE = 4
uint8 TSR_FUNCTION_STATUS_FAULT = 5
uint16 TSR_Fusion_Speed
uint16 TSR_Function_Status
uint16 SLA_Output_Speed_Limit
uint16 SLA_Output_Speed_Limit_Status
uint16 SLA_Output_Speed_Limit_Unit
uint16 RSI_SignMisc
float64 reserved1
float64 reserved2

")



(provide :sensor_adas_msgs/Bosch_TSR "81a303defd0e65a4559f0a0455c731e5")


