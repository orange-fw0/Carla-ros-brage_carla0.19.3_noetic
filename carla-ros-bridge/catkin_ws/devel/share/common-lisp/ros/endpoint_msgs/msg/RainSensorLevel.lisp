; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude RainSensorLevel.msg.html

(cl:defclass <RainSensorLevel> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RainSensorLevel (<RainSensorLevel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RainSensorLevel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RainSensorLevel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<RainSensorLevel> is deprecated: use endpoint_msgs-msg:RainSensorLevel instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RainSensorLevel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RainSensorLevel>)))
    "Constants for message type '<RainSensorLevel>"
  '((:RAIN_SENSOR_OFF . 0)
    (:RARIN_SENSOR_LEVEL_LOW . 1)
    (:RARIN_SENSOR_LEVEL_MID . 2)
    (:RARIN_SENSOR_LEVEL_HIGH . 3)
    (:RARIN_SENSOR_LEVEL_RESERVED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RainSensorLevel)))
    "Constants for message type 'RainSensorLevel"
  '((:RAIN_SENSOR_OFF . 0)
    (:RARIN_SENSOR_LEVEL_LOW . 1)
    (:RARIN_SENSOR_LEVEL_MID . 2)
    (:RARIN_SENSOR_LEVEL_HIGH . 3)
    (:RARIN_SENSOR_LEVEL_RESERVED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RainSensorLevel>) ostream)
  "Serializes a message object of type '<RainSensorLevel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RainSensorLevel>) istream)
  "Deserializes a message object of type '<RainSensorLevel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RainSensorLevel>)))
  "Returns string type for a message object of type '<RainSensorLevel>"
  "endpoint_msgs/RainSensorLevel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RainSensorLevel)))
  "Returns string type for a message object of type 'RainSensorLevel"
  "endpoint_msgs/RainSensorLevel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RainSensorLevel>)))
  "Returns md5sum for a message object of type '<RainSensorLevel>"
  "c07886f318a675994547437acdb7db44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RainSensorLevel)))
  "Returns md5sum for a message object of type 'RainSensorLevel"
  "c07886f318a675994547437acdb7db44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RainSensorLevel>)))
  "Returns full string definition for message of type '<RainSensorLevel>"
  (cl:format cl:nil "uint8 RAIN_SENSOR_OFF = 0~%uint8 RARIN_SENSOR_LEVEL_LOW = 1~%uint8 RARIN_SENSOR_LEVEL_MID = 2~%uint8 RARIN_SENSOR_LEVEL_HIGH = 3~%uint8 RARIN_SENSOR_LEVEL_RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RainSensorLevel)))
  "Returns full string definition for message of type 'RainSensorLevel"
  (cl:format cl:nil "uint8 RAIN_SENSOR_OFF = 0~%uint8 RARIN_SENSOR_LEVEL_LOW = 1~%uint8 RARIN_SENSOR_LEVEL_MID = 2~%uint8 RARIN_SENSOR_LEVEL_HIGH = 3~%uint8 RARIN_SENSOR_LEVEL_RESERVED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RainSensorLevel>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RainSensorLevel>))
  "Converts a ROS message object to a list"
  (cl:list 'RainSensorLevel
    (cl:cons ':value (value msg))
))
