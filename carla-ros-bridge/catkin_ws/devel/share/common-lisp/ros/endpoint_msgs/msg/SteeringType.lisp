; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude SteeringType.msg.html

(cl:defclass <SteeringType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SteeringType (<SteeringType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteeringType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteeringType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<SteeringType> is deprecated: use endpoint_msgs-msg:SteeringType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SteeringType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SteeringType>)))
    "Constants for message type '<SteeringType>"
  '((:STEERING_ANGLE . 1)
    (:FRONT_WHEEL_ANGLE . 2)
    (:YAW_RATE . 3)
    (:TORQUE . 4)
    (:ANGLE_SPEED . 5)
    (:CURVATURE . 6)
    (:RESERVED . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SteeringType)))
    "Constants for message type 'SteeringType"
  '((:STEERING_ANGLE . 1)
    (:FRONT_WHEEL_ANGLE . 2)
    (:YAW_RATE . 3)
    (:TORQUE . 4)
    (:ANGLE_SPEED . 5)
    (:CURVATURE . 6)
    (:RESERVED . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteeringType>) ostream)
  "Serializes a message object of type '<SteeringType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteeringType>) istream)
  "Deserializes a message object of type '<SteeringType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteeringType>)))
  "Returns string type for a message object of type '<SteeringType>"
  "endpoint_msgs/SteeringType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteeringType)))
  "Returns string type for a message object of type 'SteeringType"
  "endpoint_msgs/SteeringType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteeringType>)))
  "Returns md5sum for a message object of type '<SteeringType>"
  "0a4ab8136cd161b7c04c8a63ebc496ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteeringType)))
  "Returns md5sum for a message object of type 'SteeringType"
  "0a4ab8136cd161b7c04c8a63ebc496ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteeringType>)))
  "Returns full string definition for message of type '<SteeringType>"
  (cl:format cl:nil "uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteeringType)))
  "Returns full string definition for message of type 'SteeringType"
  (cl:format cl:nil "uint8 STEERING_ANGLE = 1~%uint8 FRONT_WHEEL_ANGLE = 2~%uint8 YAW_RATE = 3~%uint8 TORQUE = 4~%uint8 ANGLE_SPEED = 5~%uint8 CURVATURE = 6~%uint8 RESERVED = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteeringType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteeringType>))
  "Converts a ROS message object to a list"
  (cl:list 'SteeringType
    (cl:cons ':value (value msg))
))
