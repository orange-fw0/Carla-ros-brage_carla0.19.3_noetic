; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude NetStatusData.msg.html

(cl:defclass <NetStatusData> (roslisp-msg-protocol:ros-message)
  ((health_status
    :reader health_status
    :initarg :health_status
    :type cl:fixnum
    :initform 0)
   (net_card_status_list
    :reader net_card_status_list
    :initarg :net_card_status_list
    :type (cl:vector framework_status_msgs-msg:NetCardStatus)
   :initform (cl:make-array 0 :element-type 'framework_status_msgs-msg:NetCardStatus :initial-element (cl:make-instance 'framework_status_msgs-msg:NetCardStatus)))
   (net_alive_list
    :reader net_alive_list
    :initarg :net_alive_list
    :type (cl:vector framework_status_msgs-msg:NetAliveStatus)
   :initform (cl:make-array 0 :element-type 'framework_status_msgs-msg:NetAliveStatus :initial-element (cl:make-instance 'framework_status_msgs-msg:NetAliveStatus)))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass NetStatusData (<NetStatusData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetStatusData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetStatusData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<NetStatusData> is deprecated: use framework_status_msgs-msg:NetStatusData instead.")))

(cl:ensure-generic-function 'health_status-val :lambda-list '(m))
(cl:defmethod health_status-val ((m <NetStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:health_status-val is deprecated.  Use framework_status_msgs-msg:health_status instead.")
  (health_status m))

(cl:ensure-generic-function 'net_card_status_list-val :lambda-list '(m))
(cl:defmethod net_card_status_list-val ((m <NetStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:net_card_status_list-val is deprecated.  Use framework_status_msgs-msg:net_card_status_list instead.")
  (net_card_status_list m))

(cl:ensure-generic-function 'net_alive_list-val :lambda-list '(m))
(cl:defmethod net_alive_list-val ((m <NetStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:net_alive_list-val is deprecated.  Use framework_status_msgs-msg:net_alive_list instead.")
  (net_alive_list m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <NetStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:reserved_info-val is deprecated.  Use framework_status_msgs-msg:reserved_info instead.")
  (reserved_info m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <NetStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message-val is deprecated.  Use framework_status_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NetStatusData>)))
    "Constants for message type '<NetStatusData>"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NetStatusData)))
    "Constants for message type 'NetStatusData"
  '((:NORM . 0)
    (:WARNING . 1)
    (:ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetStatusData>) ostream)
  "Serializes a message object of type '<NetStatusData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'net_card_status_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'net_card_status_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'net_alive_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'net_alive_list))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetStatusData>) istream)
  "Deserializes a message object of type '<NetStatusData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'health_status)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'net_card_status_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'net_card_status_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'framework_status_msgs-msg:NetCardStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'net_alive_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'net_alive_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'framework_status_msgs-msg:NetAliveStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetStatusData>)))
  "Returns string type for a message object of type '<NetStatusData>"
  "framework_status_msgs/NetStatusData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetStatusData)))
  "Returns string type for a message object of type 'NetStatusData"
  "framework_status_msgs/NetStatusData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetStatusData>)))
  "Returns md5sum for a message object of type '<NetStatusData>"
  "89621c9c675e97e99ee0864ec9c3bae0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetStatusData)))
  "Returns md5sum for a message object of type 'NetStatusData"
  "89621c9c675e97e99ee0864ec9c3bae0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetStatusData>)))
  "Returns full string definition for message of type '<NetStatusData>"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/NetCardStatus[] net_card_status_list~%framework_status_msgs/NetAliveStatus[] net_alive_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/NetCardStatus~%string net_card_name~%float32 bytes_sent_rate~%float32 bytes_recv_rate~%float32 packets_sent_rate~%float32 packets_recv_rate~%float32 errin_rate~%float32 errout_rate~%float32 dropin_rate~%float32 dropout_rate~%bool net_card_isup~%uint8 duplex~%uint32 speed~%uint32 mtu~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/NetAliveStatus~%string name~%uint32 loss_count~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetStatusData)))
  "Returns full string definition for message of type 'NetStatusData"
  (cl:format cl:nil "uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/NetCardStatus[] net_card_status_list~%framework_status_msgs/NetAliveStatus[] net_alive_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/NetCardStatus~%string net_card_name~%float32 bytes_sent_rate~%float32 bytes_recv_rate~%float32 packets_sent_rate~%float32 packets_recv_rate~%float32 errin_rate~%float32 errout_rate~%float32 dropin_rate~%float32 dropout_rate~%bool net_card_isup~%uint8 duplex~%uint32 speed~%uint32 mtu~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/NetAliveStatus~%string name~%uint32 loss_count~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetStatusData>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'net_card_status_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'net_alive_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetStatusData>))
  "Converts a ROS message object to a list"
  (cl:list 'NetStatusData
    (cl:cons ':health_status (health_status msg))
    (cl:cons ':net_card_status_list (net_card_status_list msg))
    (cl:cons ':net_alive_list (net_alive_list msg))
    (cl:cons ':reserved_info (reserved_info msg))
    (cl:cons ':message (message msg))
))
