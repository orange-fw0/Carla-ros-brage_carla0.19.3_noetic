; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude NetStatus.msg.html

(cl:defclass <NetStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (net_status_data
    :reader net_status_data
    :initarg :net_status_data
    :type framework_status_msgs-msg:NetStatusData
    :initform (cl:make-instance 'framework_status_msgs-msg:NetStatusData)))
)

(cl:defclass NetStatus (<NetStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<NetStatus> is deprecated: use framework_status_msgs-msg:NetStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <NetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'net_status_data-val :lambda-list '(m))
(cl:defmethod net_status_data-val ((m <NetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:net_status_data-val is deprecated.  Use framework_status_msgs-msg:net_status_data instead.")
  (net_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NetStatus>)))
    "Constants for message type '<NetStatus>"
  '((:NET_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NetStatus)))
    "Constants for message type 'NetStatus"
  '((:NET_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetStatus>) ostream)
  "Serializes a message object of type '<NetStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'net_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetStatus>) istream)
  "Deserializes a message object of type '<NetStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'net_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetStatus>)))
  "Returns string type for a message object of type '<NetStatus>"
  "framework_status_msgs/NetStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetStatus)))
  "Returns string type for a message object of type 'NetStatus"
  "framework_status_msgs/NetStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetStatus>)))
  "Returns md5sum for a message object of type '<NetStatus>"
  "4a36dc85c510d6816ad66b723886af27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetStatus)))
  "Returns md5sum for a message object of type 'NetStatus"
  "4a36dc85c510d6816ad66b723886af27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetStatus>)))
  "Returns full string definition for message of type '<NetStatus>"
  (cl:format cl:nil "uint8 NET_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/NetStatusData net_status_data~%~%================================================================================~%MSG: framework_status_msgs/NetStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/NetCardStatus[] net_card_status_list~%framework_status_msgs/NetAliveStatus[] net_alive_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/NetCardStatus~%string net_card_name~%float32 bytes_sent_rate~%float32 bytes_recv_rate~%float32 packets_sent_rate~%float32 packets_recv_rate~%float32 errin_rate~%float32 errout_rate~%float32 dropin_rate~%float32 dropout_rate~%bool net_card_isup~%uint8 duplex~%uint32 speed~%uint32 mtu~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/NetAliveStatus~%string name~%uint32 loss_count~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetStatus)))
  "Returns full string definition for message of type 'NetStatus"
  (cl:format cl:nil "uint8 NET_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/NetStatusData net_status_data~%~%================================================================================~%MSG: framework_status_msgs/NetStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/NetCardStatus[] net_card_status_list~%framework_status_msgs/NetAliveStatus[] net_alive_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/NetCardStatus~%string net_card_name~%float32 bytes_sent_rate~%float32 bytes_recv_rate~%float32 packets_sent_rate~%float32 packets_recv_rate~%float32 errin_rate~%float32 errout_rate~%float32 dropin_rate~%float32 dropout_rate~%bool net_card_isup~%uint8 duplex~%uint32 speed~%uint32 mtu~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/NetAliveStatus~%string name~%uint32 loss_count~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'net_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NetStatus
    (cl:cons ':available (available msg))
    (cl:cons ':net_status_data (net_status_data msg))
))
