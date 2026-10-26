; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WheelDrvTorqueReportData.msg.html

(cl:defclass <WheelDrvTorqueReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (front_left
    :reader front_left
    :initarg :front_left
    :type cl:float
    :initform 0.0)
   (front_left_valid
    :reader front_left_valid
    :initarg :front_left_valid
    :type cl:boolean
    :initform cl:nil)
   (front_right
    :reader front_right
    :initarg :front_right
    :type cl:float
    :initform 0.0)
   (front_right_valid
    :reader front_right_valid
    :initarg :front_right_valid
    :type cl:float
    :initform 0.0)
   (rear_left
    :reader rear_left
    :initarg :rear_left
    :type cl:float
    :initform 0.0)
   (rear_left_valid
    :reader rear_left_valid
    :initarg :rear_left_valid
    :type cl:float
    :initform 0.0)
   (rear_right
    :reader rear_right
    :initarg :rear_right
    :type cl:float
    :initform 0.0)
   (rear_right_valid
    :reader rear_right_valid
    :initarg :rear_right_valid
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelDrvTorqueReportData (<WheelDrvTorqueReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelDrvTorqueReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelDrvTorqueReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WheelDrvTorqueReportData> is deprecated: use endpoint_msgs-msg:WheelDrvTorqueReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'front_left-val :lambda-list '(m))
(cl:defmethod front_left-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_left-val is deprecated.  Use endpoint_msgs-msg:front_left instead.")
  (front_left m))

(cl:ensure-generic-function 'front_left_valid-val :lambda-list '(m))
(cl:defmethod front_left_valid-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_left_valid-val is deprecated.  Use endpoint_msgs-msg:front_left_valid instead.")
  (front_left_valid m))

(cl:ensure-generic-function 'front_right-val :lambda-list '(m))
(cl:defmethod front_right-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_right-val is deprecated.  Use endpoint_msgs-msg:front_right instead.")
  (front_right m))

(cl:ensure-generic-function 'front_right_valid-val :lambda-list '(m))
(cl:defmethod front_right_valid-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:front_right_valid-val is deprecated.  Use endpoint_msgs-msg:front_right_valid instead.")
  (front_right_valid m))

(cl:ensure-generic-function 'rear_left-val :lambda-list '(m))
(cl:defmethod rear_left-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_left-val is deprecated.  Use endpoint_msgs-msg:rear_left instead.")
  (rear_left m))

(cl:ensure-generic-function 'rear_left_valid-val :lambda-list '(m))
(cl:defmethod rear_left_valid-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_left_valid-val is deprecated.  Use endpoint_msgs-msg:rear_left_valid instead.")
  (rear_left_valid m))

(cl:ensure-generic-function 'rear_right-val :lambda-list '(m))
(cl:defmethod rear_right-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_right-val is deprecated.  Use endpoint_msgs-msg:rear_right instead.")
  (rear_right m))

(cl:ensure-generic-function 'rear_right_valid-val :lambda-list '(m))
(cl:defmethod rear_right_valid-val ((m <WheelDrvTorqueReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rear_right_valid-val is deprecated.  Use endpoint_msgs-msg:rear_right_valid instead.")
  (rear_right_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelDrvTorqueReportData>) ostream)
  "Serializes a message object of type '<WheelDrvTorqueReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_left_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'front_right_valid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_left_valid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rear_right_valid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelDrvTorqueReportData>) istream)
  "Deserializes a message object of type '<WheelDrvTorqueReportData>"
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
    (cl:setf (cl:slot-value msg 'front_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'front_left_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right_valid) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_left_valid) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rear_right_valid) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelDrvTorqueReportData>)))
  "Returns string type for a message object of type '<WheelDrvTorqueReportData>"
  "endpoint_msgs/WheelDrvTorqueReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelDrvTorqueReportData)))
  "Returns string type for a message object of type 'WheelDrvTorqueReportData"
  "endpoint_msgs/WheelDrvTorqueReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelDrvTorqueReportData>)))
  "Returns md5sum for a message object of type '<WheelDrvTorqueReportData>"
  "786665c319fc9b0287acddb36e019078")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelDrvTorqueReportData)))
  "Returns md5sum for a message object of type 'WheelDrvTorqueReportData"
  "786665c319fc9b0287acddb36e019078")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelDrvTorqueReportData>)))
  "Returns full string definition for message of type '<WheelDrvTorqueReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%float32 front_left~%bool front_left_valid~%float32 front_right~%float32 front_right_valid~%float32 rear_left~%float32 rear_left_valid~%float32 rear_right~%float32 rear_right_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelDrvTorqueReportData)))
  "Returns full string definition for message of type 'WheelDrvTorqueReportData"
  (cl:format cl:nil "uint64 timestamp_us~%float32 front_left~%bool front_left_valid~%float32 front_right~%float32 front_right_valid~%float32 rear_left~%float32 rear_left_valid~%float32 rear_right~%float32 rear_right_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelDrvTorqueReportData>))
  (cl:+ 0
     8
     4
     1
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelDrvTorqueReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelDrvTorqueReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':front_left (front_left msg))
    (cl:cons ':front_left_valid (front_left_valid msg))
    (cl:cons ':front_right (front_right msg))
    (cl:cons ':front_right_valid (front_right_valid msg))
    (cl:cons ':rear_left (rear_left msg))
    (cl:cons ':rear_left_valid (rear_left_valid msg))
    (cl:cons ':rear_right (rear_right msg))
    (cl:cons ':rear_right_valid (rear_right_valid msg))
))
