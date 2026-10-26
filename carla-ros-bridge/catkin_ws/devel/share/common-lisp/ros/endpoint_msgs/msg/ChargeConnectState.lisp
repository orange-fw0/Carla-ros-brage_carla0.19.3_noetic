; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ChargeConnectState.msg.html

(cl:defclass <ChargeConnectState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ChargeConnectState (<ChargeConnectState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChargeConnectState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChargeConnectState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ChargeConnectState> is deprecated: use endpoint_msgs-msg:ChargeConnectState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ChargeConnectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ChargeConnectState>)))
    "Constants for message type '<ChargeConnectState>"
  '((:NONE . 0)
    (:NOT_CONNECTED . 1)
    (:CONNECTED . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ChargeConnectState)))
    "Constants for message type 'ChargeConnectState"
  '((:NONE . 0)
    (:NOT_CONNECTED . 1)
    (:CONNECTED . 2)
    (:RESERVED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChargeConnectState>) ostream)
  "Serializes a message object of type '<ChargeConnectState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChargeConnectState>) istream)
  "Deserializes a message object of type '<ChargeConnectState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChargeConnectState>)))
  "Returns string type for a message object of type '<ChargeConnectState>"
  "endpoint_msgs/ChargeConnectState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChargeConnectState)))
  "Returns string type for a message object of type 'ChargeConnectState"
  "endpoint_msgs/ChargeConnectState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChargeConnectState>)))
  "Returns md5sum for a message object of type '<ChargeConnectState>"
  "e495821264c310cb623e8776120869a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChargeConnectState)))
  "Returns md5sum for a message object of type 'ChargeConnectState"
  "e495821264c310cb623e8776120869a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChargeConnectState>)))
  "Returns full string definition for message of type '<ChargeConnectState>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NOT_CONNECTED = 1~%uint8 CONNECTED = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChargeConnectState)))
  "Returns full string definition for message of type 'ChargeConnectState"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 NOT_CONNECTED = 1~%uint8 CONNECTED = 2~%uint8 RESERVED = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChargeConnectState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChargeConnectState>))
  "Converts a ROS message object to a list"
  (cl:list 'ChargeConnectState
    (cl:cons ':value (value msg))
))
