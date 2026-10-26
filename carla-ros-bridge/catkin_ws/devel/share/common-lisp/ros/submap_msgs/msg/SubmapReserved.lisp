; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude SubmapReserved.msg.html

(cl:defclass <SubmapReserved> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SubmapReserved (<SubmapReserved>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubmapReserved>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubmapReserved)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<SubmapReserved> is deprecated: use submap_msgs-msg:SubmapReserved instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SubmapReserved>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:available-val is deprecated.  Use submap_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'reserved_data-val :lambda-list '(m))
(cl:defmethod reserved_data-val ((m <SubmapReserved>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:reserved_data-val is deprecated.  Use submap_msgs-msg:reserved_data instead.")
  (reserved_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SubmapReserved>)))
    "Constants for message type '<SubmapReserved>"
  '((:SUBMAP_RESERVED_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SubmapReserved)))
    "Constants for message type 'SubmapReserved"
  '((:SUBMAP_RESERVED_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubmapReserved>) ostream)
  "Serializes a message object of type '<SubmapReserved>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubmapReserved>) istream)
  "Deserializes a message object of type '<SubmapReserved>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubmapReserved>)))
  "Returns string type for a message object of type '<SubmapReserved>"
  "submap_msgs/SubmapReserved")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubmapReserved)))
  "Returns string type for a message object of type 'SubmapReserved"
  "submap_msgs/SubmapReserved")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubmapReserved>)))
  "Returns md5sum for a message object of type '<SubmapReserved>"
  "09edcbb86444b02db6f4b28cd94dce2e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubmapReserved)))
  "Returns md5sum for a message object of type 'SubmapReserved"
  "09edcbb86444b02db6f4b28cd94dce2e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubmapReserved>)))
  "Returns full string definition for message of type '<SubmapReserved>"
  (cl:format cl:nil "uint8 SUBMAP_RESERVED_DATA = 1~%uint8 available~%uint64[] reserved_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubmapReserved)))
  "Returns full string definition for message of type 'SubmapReserved"
  (cl:format cl:nil "uint8 SUBMAP_RESERVED_DATA = 1~%uint8 available~%uint64[] reserved_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubmapReserved>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reserved_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubmapReserved>))
  "Converts a ROS message object to a list"
  (cl:list 'SubmapReserved
    (cl:cons ':available (available msg))
    (cl:cons ':reserved_data (reserved_data msg))
))
