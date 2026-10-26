; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude NetCardStatus.msg.html

(cl:defclass <NetCardStatus> (roslisp-msg-protocol:ros-message)
  ((net_card_name
    :reader net_card_name
    :initarg :net_card_name
    :type cl:string
    :initform "")
   (bytes_sent_rate
    :reader bytes_sent_rate
    :initarg :bytes_sent_rate
    :type cl:float
    :initform 0.0)
   (bytes_recv_rate
    :reader bytes_recv_rate
    :initarg :bytes_recv_rate
    :type cl:float
    :initform 0.0)
   (packets_sent_rate
    :reader packets_sent_rate
    :initarg :packets_sent_rate
    :type cl:float
    :initform 0.0)
   (packets_recv_rate
    :reader packets_recv_rate
    :initarg :packets_recv_rate
    :type cl:float
    :initform 0.0)
   (errin_rate
    :reader errin_rate
    :initarg :errin_rate
    :type cl:float
    :initform 0.0)
   (errout_rate
    :reader errout_rate
    :initarg :errout_rate
    :type cl:float
    :initform 0.0)
   (dropin_rate
    :reader dropin_rate
    :initarg :dropin_rate
    :type cl:float
    :initform 0.0)
   (dropout_rate
    :reader dropout_rate
    :initarg :dropout_rate
    :type cl:float
    :initform 0.0)
   (net_card_isup
    :reader net_card_isup
    :initarg :net_card_isup
    :type cl:boolean
    :initform cl:nil)
   (duplex
    :reader duplex
    :initarg :duplex
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0)
   (mtu
    :reader mtu
    :initarg :mtu
    :type cl:integer
    :initform 0)
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass NetCardStatus (<NetCardStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetCardStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetCardStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<NetCardStatus> is deprecated: use framework_status_msgs-msg:NetCardStatus instead.")))

(cl:ensure-generic-function 'net_card_name-val :lambda-list '(m))
(cl:defmethod net_card_name-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:net_card_name-val is deprecated.  Use framework_status_msgs-msg:net_card_name instead.")
  (net_card_name m))

(cl:ensure-generic-function 'bytes_sent_rate-val :lambda-list '(m))
(cl:defmethod bytes_sent_rate-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:bytes_sent_rate-val is deprecated.  Use framework_status_msgs-msg:bytes_sent_rate instead.")
  (bytes_sent_rate m))

(cl:ensure-generic-function 'bytes_recv_rate-val :lambda-list '(m))
(cl:defmethod bytes_recv_rate-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:bytes_recv_rate-val is deprecated.  Use framework_status_msgs-msg:bytes_recv_rate instead.")
  (bytes_recv_rate m))

(cl:ensure-generic-function 'packets_sent_rate-val :lambda-list '(m))
(cl:defmethod packets_sent_rate-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:packets_sent_rate-val is deprecated.  Use framework_status_msgs-msg:packets_sent_rate instead.")
  (packets_sent_rate m))

(cl:ensure-generic-function 'packets_recv_rate-val :lambda-list '(m))
(cl:defmethod packets_recv_rate-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:packets_recv_rate-val is deprecated.  Use framework_status_msgs-msg:packets_recv_rate instead.")
  (packets_recv_rate m))

(cl:ensure-generic-function 'errin_rate-val :lambda-list '(m))
(cl:defmethod errin_rate-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:errin_rate-val is deprecated.  Use framework_status_msgs-msg:errin_rate instead.")
  (errin_rate m))

(cl:ensure-generic-function 'errout_rate-val :lambda-list '(m))
(cl:defmethod errout_rate-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:errout_rate-val is deprecated.  Use framework_status_msgs-msg:errout_rate instead.")
  (errout_rate m))

(cl:ensure-generic-function 'dropin_rate-val :lambda-list '(m))
(cl:defmethod dropin_rate-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:dropin_rate-val is deprecated.  Use framework_status_msgs-msg:dropin_rate instead.")
  (dropin_rate m))

(cl:ensure-generic-function 'dropout_rate-val :lambda-list '(m))
(cl:defmethod dropout_rate-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:dropout_rate-val is deprecated.  Use framework_status_msgs-msg:dropout_rate instead.")
  (dropout_rate m))

(cl:ensure-generic-function 'net_card_isup-val :lambda-list '(m))
(cl:defmethod net_card_isup-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:net_card_isup-val is deprecated.  Use framework_status_msgs-msg:net_card_isup instead.")
  (net_card_isup m))

(cl:ensure-generic-function 'duplex-val :lambda-list '(m))
(cl:defmethod duplex-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:duplex-val is deprecated.  Use framework_status_msgs-msg:duplex instead.")
  (duplex m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:speed-val is deprecated.  Use framework_status_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'mtu-val :lambda-list '(m))
(cl:defmethod mtu-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:mtu-val is deprecated.  Use framework_status_msgs-msg:mtu instead.")
  (mtu m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <NetCardStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetCardStatus>) ostream)
  "Serializes a message object of type '<NetCardStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'net_card_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'net_card_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bytes_sent_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bytes_recv_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'packets_sent_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'packets_recv_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'errin_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'errout_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dropin_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dropout_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'net_card_isup) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duplex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mtu)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mtu)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mtu)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mtu)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetCardStatus>) istream)
  "Deserializes a message object of type '<NetCardStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'net_card_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'net_card_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bytes_sent_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bytes_recv_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'packets_sent_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'packets_recv_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'errin_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'errout_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dropin_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dropout_rate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'net_card_isup) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duplex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mtu)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'mtu)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'mtu)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'mtu)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetCardStatus>)))
  "Returns string type for a message object of type '<NetCardStatus>"
  "framework_status_msgs/NetCardStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetCardStatus)))
  "Returns string type for a message object of type 'NetCardStatus"
  "framework_status_msgs/NetCardStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetCardStatus>)))
  "Returns md5sum for a message object of type '<NetCardStatus>"
  "fffdcb72a8d94123d5dcaa023e00c013")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetCardStatus)))
  "Returns md5sum for a message object of type 'NetCardStatus"
  "fffdcb72a8d94123d5dcaa023e00c013")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetCardStatus>)))
  "Returns full string definition for message of type '<NetCardStatus>"
  (cl:format cl:nil "string net_card_name~%float32 bytes_sent_rate~%float32 bytes_recv_rate~%float32 packets_sent_rate~%float32 packets_recv_rate~%float32 errin_rate~%float32 errout_rate~%float32 dropin_rate~%float32 dropout_rate~%bool net_card_isup~%uint8 duplex~%uint32 speed~%uint32 mtu~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetCardStatus)))
  "Returns full string definition for message of type 'NetCardStatus"
  (cl:format cl:nil "string net_card_name~%float32 bytes_sent_rate~%float32 bytes_recv_rate~%float32 packets_sent_rate~%float32 packets_recv_rate~%float32 errin_rate~%float32 errout_rate~%float32 dropin_rate~%float32 dropout_rate~%bool net_card_isup~%uint8 duplex~%uint32 speed~%uint32 mtu~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetCardStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'net_card_name))
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetCardStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NetCardStatus
    (cl:cons ':net_card_name (net_card_name msg))
    (cl:cons ':bytes_sent_rate (bytes_sent_rate msg))
    (cl:cons ':bytes_recv_rate (bytes_recv_rate msg))
    (cl:cons ':packets_sent_rate (packets_sent_rate msg))
    (cl:cons ':packets_recv_rate (packets_recv_rate msg))
    (cl:cons ':errin_rate (errin_rate msg))
    (cl:cons ':errout_rate (errout_rate msg))
    (cl:cons ':dropin_rate (dropin_rate msg))
    (cl:cons ':dropout_rate (dropout_rate msg))
    (cl:cons ':net_card_isup (net_card_isup msg))
    (cl:cons ':duplex (duplex msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':mtu (mtu msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
