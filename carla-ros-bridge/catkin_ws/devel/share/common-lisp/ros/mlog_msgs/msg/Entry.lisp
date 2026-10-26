; Auto-generated. Do not edit!


(cl:in-package mlog_msgs-msg)


;//! \htmlinclude Entry.msg.html

(cl:defclass <Entry> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass Entry (<Entry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Entry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Entry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mlog_msgs-msg:<Entry> is deprecated: use mlog_msgs-msg:Entry instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Entry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mlog_msgs-msg:type-val is deprecated.  Use mlog_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Entry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mlog_msgs-msg:data-val is deprecated.  Use mlog_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Entry>)))
    "Constants for message type '<Entry>"
  '((:DATA_TYPE_NORMAL . 0)
    (:DATA_TYPE_MSG_TIMESTAMP . 1)
    (:DATA_TYPE_MSG_RELATION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Entry)))
    "Constants for message type 'Entry"
  '((:DATA_TYPE_NORMAL . 0)
    (:DATA_TYPE_MSG_TIMESTAMP . 1)
    (:DATA_TYPE_MSG_RELATION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Entry>) ostream)
  "Serializes a message object of type '<Entry>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Entry>) istream)
  "Deserializes a message object of type '<Entry>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Entry>)))
  "Returns string type for a message object of type '<Entry>"
  "mlog_msgs/Entry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Entry)))
  "Returns string type for a message object of type 'Entry"
  "mlog_msgs/Entry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Entry>)))
  "Returns md5sum for a message object of type '<Entry>"
  "76a913180710d6f3d98ec82c1323494a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Entry)))
  "Returns md5sum for a message object of type 'Entry"
  "76a913180710d6f3d98ec82c1323494a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Entry>)))
  "Returns full string definition for message of type '<Entry>"
  (cl:format cl:nil "uint8 DATA_TYPE_NORMAL = 0~%uint8 DATA_TYPE_MSG_TIMESTAMP = 1~%uint8 DATA_TYPE_MSG_RELATION = 2~%uint8 type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Entry)))
  "Returns full string definition for message of type 'Entry"
  (cl:format cl:nil "uint8 DATA_TYPE_NORMAL = 0~%uint8 DATA_TYPE_MSG_TIMESTAMP = 1~%uint8 DATA_TYPE_MSG_RELATION = 2~%uint8 type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Entry>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Entry>))
  "Converts a ROS message object to a list"
  (cl:list 'Entry
    (cl:cons ':type (type msg))
    (cl:cons ':data (data msg))
))
