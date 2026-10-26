; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WiperStateType.msg.html

(cl:defclass <WiperStateType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WiperStateType (<WiperStateType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WiperStateType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WiperStateType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WiperStateType> is deprecated: use endpoint_msgs-msg:WiperStateType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <WiperStateType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WiperStateType>)))
    "Constants for message type '<WiperStateType>"
  '((:OFF . 0)
    (:AUTO_OFF . 1)
    (:AUTO_MOVING . 2)
    (:MANUAL_OFF . 3)
    (:MANUAL_ON . 4)
    (:MANUAL_LOW . 5)
    (:MANUAL_HIGH . 6)
    (:MIST_FLICK . 7)
    (:WASH . 8)
    (:AUTO_LOW . 9)
    (:AUTO_HIGH . 10)
    (:COURTESY_WIPE . 11)
    (:AUTO_ADJUST . 12)
    (:RESERVED . 13)
    (:STALLED . 14)
    (:NONE . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WiperStateType)))
    "Constants for message type 'WiperStateType"
  '((:OFF . 0)
    (:AUTO_OFF . 1)
    (:AUTO_MOVING . 2)
    (:MANUAL_OFF . 3)
    (:MANUAL_ON . 4)
    (:MANUAL_LOW . 5)
    (:MANUAL_HIGH . 6)
    (:MIST_FLICK . 7)
    (:WASH . 8)
    (:AUTO_LOW . 9)
    (:AUTO_HIGH . 10)
    (:COURTESY_WIPE . 11)
    (:AUTO_ADJUST . 12)
    (:RESERVED . 13)
    (:STALLED . 14)
    (:NONE . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WiperStateType>) ostream)
  "Serializes a message object of type '<WiperStateType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WiperStateType>) istream)
  "Deserializes a message object of type '<WiperStateType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WiperStateType>)))
  "Returns string type for a message object of type '<WiperStateType>"
  "endpoint_msgs/WiperStateType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WiperStateType)))
  "Returns string type for a message object of type 'WiperStateType"
  "endpoint_msgs/WiperStateType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WiperStateType>)))
  "Returns md5sum for a message object of type '<WiperStateType>"
  "8bdfb8e383ba5a20bdc9118f3b8516e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WiperStateType)))
  "Returns md5sum for a message object of type 'WiperStateType"
  "8bdfb8e383ba5a20bdc9118f3b8516e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WiperStateType>)))
  "Returns full string definition for message of type '<WiperStateType>"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 AUTO_OFF = 1~%uint8 AUTO_MOVING = 2~%uint8 MANUAL_OFF = 3~%uint8 MANUAL_ON = 4~%uint8 MANUAL_LOW = 5~%uint8 MANUAL_HIGH = 6~%uint8 MIST_FLICK = 7~%uint8 WASH = 8~%uint8 AUTO_LOW = 9~%uint8 AUTO_HIGH = 10~%uint8 COURTESY_WIPE = 11~%uint8 AUTO_ADJUST = 12~%uint8 RESERVED = 13~%uint8 STALLED = 14~%uint8 NONE = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WiperStateType)))
  "Returns full string definition for message of type 'WiperStateType"
  (cl:format cl:nil "uint8 OFF = 0~%uint8 AUTO_OFF = 1~%uint8 AUTO_MOVING = 2~%uint8 MANUAL_OFF = 3~%uint8 MANUAL_ON = 4~%uint8 MANUAL_LOW = 5~%uint8 MANUAL_HIGH = 6~%uint8 MIST_FLICK = 7~%uint8 WASH = 8~%uint8 AUTO_LOW = 9~%uint8 AUTO_HIGH = 10~%uint8 COURTESY_WIPE = 11~%uint8 AUTO_ADJUST = 12~%uint8 RESERVED = 13~%uint8 STALLED = 14~%uint8 NONE = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WiperStateType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WiperStateType>))
  "Converts a ROS message object to a list"
  (cl:list 'WiperStateType
    (cl:cons ':value (value msg))
))
