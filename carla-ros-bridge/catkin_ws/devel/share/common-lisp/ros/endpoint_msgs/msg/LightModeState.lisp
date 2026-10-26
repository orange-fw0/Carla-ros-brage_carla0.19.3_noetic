; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude LightModeState.msg.html

(cl:defclass <LightModeState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LightModeState (<LightModeState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightModeState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightModeState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<LightModeState> is deprecated: use endpoint_msgs-msg:LightModeState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LightModeState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LightModeState>)))
    "Constants for message type '<LightModeState>"
  '((:LIGHT_OFF . 0)
    (:LIGHT_AUTO . 1)
    (:LIGHT_LOW_BEAM . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LightModeState)))
    "Constants for message type 'LightModeState"
  '((:LIGHT_OFF . 0)
    (:LIGHT_AUTO . 1)
    (:LIGHT_LOW_BEAM . 2)
    (:RESERVED1 . 3)
    (:RESERVED2 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightModeState>) ostream)
  "Serializes a message object of type '<LightModeState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightModeState>) istream)
  "Deserializes a message object of type '<LightModeState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightModeState>)))
  "Returns string type for a message object of type '<LightModeState>"
  "endpoint_msgs/LightModeState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightModeState)))
  "Returns string type for a message object of type 'LightModeState"
  "endpoint_msgs/LightModeState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightModeState>)))
  "Returns md5sum for a message object of type '<LightModeState>"
  "7a0056d2f8419ec731c6d38a3186e348")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightModeState)))
  "Returns md5sum for a message object of type 'LightModeState"
  "7a0056d2f8419ec731c6d38a3186e348")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightModeState>)))
  "Returns full string definition for message of type '<LightModeState>"
  (cl:format cl:nil "uint8 LIGHT_OFF = 0~%uint8 LIGHT_AUTO = 1~%uint8 LIGHT_LOW_BEAM = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightModeState)))
  "Returns full string definition for message of type 'LightModeState"
  (cl:format cl:nil "uint8 LIGHT_OFF = 0~%uint8 LIGHT_AUTO = 1~%uint8 LIGHT_LOW_BEAM = 2~%uint8 RESERVED1 = 3~%uint8 RESERVED2 = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightModeState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightModeState>))
  "Converts a ROS message object to a list"
  (cl:list 'LightModeState
    (cl:cons ':value (value msg))
))
