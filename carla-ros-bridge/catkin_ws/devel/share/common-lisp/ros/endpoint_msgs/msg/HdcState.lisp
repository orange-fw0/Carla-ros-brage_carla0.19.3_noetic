; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude HdcState.msg.html

(cl:defclass <HdcState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HdcState (<HdcState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HdcState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HdcState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<HdcState> is deprecated: use endpoint_msgs-msg:HdcState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HdcState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HdcState>)))
    "Constants for message type '<HdcState>"
  '((:NORMAL . 0)
    (:ENABLED . 1)
    (:ACTIVED . 2)
    (:FAILED . 3)
    (:TEMPORARILY_INHIBITED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HdcState)))
    "Constants for message type 'HdcState"
  '((:NORMAL . 0)
    (:ENABLED . 1)
    (:ACTIVED . 2)
    (:FAILED . 3)
    (:TEMPORARILY_INHIBITED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HdcState>) ostream)
  "Serializes a message object of type '<HdcState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HdcState>) istream)
  "Deserializes a message object of type '<HdcState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HdcState>)))
  "Returns string type for a message object of type '<HdcState>"
  "endpoint_msgs/HdcState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HdcState)))
  "Returns string type for a message object of type 'HdcState"
  "endpoint_msgs/HdcState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HdcState>)))
  "Returns md5sum for a message object of type '<HdcState>"
  "4b52f34efdd107191a6b414e39d707bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HdcState)))
  "Returns md5sum for a message object of type 'HdcState"
  "4b52f34efdd107191a6b414e39d707bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HdcState>)))
  "Returns full string definition for message of type '<HdcState>"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 ENABLED = 1~%uint8 ACTIVED = 2~%uint8 FAILED = 3~%uint8 TEMPORARILY_INHIBITED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HdcState)))
  "Returns full string definition for message of type 'HdcState"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 ENABLED = 1~%uint8 ACTIVED = 2~%uint8 FAILED = 3~%uint8 TEMPORARILY_INHIBITED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HdcState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HdcState>))
  "Converts a ROS message object to a list"
  (cl:list 'HdcState
    (cl:cons ':value (value msg))
))
