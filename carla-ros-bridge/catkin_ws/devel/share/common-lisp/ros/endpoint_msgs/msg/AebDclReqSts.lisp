; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude AebDclReqSts.msg.html

(cl:defclass <AebDclReqSts> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AebDclReqSts (<AebDclReqSts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AebDclReqSts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AebDclReqSts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<AebDclReqSts> is deprecated: use endpoint_msgs-msg:AebDclReqSts instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <AebDclReqSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AebDclReqSts>)))
    "Constants for message type '<AebDclReqSts>"
  '((:AEB_DLC_STATE_NO_REQUEST . 0)
    (:AEB_DLC_STATE_DECELERATION . 1)
    (:AEB_DLC_STATE_RESERVED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AebDclReqSts)))
    "Constants for message type 'AebDclReqSts"
  '((:AEB_DLC_STATE_NO_REQUEST . 0)
    (:AEB_DLC_STATE_DECELERATION . 1)
    (:AEB_DLC_STATE_RESERVED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AebDclReqSts>) ostream)
  "Serializes a message object of type '<AebDclReqSts>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AebDclReqSts>) istream)
  "Deserializes a message object of type '<AebDclReqSts>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AebDclReqSts>)))
  "Returns string type for a message object of type '<AebDclReqSts>"
  "endpoint_msgs/AebDclReqSts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AebDclReqSts)))
  "Returns string type for a message object of type 'AebDclReqSts"
  "endpoint_msgs/AebDclReqSts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AebDclReqSts>)))
  "Returns md5sum for a message object of type '<AebDclReqSts>"
  "c070ec02bdc94a2b1a62d5735b069dfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AebDclReqSts)))
  "Returns md5sum for a message object of type 'AebDclReqSts"
  "c070ec02bdc94a2b1a62d5735b069dfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AebDclReqSts>)))
  "Returns full string definition for message of type '<AebDclReqSts>"
  (cl:format cl:nil "uint8 AEB_DLC_STATE_NO_REQUEST = 0~%uint8 AEB_DLC_STATE_DECELERATION = 1~%uint8 AEB_DLC_STATE_RESERVED = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AebDclReqSts)))
  "Returns full string definition for message of type 'AebDclReqSts"
  (cl:format cl:nil "uint8 AEB_DLC_STATE_NO_REQUEST = 0~%uint8 AEB_DLC_STATE_DECELERATION = 1~%uint8 AEB_DLC_STATE_RESERVED = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AebDclReqSts>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AebDclReqSts>))
  "Converts a ROS message object to a list"
  (cl:list 'AebDclReqSts
    (cl:cons ':value (value msg))
))
