;; Auto-generated. Do not edit!


(when (boundp 'sensor_adas_msgs::TSRResult)
  (if (not (find-package "SENSOR_ADAS_MSGS"))
    (make-package "SENSOR_ADAS_MSGS"))
  (shadow 'TSRResult (find-package "SENSOR_ADAS_MSGS")))
(unless (find-package "SENSOR_ADAS_MSGS::TSRRESULT")
  (make-package "SENSOR_ADAS_MSGS::TSRRESULT"))

(in-package "ROS")
;;//! \htmlinclude TSRResult.msg.html


(intern "*BOSCH_TSR_DATA_TYPE*" (find-package "SENSOR_ADAS_MSGS::TSRRESULT"))
(shadow '*BOSCH_TSR_DATA_TYPE* (find-package "SENSOR_ADAS_MSGS::TSRRESULT"))
(defconstant sensor_adas_msgs::TSRResult::*BOSCH_TSR_DATA_TYPE* 1)

(defun sensor_adas_msgs::TSRResult-to-symbol (const)
  (cond
        ((= const 1) 'sensor_adas_msgs::TSRResult::*BOSCH_TSR_DATA_TYPE*)
        (t nil)))

(defclass sensor_adas_msgs::TSRResult
  :super ros::object
  :slots (_available _bosch_tsr ))

(defmethod sensor_adas_msgs::TSRResult
  (:init
   (&key
    ((:available __available) 0)
    ((:bosch_tsr __bosch_tsr) (instance sensor_adas_msgs::Bosch_TSR :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _bosch_tsr __bosch_tsr)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:bosch_tsr
   (&rest __bosch_tsr)
   (if (keywordp (car __bosch_tsr))
       (send* _bosch_tsr __bosch_tsr)
     (progn
       (if __bosch_tsr (setq _bosch_tsr (car __bosch_tsr)))
       _bosch_tsr)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; sensor_adas_msgs/Bosch_TSR _bosch_tsr
    (send _bosch_tsr :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; sensor_adas_msgs/Bosch_TSR _bosch_tsr
       (send _bosch_tsr :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; sensor_adas_msgs/Bosch_TSR _bosch_tsr
     (send _bosch_tsr :deserialize buf ptr-) (incf ptr- (send _bosch_tsr :serialization-length))
   ;;
   self)
  )

(setf (get sensor_adas_msgs::TSRResult :md5sum-) "7b3e154cc80f2796114cd089b43ffd4b")
(setf (get sensor_adas_msgs::TSRResult :datatype-) "sensor_adas_msgs/TSRResult")
(setf (get sensor_adas_msgs::TSRResult :definition-)
      "uint8 BOSCH_TSR_DATA_TYPE = 1
uint8 available
sensor_adas_msgs/Bosch_TSR bosch_tsr

================================================================================
MSG: sensor_adas_msgs/Bosch_TSR
uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0
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



(provide :sensor_adas_msgs/TSRResult "7b3e154cc80f2796114cd089b43ffd4b")


