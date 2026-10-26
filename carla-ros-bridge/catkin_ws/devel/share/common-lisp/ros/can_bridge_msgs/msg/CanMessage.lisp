; Auto-generated. Do not edit!


(cl:in-package can_bridge_msgs-msg)


;//! \htmlinclude CanMessage.msg.html

(cl:defclass <CanMessage> (roslisp-msg-protocol:ros-message)
  ((can_id
    :reader can_id
    :initarg :can_id
    :type cl:integer
    :initform 0)
   (ts_offset
    :reader ts_offset
    :initarg :ts_offset
    :type cl:integer
    :initform 0)
   (is_convert
    :reader is_convert
    :initarg :is_convert
    :type cl:fixnum
    :initform 0)
   (channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (len
    :reader len
    :initarg :len
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CanMessage (<CanMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name can_bridge_msgs-msg:<CanMessage> is deprecated: use can_bridge_msgs-msg:CanMessage instead.")))

(cl:ensure-generic-function 'can_id-val :lambda-list '(m))
(cl:defmethod can_id-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:can_id-val is deprecated.  Use can_bridge_msgs-msg:can_id instead.")
  (can_id m))

(cl:ensure-generic-function 'ts_offset-val :lambda-list '(m))
(cl:defmethod ts_offset-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:ts_offset-val is deprecated.  Use can_bridge_msgs-msg:ts_offset instead.")
  (ts_offset m))

(cl:ensure-generic-function 'is_convert-val :lambda-list '(m))
(cl:defmethod is_convert-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:is_convert-val is deprecated.  Use can_bridge_msgs-msg:is_convert instead.")
  (is_convert m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:channel-val is deprecated.  Use can_bridge_msgs-msg:channel instead.")
  (channel m))

(cl:ensure-generic-function 'len-val :lambda-list '(m))
(cl:defmethod len-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:len-val is deprecated.  Use can_bridge_msgs-msg:len instead.")
  (len m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CanMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader can_bridge_msgs-msg:data-val is deprecated.  Use can_bridge_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanMessage>) ostream)
  "Serializes a message object of type '<CanMessage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'can_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'can_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ts_offset)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_convert)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'len)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanMessage>) istream)
  "Deserializes a message object of type '<CanMessage>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'can_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ts_offset) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_convert)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'len)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanMessage>)))
  "Returns string type for a message object of type '<CanMessage>"
  "can_bridge_msgs/CanMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanMessage)))
  "Returns string type for a message object of type 'CanMessage"
  "can_bridge_msgs/CanMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanMessage>)))
  "Returns md5sum for a message object of type '<CanMessage>"
  "d1d55429697437cd2ea6a1e7d63dad9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanMessage)))
  "Returns md5sum for a message object of type 'CanMessage"
  "d1d55429697437cd2ea6a1e7d63dad9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanMessage>)))
  "Returns full string definition for message of type '<CanMessage>"
  (cl:format cl:nil "uint32 can_id~%int32 ts_offset~%uint8 is_convert~%uint8 channel~%uint8 len~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanMessage)))
  "Returns full string definition for message of type 'CanMessage"
  (cl:format cl:nil "uint32 can_id~%int32 ts_offset~%uint8 is_convert~%uint8 channel~%uint8 len~%uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanMessage>))
  (cl:+ 0
     4
     4
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'CanMessage
    (cl:cons ':can_id (can_id msg))
    (cl:cons ':ts_offset (ts_offset msg))
    (cl:cons ':is_convert (is_convert msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':len (len msg))
    (cl:cons ':data (data msg))
))
