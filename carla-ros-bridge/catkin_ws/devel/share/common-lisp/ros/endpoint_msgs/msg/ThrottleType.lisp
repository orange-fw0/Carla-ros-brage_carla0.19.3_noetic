; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude ThrottleType.msg.html

(cl:defclass <ThrottleType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ThrottleType (<ThrottleType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrottleType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrottleType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<ThrottleType> is deprecated: use endpoint_msgs-msg:ThrottleType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ThrottleType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ThrottleType>)))
    "Constants for message type '<ThrottleType>"
  '((:PEDAL . 0)
    (:THROTTLE . 1)
    (:TORQUE . 2)
    (:ACCELERATION . 3)
    (:SPEED . 4)
    (:SV . 5)
    (:RESERVED . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ThrottleType)))
    "Constants for message type 'ThrottleType"
  '((:PEDAL . 0)
    (:THROTTLE . 1)
    (:TORQUE . 2)
    (:ACCELERATION . 3)
    (:SPEED . 4)
    (:SV . 5)
    (:RESERVED . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrottleType>) ostream)
  "Serializes a message object of type '<ThrottleType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrottleType>) istream)
  "Deserializes a message object of type '<ThrottleType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrottleType>)))
  "Returns string type for a message object of type '<ThrottleType>"
  "endpoint_msgs/ThrottleType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrottleType)))
  "Returns string type for a message object of type 'ThrottleType"
  "endpoint_msgs/ThrottleType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrottleType>)))
  "Returns md5sum for a message object of type '<ThrottleType>"
  "671fb259055b9ce75cee3d6d2161d44e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrottleType)))
  "Returns md5sum for a message object of type 'ThrottleType"
  "671fb259055b9ce75cee3d6d2161d44e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrottleType>)))
  "Returns full string definition for message of type '<ThrottleType>"
  (cl:format cl:nil "uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrottleType)))
  "Returns full string definition for message of type 'ThrottleType"
  (cl:format cl:nil "uint8 PEDAL = 0~%uint8 THROTTLE = 1~%uint8 TORQUE = 2~%uint8 ACCELERATION = 3~%uint8 SPEED = 4~%uint8 SV = 5~%uint8 RESERVED = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrottleType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrottleType>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrottleType
    (cl:cons ':value (value msg))
))
