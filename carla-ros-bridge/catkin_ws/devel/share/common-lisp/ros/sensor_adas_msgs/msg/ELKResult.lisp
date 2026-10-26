; Auto-generated. Do not edit!


(cl:in-package sensor_adas_msgs-msg)


;//! \htmlinclude ELKResult.msg.html

(cl:defclass <ELKResult> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (bosch_elk
    :reader bosch_elk
    :initarg :bosch_elk
    :type sensor_adas_msgs-msg:Bosch_ELK
    :initform (cl:make-instance 'sensor_adas_msgs-msg:Bosch_ELK)))
)

(cl:defclass ELKResult (<ELKResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ELKResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ELKResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name sensor_adas_msgs-msg:<ELKResult> is deprecated: use sensor_adas_msgs-msg:ELKResult instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ELKResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:available-val is deprecated.  Use sensor_adas_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'bosch_elk-val :lambda-list '(m))
(cl:defmethod bosch_elk-val ((m <ELKResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader sensor_adas_msgs-msg:bosch_elk-val is deprecated.  Use sensor_adas_msgs-msg:bosch_elk instead.")
  (bosch_elk m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ELKResult>)))
    "Constants for message type '<ELKResult>"
  '((:BOSCH_ELK_DATA_TYPE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ELKResult)))
    "Constants for message type 'ELKResult"
  '((:BOSCH_ELK_DATA_TYPE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ELKResult>) ostream)
  "Serializes a message object of type '<ELKResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bosch_elk) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ELKResult>) istream)
  "Deserializes a message object of type '<ELKResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bosch_elk) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ELKResult>)))
  "Returns string type for a message object of type '<ELKResult>"
  "sensor_adas_msgs/ELKResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ELKResult)))
  "Returns string type for a message object of type 'ELKResult"
  "sensor_adas_msgs/ELKResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ELKResult>)))
  "Returns md5sum for a message object of type '<ELKResult>"
  "8a990389f43a98288cd054b20f59f468")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ELKResult)))
  "Returns md5sum for a message object of type 'ELKResult"
  "8a990389f43a98288cd054b20f59f468")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ELKResult>)))
  "Returns full string definition for message of type '<ELKResult>"
  (cl:format cl:nil "uint8 BOSCH_ELK_DATA_TYPE = 1~%uint8 available~%sensor_adas_msgs/Bosch_ELK bosch_elk~%~%================================================================================~%MSG: sensor_adas_msgs/Bosch_ELK~%uint8 ANGLE_REQUEST_STATE_INHIBITED = 0~%uint8 ANGLE_REQUEST_STATE_READY = 1~%uint8 ANGLE_REQUEST_STATE_ACTIVE = 2~%uint8 FAULT_STATUS_FLAG_NO_ERROR = 0~%uint8 FAULT_STATUS_FLAG_ERROR = 1~%uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0~%uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1~%uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2~%uint8 ELK_STATUS_OFF = 0~%uint8 ELK_STATUS_PASSIVE = 1~%uint8 ELK_STATUS_ACTIVE = 2~%uint8 ELK_STATUS_FAILURE = 3~%uint32 ELK_status~%uint32 ELK_OT_Fault_Status_Flag~%uint32 ELK_Take_Over_Req~%float32 Motor_Torque_Upper_Limit~%float32 Motor_Torque_Lower_Limit~%uint32 ADAS_AngleReq_State~%float32 ADAS_AngleReq~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ELKResult)))
  "Returns full string definition for message of type 'ELKResult"
  (cl:format cl:nil "uint8 BOSCH_ELK_DATA_TYPE = 1~%uint8 available~%sensor_adas_msgs/Bosch_ELK bosch_elk~%~%================================================================================~%MSG: sensor_adas_msgs/Bosch_ELK~%uint8 ANGLE_REQUEST_STATE_INHIBITED = 0~%uint8 ANGLE_REQUEST_STATE_READY = 1~%uint8 ANGLE_REQUEST_STATE_ACTIVE = 2~%uint8 FAULT_STATUS_FLAG_NO_ERROR = 0~%uint8 FAULT_STATUS_FLAG_ERROR = 1~%uint8 ELK_TAKE_OVER_REQ_INACTIVE = 0~%uint8 ELK_TAKE_OVER_REQ_WARN_RE = 1~%uint8 ELK_TAKE_OVER_REQ_WARN_SL = 2~%uint8 ELK_STATUS_OFF = 0~%uint8 ELK_STATUS_PASSIVE = 1~%uint8 ELK_STATUS_ACTIVE = 2~%uint8 ELK_STATUS_FAILURE = 3~%uint32 ELK_status~%uint32 ELK_OT_Fault_Status_Flag~%uint32 ELK_Take_Over_Req~%float32 Motor_Torque_Upper_Limit~%float32 Motor_Torque_Lower_Limit~%uint32 ADAS_AngleReq_State~%float32 ADAS_AngleReq~%float64 reserved1~%float64 reserved2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ELKResult>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bosch_elk))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ELKResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ELKResult
    (cl:cons ':available (available msg))
    (cl:cons ':bosch_elk (bosch_elk msg))
))
