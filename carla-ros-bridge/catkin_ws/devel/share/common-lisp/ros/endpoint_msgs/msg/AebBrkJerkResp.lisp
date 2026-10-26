; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebBrkJerkResp.msg.html

(cl:defclass <AebBrkJerkResp> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AebBrkJerkResp (<AebBrkJerkResp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebBrkJerkResp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebBrkJerkResp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebBrkJerkResp> is deprecated: use endpoint_msgs-msg:AebBrkJerkResp instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AebBrkJerkResp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebBrkJerkResp>)))
    "Constants for message type '<AebBrkJerkResp>"
  '((:AEB_BRAKE_JERK_NO_REQUEST . 0)
    (:AEB_BRAKE_JERK_REQUEST_HONORED . 1)
    (:AEB_BRAKE_JERK_LOST_ARBITRATION . 2)
    (:AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR . 3)
    (:AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED . 4)
    (:AEB_BRAKE_JERK_RESERVED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebBrkJerkResp)))
    "Constants for message type 'AebBrkJerkResp"
  '((:AEB_BRAKE_JERK_NO_REQUEST . 0)
    (:AEB_BRAKE_JERK_REQUEST_HONORED . 1)
    (:AEB_BRAKE_JERK_LOST_ARBITRATION . 2)
    (:AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR . 3)
    (:AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED . 4)
    (:AEB_BRAKE_JERK_RESERVED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebBrkJerkResp>) ostream)
  "Serializes a message object of type '<AebBrkJerkResp>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebBrkJerkResp>) istream)
  "Deserializes a message object of type '<AebBrkJerkResp>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebBrkJerkResp>)))
  "Returns string type for a message object of type '<AebBrkJerkResp>"
  "endpoint_msgs/AebBrkJerkResp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebBrkJerkResp)))
  "Returns string type for a message object of type 'AebBrkJerkResp"
  "endpoint_msgs/AebBrkJerkResp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebBrkJerkResp>)))
  "Returns md5sum for a message object of type '<AebBrkJerkResp>"
  "c50baed73cee6827b278af7bcc7084ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebBrkJerkResp)))
  "Returns md5sum for a message object of type 'AebBrkJerkResp"
  "c50baed73cee6827b278af7bcc7084ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebBrkJerkResp>)))
  "Returns full string definition for message of type '<AebBrkJerkResp>"
  (cl:format cl:nil "uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1~%uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2~%uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_BRAKE_JERK_RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebBrkJerkResp)))
  "Returns full string definition for message of type 'AebBrkJerkResp"
  (cl:format cl:nil "uint8 AEB_BRAKE_JERK_NO_REQUEST = 0~%uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1~%uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2~%uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3~%uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4~%uint8 AEB_BRAKE_JERK_RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebBrkJerkResp>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebBrkJerkResp>))
  "Converts a ROS message object to a list"
  (cl:list 'AebBrkJerkResp
    (cl:cons ':value (value msg))
))
