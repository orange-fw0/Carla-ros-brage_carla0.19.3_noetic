; Auto-generated. Do not edit!


(cl:in-package sensor_adas_msgs-msg)


;//! \htmlinclude Bosch_TSR.msg.html

(cl:defclass <Bosch_TSR> (roslisp-msg-protocol:ros-message)
  ((TSR_Fusion_Speed
    :reader TSR_Fusion_Speed
    :initarg :TSR_Fusion_Speed
    :type cl:fixnum
    :initform 0)
   (TSR_Function_Status
    :reader TSR_Function_Status
    :initarg :TSR_Function_Status
    :type cl:fixnum
    :initform 0)
   (SLA_Output_Speed_Limit
    :reader SLA_Output_Speed_Limit
    :initarg :SLA_Output_Speed_Limit
    :type cl:fixnum
    :initform 0)
   (SLA_Output_Speed_Limit_Status
    :reader SLA_Output_Speed_Limit_Status
    :initarg :SLA_Output_Speed_Limit_Status
    :type cl:fixnum
    :initform 0)
   (SLA_Output_Speed_Limit_Unit
    :reader SLA_Output_Speed_Limit_Unit
    :initarg :SLA_Output_Speed_Limit_Unit
    :type cl:fixnum
    :initform 0)
   (RSI_SignMisc
    :reader RSI_SignMisc
    :initarg :RSI_SignMisc
    :type cl:fixnum
    :initform 0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:float
    :initform 0.0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:float
    :initform 0.0))
)

(cl:defclass Bosch_TSR (<Bosch_TSR>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bosch_TSR>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bosch_TSR)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_adas_msgs-msg:<Bosch_TSR> is deprecated: use sensor_adas_msgs-msg:Bosch_TSR instead.")))

(cl:ensure-generic-function 'TSR_Fusion_Speed-val :lambda-list '(m))
(cl:defmethod TSR_Fusion_Speed-val ((m <Bosch_TSR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:TSR_Fusion_Speed-val is deprecated.  Use sensor_adas_msgs-msg:TSR_Fusion_Speed instead.")
  (TSR_Fusion_Speed m))

(cl:ensure-generic-function 'TSR_Function_Status-val :lambda-list '(m))
(cl:defmethod TSR_Function_Status-val ((m <Bosch_TSR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:TSR_Function_Status-val is deprecated.  Use sensor_adas_msgs-msg:TSR_Function_Status instead.")
  (TSR_Function_Status m))

(cl:ensure-generic-function 'SLA_Output_Speed_Limit-val :lambda-list '(m))
(cl:defmethod SLA_Output_Speed_Limit-val ((m <Bosch_TSR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:SLA_Output_Speed_Limit-val is deprecated.  Use sensor_adas_msgs-msg:SLA_Output_Speed_Limit instead.")
  (SLA_Output_Speed_Limit m))

(cl:ensure-generic-function 'SLA_Output_Speed_Limit_Status-val :lambda-list '(m))
(cl:defmethod SLA_Output_Speed_Limit_Status-val ((m <Bosch_TSR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:SLA_Output_Speed_Limit_Status-val is deprecated.  Use sensor_adas_msgs-msg:SLA_Output_Speed_Limit_Status instead.")
  (SLA_Output_Speed_Limit_Status m))

(cl:ensure-generic-function 'SLA_Output_Speed_Limit_Unit-val :lambda-list '(m))
(cl:defmethod SLA_Output_Speed_Limit_Unit-val ((m <Bosch_TSR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:SLA_Output_Speed_Limit_Unit-val is deprecated.  Use sensor_adas_msgs-msg:SLA_Output_Speed_Limit_Unit instead.")
  (SLA_Output_Speed_Limit_Unit m))

(cl:ensure-generic-function 'RSI_SignMisc-val :lambda-list '(m))
(cl:defmethod RSI_SignMisc-val ((m <Bosch_TSR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:RSI_SignMisc-val is deprecated.  Use sensor_adas_msgs-msg:RSI_SignMisc instead.")
  (RSI_SignMisc m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <Bosch_TSR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:reserved1-val is deprecated.  Use sensor_adas_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <Bosch_TSR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:reserved2-val is deprecated.  Use sensor_adas_msgs-msg:reserved2 instead.")
  (reserved2 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Bosch_TSR>)))
    "Constants for message type '<Bosch_TSR>"
  '((:SLA_OUTPUT_SPEED_LIMIT_NODISPLAY . 0)
    (:SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL . 1)
    (:SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL . 2)
    (:SPEED_UNIT_INVALID . 0)
    (:SPEED_UNIT_KMH . 1)
    (:SPEED_UNIT_MPH . 2)
    (:SPEED_UNIT_RESERVED . 3)
    (:SPEED_TYPE_NONE . 0)
    (:SPEED_TYPE_NORMAL_SPEED . 1)
    (:SPEED_TYPE_LED_SPEED . 2)
    (:SPEED_TYPE_NAVI_SPEED . 3)
    (:RSI_DEFAULT_NO_DISPLAY . 0)
    (:RSI_NO_ENTRY_SIGN . 1)
    (:RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN . 2)
    (:RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN . 3)
    (:RSI_NO_PARKING_SIGN . 4)
    (:RSI_NO_OVERTAKING_SIGN . 5)
    (:RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN . 6)
    (:RSI_NO_LEFT_TURN_SIGN . 7)
    (:RSI_NO_RIGHT_TURN_SIGN . 8)
    (:RSI_U_TURN_PROHIBITED_SIGN . 9)
    (:RSI_PARKING_SIGN . 10)
    (:RSI_YIELD_SIGN . 11)
    (:RSI_NO_HORN_SIGN . 12)
    (:RSI_CHILDREN_YIELD_SIGN . 13)
    (:RSI_PEDESTRIANS_CROSSING . 14)
    (:RSI_ROAD_CONSTRUCTION_SIGN . 15)
    (:RSI_CAUTION_SLIPPERY_SIGN . 16)
    (:RSI_CAUTION_DANGER_SIGN . 17)
    (:RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN . 18)
    (:RSI_HIGHWAY_STARTING_POINT_SIGN . 19)
    (:RSI_HIGHWAY_END_POINT_SIGN . 20)
    (:RSI_SHARP_RIGHT_TURN_SIGN . 21)
    (:RSI_SHARP_LEFT_TURN_SIGN . 22)
    (:RSI_LONG_TERM_PARKING_PROHIBITED_SIGN . 23)
    (:RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN . 24)
    (:RSI_CAUTION_STEEP_ASCENT_SIGN . 25)
    (:RSI_CAUTION_STEEP_DESCENT_SIGN . 26)
    (:TSR_FUNCTION_STATUS_OFF . 0)
    (:TSR_FUNCTION_STATUS_FUSION_MODE . 1)
    (:TSR_FUNCTION_STATUS_VISION_MODE . 2)
    (:TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE . 3)
    (:TSR_FUNCTION_STATUS_PASSIVE . 4)
    (:TSR_FUNCTION_STATUS_FAULT . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Bosch_TSR)))
    "Constants for message type 'Bosch_TSR"
  '((:SLA_OUTPUT_SPEED_LIMIT_NODISPLAY . 0)
    (:SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL . 1)
    (:SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL . 2)
    (:SPEED_UNIT_INVALID . 0)
    (:SPEED_UNIT_KMH . 1)
    (:SPEED_UNIT_MPH . 2)
    (:SPEED_UNIT_RESERVED . 3)
    (:SPEED_TYPE_NONE . 0)
    (:SPEED_TYPE_NORMAL_SPEED . 1)
    (:SPEED_TYPE_LED_SPEED . 2)
    (:SPEED_TYPE_NAVI_SPEED . 3)
    (:RSI_DEFAULT_NO_DISPLAY . 0)
    (:RSI_NO_ENTRY_SIGN . 1)
    (:RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN . 2)
    (:RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN . 3)
    (:RSI_NO_PARKING_SIGN . 4)
    (:RSI_NO_OVERTAKING_SIGN . 5)
    (:RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN . 6)
    (:RSI_NO_LEFT_TURN_SIGN . 7)
    (:RSI_NO_RIGHT_TURN_SIGN . 8)
    (:RSI_U_TURN_PROHIBITED_SIGN . 9)
    (:RSI_PARKING_SIGN . 10)
    (:RSI_YIELD_SIGN . 11)
    (:RSI_NO_HORN_SIGN . 12)
    (:RSI_CHILDREN_YIELD_SIGN . 13)
    (:RSI_PEDESTRIANS_CROSSING . 14)
    (:RSI_ROAD_CONSTRUCTION_SIGN . 15)
    (:RSI_CAUTION_SLIPPERY_SIGN . 16)
    (:RSI_CAUTION_DANGER_SIGN . 17)
    (:RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN . 18)
    (:RSI_HIGHWAY_STARTING_POINT_SIGN . 19)
    (:RSI_HIGHWAY_END_POINT_SIGN . 20)
    (:RSI_SHARP_RIGHT_TURN_SIGN . 21)
    (:RSI_SHARP_LEFT_TURN_SIGN . 22)
    (:RSI_LONG_TERM_PARKING_PROHIBITED_SIGN . 23)
    (:RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN . 24)
    (:RSI_CAUTION_STEEP_ASCENT_SIGN . 25)
    (:RSI_CAUTION_STEEP_DESCENT_SIGN . 26)
    (:TSR_FUNCTION_STATUS_OFF . 0)
    (:TSR_FUNCTION_STATUS_FUSION_MODE . 1)
    (:TSR_FUNCTION_STATUS_VISION_MODE . 2)
    (:TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE . 3)
    (:TSR_FUNCTION_STATUS_PASSIVE . 4)
    (:TSR_FUNCTION_STATUS_FAULT . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bosch_TSR>) ostream)
  "Serializes a message object of type '<Bosch_TSR>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TSR_Fusion_Speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TSR_Fusion_Speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TSR_Function_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TSR_Function_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SLA_Output_Speed_Limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SLA_Output_Speed_Limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SLA_Output_Speed_Limit_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SLA_Output_Speed_Limit_Status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SLA_Output_Speed_Limit_Unit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SLA_Output_Speed_Limit_Unit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RSI_SignMisc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RSI_SignMisc)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'reserved2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bosch_TSR>) istream)
  "Deserializes a message object of type '<Bosch_TSR>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TSR_Fusion_Speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TSR_Fusion_Speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TSR_Function_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TSR_Function_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SLA_Output_Speed_Limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SLA_Output_Speed_Limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SLA_Output_Speed_Limit_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SLA_Output_Speed_Limit_Status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SLA_Output_Speed_Limit_Unit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SLA_Output_Speed_Limit_Unit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RSI_SignMisc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RSI_SignMisc)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bosch_TSR>)))
  "Returns string type for a message object of type '<Bosch_TSR>"
  "sensor_adas_msgs/Bosch_TSR")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bosch_TSR)))
  "Returns string type for a message object of type 'Bosch_TSR"
  "sensor_adas_msgs/Bosch_TSR")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bosch_TSR>)))
  "Returns md5sum for a message object of type '<Bosch_TSR>"
  "81a303defd0e65a4559f0a0455c731e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bosch_TSR)))
  "Returns md5sum for a message object of type 'Bosch_TSR"
  "81a303defd0e65a4559f0a0455c731e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bosch_TSR>)))
  "Returns full string definition for message of type '<Bosch_TSR>"
  (cl:format cl:nil "uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL = 1~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL = 2~%uint8 SPEED_UNIT_INVALID = 0~%uint8 SPEED_UNIT_KMH = 1~%uint8 SPEED_UNIT_MPH = 2~%uint8 SPEED_UNIT_RESERVED = 3~%uint8 SPEED_TYPE_NONE = 0~%uint8 SPEED_TYPE_NORMAL_SPEED = 1~%uint8 SPEED_TYPE_LED_SPEED = 2~%uint8 SPEED_TYPE_NAVI_SPEED = 3~%uint8 RSI_DEFAULT_NO_DISPLAY = 0~%uint8 RSI_NO_ENTRY_SIGN = 1~%uint8 RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN = 2~%uint8 RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN = 3~%uint8 RSI_NO_PARKING_SIGN = 4~%uint8 RSI_NO_OVERTAKING_SIGN = 5~%uint8 RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN = 6~%uint8 RSI_NO_LEFT_TURN_SIGN = 7~%uint8 RSI_NO_RIGHT_TURN_SIGN = 8~%uint8 RSI_U_TURN_PROHIBITED_SIGN = 9~%uint8 RSI_PARKING_SIGN = 10~%uint8 RSI_YIELD_SIGN = 11~%uint8 RSI_NO_HORN_SIGN = 12~%uint8 RSI_CHILDREN_YIELD_SIGN = 13~%uint8 RSI_PEDESTRIANS_CROSSING = 14~%uint8 RSI_ROAD_CONSTRUCTION_SIGN = 15~%uint8 RSI_CAUTION_SLIPPERY_SIGN = 16~%uint8 RSI_CAUTION_DANGER_SIGN = 17~%uint8 RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN = 18~%uint8 RSI_HIGHWAY_STARTING_POINT_SIGN = 19~%uint8 RSI_HIGHWAY_END_POINT_SIGN = 20~%uint8 RSI_SHARP_RIGHT_TURN_SIGN = 21~%uint8 RSI_SHARP_LEFT_TURN_SIGN = 22~%uint8 RSI_LONG_TERM_PARKING_PROHIBITED_SIGN = 23~%uint8 RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN = 24~%uint8 RSI_CAUTION_STEEP_ASCENT_SIGN = 25~%uint8 RSI_CAUTION_STEEP_DESCENT_SIGN = 26~%uint8 TSR_FUNCTION_STATUS_OFF = 0~%uint8 TSR_FUNCTION_STATUS_FUSION_MODE = 1~%uint8 TSR_FUNCTION_STATUS_VISION_MODE = 2~%uint8 TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE = 3~%uint8 TSR_FUNCTION_STATUS_PASSIVE = 4~%uint8 TSR_FUNCTION_STATUS_FAULT = 5~%uint16 TSR_Fusion_Speed~%uint16 TSR_Function_Status~%uint16 SLA_Output_Speed_Limit~%uint16 SLA_Output_Speed_Limit_Status~%uint16 SLA_Output_Speed_Limit_Unit~%uint16 RSI_SignMisc~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bosch_TSR)))
  "Returns full string definition for message of type 'Bosch_TSR"
  (cl:format cl:nil "uint8 SLA_OUTPUT_SPEED_LIMIT_NODISPLAY = 0~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLCANCEL = 1~%uint8 SLA_OUTPUT_SPEED_LIMIT_SPLNORMAL = 2~%uint8 SPEED_UNIT_INVALID = 0~%uint8 SPEED_UNIT_KMH = 1~%uint8 SPEED_UNIT_MPH = 2~%uint8 SPEED_UNIT_RESERVED = 3~%uint8 SPEED_TYPE_NONE = 0~%uint8 SPEED_TYPE_NORMAL_SPEED = 1~%uint8 SPEED_TYPE_LED_SPEED = 2~%uint8 SPEED_TYPE_NAVI_SPEED = 3~%uint8 RSI_DEFAULT_NO_DISPLAY = 0~%uint8 RSI_NO_ENTRY_SIGN = 1~%uint8 RSI_NO_MOTOR_VEHICLES_ARE_ALLOWED_TO_ENTER_SIGN = 2~%uint8 RSI_TEMPORARY_AND_LONG_TERM_PARKING_PROHIBITED_SIGN = 3~%uint8 RSI_NO_PARKING_SIGN = 4~%uint8 RSI_NO_OVERTAKING_SIGN = 5~%uint8 RSI_CANCEL_OVERTAKING_IS_FORBIDDEN_SIGN = 6~%uint8 RSI_NO_LEFT_TURN_SIGN = 7~%uint8 RSI_NO_RIGHT_TURN_SIGN = 8~%uint8 RSI_U_TURN_PROHIBITED_SIGN = 9~%uint8 RSI_PARKING_SIGN = 10~%uint8 RSI_YIELD_SIGN = 11~%uint8 RSI_NO_HORN_SIGN = 12~%uint8 RSI_CHILDREN_YIELD_SIGN = 13~%uint8 RSI_PEDESTRIANS_CROSSING = 14~%uint8 RSI_ROAD_CONSTRUCTION_SIGN = 15~%uint8 RSI_CAUTION_SLIPPERY_SIGN = 16~%uint8 RSI_CAUTION_DANGER_SIGN = 17~%uint8 RSI_VEHICLE_ENTER_ON_THE_RIGHT_SIGN = 18~%uint8 RSI_HIGHWAY_STARTING_POINT_SIGN = 19~%uint8 RSI_HIGHWAY_END_POINT_SIGN = 20~%uint8 RSI_SHARP_RIGHT_TURN_SIGN = 21~%uint8 RSI_SHARP_LEFT_TURN_SIGN = 22~%uint8 RSI_LONG_TERM_PARKING_PROHIBITED_SIGN = 23~%uint8 RSI_VEHICLE_ENTER_ON_THE_LEFT_SIGN = 24~%uint8 RSI_CAUTION_STEEP_ASCENT_SIGN = 25~%uint8 RSI_CAUTION_STEEP_DESCENT_SIGN = 26~%uint8 TSR_FUNCTION_STATUS_OFF = 0~%uint8 TSR_FUNCTION_STATUS_FUSION_MODE = 1~%uint8 TSR_FUNCTION_STATUS_VISION_MODE = 2~%uint8 TSR_FUNCTION_STATUS_NAVIGATION_ONLY_MODE = 3~%uint8 TSR_FUNCTION_STATUS_PASSIVE = 4~%uint8 TSR_FUNCTION_STATUS_FAULT = 5~%uint16 TSR_Fusion_Speed~%uint16 TSR_Function_Status~%uint16 SLA_Output_Speed_Limit~%uint16 SLA_Output_Speed_Limit_Status~%uint16 SLA_Output_Speed_Limit_Unit~%uint16 RSI_SignMisc~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bosch_TSR>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bosch_TSR>))
  "Converts a ROS message object to a list"
  (cl:list 'Bosch_TSR
    (cl:cons ':TSR_Fusion_Speed (TSR_Fusion_Speed msg))
    (cl:cons ':TSR_Function_Status (TSR_Function_Status msg))
    (cl:cons ':SLA_Output_Speed_Limit (SLA_Output_Speed_Limit msg))
    (cl:cons ':SLA_Output_Speed_Limit_Status (SLA_Output_Speed_Limit_Status msg))
    (cl:cons ':SLA_Output_Speed_Limit_Unit (SLA_Output_Speed_Limit_Unit msg))
    (cl:cons ':RSI_SignMisc (RSI_SignMisc msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':reserved2 (reserved2 msg))
))
