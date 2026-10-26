; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude EnergyRemainingReportData.msg.html

(cl:defclass <EnergyRemainingReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:float
    :initform 0.0)
   (remaining_mileage
    :reader remaining_mileage
    :initarg :remaining_mileage
    :type cl:float
    :initform 0.0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnergyRemainingReportData (<EnergyRemainingReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnergyRemainingReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnergyRemainingReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<EnergyRemainingReportData> is deprecated: use endpoint_msgs-msg:EnergyRemainingReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <EnergyRemainingReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <EnergyRemainingReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:level-val is deprecated.  Use endpoint_msgs-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'remaining_mileage-val :lambda-list '(m))
(cl:defmethod remaining_mileage-val ((m <EnergyRemainingReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:remaining_mileage-val is deprecated.  Use endpoint_msgs-msg:remaining_mileage instead.")
  (remaining_mileage m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <EnergyRemainingReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:valid-val is deprecated.  Use endpoint_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnergyRemainingReportData>) ostream)
  "Serializes a message object of type '<EnergyRemainingReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remaining_mileage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnergyRemainingReportData>) istream)
  "Deserializes a message object of type '<EnergyRemainingReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining_mileage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnergyRemainingReportData>)))
  "Returns string type for a message object of type '<EnergyRemainingReportData>"
  "endpoint_msgs/EnergyRemainingReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnergyRemainingReportData)))
  "Returns string type for a message object of type 'EnergyRemainingReportData"
  "endpoint_msgs/EnergyRemainingReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnergyRemainingReportData>)))
  "Returns md5sum for a message object of type '<EnergyRemainingReportData>"
  "8683e6ff02624686444d4b903f73087f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnergyRemainingReportData)))
  "Returns md5sum for a message object of type 'EnergyRemainingReportData"
  "8683e6ff02624686444d4b903f73087f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnergyRemainingReportData>)))
  "Returns full string definition for message of type '<EnergyRemainingReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%float32 level~%float32 remaining_mileage~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnergyRemainingReportData)))
  "Returns full string definition for message of type 'EnergyRemainingReportData"
  (cl:format cl:nil "uint64 timestamp_us~%float32 level~%float32 remaining_mileage~%bool valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnergyRemainingReportData>))
  (cl:+ 0
     8
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnergyRemainingReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'EnergyRemainingReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':level (level msg))
    (cl:cons ':remaining_mileage (remaining_mileage msg))
    (cl:cons ':valid (valid msg))
))
