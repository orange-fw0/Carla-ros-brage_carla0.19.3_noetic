; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude FrontLightState.msg.html

(cl:defclass <FrontLightState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FrontLightState (<FrontLightState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrontLightState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrontLightState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<FrontLightState> is deprecated: use endpoint_msgs-msg:FrontLightState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FrontLightState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FrontLightState>)))
    "Constants for message type '<FrontLightState>"
  '((:LIGHT_OFF . 0)
    (:LOW_BEAM_LIGHT . 1)
    (:HIGH_BEAM_LIGHT . 2)
    (:OVERTAKING_FLASH . 3)
    (:LIGHT_AUTO . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FrontLightState)))
    "Constants for message type 'FrontLightState"
  '((:LIGHT_OFF . 0)
    (:LOW_BEAM_LIGHT . 1)
    (:HIGH_BEAM_LIGHT . 2)
    (:OVERTAKING_FLASH . 3)
    (:LIGHT_AUTO . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrontLightState>) ostream)
  "Serializes a message object of type '<FrontLightState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrontLightState>) istream)
  "Deserializes a message object of type '<FrontLightState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrontLightState>)))
  "Returns string type for a message object of type '<FrontLightState>"
  "endpoint_msgs/FrontLightState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrontLightState)))
  "Returns string type for a message object of type 'FrontLightState"
  "endpoint_msgs/FrontLightState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrontLightState>)))
  "Returns md5sum for a message object of type '<FrontLightState>"
  "9301ac5d44aabafbe62a4490edc1f2ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrontLightState)))
  "Returns md5sum for a message object of type 'FrontLightState"
  "9301ac5d44aabafbe62a4490edc1f2ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrontLightState>)))
  "Returns full string definition for message of type '<FrontLightState>"
  (cl:format cl:nil "uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrontLightState)))
  "Returns full string definition for message of type 'FrontLightState"
  (cl:format cl:nil "uint8 LIGHT_OFF = 0~%uint8 LOW_BEAM_LIGHT = 1~%uint8 HIGH_BEAM_LIGHT = 2~%uint8 OVERTAKING_FLASH = 3~%uint8 LIGHT_AUTO = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrontLightState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrontLightState>))
  "Converts a ROS message object to a list"
  (cl:list 'FrontLightState
    (cl:cons ':value (value msg))
))
