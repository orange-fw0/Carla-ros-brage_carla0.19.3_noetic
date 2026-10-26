; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude FrontLightSwitchState.msg.html

(cl:defclass <FrontLightSwitchState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FrontLightSwitchState (<FrontLightSwitchState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrontLightSwitchState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrontLightSwitchState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<FrontLightSwitchState> is deprecated: use endpoint_msgs-msg:FrontLightSwitchState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FrontLightSwitchState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FrontLightSwitchState>)))
    "Constants for message type '<FrontLightSwitchState>"
  '((:FRONT_LIGHT_OFF . 0)
    (:FRONT_LIGHT_LOW . 1)
    (:FRONT_LIGHT_HIGH . 2)
    (:FRONT_LIGHT_FLASH . 3)
    (:RESERVED1 . 4)
    (:RESERVED2 . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FrontLightSwitchState)))
    "Constants for message type 'FrontLightSwitchState"
  '((:FRONT_LIGHT_OFF . 0)
    (:FRONT_LIGHT_LOW . 1)
    (:FRONT_LIGHT_HIGH . 2)
    (:FRONT_LIGHT_FLASH . 3)
    (:RESERVED1 . 4)
    (:RESERVED2 . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrontLightSwitchState>) ostream)
  "Serializes a message object of type '<FrontLightSwitchState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrontLightSwitchState>) istream)
  "Deserializes a message object of type '<FrontLightSwitchState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrontLightSwitchState>)))
  "Returns string type for a message object of type '<FrontLightSwitchState>"
  "endpoint_msgs/FrontLightSwitchState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrontLightSwitchState)))
  "Returns string type for a message object of type 'FrontLightSwitchState"
  "endpoint_msgs/FrontLightSwitchState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrontLightSwitchState>)))
  "Returns md5sum for a message object of type '<FrontLightSwitchState>"
  "a417f739017c3f09d1308d90996bfcf8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrontLightSwitchState)))
  "Returns md5sum for a message object of type 'FrontLightSwitchState"
  "a417f739017c3f09d1308d90996bfcf8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrontLightSwitchState>)))
  "Returns full string definition for message of type '<FrontLightSwitchState>"
  (cl:format cl:nil "uint8 FRONT_LIGHT_OFF = 0~%uint8 FRONT_LIGHT_LOW = 1~%uint8 FRONT_LIGHT_HIGH = 2~%uint8 FRONT_LIGHT_FLASH = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrontLightSwitchState)))
  "Returns full string definition for message of type 'FrontLightSwitchState"
  (cl:format cl:nil "uint8 FRONT_LIGHT_OFF = 0~%uint8 FRONT_LIGHT_LOW = 1~%uint8 FRONT_LIGHT_HIGH = 2~%uint8 FRONT_LIGHT_FLASH = 3~%uint8 RESERVED1 = 4~%uint8 RESERVED2 = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrontLightSwitchState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrontLightSwitchState>))
  "Converts a ROS message object to a list"
  (cl:list 'FrontLightSwitchState
    (cl:cons ':value (value msg))
))
