;; Auto-generated. Do not edit!


(when (boundp 'sensor_adas_msgs::SensorADASResult)
  (if (not (find-package "SENSOR_ADAS_MSGS"))
    (make-package "SENSOR_ADAS_MSGS"))
  (shadow 'SensorADASResult (find-package "SENSOR_ADAS_MSGS")))
(unless (find-package "SENSOR_ADAS_MSGS::SENSORADASRESULT")
  (make-package "SENSOR_ADAS_MSGS::SENSORADASRESULT"))

(in-package "ROS")
;;//! \htmlinclude SensorADASResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass sensor_adas_msgs::SensorADASResult
  :super ros::object
  :slots (_header _meta _tsr _elk ))

(defmethod sensor_adas_msgs::SensorADASResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance sensor_adas_msgs::AdasMeta :init))
    ((:tsr __tsr) (instance sensor_adas_msgs::TSRResult :init))
    ((:elk __elk) (instance sensor_adas_msgs::ELKResult :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _tsr __tsr)
   (setq _elk __elk)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:tsr
   (&rest __tsr)
   (if (keywordp (car __tsr))
       (send* _tsr __tsr)
     (progn
       (if __tsr (setq _tsr (car __tsr)))
       _tsr)))
  (:elk
   (&rest __elk)
   (if (keywordp (car __elk))
       (send* _elk __elk)
     (progn
       (if __elk (setq _elk (car __elk)))
       _elk)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_adas_msgs/AdasMeta _meta
    (send _meta :serialization-length)
    ;; sensor_adas_msgs/TSRResult _tsr
    (send _tsr :serialization-length)
    ;; sensor_adas_msgs/ELKResult _elk
    (send _elk :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_adas_msgs/AdasMeta _meta
       (send _meta :serialize s)
     ;; sensor_adas_msgs/TSRResult _tsr
       (send _tsr :serialize s)
     ;; sensor_adas_msgs/ELKResult _elk
       (send _elk :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_adas_msgs/AdasMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; sensor_adas_msgs/TSRResult _tsr
     (send _tsr :deserialize buf ptr-) (incf ptr- (send _tsr :serialization-length))
   ;; sensor_adas_msgs/ELKResult _elk
     (send _elk :deserialize buf ptr-) (incf ptr- (send _elk :serialization-length))
   ;;
   self)
  )

(setf (get sensor_adas_msgs::SensorADASResult :md5sum-) "eeed6a209c20260d9024144bb40d0bd6")
(setf (get sensor_adas_msgs::SensorADASResult :datatype-) "sensor_adas_msgs/SensorADASResult")
(setf (get sensor_adas_msgs::SensorADASResult :definition-)
      "std_msgs/Header header
sensor_adas_msgs/AdasMeta meta
sensor_adas_msgs/TSRResult tsr
sensor_adas_msgs/ELKResult elk

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_adas_msgs/AdasMeta
uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
uint64 seq

================================================================================
MSG: sensor_adas_msgs/TSRResult
uint8 BOSCH_TSR_DATA_TYPE = 1
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

================================================================================
MSG: sensor_adas_msgs/ELKResult
uint8 BOSCH_ELK_DATA_TYPE = 1
uint8 available
sensor_adas_msgs/Bosch_ELK bosch_elk

================================================================================
MSG: sensor_adas_msgs/Bosch_ELK
uint8 ANGLE_REQUEST_STATE_INHIBITED = 0
uint8 ANGLE_REQUEST_STATE_READY = 1
uint8 ANGLE_REQUEST_STATE_ACTIVE = 2
uint8 FAULT_STATUS_FLAG_NO_ERROR = 0
uint8 FAULT_STATUS_FLAG_ERROR = 1
uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0
uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1
uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2
uint8 ELK_STATUS_OFF = 0
uint8 ELK_STATUS_PASSIVE = 1
uint8 ELK_STATUS_ACTIVE = 2
uint8 ELK_STATUS_FAILURE = 3
uint32 ELK_status
uint32 ELK_OT_Fault_Status_Flag
uint32 ELK_Take_Over_Req
float32 Motor_Torque_Upper_Limit
float32 Motor_Torque_Lower_Limit
uint32 ADAS_AngleReq_State
float32 ADAS_AngleReq
float64 reserved1
float64 reserved2

")



(provide :sensor_adas_msgs/SensorADASResult "eeed6a209c20260d9024144bb40d0bd6")


