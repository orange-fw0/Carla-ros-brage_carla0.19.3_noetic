; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeCommandData.msg.html

(cl:defclass <BrakeCommandData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (brake_enable
    :reader brake_enable
    :initarg :brake_enable
    :type cl:boolean
    :initform cl:nil)
   (brake_type
    :reader brake_type
    :initarg :brake_type
    :type endpoint_msgs-msg:BrakeType
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeType))
   (brake_command
    :reader brake_command
    :initarg :brake_command
    :type cl:float
    :initform 0.0)
   (brake_control_type
    :reader brake_control_type
    :initarg :brake_control_type
    :type endpoint_msgs-msg:BrakeControlType
    :initform (cl:make-instance 'endpoint_msgs-msg:BrakeControlType))
   (brake_acc_standstill
    :reader brake_acc_standstill
    :initarg :brake_acc_standstill
    :type endpoint_msgs-msg:AccStandstillType
    :initform (cl:make-instance 'endpoint_msgs-msg:AccStandstillType))
   (brake_acc_go
    :reader brake_acc_go
    :initarg :brake_acc_go
    :type cl:boolean
    :initform cl:nil)
   (epb_enable
    :reader epb_enable
    :initarg :epb_enable
    :type cl:boolean
    :initform cl:nil)
   (epb_command
    :reader epb_command
    :initarg :epb_command
    :type cl:boolean
    :initform cl:nil)
   (auto_hold_command
    :reader auto_hold_command
    :initarg :auto_hold_command
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BrakeCommandData (<BrakeCommandData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeCommandData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeCommandData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeCommandData> is deprecated: use endpoint_msgs-msg:BrakeCommandData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'brake_enable-val :lambda-list '(m))
(cl:defmethod brake_enable-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_enable-val is deprecated.  Use endpoint_msgs-msg:brake_enable instead.")
  (brake_enable m))

(cl:ensure-generic-function 'brake_type-val :lambda-list '(m))
(cl:defmethod brake_type-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_type-val is deprecated.  Use endpoint_msgs-msg:brake_type instead.")
  (brake_type m))

(cl:ensure-generic-function 'brake_command-val :lambda-list '(m))
(cl:defmethod brake_command-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_command-val is deprecated.  Use endpoint_msgs-msg:brake_command instead.")
  (brake_command m))

(cl:ensure-generic-function 'brake_control_type-val :lambda-list '(m))
(cl:defmethod brake_control_type-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_control_type-val is deprecated.  Use endpoint_msgs-msg:brake_control_type instead.")
  (brake_control_type m))

(cl:ensure-generic-function 'brake_acc_standstill-val :lambda-list '(m))
(cl:defmethod brake_acc_standstill-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_acc_standstill-val is deprecated.  Use endpoint_msgs-msg:brake_acc_standstill instead.")
  (brake_acc_standstill m))

(cl:ensure-generic-function 'brake_acc_go-val :lambda-list '(m))
(cl:defmethod brake_acc_go-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:brake_acc_go-val is deprecated.  Use endpoint_msgs-msg:brake_acc_go instead.")
  (brake_acc_go m))

(cl:ensure-generic-function 'epb_enable-val :lambda-list '(m))
(cl:defmethod epb_enable-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:epb_enable-val is deprecated.  Use endpoint_msgs-msg:epb_enable instead.")
  (epb_enable m))

(cl:ensure-generic-function 'epb_command-val :lambda-list '(m))
(cl:defmethod epb_command-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:epb_command-val is deprecated.  Use endpoint_msgs-msg:epb_command instead.")
  (epb_command m))

(cl:ensure-generic-function 'auto_hold_command-val :lambda-list '(m))
(cl:defmethod auto_hold_command-val ((m <BrakeCommandData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:auto_hold_command-val is deprecated.  Use endpoint_msgs-msg:auto_hold_command instead.")
  (auto_hold_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeCommandData>) ostream)
  "Serializes a message object of type '<BrakeCommandData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_enable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_control_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brake_acc_standstill) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_acc_go) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'epb_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'epb_command) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_hold_command) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeCommandData>) istream)
  "Deserializes a message object of type '<BrakeCommandData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_enable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_command) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_control_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brake_acc_standstill) istream)
    (cl:setf (cl:slot-value msg 'brake_acc_go) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'epb_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'epb_command) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'auto_hold_command) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeCommandData>)))
  "Returns string type for a message object of type '<BrakeCommandData>"
  "endpoint_msgs/BrakeCommandData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeCommandData)))
  "Returns string type for a message object of type 'BrakeCommandData"
  "endpoint_msgs/BrakeCommandData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeCommandData>)))
  "Returns md5sum for a message object of type '<BrakeCommandData>"
  "f81045d29af37bdc362fe6429fbe41b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeCommandData)))
  "Returns md5sum for a message object of type 'BrakeCommandData"
  "f81045d29af37bdc362fe6429fbe41b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeCommandData>)))
  "Returns full string definition for message of type '<BrakeCommandData>"
  (cl:format cl:nil "uint64 timestamp_us~%bool brake_enable~%endpoint_msgs/BrakeType brake_type~%float32 brake_command~%endpoint_msgs/BrakeControlType brake_control_type~%endpoint_msgs/AccStandstillType brake_acc_standstill~%bool brake_acc_go~%bool epb_enable~%bool epb_command~%bool auto_hold_command~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeControlType~%uint8 NORMAL = 1~%uint8 EMERGENT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AccStandstillType~%uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 REMIND_DRIVE_GO = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeCommandData)))
  "Returns full string definition for message of type 'BrakeCommandData"
  (cl:format cl:nil "uint64 timestamp_us~%bool brake_enable~%endpoint_msgs/BrakeType brake_type~%float32 brake_command~%endpoint_msgs/BrakeControlType brake_control_type~%endpoint_msgs/AccStandstillType brake_acc_standstill~%bool brake_acc_go~%bool epb_enable~%bool epb_command~%bool auto_hold_command~%~%================================================================================~%MSG: endpoint_msgs/BrakeType~%uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/BrakeControlType~%uint8 NORMAL = 1~%uint8 EMERGENT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/AccStandstillType~%uint8 NO_REQUEST = 0~%uint8 REQUEST = 1~%uint8 REMIND_DRIVE_GO = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeCommandData>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_type))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_control_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brake_acc_standstill))
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeCommandData>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeCommandData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':brake_enable (brake_enable msg))
    (cl:cons ':brake_type (brake_type msg))
    (cl:cons ':brake_command (brake_command msg))
    (cl:cons ':brake_control_type (brake_control_type msg))
    (cl:cons ':brake_acc_standstill (brake_acc_standstill msg))
    (cl:cons ':brake_acc_go (brake_acc_go msg))
    (cl:cons ':epb_enable (epb_enable msg))
    (cl:cons ':epb_command (epb_command msg))
    (cl:cons ':auto_hold_command (auto_hold_command msg))
))
