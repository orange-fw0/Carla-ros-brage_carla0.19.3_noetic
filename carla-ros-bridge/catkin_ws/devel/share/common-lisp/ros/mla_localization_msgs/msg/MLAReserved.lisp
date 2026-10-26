; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAReserved.msg.html

(cl:defclass <MLAReserved> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (reserved_data
    :reader reserved_data
    :initarg :reserved_data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass MLAReserved (<MLAReserved>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAReserved>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAReserved)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAReserved> is deprecated: use mla_localization_msgs-msg:MLAReserved instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAReserved>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'reserved_data-val :lambda-list '(m))
(cl:defmethod reserved_data-val ((m <MLAReserved>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:reserved_data-val is deprecated.  Use mla_localization_msgs-msg:reserved_data instead.")
  (reserved_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAReserved>)))
    "Constants for message type '<MLAReserved>"
  '((:MLA_RESERVED_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAReserved)))
    "Constants for message type 'MLAReserved"
  '((:MLA_RESERVED_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAReserved>) ostream)
  "Serializes a message object of type '<MLAReserved>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reserved_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) ele) ostream))
   (cl:slot-value msg 'reserved_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAReserved>) istream)
  "Deserializes a message object of type '<MLAReserved>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reserved_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reserved_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAReserved>)))
  "Returns string type for a message object of type '<MLAReserved>"
  "mla_localization_msgs/MLAReserved")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAReserved)))
  "Returns string type for a message object of type 'MLAReserved"
  "mla_localization_msgs/MLAReserved")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAReserved>)))
  "Returns md5sum for a message object of type '<MLAReserved>"
  "e2bc8b28248782138f12e765061f43bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAReserved)))
  "Returns md5sum for a message object of type 'MLAReserved"
  "e2bc8b28248782138f12e765061f43bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAReserved>)))
  "Returns full string definition for message of type '<MLAReserved>"
  (cl:format cl:nil "uint8 MLA_RESERVED_DATA = 1~%uint8 available~%uint64[] reserved_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAReserved)))
  "Returns full string definition for message of type 'MLAReserved"
  (cl:format cl:nil "uint8 MLA_RESERVED_DATA = 1~%uint8 available~%uint64[] reserved_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAReserved>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAReserved>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAReserved
    (cl:cons ':available (available msg))
    (cl:cons ':reserved_data (reserved_data msg))
))
