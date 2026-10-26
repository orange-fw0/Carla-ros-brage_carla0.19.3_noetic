; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSHeartRate.msg.html

(cl:defclass <DMSHeartRate> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (current_rate
    :reader current_rate
    :initarg :current_rate
    :type cl:float
    :initform 0.0)
   (max_heart_rate
    :reader max_heart_rate
    :initarg :max_heart_rate
    :type cl:float
    :initform 0.0)
   (min_heart_rate
    :reader min_heart_rate
    :initarg :min_heart_rate
    :type cl:float
    :initform 0.0)
   (average_rate
    :reader average_rate
    :initarg :average_rate
    :type cl:float
    :initform 0.0)
   (heart_rate_variability
    :reader heart_rate_variability
    :initarg :heart_rate_variability
    :type cl:float
    :initform 0.0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:float
    :initform 0.0))
)

(cl:defclass DMSHeartRate (<DMSHeartRate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSHeartRate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSHeartRate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSHeartRate> is deprecated: use dms_msgs-msg:DMSHeartRate instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSHeartRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'current_rate-val :lambda-list '(m))
(cl:defmethod current_rate-val ((m <DMSHeartRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:current_rate-val is deprecated.  Use dms_msgs-msg:current_rate instead.")
  (current_rate m))

(cl:ensure-generic-function 'max_heart_rate-val :lambda-list '(m))
(cl:defmethod max_heart_rate-val ((m <DMSHeartRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:max_heart_rate-val is deprecated.  Use dms_msgs-msg:max_heart_rate instead.")
  (max_heart_rate m))

(cl:ensure-generic-function 'min_heart_rate-val :lambda-list '(m))
(cl:defmethod min_heart_rate-val ((m <DMSHeartRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:min_heart_rate-val is deprecated.  Use dms_msgs-msg:min_heart_rate instead.")
  (min_heart_rate m))

(cl:ensure-generic-function 'average_rate-val :lambda-list '(m))
(cl:defmethod average_rate-val ((m <DMSHeartRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:average_rate-val is deprecated.  Use dms_msgs-msg:average_rate instead.")
  (average_rate m))

(cl:ensure-generic-function 'heart_rate_variability-val :lambda-list '(m))
(cl:defmethod heart_rate_variability-val ((m <DMSHeartRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:heart_rate_variability-val is deprecated.  Use dms_msgs-msg:heart_rate_variability instead.")
  (heart_rate_variability m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <DMSHeartRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSHeartRate>)))
    "Constants for message type '<DMSHeartRate>"
  '((:CURRENT_RATE_AVAILABLE . 1)
    (:MAX_RATE_AVAILABLE . 2)
    (:MIN_RATE_AVAILABLE . 4)
    (:AVERAGE_RATE_AVAILABLE . 8)
    (:HEART_RATE_VARIABILITY_AVAILABLE . 16)
    (:RESERVED . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSHeartRate)))
    "Constants for message type 'DMSHeartRate"
  '((:CURRENT_RATE_AVAILABLE . 1)
    (:MAX_RATE_AVAILABLE . 2)
    (:MIN_RATE_AVAILABLE . 4)
    (:AVERAGE_RATE_AVAILABLE . 8)
    (:HEART_RATE_VARIABILITY_AVAILABLE . 16)
    (:RESERVED . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSHeartRate>) ostream)
  "Serializes a message object of type '<DMSHeartRate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_heart_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_heart_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'average_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heart_rate_variability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSHeartRate>) istream)
  "Deserializes a message object of type '<DMSHeartRate>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_heart_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_heart_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'average_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heart_rate_variability) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSHeartRate>)))
  "Returns string type for a message object of type '<DMSHeartRate>"
  "dms_msgs/DMSHeartRate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSHeartRate)))
  "Returns string type for a message object of type 'DMSHeartRate"
  "dms_msgs/DMSHeartRate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSHeartRate>)))
  "Returns md5sum for a message object of type '<DMSHeartRate>"
  "a0bc2e4ab6e96348420d7d0157566eff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSHeartRate)))
  "Returns md5sum for a message object of type 'DMSHeartRate"
  "a0bc2e4ab6e96348420d7d0157566eff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSHeartRate>)))
  "Returns full string definition for message of type '<DMSHeartRate>"
  (cl:format cl:nil "uint8 CURRENT_RATE_AVAILABLE = 1~%uint8 MAX_RATE_AVAILABLE = 2~%uint8 MIN_RATE_AVAILABLE = 4~%uint8 AVERAGE_RATE_AVAILABLE = 8~%uint8 HEART_RATE_VARIABILITY_AVAILABLE = 16~%uint8 RESERVED = 32~%uint8 available~%float32 current_rate~%float32 max_heart_rate~%float32 min_heart_rate~%float32 average_rate~%float32 heart_rate_variability~%float32 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSHeartRate)))
  "Returns full string definition for message of type 'DMSHeartRate"
  (cl:format cl:nil "uint8 CURRENT_RATE_AVAILABLE = 1~%uint8 MAX_RATE_AVAILABLE = 2~%uint8 MIN_RATE_AVAILABLE = 4~%uint8 AVERAGE_RATE_AVAILABLE = 8~%uint8 HEART_RATE_VARIABILITY_AVAILABLE = 16~%uint8 RESERVED = 32~%uint8 available~%float32 current_rate~%float32 max_heart_rate~%float32 min_heart_rate~%float32 average_rate~%float32 heart_rate_variability~%float32 reserved~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSHeartRate>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSHeartRate>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSHeartRate
    (cl:cons ':available (available msg))
    (cl:cons ':current_rate (current_rate msg))
    (cl:cons ':max_heart_rate (max_heart_rate msg))
    (cl:cons ':min_heart_rate (min_heart_rate msg))
    (cl:cons ':average_rate (average_rate msg))
    (cl:cons ':heart_rate_variability (heart_rate_variability msg))
    (cl:cons ':reserved (reserved msg))
))
