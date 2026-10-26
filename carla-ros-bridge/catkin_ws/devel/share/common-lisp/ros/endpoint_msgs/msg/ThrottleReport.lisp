; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ThrottleReport.msg.html

(cl:defclass <ThrottleReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (throttle_report_data
    :reader throttle_report_data
    :initarg :throttle_report_data
    :type endpoint_msgs-msg:ThrottleReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:ThrottleReportData)))
)

(cl:defclass ThrottleReport (<ThrottleReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ThrottleReport> is deprecated: use endpoint_msgs-msg:ThrottleReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ThrottleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'throttle_report_data-val :lambda-list '(m))
(cl:defmethod throttle_report_data-val ((m <ThrottleReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:throttle_report_data-val is deprecated.  Use endpoint_msgs-msg:throttle_report_data instead.")
  (throttle_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ThrottleReport>)))
    "Constants for message type '<ThrottleReport>"
  '((:THROTTLE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ThrottleReport)))
    "Constants for message type 'ThrottleReport"
  '((:THROTTLE_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleReport>) ostream)
  "Serializes a message object of type '<ThrottleReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'throttle_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleReport>) istream)
  "Deserializes a message object of type '<ThrottleReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'throttle_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleReport>)))
  "Returns string type for a message object of type '<ThrottleReport>"
  "endpoint_msgs/ThrottleReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleReport)))
  "Returns string type for a message object of type 'ThrottleReport"
  "endpoint_msgs/ThrottleReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleReport>)))
  "Returns md5sum for a message object of type '<ThrottleReport>"
  "a48388cf1431a355752b5ba78a20f789")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleReport)))
  "Returns md5sum for a message object of type 'ThrottleReport"
  "a48388cf1431a355752b5ba78a20f789")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleReport>)))
  "Returns full string definition for message of type '<ThrottleReport>"
  (cl:format cl:nil "uint8 THROTTLE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleReportData throttle_report_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleReportData~%uint64 timestamp_us~%endpoint_msgs/ThrottleType type~%endpoint_msgs/WorkType driver_work_type~%float32 pedal_input~%float32 command~%float32 throttle_output~%bool override~%float32 vcu_max_neg_torque~%float32 vcu_max_pos_torque~%bool vcu_max_neg_torque_valid~%bool vcu_max_pos_torque_valid~%float32 vcu_exec_throttle_torque~%bool vcu_exec_throttle_torque_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleReport)))
  "Returns full string definition for message of type 'ThrottleReport"
  (cl:format cl:nil "uint8 THROTTLE_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/ThrottleReportData throttle_report_data~%~%================================================================================~%MSG: endpoint_msgs/ThrottleReportData~%uint64 timestamp_us~%endpoint_msgs/ThrottleType type~%endpoint_msgs/WorkType driver_work_type~%float32 pedal_input~%float32 command~%float32 throttle_output~%bool override~%float32 vcu_max_neg_torque~%float32 vcu_max_pos_torque~%bool vcu_max_neg_torque_valid~%bool vcu_max_pos_torque_valid~%float32 vcu_exec_throttle_torque~%bool vcu_exec_throttle_torque_valid~%bool ready~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/ThrottleType~%uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'throttle_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleReport>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleReport
    (cl:cons ':available (available msg))
    (cl:cons ':throttle_report_data (throttle_report_data msg))
))
