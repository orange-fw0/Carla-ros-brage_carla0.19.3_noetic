; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SwcStatus.msg.html

(cl:defclass <SwcStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SwcStatus (<SwcStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SwcStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SwcStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SwcStatus> is deprecated: use endpoint_msgs-msg:SwcStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SwcStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SwcStatus>)))
    "Constants for message type '<SwcStatus>"
  '((:SWC_STATUS_NOT_ACTIVE . 0)
    (:SWC_STATUS_NORMAL . 1)
    (:SWC_STATUS_ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SwcStatus)))
    "Constants for message type 'SwcStatus"
  '((:SWC_STATUS_NOT_ACTIVE . 0)
    (:SWC_STATUS_NORMAL . 1)
    (:SWC_STATUS_ERROR . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SwcStatus>) ostream)
  "Serializes a message object of type '<SwcStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SwcStatus>) istream)
  "Deserializes a message object of type '<SwcStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SwcStatus>)))
  "Returns string type for a message object of type '<SwcStatus>"
  "endpoint_msgs/SwcStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SwcStatus)))
  "Returns string type for a message object of type 'SwcStatus"
  "endpoint_msgs/SwcStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SwcStatus>)))
  "Returns md5sum for a message object of type '<SwcStatus>"
  "e82216bc29cdd8065c880d439fa6599b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SwcStatus)))
  "Returns md5sum for a message object of type 'SwcStatus"
  "e82216bc29cdd8065c880d439fa6599b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SwcStatus>)))
  "Returns full string definition for message of type '<SwcStatus>"
  (cl:format cl:nil "uint8 SWC_STATUS_NOT_ACTIVE = 0~%uint8 SWC_STATUS_NORMAL = 1~%uint8 SWC_STATUS_ERROR = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SwcStatus)))
  "Returns full string definition for message of type 'SwcStatus"
  (cl:format cl:nil "uint8 SWC_STATUS_NOT_ACTIVE = 0~%uint8 SWC_STATUS_NORMAL = 1~%uint8 SWC_STATUS_ERROR = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SwcStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SwcStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SwcStatus
    (cl:cons ':value (value msg))
))
