; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude BrakeType.msg.html

(cl:defclass <BrakeType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BrakeType (<BrakeType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakeType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakeType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<BrakeType> is deprecated: use endpoint_msgs-msg:BrakeType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <BrakeType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BrakeType>)))
    "Constants for message type '<BrakeType>"
  '((:PEDAL . 1)
    (:DECELERATION . 2)
    (:MASTER_CYLINDERPRESSURE . 3)
    (:WHEEL_CYLINDERPRESSURE . 4)
    (:TORQUE . 5)
    (:DISTANCE . 6)
    (:SV . 7)
    (:RESERVED . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BrakeType)))
    "Constants for message type 'BrakeType"
  '((:PEDAL . 1)
    (:DECELERATION . 2)
    (:MASTER_CYLINDERPRESSURE . 3)
    (:WHEEL_CYLINDERPRESSURE . 4)
    (:TORQUE . 5)
    (:DISTANCE . 6)
    (:SV . 7)
    (:RESERVED . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakeType>) ostream)
  "Serializes a message object of type '<BrakeType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakeType>) istream)
  "Deserializes a message object of type '<BrakeType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakeType>)))
  "Returns string type for a message object of type '<BrakeType>"
  "endpoint_msgs/BrakeType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakeType)))
  "Returns string type for a message object of type 'BrakeType"
  "endpoint_msgs/BrakeType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakeType>)))
  "Returns md5sum for a message object of type '<BrakeType>"
  "f28dd2b585be0912b92f7f99c77a99c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakeType)))
  "Returns md5sum for a message object of type 'BrakeType"
  "f28dd2b585be0912b92f7f99c77a99c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakeType>)))
  "Returns full string definition for message of type '<BrakeType>"
  (cl:format cl:nil "uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakeType)))
  "Returns full string definition for message of type 'BrakeType"
  (cl:format cl:nil "uint8 PEDAL = 1~%uint8 DECELERATION = 2~%uint8 MASTER_CYLINDERPRESSURE = 3~%uint8 WHEEL_CYLINDERPRESSURE = 4~%uint8 TORQUE = 5~%uint8 DISTANCE = 6~%uint8 SV = 7~%uint8 RESERVED = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakeType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakeType>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakeType
    (cl:cons ':value (value msg))
))
