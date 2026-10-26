; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLALocalizationMeta.msg.html

(cl:defclass <MLALocalizationMeta> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MLALocalizationMeta (<MLALocalizationMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLALocalizationMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLALocalizationMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLALocalizationMeta> is deprecated: use mla_localization_msgs-msg:MLALocalizationMeta instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <MLALocalizationMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:timestamp_us-val is deprecated.  Use mla_localization_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <MLALocalizationMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:seq-val is deprecated.  Use mla_localization_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MLALocalizationMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:type-val is deprecated.  Use mla_localization_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLALocalizationMeta>)))
    "Constants for message type '<MLALocalizationMeta>"
  '((:MLA_PARKING . 1)
    (:MLA_PILOT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLALocalizationMeta)))
    "Constants for message type 'MLALocalizationMeta"
  '((:MLA_PARKING . 1)
    (:MLA_PILOT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLALocalizationMeta>) ostream)
  "Serializes a message object of type '<MLALocalizationMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLALocalizationMeta>) istream)
  "Deserializes a message object of type '<MLALocalizationMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLALocalizationMeta>)))
  "Returns string type for a message object of type '<MLALocalizationMeta>"
  "mla_localization_msgs/MLALocalizationMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLALocalizationMeta)))
  "Returns string type for a message object of type 'MLALocalizationMeta"
  "mla_localization_msgs/MLALocalizationMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLALocalizationMeta>)))
  "Returns md5sum for a message object of type '<MLALocalizationMeta>"
  "80458cf41934df80ec1c11ea394bde16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLALocalizationMeta)))
  "Returns md5sum for a message object of type 'MLALocalizationMeta"
  "80458cf41934df80ec1c11ea394bde16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLALocalizationMeta>)))
  "Returns full string definition for message of type '<MLALocalizationMeta>"
  (cl:format cl:nil "uint8 MLA_PARKING = 1~%uint8 MLA_PILOT = 2~%uint64 timestamp_us~%uint64 seq~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLALocalizationMeta)))
  "Returns full string definition for message of type 'MLALocalizationMeta"
  (cl:format cl:nil "uint8 MLA_PARKING = 1~%uint8 MLA_PILOT = 2~%uint64 timestamp_us~%uint64 seq~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLALocalizationMeta>))
  (cl:+ 0
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLALocalizationMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'MLALocalizationMeta
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':type (type msg))
))
