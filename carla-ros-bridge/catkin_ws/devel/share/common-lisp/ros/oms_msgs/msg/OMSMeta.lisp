; Auto-generated. Do not edit!


(cl:in-package oms_msgs-msg)


;//! \htmlinclude OMSMeta.msg.html

(cl:defclass <OMSMeta> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass OMSMeta (<OMSMeta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OMSMeta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OMSMeta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name oms_msgs-msg:<OMSMeta> is deprecated: use oms_msgs-msg:OMSMeta instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <OMSMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:available-val is deprecated.  Use oms_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <OMSMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:timestamp_us-val is deprecated.  Use oms_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <OMSMeta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader oms_msgs-msg:frame_id-val is deprecated.  Use oms_msgs-msg:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OMSMeta>)))
    "Constants for message type '<OMSMeta>"
  '((:FACE_RESULT_AVAILABLE . 1)
    (:BODY_RESULT_AVAILABLE . 2)
    (:GESTURE_RESULT_AVAILABLE . 4)
    (:OBJECT_RESULT_AVAILABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OMSMeta)))
    "Constants for message type 'OMSMeta"
  '((:FACE_RESULT_AVAILABLE . 1)
    (:BODY_RESULT_AVAILABLE . 2)
    (:GESTURE_RESULT_AVAILABLE . 4)
    (:OBJECT_RESULT_AVAILABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OMSMeta>) ostream)
  "Serializes a message object of type '<OMSMeta>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OMSMeta>) istream)
  "Deserializes a message object of type '<OMSMeta>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OMSMeta>)))
  "Returns string type for a message object of type '<OMSMeta>"
  "oms_msgs/OMSMeta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OMSMeta)))
  "Returns string type for a message object of type 'OMSMeta"
  "oms_msgs/OMSMeta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OMSMeta>)))
  "Returns md5sum for a message object of type '<OMSMeta>"
  "3b9d7c2cee78877eb1b6fbc52c5afcb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OMSMeta)))
  "Returns md5sum for a message object of type 'OMSMeta"
  "3b9d7c2cee78877eb1b6fbc52c5afcb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OMSMeta>)))
  "Returns full string definition for message of type '<OMSMeta>"
  (cl:format cl:nil "uint8 FACE_RESULT_AVAILABLE = 1~%uint8 BODY_RESULT_AVAILABLE = 2~%uint8 GESTURE_RESULT_AVAILABLE = 4~%uint8 OBJECT_RESULT_AVAILABLE = 8~%uint8 available~%uint64 timestamp_us~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OMSMeta)))
  "Returns full string definition for message of type 'OMSMeta"
  (cl:format cl:nil "uint8 FACE_RESULT_AVAILABLE = 1~%uint8 BODY_RESULT_AVAILABLE = 2~%uint8 GESTURE_RESULT_AVAILABLE = 4~%uint8 OBJECT_RESULT_AVAILABLE = 8~%uint8 available~%uint64 timestamp_us~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OMSMeta>))
  (cl:+ 0
     1
     8
     4 (cl:length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OMSMeta>))
  "Converts a ROS message object to a list"
  (cl:list 'OMSMeta
    (cl:cons ':available (available msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':frame_id (frame_id msg))
))
