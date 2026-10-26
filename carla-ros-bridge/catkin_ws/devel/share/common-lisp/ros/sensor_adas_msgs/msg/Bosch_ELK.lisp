; Auto-generated. Do not edit!


(cl:in-package sensor_adas_msgs-msg)


;//! \htmlinclude Bosch_ELK.msg.html

(cl:defclass <Bosch_ELK> (roslisp-msg-protocol:ros-message)
  ((ELK_status
    :reader ELK_status
    :initarg :ELK_status
    :type cl:integer
    :initform 0)
   (ELK_OT_Fault_Status_Flag
    :reader ELK_OT_Fault_Status_Flag
    :initarg :ELK_OT_Fault_Status_Flag
    :type cl:integer
    :initform 0)
   (ELK_Take_Over_Req
    :reader ELK_Take_Over_Req
    :initarg :ELK_Take_Over_Req
    :type cl:integer
    :initform 0)
   (Motor_Torque_Upper_Limit
    :reader Motor_Torque_Upper_Limit
    :initarg :Motor_Torque_Upper_Limit
    :type cl:float
    :initform 0.0)
   (Motor_Torque_Lower_Limit
    :reader Motor_Torque_Lower_Limit
    :initarg :Motor_Torque_Lower_Limit
    :type cl:float
    :initform 0.0)
   (ADAS_AngleReq_State
    :reader ADAS_AngleReq_State
    :initarg :ADAS_AngleReq_State
    :type cl:integer
    :initform 0)
   (ADAS_AngleReq
    :reader ADAS_AngleReq
    :initarg :ADAS_AngleReq
    :type cl:float
    :initform 0.0)
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

(cl:defclass Bosch_ELK (<Bosch_ELK>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bosch_ELK>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bosch_ELK)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_adas_msgs-msg:<Bosch_ELK> is deprecated: use sensor_adas_msgs-msg:Bosch_ELK instead.")))

(cl:ensure-generic-function 'ELK_status-val :lambda-list '(m))
(cl:defmethod ELK_status-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:ELK_status-val is deprecated.  Use sensor_adas_msgs-msg:ELK_status instead.")
  (ELK_status m))

(cl:ensure-generic-function 'ELK_OT_Fault_Status_Flag-val :lambda-list '(m))
(cl:defmethod ELK_OT_Fault_Status_Flag-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:ELK_OT_Fault_Status_Flag-val is deprecated.  Use sensor_adas_msgs-msg:ELK_OT_Fault_Status_Flag instead.")
  (ELK_OT_Fault_Status_Flag m))

(cl:ensure-generic-function 'ELK_Take_Over_Req-val :lambda-list '(m))
(cl:defmethod ELK_Take_Over_Req-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:ELK_Take_Over_Req-val is deprecated.  Use sensor_adas_msgs-msg:ELK_Take_Over_Req instead.")
  (ELK_Take_Over_Req m))

(cl:ensure-generic-function 'Motor_Torque_Upper_Limit-val :lambda-list '(m))
(cl:defmethod Motor_Torque_Upper_Limit-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:Motor_Torque_Upper_Limit-val is deprecated.  Use sensor_adas_msgs-msg:Motor_Torque_Upper_Limit instead.")
  (Motor_Torque_Upper_Limit m))

(cl:ensure-generic-function 'Motor_Torque_Lower_Limit-val :lambda-list '(m))
(cl:defmethod Motor_Torque_Lower_Limit-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:Motor_Torque_Lower_Limit-val is deprecated.  Use sensor_adas_msgs-msg:Motor_Torque_Lower_Limit instead.")
  (Motor_Torque_Lower_Limit m))

(cl:ensure-generic-function 'ADAS_AngleReq_State-val :lambda-list '(m))
(cl:defmethod ADAS_AngleReq_State-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:ADAS_AngleReq_State-val is deprecated.  Use sensor_adas_msgs-msg:ADAS_AngleReq_State instead.")
  (ADAS_AngleReq_State m))

(cl:ensure-generic-function 'ADAS_AngleReq-val :lambda-list '(m))
(cl:defmethod ADAS_AngleReq-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:ADAS_AngleReq-val is deprecated.  Use sensor_adas_msgs-msg:ADAS_AngleReq instead.")
  (ADAS_AngleReq m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:reserved1-val is deprecated.  Use sensor_adas_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <Bosch_ELK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:reserved2-val is deprecated.  Use sensor_adas_msgs-msg:reserved2 instead.")
  (reserved2 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Bosch_ELK>)))
    "Constants for message type '<Bosch_ELK>"
  '((:ANGLE_REQUEST_STATE_INHIBITED . 0)
    (:ANGLE_REQUEST_STATE_READY . 1)
    (:ANGLE_REQUEST_STATE_ACTIVE . 2)
    (:FAULT_STATUS_FLAG_NO_ERROR . 0)
    (:FAULT_STATUS_FLAG_ERROR . 1)
    (:ELK_TAKE_OVER_REQ_INACTIVE . 0)
    (:ELK_TAKE_OVER_REQ_WARN_RE . 1)
    (:ELK_TAKE_OVER_REQ_WARN_SL . 2)
    (:ELK_STATUS_OFF . 0)
    (:ELK_STATUS_PASSIVE . 1)
    (:ELK_STATUS_ACTIVE . 2)
    (:ELK_STATUS_FAILURE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Bosch_ELK)))
    "Constants for message type 'Bosch_ELK"
  '((:ANGLE_REQUEST_STATE_INHIBITED . 0)
    (:ANGLE_REQUEST_STATE_READY . 1)
    (:ANGLE_REQUEST_STATE_ACTIVE . 2)
    (:FAULT_STATUS_FLAG_NO_ERROR . 0)
    (:FAULT_STATUS_FLAG_ERROR . 1)
    (:ELK_TAKE_OVER_REQ_INACTIVE . 0)
    (:ELK_TAKE_OVER_REQ_WARN_RE . 1)
    (:ELK_TAKE_OVER_REQ_WARN_SL . 2)
    (:ELK_STATUS_OFF . 0)
    (:ELK_STATUS_PASSIVE . 1)
    (:ELK_STATUS_ACTIVE . 2)
    (:ELK_STATUS_FAILURE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bosch_ELK>) ostream)
  "Serializes a message object of type '<Bosch_ELK>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ELK_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ELK_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ELK_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ELK_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ELK_OT_Fault_Status_Flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ELK_OT_Fault_Status_Flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ELK_OT_Fault_Status_Flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ELK_OT_Fault_Status_Flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ELK_Take_Over_Req)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ELK_Take_Over_Req)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ELK_Take_Over_Req)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ELK_Take_Over_Req)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_Torque_Upper_Limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Motor_Torque_Lower_Limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADAS_AngleReq_State)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ADAS_AngleReq_State)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ADAS_AngleReq_State)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ADAS_AngleReq_State)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ADAS_AngleReq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bosch_ELK>) istream)
  "Deserializes a message object of type '<Bosch_ELK>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ELK_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ELK_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ELK_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ELK_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ELK_OT_Fault_Status_Flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ELK_OT_Fault_Status_Flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ELK_OT_Fault_Status_Flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ELK_OT_Fault_Status_Flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ELK_Take_Over_Req)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ELK_Take_Over_Req)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ELK_Take_Over_Req)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ELK_Take_Over_Req)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_Torque_Upper_Limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Motor_Torque_Lower_Limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ADAS_AngleReq_State)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ADAS_AngleReq_State)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ADAS_AngleReq_State)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ADAS_AngleReq_State)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ADAS_AngleReq) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bosch_ELK>)))
  "Returns string type for a message object of type '<Bosch_ELK>"
  "sensor_adas_msgs/Bosch_ELK")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bosch_ELK)))
  "Returns string type for a message object of type 'Bosch_ELK"
  "sensor_adas_msgs/Bosch_ELK")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bosch_ELK>)))
  "Returns md5sum for a message object of type '<Bosch_ELK>"
  "1e3e678302cc69d0e8cfe096a6587e61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bosch_ELK)))
  "Returns md5sum for a message object of type 'Bosch_ELK"
  "1e3e678302cc69d0e8cfe096a6587e61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bosch_ELK>)))
  "Returns full string definition for message of type '<Bosch_ELK>"
  (cl:format cl:nil "uint8 ANGLE_REQUEST_STATE_INHIBITED = 0~%uint8 ANGLE_REQUEST_STATE_READY = 1~%uint8 ANGLE_REQUEST_STATE_ACTIVE = 2~%uint8 FAULT_STATUS_FLAG_NO_ERROR = 0~%uint8 FAULT_STATUS_FLAG_ERROR = 1~%uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0~%uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1~%uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2~%uint8 ELK_STATUS_OFF = 0~%uint8 ELK_STATUS_PASSIVE = 1~%uint8 ELK_STATUS_ACTIVE = 2~%uint8 ELK_STATUS_FAILURE = 3~%uint32 ELK_status~%uint32 ELK_OT_Fault_Status_Flag~%uint32 ELK_Take_Over_Req~%float32 Motor_Torque_Upper_Limit~%float32 Motor_Torque_Lower_Limit~%uint32 ADAS_AngleReq_State~%float32 ADAS_AngleReq~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bosch_ELK)))
  "Returns full string definition for message of type 'Bosch_ELK"
  (cl:format cl:nil "uint8 ANGLE_REQUEST_STATE_INHIBITED = 0~%uint8 ANGLE_REQUEST_STATE_READY = 1~%uint8 ANGLE_REQUEST_STATE_ACTIVE = 2~%uint8 FAULT_STATUS_FLAG_NO_ERROR = 0~%uint8 FAULT_STATUS_FLAG_ERROR = 1~%uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0~%uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1~%uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2~%uint8 ELK_STATUS_OFF = 0~%uint8 ELK_STATUS_PASSIVE = 1~%uint8 ELK_STATUS_ACTIVE = 2~%uint8 ELK_STATUS_FAILURE = 3~%uint32 ELK_status~%uint32 ELK_OT_Fault_Status_Flag~%uint32 ELK_Take_Over_Req~%float32 Motor_Torque_Upper_Limit~%float32 Motor_Torque_Lower_Limit~%uint32 ADAS_AngleReq_State~%float32 ADAS_AngleReq~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bosch_ELK>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bosch_ELK>))
  "Converts a ROS message object to a list"
  (cl:list 'Bosch_ELK
    (cl:cons ':ELK_status (ELK_status msg))
    (cl:cons ':ELK_OT_Fault_Status_Flag (ELK_OT_Fault_Status_Flag msg))
    (cl:cons ':ELK_Take_Over_Req (ELK_Take_Over_Req msg))
    (cl:cons ':Motor_Torque_Upper_Limit (Motor_Torque_Upper_Limit msg))
    (cl:cons ':Motor_Torque_Lower_Limit (Motor_Torque_Lower_Limit msg))
    (cl:cons ':ADAS_AngleReq_State (ADAS_AngleReq_State msg))
    (cl:cons ':ADAS_AngleReq (ADAS_AngleReq msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':reserved2 (reserved2 msg))
))
