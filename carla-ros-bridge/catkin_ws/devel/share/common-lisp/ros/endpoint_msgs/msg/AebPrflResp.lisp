; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebPrflResp.msg.html

(cl:defclass <AebPrflResp> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AebPrflResp (<AebPrflResp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebPrflResp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebPrflResp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebPrflResp> is deprecated: use endpoint_msgs-msg:AebPrflResp instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AebPrflResp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebPrflResp>)))
    "Constants for message type '<AebPrflResp>"
  '((:AEB_PRFL_NO_REQUEST . 0)
    (:AEB_PRFL_REQUEST_HONORED . 1)
    (:AEB_PRFL_REQUEST_LOST_ARBITRATION . 2)
    (:AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR . 3)
    (:AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED . 4)
    (:AEB_PRFL_REQUEST_RESERVED1 . 5)
    (:AEB_PRFL_REQUEST_RESERVED2 . 6)
    (:AEB_PRFL_REQUEST_RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebPrflResp)))
    "Constants for message type 'AebPrflResp"
  '((:AEB_PRFL_NO_REQUEST . 0)
    (:AEB_PRFL_REQUEST_HONORED . 1)
    (:AEB_PRFL_REQUEST_LOST_ARBITRATION . 2)
    (:AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR . 3)
    (:AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED . 4)
    (:AEB_PRFL_REQUEST_RESERVED1 . 5)
    (:AEB_PRFL_REQUEST_RESERVED2 . 6)
    (:AEB_PRFL_REQUEST_RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebPrflResp>) ostream)
  "Serializes a message object of type '<AebPrflResp>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebPrflResp>) istream)
  "Deserializes a message object of type '<AebPrflResp>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebPrflResp>)))
  "Returns string type for a message object of type '<AebPrflResp>"
  "endpoint_msgs/AebPrflResp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebPrflResp)))
  "Returns string type for a message object of type 'AebPrflResp"
  "endpoint_msgs/AebPrflResp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebPrflResp>)))
  "Returns md5sum for a message object of type '<AebPrflResp>"
  "c008498116e2a9e95064446b52ae2df8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebPrflResp)))
  "Returns md5sum for a message object of type 'AebPrflResp"
  "c008498116e2a9e95064446b52ae2df8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebPrflResp>)))
  "Returns full string definition for message of type '<AebPrflResp>"
  (cl:format cl:nil "uint8 AEB_PRFL_NO_REQUEST = 0~%uint8 AEB_PRFL_REQUEST_HONORED = 1~%uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_PRFL_REQUEST_RESERVED1 = 5~%uint8 AEB_PRFL_REQUEST_RESERVED2 = 6~%uint8 AEB_PRFL_REQUEST_RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebPrflResp)))
  "Returns full string definition for message of type 'AebPrflResp"
  (cl:format cl:nil "uint8 AEB_PRFL_NO_REQUEST = 0~%uint8 AEB_PRFL_REQUEST_HONORED = 1~%uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_PRFL_REQUEST_RESERVED1 = 5~%uint8 AEB_PRFL_REQUEST_RESERVED2 = 6~%uint8 AEB_PRFL_REQUEST_RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebPrflResp>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebPrflResp>))
  "Converts a ROS message object to a list"
  (cl:list 'AebPrflResp
    (cl:cons ':value (value msg))
))
