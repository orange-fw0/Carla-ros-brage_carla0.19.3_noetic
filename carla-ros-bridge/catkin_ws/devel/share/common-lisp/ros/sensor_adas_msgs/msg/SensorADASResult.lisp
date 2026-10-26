; Auto-generated. Do not edit!


(cl:in-package sensor_adas_msgs-msg)


;//! \htmlinclude SensorADASResult.msg.html

(cl:defclass <SensorADASResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type sensor_adas_msgs-msg:AdasMeta
    :initform (cl:make-instance 'sensor_adas_msgs-msg:AdasMeta))
   (tsr
    :reader tsr
    :initarg :tsr
    :type sensor_adas_msgs-msg:TSRResult
    :initform (cl:make-instance 'sensor_adas_msgs-msg:TSRResult))
   (elk
    :reader elk
    :initarg :elk
    :type sensor_adas_msgs-msg:ELKResult
    :initform (cl:make-instance 'sensor_adas_msgs-msg:ELKResult)))
)

(cl:defclass SensorADASResult (<SensorADASResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorADASResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorADASResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_adas_msgs-msg:<SensorADASResult> is deprecated: use sensor_adas_msgs-msg:SensorADASResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SensorADASResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:header-val is deprecated.  Use sensor_adas_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <SensorADASResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:meta-val is deprecated.  Use sensor_adas_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'tsr-val :lambda-list '(m))
(cl:defmethod tsr-val ((m <SensorADASResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:tsr-val is deprecated.  Use sensor_adas_msgs-msg:tsr instead.")
  (tsr m))

(cl:ensure-generic-function 'elk-val :lambda-list '(m))
(cl:defmethod elk-val ((m <SensorADASResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:elk-val is deprecated.  Use sensor_adas_msgs-msg:elk instead.")
  (elk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorADASResult>) ostream)
  "Serializes a message object of type '<SensorADASResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tsr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'elk) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorADASResult>) istream)
  "Deserializes a message object of type '<SensorADASResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tsr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'elk) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorADASResult>)))
  "Returns string type for a message object of type '<SensorADASResult>"
  "sensor_adas_msgs/SensorADASResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorADASResult)))
  "Returns string type for a message object of type 'SensorADASResult"
  "sensor_adas_msgs/SensorADASResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorADASResult>)))
  "Returns md5sum for a message object of type '<SensorADASResult>"
  "eeed6a209c20260d9024144bb40d0bd6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorADASResult)))
  "Returns md5sum for a message object of type 'SensorADASResult"
  "eeed6a209c20260d9024144bb40d0bd6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorADASResult>)))
  "Returns full string definition for message of type '<SensorADASResult>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_adas_msgs/AdasMeta meta~%sensor_adas_msgs/TSRResult tsr~%sensor_adas_msgs/ELKResult elk~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_adas_msgs/AdasMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_adas_msgs/TSRResult~%uint8 BOSCH_TSR_DATA_TYPE = 1~%uint8 available~%sensor_adas_msgs/Bosch_TSR bosch_tsr~%~%================================================================================~%MSG: sensor_adas_msgs/Bosch_TSR~%uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL = 1~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL = 2~%uint8 SPEED_UNIT_INVALID = 0~%uint8 SPEED_UNIT_KMH = 1~%uint8 SPEED_UNIT_MPH = 2~%uint8 SPEED_UNIT_RESERVED = 3~%uint8 SPEED_TYPE_NONE = 0~%uint8 SPEED_TYPE_NORMAL_SPEED = 1~%uint8 SPEED_TYPE_LED_SPEED = 2~%uint8 SPEED_TYPE_NAVI_SPEED = 3~%uint8 RSI_DEFAULT_NO_DISPLAY = 0~%uint8 RSI_NO_ENTRY_SIGN = 1~%uint8 RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN = 2~%uint8 RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN = 3~%uint8 RSI_NO_PARKING_SIGN = 4~%uint8 RSI_NO_OVERTAKING_SIGN = 5~%uint8 RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN = 6~%uint8 RSI_NO_LEFT_TURN_SIGN = 7~%uint8 RSI_NO_RIGHT_TURN_SIGN = 8~%uint8 RSI_U_TURN_PROHIBITED_SIGN = 9~%uint8 RSI_PARKING_SIGN = 10~%uint8 RSI_YIELD_SIGN = 11~%uint8 RSI_NO_HORN_SIGN = 12~%uint8 RSI_CHILDREN_YIELD_SIGN = 13~%uint8 RSI_PEDESTRIANS_CROSSING = 14~%uint8 RSI_ROAD_CONSTRUCTION_SIGN = 15~%uint8 RSI_CAUTION_SLIPPERY_SIGN = 16~%uint8 RSI_CAUTION_DANGER_SIGN = 17~%uint8 RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN = 18~%uint8 RSI_HIGHWAY_STARTING_POINT_SIGN = 19~%uint8 RSI_HIGHWAY_END_POINT_SIGN = 20~%uint8 RSI_SHARP_RIGHT_TURN_SIGN = 21~%uint8 RSI_SHARP_LEFT_TURN_SIGN = 22~%uint8 RSI_LONG_TERM_PARKING_PROHIBITED_SIGN = 23~%uint8 RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN = 24~%uint8 RSI_CAUTION_STEEP_ASCENT_SIGN = 25~%uint8 RSI_CAUTION_STEEP_DESCENT_SIGN = 26~%uint8 TSR_FUNCTION_STATUS_OFF = 0~%uint8 TSR_FUNCTION_STATUS_FUSION_MODE = 1~%uint8 TSR_FUNCTION_STATUS_VISION_MODE = 2~%uint8 TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE = 3~%uint8 TSR_FUNCTION_STATUS_PASSIVE = 4~%uint8 TSR_FUNCTION_STATUS_FAULT = 5~%uint16 TSR_Fusion_Speed~%uint16 TSR_Function_Status~%uint16 SLA_Output_Speed_Limit~%uint16 SLA_Output_Speed_Limit_Status~%uint16 SLA_Output_Speed_Limit_Unit~%uint16 RSI_SignMisc~%float64 reserved1~%float64 reserved2~%~%================================================================================~%MSG: sensor_adas_msgs/ELKResult~%uint8 BOSCH_ELK_DATA_TYPE = 1~%uint8 available~%sensor_adas_msgs/Bosch_ELK bosch_elk~%~%================================================================================~%MSG: sensor_adas_msgs/Bosch_ELK~%uint8 ANGLE_REQUEST_STATE_INHIBITED = 0~%uint8 ANGLE_REQUEST_STATE_READY = 1~%uint8 ANGLE_REQUEST_STATE_ACTIVE = 2~%uint8 FAULT_STATUS_FLAG_NO_ERROR = 0~%uint8 FAULT_STATUS_FLAG_ERROR = 1~%uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0~%uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1~%uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2~%uint8 ELK_STATUS_OFF = 0~%uint8 ELK_STATUS_PASSIVE = 1~%uint8 ELK_STATUS_ACTIVE = 2~%uint8 ELK_STATUS_FAILURE = 3~%uint32 ELK_status~%uint32 ELK_OT_Fault_Status_Flag~%uint32 ELK_Take_Over_Req~%float32 Motor_Torque_Upper_Limit~%float32 Motor_Torque_Lower_Limit~%uint32 ADAS_AngleReq_State~%float32 ADAS_AngleReq~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorADASResult)))
  "Returns full string definition for message of type 'SensorADASResult"
  (cl:format cl:nil "std_msgs/Header header~%sensor_adas_msgs/AdasMeta meta~%sensor_adas_msgs/TSRResult tsr~%sensor_adas_msgs/ELKResult elk~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_adas_msgs/AdasMeta~%uint64 sensor_timestamp_us~%uint64 pipeline_start_timestamp_us~%uint64 pipeline_finish_timestamp_us~%uint64 seq~%~%================================================================================~%MSG: sensor_adas_msgs/TSRResult~%uint8 BOSCH_TSR_DATA_TYPE = 1~%uint8 available~%sensor_adas_msgs/Bosch_TSR bosch_tsr~%~%================================================================================~%MSG: sensor_adas_msgs/Bosch_TSR~%uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL = 1~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL = 2~%uint8 SPEED_UNIT_INVALID = 0~%uint8 SPEED_UNIT_KMH = 1~%uint8 SPEED_UNIT_MPH = 2~%uint8 SPEED_UNIT_RESERVED = 3~%uint8 SPEED_TYPE_NONE = 0~%uint8 SPEED_TYPE_NORMAL_SPEED = 1~%uint8 SPEED_TYPE_LED_SPEED = 2~%uint8 SPEED_TYPE_NAVI_SPEED = 3~%uint8 RSI_DEFAULT_NO_DISPLAY = 0~%uint8 RSI_NO_ENTRY_SIGN = 1~%uint8 RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN = 2~%uint8 RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN = 3~%uint8 RSI_NO_PARKING_SIGN = 4~%uint8 RSI_NO_OVERTAKING_SIGN = 5~%uint8 RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN = 6~%uint8 RSI_NO_LEFT_TURN_SIGN = 7~%uint8 RSI_NO_RIGHT_TURN_SIGN = 8~%uint8 RSI_U_TURN_PROHIBITED_SIGN = 9~%uint8 RSI_PARKING_SIGN = 10~%uint8 RSI_YIELD_SIGN = 11~%uint8 RSI_NO_HORN_SIGN = 12~%uint8 RSI_CHILDREN_YIELD_SIGN = 13~%uint8 RSI_PEDESTRIANS_CROSSING = 14~%uint8 RSI_ROAD_CONSTRUCTION_SIGN = 15~%uint8 RSI_CAUTION_SLIPPERY_SIGN = 16~%uint8 RSI_CAUTION_DANGER_SIGN = 17~%uint8 RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN = 18~%uint8 RSI_HIGHWAY_STARTING_POINT_SIGN = 19~%uint8 RSI_HIGHWAY_END_POINT_SIGN = 20~%uint8 RSI_SHARP_RIGHT_TURN_SIGN = 21~%uint8 RSI_SHARP_LEFT_TURN_SIGN = 22~%uint8 RSI_LONG_TERM_PARKING_PROHIBITED_SIGN = 23~%uint8 RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN = 24~%uint8 RSI_CAUTION_STEEP_ASCENT_SIGN = 25~%uint8 RSI_CAUTION_STEEP_DESCENT_SIGN = 26~%uint8 TSR_FUNCTION_STATUS_OFF = 0~%uint8 TSR_FUNCTION_STATUS_FUSION_MODE = 1~%uint8 TSR_FUNCTION_STATUS_VISION_MODE = 2~%uint8 TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE = 3~%uint8 TSR_FUNCTION_STATUS_PASSIVE = 4~%uint8 TSR_FUNCTION_STATUS_FAULT = 5~%uint16 TSR_Fusion_Speed~%uint16 TSR_Function_Status~%uint16 SLA_Output_Speed_Limit~%uint16 SLA_Output_Speed_Limit_Status~%uint16 SLA_Output_Speed_Limit_Unit~%uint16 RSI_SignMisc~%float64 reserved1~%float64 reserved2~%~%================================================================================~%MSG: sensor_adas_msgs/ELKResult~%uint8 BOSCH_ELK_DATA_TYPE = 1~%uint8 available~%sensor_adas_msgs/Bosch_ELK bosch_elk~%~%================================================================================~%MSG: sensor_adas_msgs/Bosch_ELK~%uint8 ANGLE_REQUEST_STATE_INHIBITED = 0~%uint8 ANGLE_REQUEST_STATE_READY = 1~%uint8 ANGLE_REQUEST_STATE_ACTIVE = 2~%uint8 FAULT_STATUS_FLAG_NO_ERROR = 0~%uint8 FAULT_STATUS_FLAG_ERROR = 1~%uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0~%uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1~%uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2~%uint8 ELK_STATUS_OFF = 0~%uint8 ELK_STATUS_PASSIVE = 1~%uint8 ELK_STATUS_ACTIVE = 2~%uint8 ELK_STATUS_FAILURE = 3~%uint32 ELK_status~%uint32 ELK_OT_Fault_Status_Flag~%uint32 ELK_Take_Over_Req~%float32 Motor_Torque_Upper_Limit~%float32 Motor_Torque_Lower_Limit~%uint32 ADAS_AngleReq_State~%float32 ADAS_AngleReq~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorADASResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tsr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'elk))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorADASResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorADASResult
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':tsr (tsr msg))
    (cl:cons ':elk (elk msg))
))
