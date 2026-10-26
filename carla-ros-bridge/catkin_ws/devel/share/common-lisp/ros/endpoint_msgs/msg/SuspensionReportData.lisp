; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SuspensionReportData.msg.html

(cl:defclass <SuspensionReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (calibration_completed
    :reader calibration_completed
    :initarg :calibration_completed
    :type cl:boolean
    :initform cl:nil)
   (requested_target_level
    :reader requested_target_level
    :initarg :requested_target_level
    :type endpoint_msgs-msg:HeightLevel
    :initform (cl:make-instance 'endpoint_msgs-msg:HeightLevel))
   (cur_height_status
    :reader cur_height_status
    :initarg :cur_height_status
    :type endpoint_msgs-msg:HeightLevel
    :initform (cl:make-instance 'endpoint_msgs-msg:HeightLevel))
   (suspension_height
    :reader suspension_height
    :initarg :suspension_height
    :type endpoint_msgs-msg:SuspensionHeight
    :initform (cl:make-instance 'endpoint_msgs-msg:SuspensionHeight))
   (suspension_hight_valid
    :reader suspension_hight_valid
    :initarg :suspension_hight_valid
    :type endpoint_msgs-msg:SuspensionHeightValid
    :initform (cl:make-instance 'endpoint_msgs-msg:SuspensionHeightValid))
   (failure_status
    :reader failure_status
    :initarg :failure_status
    :type endpoint_msgs-msg:FailureStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:FailureStatus))
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:float
    :initform 0.0)
   (reserved2
    :reader reserved2
    :initarg :reserved2
    :type cl:float
    :initform 0.0)
   (adjust_status
    :reader adjust_status
    :initarg :adjust_status
    :type endpoint_msgs-msg:SuspensionAdjustStatus
    :initform (cl:make-instance 'endpoint_msgs-msg:SuspensionAdjustStatus)))
)

(cl:defclass SuspensionReportData (<SuspensionReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuspensionReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuspensionReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SuspensionReportData> is deprecated: use endpoint_msgs-msg:SuspensionReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'calibration_completed-val :lambda-list '(m))
(cl:defmethod calibration_completed-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:calibration_completed-val is deprecated.  Use endpoint_msgs-msg:calibration_completed instead.")
  (calibration_completed m))

(cl:ensure-generic-function 'requested_target_level-val :lambda-list '(m))
(cl:defmethod requested_target_level-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:requested_target_level-val is deprecated.  Use endpoint_msgs-msg:requested_target_level instead.")
  (requested_target_level m))

(cl:ensure-generic-function 'cur_height_status-val :lambda-list '(m))
(cl:defmethod cur_height_status-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:cur_height_status-val is deprecated.  Use endpoint_msgs-msg:cur_height_status instead.")
  (cur_height_status m))

(cl:ensure-generic-function 'suspension_height-val :lambda-list '(m))
(cl:defmethod suspension_height-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:suspension_height-val is deprecated.  Use endpoint_msgs-msg:suspension_height instead.")
  (suspension_height m))

(cl:ensure-generic-function 'suspension_hight_valid-val :lambda-list '(m))
(cl:defmethod suspension_hight_valid-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:suspension_hight_valid-val is deprecated.  Use endpoint_msgs-msg:suspension_hight_valid instead.")
  (suspension_hight_valid m))

(cl:ensure-generic-function 'failure_status-val :lambda-list '(m))
(cl:defmethod failure_status-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:failure_status-val is deprecated.  Use endpoint_msgs-msg:failure_status instead.")
  (failure_status m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reserved1-val is deprecated.  Use endpoint_msgs-msg:reserved1 instead.")
  (reserved1 m))

(cl:ensure-generic-function 'reserved2-val :lambda-list '(m))
(cl:defmethod reserved2-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reserved2-val is deprecated.  Use endpoint_msgs-msg:reserved2 instead.")
  (reserved2 m))

(cl:ensure-generic-function 'adjust_status-val :lambda-list '(m))
(cl:defmethod adjust_status-val ((m <SuspensionReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:adjust_status-val is deprecated.  Use endpoint_msgs-msg:adjust_status instead.")
  (adjust_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuspensionReportData>) ostream)
  "Serializes a message object of type '<SuspensionReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration_completed) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'requested_target_level) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_height_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'suspension_height) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'suspension_hight_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'failure_status) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'adjust_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuspensionReportData>) istream)
  "Deserializes a message object of type '<SuspensionReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'calibration_completed) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'requested_target_level) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_height_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'suspension_height) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'suspension_hight_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'failure_status) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved2) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'adjust_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuspensionReportData>)))
  "Returns string type for a message object of type '<SuspensionReportData>"
  "endpoint_msgs/SuspensionReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuspensionReportData)))
  "Returns string type for a message object of type 'SuspensionReportData"
  "endpoint_msgs/SuspensionReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuspensionReportData>)))
  "Returns md5sum for a message object of type '<SuspensionReportData>"
  "edb923c971181c057278446d61875f55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuspensionReportData)))
  "Returns md5sum for a message object of type 'SuspensionReportData"
  "edb923c971181c057278446d61875f55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuspensionReportData>)))
  "Returns full string definition for message of type '<SuspensionReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool calibration_completed~%endpoint_msgs/HeightLevel requested_target_level~%endpoint_msgs/HeightLevel cur_height_status~%endpoint_msgs/SuspensionHeight suspension_height~%endpoint_msgs/SuspensionHeightValid suspension_hight_valid~%endpoint_msgs/FailureStatus failure_status~%float32 reserved1~%float32 reserved2~%endpoint_msgs/SuspensionAdjustStatus adjust_status~%~%================================================================================~%MSG: endpoint_msgs/HeightLevel~%uint8 NONE = 0~%uint8 LEVEL1 = 1~%uint8 LEVEL2 = 2~%uint8 LEVEL3 = 3~%uint8 LEVEL4 = 4~%uint8 LEVEL5 = 5~%uint8 LEVEL6 = 6~%uint8 LEVEL7 = 7~%uint8 LEVEL8 = 8~%uint8 LEVEL9 = 9~%uint8 LEVEL10 = 10~%uint8 RESERVED1 = 11~%uint8 RESERVED2 = 12~%uint8 RESERVED3 = 13~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionHeight~%int8 front_left~%int8 front_right~%int8 rear_left~%int8 rear_right~%~%================================================================================~%MSG: endpoint_msgs/SuspensionHeightValid~%bool front_left~%bool front_right~%bool rear_left~%bool rear_right~%~%================================================================================~%MSG: endpoint_msgs/FailureStatus~%uint8 NOFAILURE = 0~%uint8 TEMPORARYFAILURE = 1~%uint8 FAILURE = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionAdjustStatus~%uint8 NOACTION = 0~%uint8 LOWERING = 1~%uint8 LIFTING = 2~%uint8 PENDING = 3~%uint8 ADJUSTING = 4~%uint8 RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuspensionReportData)))
  "Returns full string definition for message of type 'SuspensionReportData"
  (cl:format cl:nil "uint64 timestamp_us~%bool calibration_completed~%endpoint_msgs/HeightLevel requested_target_level~%endpoint_msgs/HeightLevel cur_height_status~%endpoint_msgs/SuspensionHeight suspension_height~%endpoint_msgs/SuspensionHeightValid suspension_hight_valid~%endpoint_msgs/FailureStatus failure_status~%float32 reserved1~%float32 reserved2~%endpoint_msgs/SuspensionAdjustStatus adjust_status~%~%================================================================================~%MSG: endpoint_msgs/HeightLevel~%uint8 NONE = 0~%uint8 LEVEL1 = 1~%uint8 LEVEL2 = 2~%uint8 LEVEL3 = 3~%uint8 LEVEL4 = 4~%uint8 LEVEL5 = 5~%uint8 LEVEL6 = 6~%uint8 LEVEL7 = 7~%uint8 LEVEL8 = 8~%uint8 LEVEL9 = 9~%uint8 LEVEL10 = 10~%uint8 RESERVED1 = 11~%uint8 RESERVED2 = 12~%uint8 RESERVED3 = 13~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionHeight~%int8 front_left~%int8 front_right~%int8 rear_left~%int8 rear_right~%~%================================================================================~%MSG: endpoint_msgs/SuspensionHeightValid~%bool front_left~%bool front_right~%bool rear_left~%bool rear_right~%~%================================================================================~%MSG: endpoint_msgs/FailureStatus~%uint8 NOFAILURE = 0~%uint8 TEMPORARYFAILURE = 1~%uint8 FAILURE = 2~%uint8 RESERVED = 3~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/SuspensionAdjustStatus~%uint8 NOACTION = 0~%uint8 LOWERING = 1~%uint8 LIFTING = 2~%uint8 PENDING = 3~%uint8 ADJUSTING = 4~%uint8 RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuspensionReportData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'requested_target_level))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_height_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'suspension_height))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'suspension_hight_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'failure_status))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'adjust_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuspensionReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'SuspensionReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':calibration_completed (calibration_completed msg))
    (cl:cons ':requested_target_level (requested_target_level msg))
    (cl:cons ':cur_height_status (cur_height_status msg))
    (cl:cons ':suspension_height (suspension_height msg))
    (cl:cons ':suspension_hight_valid (suspension_hight_valid msg))
    (cl:cons ':failure_status (failure_status msg))
    (cl:cons ':reserved1 (reserved1 msg))
    (cl:cons ':reserved2 (reserved2 msg))
    (cl:cons ':adjust_status (adjust_status msg))
))
