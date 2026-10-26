; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WiperReportData.msg.html

(cl:defclass <WiperReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (driver_work_type
    :reader driver_work_type
    :initarg :driver_work_type
    :type endpoint_msgs-msg:WorkType
    :initform (cl:make-instance 'endpoint_msgs-msg:WorkType))
   (front_wiper_state
    :reader front_wiper_state
    :initarg :front_wiper_state
    :type endpoint_msgs-msg:WiperStateType
    :initform (cl:make-instance 'endpoint_msgs-msg:WiperStateType))
   (rear_wiper_state
    :reader rear_wiper_state
    :initarg :rear_wiper_state
    :type endpoint_msgs-msg:WiperStateType
    :initform (cl:make-instance 'endpoint_msgs-msg:WiperStateType))
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WiperReportData (<WiperReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WiperReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WiperReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WiperReportData> is deprecated: use endpoint_msgs-msg:WiperReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <WiperReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'driver_work_type-val :lambda-list '(m))
(cl:defmethod driver_work_type-val ((m <WiperReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:driver_work_type-val is deprecated.  Use endpoint_msgs-msg:driver_work_type instead.")
  (driver_work_type m))

(cl:ensure-generic-function 'front_wiper_state-val :lambda-list '(m))
(cl:defmethod front_wiper_state-val ((m <WiperReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_wiper_state-val is deprecated.  Use endpoint_msgs-msg:front_wiper_state instead.")
  (front_wiper_state m))

(cl:ensure-generic-function 'rear_wiper_state-val :lambda-list '(m))
(cl:defmethod rear_wiper_state-val ((m <WiperReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_wiper_state-val is deprecated.  Use endpoint_msgs-msg:rear_wiper_state instead.")
  (rear_wiper_state m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <WiperReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WiperReportData>) ostream)
  "Serializes a message object of type '<WiperReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driver_work_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_wiper_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rear_wiper_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WiperReportData>) istream)
  "Deserializes a message object of type '<WiperReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driver_work_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_wiper_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rear_wiper_state) istream)
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WiperReportData>)))
  "Returns string type for a message object of type '<WiperReportData>"
  "endpoint_msgs/WiperReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WiperReportData)))
  "Returns string type for a message object of type 'WiperReportData"
  "endpoint_msgs/WiperReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WiperReportData>)))
  "Returns md5sum for a message object of type '<WiperReportData>"
  "2b255574b7ee336319b134fbb022bab7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WiperReportData)))
  "Returns md5sum for a message object of type 'WiperReportData"
  "2b255574b7ee336319b134fbb022bab7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WiperReportData>)))
  "Returns full string definition for message of type '<WiperReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/WiperStateType front_wiper_state~%endpoint_msgs/WiperStateType rear_wiper_state~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WiperStateType~%uint8 OFF = 0~%uint8 AUTO_OFF = 1~%uint8 AUTO_MOVING = 2~%uint8 MANUAL_OFF = 3~%uint8 MANUAL_ON = 4~%uint8 MANUAL_LOW = 5~%uint8 MANUAL_HIGH = 6~%uint8 MIST_FLICK = 7~%uint8 WASH = 8~%uint8 AUTO_LOW = 9~%uint8 AUTO_HIGH = 10~%uint8 COURTESY_WIPE = 11~%uint8 AUTO_ADJUST = 12~%uint8 RESERVED = 13~%uint8 STALLED = 14~%uint8 NONE = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WiperReportData)))
  "Returns full string definition for message of type 'WiperReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WorkType driver_work_type~%endpoint_msgs/WiperStateType front_wiper_state~%endpoint_msgs/WiperStateType rear_wiper_state~%bool valid~%~%================================================================================~%MSG: endpoint_msgs/WorkType~%uint8 MANUALPILOT = 0~%uint8 AUTOPILOT_PILOT = 1~%uint8 AUTOPILOT_APA = 2~%uint8 AUTOPILOT_ACC = 3~%uint8 AUTOPILOT_RESERVED1 = 4~%uint8 AUTOPILOT_RESERVED2 = 5~%uint8 AUTOPILOT_RESERVED3 = 6~%uint8 AUTOPILOT_RESERVED4 = 7~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WiperStateType~%uint8 OFF = 0~%uint8 AUTO_OFF = 1~%uint8 AUTO_MOVING = 2~%uint8 MANUAL_OFF = 3~%uint8 MANUAL_ON = 4~%uint8 MANUAL_LOW = 5~%uint8 MANUAL_HIGH = 6~%uint8 MIST_FLICK = 7~%uint8 WASH = 8~%uint8 AUTO_LOW = 9~%uint8 AUTO_HIGH = 10~%uint8 COURTESY_WIPE = 11~%uint8 AUTO_ADJUST = 12~%uint8 RESERVED = 13~%uint8 STALLED = 14~%uint8 NONE = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WiperReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driver_work_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_wiper_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rear_wiper_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WiperReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'WiperReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':driver_work_type (driver_work_type msg))
    (cl:cons ':front_wiper_state (front_wiper_state msg))
    (cl:cons ':rear_wiper_state (rear_wiper_state msg))
    (cl:cons ':valid (valid msg))
))
