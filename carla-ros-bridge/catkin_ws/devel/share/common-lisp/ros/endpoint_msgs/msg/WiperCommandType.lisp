; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WiperCommandType.msg.html

(cl:defclass <WiperCommandType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WiperCommandType (<WiperCommandType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WiperCommandType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WiperCommandType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WiperCommandType> is deprecated: use endpoint_msgs-msg:WiperCommandType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WiperCommandType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WiperCommandType>)))
    "Constants for message type '<WiperCommandType>"
  '((:OFF . 0)
    (:LOW . 1)
    (:HIGH . 2)
    (:AUTO . 3)
    (:SPRAY . 4)
    (:RESERVED . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WiperCommandType)))
    "Constants for message type 'WiperCommandType"
  '((:OFF . 0)
    (:LOW . 1)
    (:HIGH . 2)
    (:AUTO . 3)
    (:SPRAY . 4)
    (:RESERVED . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WiperCommandType>) ostream)
  "Serializes a message object of type '<WiperCommandType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WiperCommandType>) istream)
  "Deserializes a message object of type '<WiperCommandType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WiperCommandType>)))
  "Returns string type for a message object of type '<WiperCommandType>"
  "endpoint_msgs/WiperCommandType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WiperCommandType)))
  "Returns string type for a message object of type 'WiperCommandType"
  "endpoint_msgs/WiperCommandType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WiperCommandType>)))
  "Returns md5sum for a message object of type '<WiperCommandType>"
  "e3f338d0d4f9b666e8021c392afba60a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WiperCommandType)))
  "Returns md5sum for a message object of type 'WiperCommandType"
  "e3f338d0d4f9b666e8021c392afba60a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WiperCommandType>)))
  "Returns full string definition for message of type '<WiperCommandType>"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 LOW = 1~%uint8 HIGH = 2~%uint8 AUTO = 3~%uint8 SPRAY = 4~%uint8 RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WiperCommandType)))
  "Returns full string definition for message of type 'WiperCommandType"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 LOW = 1~%uint8 HIGH = 2~%uint8 AUTO = 3~%uint8 SPRAY = 4~%uint8 RESERVED = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WiperCommandType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WiperCommandType>))
  "Converts a ROS message object to a list"
  (cl:list 'WiperCommandType
    (cl:cons ':value (value msg))
))
