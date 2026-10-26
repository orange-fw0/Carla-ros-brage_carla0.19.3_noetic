; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebDclResp.msg.html

(cl:defclass <AebDclResp> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AebDclResp (<AebDclResp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebDclResp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebDclResp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebDclResp> is deprecated: use endpoint_msgs-msg:AebDclResp instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AebDclResp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebDclResp>)))
    "Constants for message type '<AebDclResp>"
  '((:AEB_DCL_NO_REQUEST . 0)
    (:AEB_DCL_REQUEST_HONORED . 1)
    (:AEB_DCL_REQUEST_LOST_ARBITRATION . 2)
    (:AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR . 3)
    (:AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED . 4)
    (:AEB_DCL_REQUEST_RESERVED1 . 5)
    (:AEB_DCL_REQUEST_RESERVED2 . 6)
    (:AEB_DCL_REQUEST_RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebDclResp)))
    "Constants for message type 'AebDclResp"
  '((:AEB_DCL_NO_REQUEST . 0)
    (:AEB_DCL_REQUEST_HONORED . 1)
    (:AEB_DCL_REQUEST_LOST_ARBITRATION . 2)
    (:AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR . 3)
    (:AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED . 4)
    (:AEB_DCL_REQUEST_RESERVED1 . 5)
    (:AEB_DCL_REQUEST_RESERVED2 . 6)
    (:AEB_DCL_REQUEST_RESERVED3 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebDclResp>) ostream)
  "Serializes a message object of type '<AebDclResp>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebDclResp>) istream)
  "Deserializes a message object of type '<AebDclResp>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebDclResp>)))
  "Returns string type for a message object of type '<AebDclResp>"
  "endpoint_msgs/AebDclResp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebDclResp)))
  "Returns string type for a message object of type 'AebDclResp"
  "endpoint_msgs/AebDclResp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebDclResp>)))
  "Returns md5sum for a message object of type '<AebDclResp>"
  "5909bfa17c6e985e4990735ff91e68c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebDclResp)))
  "Returns md5sum for a message object of type 'AebDclResp"
  "5909bfa17c6e985e4990735ff91e68c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebDclResp>)))
  "Returns full string definition for message of type '<AebDclResp>"
  (cl:format cl:nil "uint8 AEB_DCL_NO_REQUEST = 0~%uint8 AEB_DCL_REQUEST_HONORED = 1~%uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_DCL_REQUEST_RESERVED1 = 5~%uint8 AEB_DCL_REQUEST_RESERVED2 = 6~%uint8 AEB_DCL_REQUEST_RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebDclResp)))
  "Returns full string definition for message of type 'AebDclResp"
  (cl:format cl:nil "uint8 AEB_DCL_NO_REQUEST = 0~%uint8 AEB_DCL_REQUEST_HONORED = 1~%uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2~%uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_DCL_REQUEST_RESERVED1 = 5~%uint8 AEB_DCL_REQUEST_RESERVED2 = 6~%uint8 AEB_DCL_REQUEST_RESERVED3 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebDclResp>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebDclResp>))
  "Converts a ROS message object to a list"
  (cl:list 'AebDclResp
    (cl:cons ':value (value msg))
))
