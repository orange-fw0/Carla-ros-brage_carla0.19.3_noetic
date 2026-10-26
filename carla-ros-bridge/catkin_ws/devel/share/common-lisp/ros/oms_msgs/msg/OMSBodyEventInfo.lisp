; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSBodyEventInfo.msg.html

(cl:defclass <OMSBodyEventInfo> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (start_time
    :reader start_time
    :initarg :start_time
    :type cl:integer
    :initform 0)
   (end_time
    :reader end_time
    :initarg :end_time
    :type cl:integer
    :initform 0))
)

(cl:defclass OMSBodyEventInfo (<OMSBodyEventInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSBodyEventInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSBodyEventInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSBodyEventInfo> is deprecated: use oms_msgs-msg:OMSBodyEventInfo instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <OMSBodyEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:value-val is deprecated.  Use oms_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <OMSBodyEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:score-val is deprecated.  Use oms_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'start_time-val :lambda-list '(m))
(cl:defmethod start_time-val ((m <OMSBodyEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:start_time-val is deprecated.  Use oms_msgs-msg:start_time instead.")
  (start_time m))

(cl:ensure-generic-function 'end_time-val :lambda-list '(m))
(cl:defmethod end_time-val ((m <OMSBodyEventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:end_time-val is deprecated.  Use oms_msgs-msg:end_time instead.")
  (end_time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSBodyEventInfo>)))
    "Constants for message type '<OMSBodyEventInfo>"
  '((:UNAVAILABLE . 0)
    (:HAND_OUT_OF_WINDOW . 1)
    (:BODY_LEAVING_THE_SEAT . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5)
    (:RESERVED4 . 6)
    (:RESERVED5 . 7)
    (:UNCERTAIN . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSBodyEventInfo)))
    "Constants for message type 'OMSBodyEventInfo"
  '((:UNAVAILABLE . 0)
    (:HAND_OUT_OF_WINDOW . 1)
    (:BODY_LEAVING_THE_SEAT . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4)
    (:RESERVED3 . 5)
    (:RESERVED4 . 6)
    (:RESERVED5 . 7)
    (:UNCERTAIN . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSBodyEventInfo>) ostream)
  "Serializes a message object of type '<OMSBodyEventInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'start_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'end_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'end_time)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSBodyEventInfo>) istream)
  "Deserializes a message object of type '<OMSBodyEventInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'start_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'end_time)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSBodyEventInfo>)))
  "Returns string type for a message object of type '<OMSBodyEventInfo>"
  "oms_msgs/OMSBodyEventInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSBodyEventInfo)))
  "Returns string type for a message object of type 'OMSBodyEventInfo"
  "oms_msgs/OMSBodyEventInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSBodyEventInfo>)))
  "Returns md5sum for a message object of type '<OMSBodyEventInfo>"
  "cb0cb3b1d6d9ed3e381ad4a37b829da8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSBodyEventInfo)))
  "Returns md5sum for a message object of type 'OMSBodyEventInfo"
  "cb0cb3b1d6d9ed3e381ad4a37b829da8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSBodyEventInfo>)))
  "Returns full string definition for message of type '<OMSBodyEventInfo>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 HAND_OUT_OF_WINDOW = 1~%uint8 BODY_LEAVING_THE_SEAT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 UNCERTAIN = 8~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSBodyEventInfo)))
  "Returns full string definition for message of type 'OMSBodyEventInfo"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 HAND_OUT_OF_WINDOW = 1~%uint8 BODY_LEAVING_THE_SEAT = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 RESERVED3 = 5~%uint8 RESERVED4 = 6~%uint8 RESERVED5 = 7~%uint8 UNCERTAIN = 8~%uint8 value~%float32 score~%uint64 start_time~%uint64 end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSBodyEventInfo>))
  (cl:+ 0
     1
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSBodyEventInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSBodyEventInfo
    (cl:cons ':value (value msg))
    (cl:cons ':score (score msg))
    (cl:cons ':start_time (start_time msg))
    (cl:cons ':end_time (end_time msg))
))
