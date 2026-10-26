; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebCommandData.msg.html

(cl:defclass <AebCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (awb_request
    :reader awb_request
    :initarg :awb_request
    :type endpoint_msgs-msg:AebBrkJerkReq
    :initform (cl:make-instance 'endpoint_msgs-msg:AebBrkJerkReq))
   (dcl_req_state
    :reader dcl_req_state
    :initarg :dcl_req_state
    :type endpoint_msgs-msg:AebDclReqSts
    :initform (cl:make-instance 'endpoint_msgs-msg:AebDclReqSts))
   (dcl_req_command
    :reader dcl_req_command
    :initarg :dcl_req_command
    :type cl:float
    :initform 0.0)
   (hba_request_level
    :reader hba_request_level
    :initarg :hba_request_level
    :type endpoint_msgs-msg:AebHydBrkReq
    :initform (cl:make-instance 'endpoint_msgs-msg:AebHydBrkReq))
   (prefill_request
    :reader prefill_request
    :initarg :prefill_request
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AebCommandData (<AebCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebCommandData> is deprecated: use endpoint_msgs-msg:AebCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <AebCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'awb_request-val :lambda-list '(m))
(cl:defmethod awb_request-val ((m <AebCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:awb_request-val is deprecated.  Use endpoint_msgs-msg:awb_request instead.")
  (awb_request m))

(cl:ensure-generic-function 'dcl_req_state-val :lambda-list '(m))
(cl:defmethod dcl_req_state-val ((m <AebCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:dcl_req_state-val is deprecated.  Use endpoint_msgs-msg:dcl_req_state instead.")
  (dcl_req_state m))

(cl:ensure-generic-function 'dcl_req_command-val :lambda-list '(m))
(cl:defmethod dcl_req_command-val ((m <AebCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:dcl_req_command-val is deprecated.  Use endpoint_msgs-msg:dcl_req_command instead.")
  (dcl_req_command m))

(cl:ensure-generic-function 'hba_request_level-val :lambda-list '(m))
(cl:defmethod hba_request_level-val ((m <AebCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:hba_request_level-val is deprecated.  Use endpoint_msgs-msg:hba_request_level instead.")
  (hba_request_level m))

(cl:ensure-generic-function 'prefill_request-val :lambda-list '(m))
(cl:defmethod prefill_request-val ((m <AebCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:prefill_request-val is deprecated.  Use endpoint_msgs-msg:prefill_request instead.")
  (prefill_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebCommandData>) ostream)
  "Serializes a message object of type '<AebCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'awb_request) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dcl_req_state) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dcl_req_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hba_request_level) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'prefill_request) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebCommandData>) istream)
  "Deserializes a message object of type '<AebCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'awb_request) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dcl_req_state) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dcl_req_command) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hba_request_level) istream)
    (cl:setf (cl:slot-value msg 'prefill_request) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebCommandData>)))
  "Returns string type for a message object of type '<AebCommandData>"
  "endpoint_msgs/AebCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebCommandData)))
  "Returns string type for a message object of type 'AebCommandData"
  "endpoint_msgs/AebCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebCommandData>)))
  "Returns md5sum for a message object of type '<AebCommandData>"
  "2664fcc8b4bedb987279119824de4255")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebCommandData)))
  "Returns md5sum for a message object of type 'AebCommandData"
  "2664fcc8b4bedb987279119824de4255")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebCommandData>)))
  "Returns full string definition for message of type '<AebCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/AebBrkJerkReq awb_request~%endpoint_msgs/AebDclReqSts dcl_req_state~%float32 dcl_req_command~%endpoint_msgs/AebHydBrkReq hba_request_level~%bool prefill_request~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkReq~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1~%uint8 AEB_BRAKE_JERK_MID_LEVEL = 2~%uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3~%uint8 AEV_BRAKE_JERK_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclReqSts~%uint8 AEB_DLC_STATE_NO_REQUEST = 0~%uint8 AEB_DLC_STATE_DECELERATION = 1~%uint8 AEB_DLC_STATE_RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebHydBrkReq~%uint8 AEB_HYD_BRAKE_NO_REQUEST = 0~%uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1~%uint8 AEB_HYD_BRAKE_MID_LEVEL = 2~%uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3~%uint8 AEB_HYD_BRAKE_RESERVED1 = 4~%uint8 AEB_HYD_BRAKE_RESERVED2 = 5~%uint8 AEB_HYD_BRAKE_RESERVED3 = 6~%uint8 AEB_HYD_BRAKE_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebCommandData)))
  "Returns full string definition for message of type 'AebCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/AebBrkJerkReq awb_request~%endpoint_msgs/AebDclReqSts dcl_req_state~%float32 dcl_req_command~%endpoint_msgs/AebHydBrkReq hba_request_level~%bool prefill_request~%~%================================================================================~%MSG: endpoint_msgs/AebBrkJerkReq~%uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1~%uint8 AEB_BRAKE_JERK_MID_LEVEL = 2~%uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3~%uint8 AEV_BRAKE_JERK_RESERVED = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebDclReqSts~%uint8 AEB_DLC_STATE_NO_REQUEST = 0~%uint8 AEB_DLC_STATE_DECELERATION = 1~%uint8 AEB_DLC_STATE_RESERVED = 2~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AebHydBrkReq~%uint8 AEB_HYD_BRAKE_NO_REQUEST = 0~%uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1~%uint8 AEB_HYD_BRAKE_MID_LEVEL = 2~%uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3~%uint8 AEB_HYD_BRAKE_RESERVED1 = 4~%uint8 AEB_HYD_BRAKE_RESERVED2 = 5~%uint8 AEB_HYD_BRAKE_RESERVED3 = 6~%uint8 AEB_HYD_BRAKE_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebCommandData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'awb_request))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dcl_req_state))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hba_request_level))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'AebCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':awb_request (awb_request msg))
    (cl:cons ':dcl_req_state (dcl_req_state msg))
    (cl:cons ':dcl_req_command (dcl_req_command msg))
    (cl:cons ':hba_request_level (hba_request_level msg))
    (cl:cons ':prefill_request (prefill_request msg))
))
