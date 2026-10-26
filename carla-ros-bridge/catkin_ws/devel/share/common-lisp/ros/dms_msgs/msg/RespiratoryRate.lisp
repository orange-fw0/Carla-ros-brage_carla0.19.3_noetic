; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude RespiratoryRate.msg.html

(cl:defclass <RespiratoryRate> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (resp_rate
    :reader resp_rate
    :initarg :resp_rate
    :type cl:float
    :initform 0.0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:float
    :initform 0.0)
   (reserved1
    :reader reserved1
    :initarg :reserved1
    :type cl:float
    :initform 0.0))
)

(cl:defclass RespiratoryRate (<RespiratoryRate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RespiratoryRate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RespiratoryRate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<RespiratoryRate> is deprecated: use dms_msgs-msg:RespiratoryRate instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RespiratoryRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'resp_rate-val :lambda-list '(m))
(cl:defmethod resp_rate-val ((m <RespiratoryRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:resp_rate-val is deprecated.  Use dms_msgs-msg:resp_rate instead.")
  (resp_rate m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <RespiratoryRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved-val is deprecated.  Use dms_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'reserved1-val :lambda-list '(m))
(cl:defmethod reserved1-val ((m <RespiratoryRate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:reserved1-val is deprecated.  Use dms_msgs-msg:reserved1 instead.")
  (reserved1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RespiratoryRate>)))
    "Constants for message type '<RespiratoryRate>"
  '((:RESP_RATE_AVAILABLE . 1)
    (:RESERVED . 2)
    (:RESERVED1 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RespiratoryRate)))
    "Constants for message type 'RespiratoryRate"
  '((:RESP_RATE_AVAILABLE . 1)
    (:RESERVED . 2)
    (:RESERVED1 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RespiratoryRate>) ostream)
  "Serializes a message object of type '<RespiratoryRate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'resp_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'reserved1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RespiratoryRate>) istream)
  "Deserializes a message object of type '<RespiratoryRate>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'resp_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'reserved1) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RespiratoryRate>)))
  "Returns string type for a message object of type '<RespiratoryRate>"
  "dms_msgs/RespiratoryRate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RespiratoryRate)))
  "Returns string type for a message object of type 'RespiratoryRate"
  "dms_msgs/RespiratoryRate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RespiratoryRate>)))
  "Returns md5sum for a message object of type '<RespiratoryRate>"
  "5f763b2bcfc7dc1a462e061345560094")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RespiratoryRate)))
  "Returns md5sum for a message object of type 'RespiratoryRate"
  "5f763b2bcfc7dc1a462e061345560094")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RespiratoryRate>)))
  "Returns full string definition for message of type '<RespiratoryRate>"
  (cl:format cl:nil "uint8 RESP_RATE_AVAILABLE = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 4~%uint8 available~%float32 resp_rate~%float32 reserved~%float32 reserved1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RespiratoryRate)))
  "Returns full string definition for message of type 'RespiratoryRate"
  (cl:format cl:nil "uint8 RESP_RATE_AVAILABLE = 1~%uint8 RESERVED = 2~%uint8 RESERVED1 = 4~%uint8 available~%float32 resp_rate~%float32 reserved~%float32 reserved1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RespiratoryRate>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RespiratoryRate>))
  "Converts a ROS message object to a list"
  (cl:list 'RespiratoryRate
    (cl:cons ':available (available msg))
    (cl:cons ':resp_rate (resp_rate msg))
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':reserved1 (reserved1 msg))
))
