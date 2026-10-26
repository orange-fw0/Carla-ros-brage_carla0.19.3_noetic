; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebSysFaultStatus.msg.html

(cl:defclass <AebSysFaultStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AebSysFaultStatus (<AebSysFaultStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebSysFaultStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebSysFaultStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebSysFaultStatus> is deprecated: use endpoint_msgs-msg:AebSysFaultStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AebSysFaultStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebSysFaultStatus>)))
    "Constants for message type '<AebSysFaultStatus>"
  '((:AEB_SYS_FALULT_NO_ERROR . 0)
    (:AEB_SYS_FALULT_PERFORMANCE_DEGRADATION . 1)
    (:AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE . 2)
    (:AEB_SYS_FALULT_SERVICE_REQUIRED . 3)
    (:AEB_SYS_FALULT_RESERVED1 . 4)
    (:AEB_SYS_FALULT_RESERVED2 . 5)
    (:AEB_SYS_FALULT_RESERVED3 . 6)
    (:AEB_SYS_FALULT_RESERVED4 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebSysFaultStatus)))
    "Constants for message type 'AebSysFaultStatus"
  '((:AEB_SYS_FALULT_NO_ERROR . 0)
    (:AEB_SYS_FALULT_PERFORMANCE_DEGRADATION . 1)
    (:AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE . 2)
    (:AEB_SYS_FALULT_SERVICE_REQUIRED . 3)
    (:AEB_SYS_FALULT_RESERVED1 . 4)
    (:AEB_SYS_FALULT_RESERVED2 . 5)
    (:AEB_SYS_FALULT_RESERVED3 . 6)
    (:AEB_SYS_FALULT_RESERVED4 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebSysFaultStatus>) ostream)
  "Serializes a message object of type '<AebSysFaultStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebSysFaultStatus>) istream)
  "Deserializes a message object of type '<AebSysFaultStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebSysFaultStatus>)))
  "Returns string type for a message object of type '<AebSysFaultStatus>"
  "endpoint_msgs/AebSysFaultStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebSysFaultStatus)))
  "Returns string type for a message object of type 'AebSysFaultStatus"
  "endpoint_msgs/AebSysFaultStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebSysFaultStatus>)))
  "Returns md5sum for a message object of type '<AebSysFaultStatus>"
  "751d882f63f405b4529da3ed221c5804")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebSysFaultStatus)))
  "Returns md5sum for a message object of type 'AebSysFaultStatus"
  "751d882f63f405b4529da3ed221c5804")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebSysFaultStatus>)))
  "Returns full string definition for message of type '<AebSysFaultStatus>"
  (cl:format cl:nil "uint8 AEB_SYS_FALULT_NO_ERROR = 0~%uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1~%uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2~%uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3~%uint8 AEB_SYS_FALULT_RESERVED1 = 4~%uint8 AEB_SYS_FALULT_RESERVED2 = 5~%uint8 AEB_SYS_FALULT_RESERVED3 = 6~%uint8 AEB_SYS_FALULT_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebSysFaultStatus)))
  "Returns full string definition for message of type 'AebSysFaultStatus"
  (cl:format cl:nil "uint8 AEB_SYS_FALULT_NO_ERROR = 0~%uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1~%uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2~%uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3~%uint8 AEB_SYS_FALULT_RESERVED1 = 4~%uint8 AEB_SYS_FALULT_RESERVED2 = 5~%uint8 AEB_SYS_FALULT_RESERVED3 = 6~%uint8 AEB_SYS_FALULT_RESERVED4 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebSysFaultStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebSysFaultStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AebSysFaultStatus
    (cl:cons ':value (value msg))
))
