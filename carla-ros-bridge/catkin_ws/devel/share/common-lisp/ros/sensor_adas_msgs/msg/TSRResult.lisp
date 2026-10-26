; Auto-generated. Do not edit!


(cl:in-package sensor_adas_msgs-msg)


;//! \htmlinclude TSRResult.msg.html

(cl:defclass <TSRResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (bosch_tsr
    :reader bosch_tsr
    :initarg :bosch_tsr
    :type sensor_adas_msgs-msg:Bosch_TSR
    :initform (cl:make-instance 'sensor_adas_msgs-msg:Bosch_TSR)))
)

(cl:defclass TSRResult (<TSRResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TSRResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TSRResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_adas_msgs-msg:<TSRResult> is deprecated: use sensor_adas_msgs-msg:TSRResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TSRResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:available-val is deprecated.  Use sensor_adas_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'bosch_tsr-val :lambda-list '(m))
(cl:defmethod bosch_tsr-val ((m <TSRResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:bosch_tsr-val is deprecated.  Use sensor_adas_msgs-msg:bosch_tsr instead.")
  (bosch_tsr m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TSRResult>)))
    "Constants for message type '<TSRResult>"
  '((:BOSCH_TSR_DATA_TYPE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TSRResult)))
    "Constants for message type 'TSRResult"
  '((:BOSCH_TSR_DATA_TYPE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TSRResult>) ostream)
  "Serializes a message object of type '<TSRResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bosch_tsr) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TSRResult>) istream)
  "Deserializes a message object of type '<TSRResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bosch_tsr) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TSRResult>)))
  "Returns string type for a message object of type '<TSRResult>"
  "sensor_adas_msgs/TSRResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TSRResult)))
  "Returns string type for a message object of type 'TSRResult"
  "sensor_adas_msgs/TSRResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TSRResult>)))
  "Returns md5sum for a message object of type '<TSRResult>"
  "7b3e154cc80f2796114cd089b43ffd4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TSRResult)))
  "Returns md5sum for a message object of type 'TSRResult"
  "7b3e154cc80f2796114cd089b43ffd4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TSRResult>)))
  "Returns full string definition for message of type '<TSRResult>"
  (cl:format cl:nil "uint8 BOSCH_TSR_DATA_TYPE = 1~%uint8 available~%sensor_adas_msgs/Bosch_TSR bosch_tsr~%~%================================================================================~%MSG: sensor_adas_msgs/Bosch_TSR~%uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL = 1~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL = 2~%uint8 SPEED_UNIT_INVALID = 0~%uint8 SPEED_UNIT_KMH = 1~%uint8 SPEED_UNIT_MPH = 2~%uint8 SPEED_UNIT_RESERVED = 3~%uint8 SPEED_TYPE_NONE = 0~%uint8 SPEED_TYPE_NORMAL_SPEED = 1~%uint8 SPEED_TYPE_LED_SPEED = 2~%uint8 SPEED_TYPE_NAVI_SPEED = 3~%uint8 RSI_DEFAULT_NO_DISPLAY = 0~%uint8 RSI_NO_ENTRY_SIGN = 1~%uint8 RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN = 2~%uint8 RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN = 3~%uint8 RSI_NO_PARKING_SIGN = 4~%uint8 RSI_NO_OVERTAKING_SIGN = 5~%uint8 RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN = 6~%uint8 RSI_NO_LEFT_TURN_SIGN = 7~%uint8 RSI_NO_RIGHT_TURN_SIGN = 8~%uint8 RSI_U_TURN_PROHIBITED_SIGN = 9~%uint8 RSI_PARKING_SIGN = 10~%uint8 RSI_YIELD_SIGN = 11~%uint8 RSI_NO_HORN_SIGN = 12~%uint8 RSI_CHILDREN_YIELD_SIGN = 13~%uint8 RSI_PEDESTRIANS_CROSSING = 14~%uint8 RSI_ROAD_CONSTRUCTION_SIGN = 15~%uint8 RSI_CAUTION_SLIPPERY_SIGN = 16~%uint8 RSI_CAUTION_DANGER_SIGN = 17~%uint8 RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN = 18~%uint8 RSI_HIGHWAY_STARTING_POINT_SIGN = 19~%uint8 RSI_HIGHWAY_END_POINT_SIGN = 20~%uint8 RSI_SHARP_RIGHT_TURN_SIGN = 21~%uint8 RSI_SHARP_LEFT_TURN_SIGN = 22~%uint8 RSI_LONG_TERM_PARKING_PROHIBITED_SIGN = 23~%uint8 RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN = 24~%uint8 RSI_CAUTION_STEEP_ASCENT_SIGN = 25~%uint8 RSI_CAUTION_STEEP_DESCENT_SIGN = 26~%uint8 TSR_FUNCTION_STATUS_OFF = 0~%uint8 TSR_FUNCTION_STATUS_FUSION_MODE = 1~%uint8 TSR_FUNCTION_STATUS_VISION_MODE = 2~%uint8 TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE = 3~%uint8 TSR_FUNCTION_STATUS_PASSIVE = 4~%uint8 TSR_FUNCTION_STATUS_FAULT = 5~%uint16 TSR_Fusion_Speed~%uint16 TSR_Function_Status~%uint16 SLA_Output_Speed_Limit~%uint16 SLA_Output_Speed_Limit_Status~%uint16 SLA_Output_Speed_Limit_Unit~%uint16 RSI_SignMisc~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TSRResult)))
  "Returns full string definition for message of type 'TSRResult"
  (cl:format cl:nil "uint8 BOSCH_TSR_DATA_TYPE = 1~%uint8 available~%sensor_adas_msgs/Bosch_TSR bosch_tsr~%~%================================================================================~%MSG: sensor_adas_msgs/Bosch_TSR~%uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL = 1~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL = 2~%uint8 SPEED_UNIT_INVALID = 0~%uint8 SPEED_UNIT_KMH = 1~%uint8 SPEED_UNIT_MPH = 2~%uint8 SPEED_UNIT_RESERVED = 3~%uint8 SPEED_TYPE_NONE = 0~%uint8 SPEED_TYPE_NORMAL_SPEED = 1~%uint8 SPEED_TYPE_LED_SPEED = 2~%uint8 SPEED_TYPE_NAVI_SPEED = 3~%uint8 RSI_DEFAULT_NO_DISPLAY = 0~%uint8 RSI_NO_ENTRY_SIGN = 1~%uint8 RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN = 2~%uint8 RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN = 3~%uint8 RSI_NO_PARKING_SIGN = 4~%uint8 RSI_NO_OVERTAKING_SIGN = 5~%uint8 RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN = 6~%uint8 RSI_NO_LEFT_TURN_SIGN = 7~%uint8 RSI_NO_RIGHT_TURN_SIGN = 8~%uint8 RSI_U_TURN_PROHIBITED_SIGN = 9~%uint8 RSI_PARKING_SIGN = 10~%uint8 RSI_YIELD_SIGN = 11~%uint8 RSI_NO_HORN_SIGN = 12~%uint8 RSI_CHILDREN_YIELD_SIGN = 13~%uint8 RSI_PEDESTRIANS_CROSSING = 14~%uint8 RSI_ROAD_CONSTRUCTION_SIGN = 15~%uint8 RSI_CAUTION_SLIPPERY_SIGN = 16~%uint8 RSI_CAUTION_DANGER_SIGN = 17~%uint8 RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN = 18~%uint8 RSI_HIGHWAY_STARTING_POINT_SIGN = 19~%uint8 RSI_HIGHWAY_END_POINT_SIGN = 20~%uint8 RSI_SHARP_RIGHT_TURN_SIGN = 21~%uint8 RSI_SHARP_LEFT_TURN_SIGN = 22~%uint8 RSI_LONG_TERM_PARKING_PROHIBITED_SIGN = 23~%uint8 RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN = 24~%uint8 RSI_CAUTION_STEEP_ASCENT_SIGN = 25~%uint8 RSI_CAUTION_STEEP_DESCENT_SIGN = 26~%uint8 TSR_FUNCTION_STATUS_OFF = 0~%uint8 TSR_FUNCTION_STATUS_FUSION_MODE = 1~%uint8 TSR_FUNCTION_STATUS_VISION_MODE = 2~%uint8 TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE = 3~%uint8 TSR_FUNCTION_STATUS_PASSIVE = 4~%uint8 TSR_FUNCTION_STATUS_FAULT = 5~%uint16 TSR_Fusion_Speed~%uint16 TSR_Function_Status~%uint16 SLA_Output_Speed_Limit~%uint16 SLA_Output_Speed_Limit_Status~%uint16 SLA_Output_Speed_Limit_Unit~%uint16 RSI_SignMisc~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TSRResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bosch_tsr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TSRResult>))
  "Converts a ROS message object to a list"
  (cl:list 'TSRResult
    (cl:cons ':available (available msg))
    (cl:cons ':bosch_tsr (bosch_tsr msg))
))
