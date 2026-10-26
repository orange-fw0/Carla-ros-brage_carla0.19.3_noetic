; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSMeta.msg.html

(cl:defclass <DMSMeta> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:integer
    :initform 0)
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (delay_timestamp_us
    :reader delay_timestamp_us
    :initarg :delay_timestamp_us
    :type cl:integer
    :initform 0)
   (consumption_time_us
    :reader consumption_time_us
    :initarg :consumption_time_us
    :type cl:integer
    :initform 0))
)

(cl:defclass DMSMeta (<DMSMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSMeta> is deprecated: use dms_msgs-msg:DMSMeta instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DMSMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:available-val is deprecated.  Use dms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <DMSMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:frame_id-val is deprecated.  Use dms_msgs-msg:frame_id instead.")
  (frame_id m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <DMSMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:timestamp_us-val is deprecated.  Use dms_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'delay_timestamp_us-val :lambda-list '(m))
(cl:defmethod delay_timestamp_us-val ((m <DMSMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:delay_timestamp_us-val is deprecated.  Use dms_msgs-msg:delay_timestamp_us instead.")
  (delay_timestamp_us m))

(cl:ensure-generic-function 'consumption_time_us-val :lambda-list '(m))
(cl:defmethod consumption_time_us-val ((m <DMSMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:consumption_time_us-val is deprecated.  Use dms_msgs-msg:consumption_time_us instead.")
  (consumption_time_us m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DMSMeta>)))
    "Constants for message type '<DMSMeta>"
  '((:FRAME_RESULT_AVAILABLE . 1)
    (:EVENT_RESULT_AVAILABLE . 2)
    (:FUSA_RESULT_AVAILABLE . 4)
    (:RESERVED . 8)
    (:RESERVED2 . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DMSMeta)))
    "Constants for message type 'DMSMeta"
  '((:FRAME_RESULT_AVAILABLE . 1)
    (:EVENT_RESULT_AVAILABLE . 2)
    (:FUSA_RESULT_AVAILABLE . 4)
    (:RESERVED . 8)
    (:RESERVED2 . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSMeta>) ostream)
  "Serializes a message object of type '<DMSMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delay_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'delay_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'delay_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'delay_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'delay_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'delay_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'delay_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'delay_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'consumption_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'consumption_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'consumption_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'consumption_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'consumption_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'consumption_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'consumption_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'consumption_time_us)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSMeta>) istream)
  "Deserializes a message object of type '<DMSMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'frame_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'delay_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'delay_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'delay_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'delay_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'delay_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'delay_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'delay_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'delay_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'consumption_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'consumption_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'consumption_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'consumption_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'consumption_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'consumption_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'consumption_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'consumption_time_us)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSMeta>)))
  "Returns string type for a message object of type '<DMSMeta>"
  "dms_msgs/DMSMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSMeta)))
  "Returns string type for a message object of type 'DMSMeta"
  "dms_msgs/DMSMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSMeta>)))
  "Returns md5sum for a message object of type '<DMSMeta>"
  "08a1c8c7562788c33afc722fd4b5bc1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSMeta)))
  "Returns md5sum for a message object of type 'DMSMeta"
  "08a1c8c7562788c33afc722fd4b5bc1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSMeta>)))
  "Returns full string definition for message of type '<DMSMeta>"
  (cl:format cl:nil "uint16 FRAME_RESULT_AVAILABLE = 1~%uint16 EVENT_RESULT_AVAILABLE = 2~%uint16 FUSA_RESULT_AVAILABLE = 4~%uint16 RESERVED = 8~%uint16 RESERVED2 = 16~%uint16 available~%uint64 frame_id~%uint64 timestamp_us~%uint64 delay_timestamp_us~%uint64 consumption_time_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSMeta)))
  "Returns full string definition for message of type 'DMSMeta"
  (cl:format cl:nil "uint16 FRAME_RESULT_AVAILABLE = 1~%uint16 EVENT_RESULT_AVAILABLE = 2~%uint16 FUSA_RESULT_AVAILABLE = 4~%uint16 RESERVED = 8~%uint16 RESERVED2 = 16~%uint16 available~%uint64 frame_id~%uint64 timestamp_us~%uint64 delay_timestamp_us~%uint64 consumption_time_us~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSMeta>))
  (cl:+ 0
     2
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSMeta
    (cl:cons ':available (available msg))
    (cl:cons ':frame_id (frame_id msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':delay_timestamp_us (delay_timestamp_us msg))
    (cl:cons ':consumption_time_us (consumption_time_us msg))
))
