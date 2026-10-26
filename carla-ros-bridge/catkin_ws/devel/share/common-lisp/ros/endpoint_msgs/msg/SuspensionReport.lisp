; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SuspensionReport.msg.html

(cl:defclass <SuspensionReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (suspension_report_data
    :reader suspension_report_data
    :initarg :suspension_report_data
    :type endpoint_msgs-msg:SuspensionReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:SuspensionReportData)))
)

(cl:defclass SuspensionReport (<SuspensionReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuspensionReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuspensionReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SuspensionReport> is deprecated: use endpoint_msgs-msg:SuspensionReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SuspensionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'suspension_report_data-val :lambda-list '(m))
(cl:defmethod suspension_report_data-val ((m <SuspensionReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:suspension_report_data-val is deprecated.  Use endpoint_msgs-msg:suspension_report_data instead.")
  (suspension_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SuspensionReport>)))
    "Constants for message type '<SuspensionReport>"
  '((:SUSPENSION_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SuspensionReport)))
    "Constants for message type 'SuspensionReport"
  '((:SUSPENSION_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuspensionReport>) ostream)
  "Serializes a message object of type '<SuspensionReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'suspension_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuspensionReport>) istream)
  "Deserializes a message object of type '<SuspensionReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'suspension_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuspensionReport>)))
  "Returns string type for a message object of type '<SuspensionReport>"
  "endpoint_msgs/SuspensionReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuspensionReport)))
  "Returns string type for a message object of type 'SuspensionReport"
  "endpoint_msgs/SuspensionReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuspensionReport>)))
  "Returns md5sum for a message object of type '<SuspensionReport>"
  "16a2437ec979e9b941a155db04e2443b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuspensionReport)))
  "Returns md5sum for a message object of type 'SuspensionReport"
  "16a2437ec979e9b941a155db04e2443b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuspensionReport>)))
  "Returns full string definition for message of type '<SuspensionReport>"
  (cl:format cl:nil "uint8 SUSPENSION_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/SuspensionReportData suspension_report_data~%~%================================================================================~%MSG: endpoint_msgs/SuspensionReportData~%uint64 timestamp_us~%bool calibration_completed~%endpoint_msgs/HeightLevel requested_target_level~%endpoint_msgs/HeightLevel cur_height_status~%endpoint_msgs/SuspensionHeight suspension_height~%endpoint_msgs/SuspensionHeightValid suspension_hight_valid~%endpoint_msgs/FailureStatus failure_status~%float32 reserved1~%float32 reserved2~%endpoint_msgs/SuspensionAdjustStatus adjust_status~%~%================================================================================~%MSG: endpoint_msgs/HeightLevel~%uint8 NONE = 0~%uint8 LEVEL1 = 1~%uint8 LEVEL2 = 2~%uint8 LEVEL3 = 3~%uint8 LEVEL4 = 4~%uint8 LEVEL5 = 5~%uint8 LEVEL6 = 6~%uint8 LEVEL7 = 7~%uint8 LEVEL8 = 8~%uint8 LEVEL9 = 9~%uint8 LEVEL10 = 10~%uint8 RESERVED1 = 11~%uint8 RESERVED2 = 12~%uint8 RESERVED3 = 13~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionHeight~%int8 front_left~%int8 front_right~%int8 rear_left~%int8 rear_right~%~%================================================================================~%MSG: endpoint_msgs/SuspensionHeightValid~%bool front_left~%bool front_right~%bool rear_left~%bool rear_right~%~%================================================================================~%MSG: endpoint_msgs/FailureStatus~%uint8 NOFAILURE = 0~%uint8 TEMPORARYFAILURE = 1~%uint8 FAILURE = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionAdjustStatus~%uint8 NOACTION = 0~%uint8 LOWERING = 1~%uint8 LIFTING = 2~%uint8 PENDING = 3~%uint8 ADJUSTING = 4~%uint8 RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuspensionReport)))
  "Returns full string definition for message of type 'SuspensionReport"
  (cl:format cl:nil "uint8 SUSPENSION_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/SuspensionReportData suspension_report_data~%~%================================================================================~%MSG: endpoint_msgs/SuspensionReportData~%uint64 timestamp_us~%bool calibration_completed~%endpoint_msgs/HeightLevel requested_target_level~%endpoint_msgs/HeightLevel cur_height_status~%endpoint_msgs/SuspensionHeight suspension_height~%endpoint_msgs/SuspensionHeightValid suspension_hight_valid~%endpoint_msgs/FailureStatus failure_status~%float32 reserved1~%float32 reserved2~%endpoint_msgs/SuspensionAdjustStatus adjust_status~%~%================================================================================~%MSG: endpoint_msgs/HeightLevel~%uint8 NONE = 0~%uint8 LEVEL1 = 1~%uint8 LEVEL2 = 2~%uint8 LEVEL3 = 3~%uint8 LEVEL4 = 4~%uint8 LEVEL5 = 5~%uint8 LEVEL6 = 6~%uint8 LEVEL7 = 7~%uint8 LEVEL8 = 8~%uint8 LEVEL9 = 9~%uint8 LEVEL10 = 10~%uint8 RESERVED1 = 11~%uint8 RESERVED2 = 12~%uint8 RESERVED3 = 13~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionHeight~%int8 front_left~%int8 front_right~%int8 rear_left~%int8 rear_right~%~%================================================================================~%MSG: endpoint_msgs/SuspensionHeightValid~%bool front_left~%bool front_right~%bool rear_left~%bool rear_right~%~%================================================================================~%MSG: endpoint_msgs/FailureStatus~%uint8 NOFAILURE = 0~%uint8 TEMPORARYFAILURE = 1~%uint8 FAILURE = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionAdjustStatus~%uint8 NOACTION = 0~%uint8 LOWERING = 1~%uint8 LIFTING = 2~%uint8 PENDING = 3~%uint8 ADJUSTING = 4~%uint8 RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuspensionReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'suspension_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuspensionReport>))
  "Converts a ROS message object to a list"
  (cl:list 'SuspensionReport
    (cl:cons ':available (available msg))
    (cl:cons ':suspension_report_data (suspension_report_data msg))
))
