; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude TargetControlMotor.msg.html

(cl:defclass <TargetControlMotor> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TargetControlMotor (<TargetControlMotor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetControlMotor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetControlMotor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<TargetControlMotor> is deprecated: use endpoint_msgs-msg:TargetControlMotor instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TargetControlMotor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:value-val is deprecated.  Use endpoint_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TargetControlMotor>)))
    "Constants for message type '<TargetControlMotor>"
  '((:FL . 0)
    (:FR . 1)
    (:RL . 2)
    (:RR . 3)
    (:FLFR . 4)
    (:RLRR . 5)
    (:RESERVED1 . 6)
    (:RESERVED2 . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TargetControlMotor)))
    "Constants for message type 'TargetControlMotor"
  '((:FL . 0)
    (:FR . 1)
    (:RL . 2)
    (:RR . 3)
    (:FLFR . 4)
    (:RLRR . 5)
    (:RESERVED1 . 6)
    (:RESERVED2 . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetControlMotor>) ostream)
  "Serializes a message object of type '<TargetControlMotor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetControlMotor>) istream)
  "Deserializes a message object of type '<TargetControlMotor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetControlMotor>)))
  "Returns string type for a message object of type '<TargetControlMotor>"
  "endpoint_msgs/TargetControlMotor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetControlMotor)))
  "Returns string type for a message object of type 'TargetControlMotor"
  "endpoint_msgs/TargetControlMotor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetControlMotor>)))
  "Returns md5sum for a message object of type '<TargetControlMotor>"
  "c846be71a2c7afcada149beba5ba7d83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetControlMotor)))
  "Returns md5sum for a message object of type 'TargetControlMotor"
  "c846be71a2c7afcada149beba5ba7d83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetControlMotor>)))
  "Returns full string definition for message of type '<TargetControlMotor>"
  (cl:format cl:nil "uint8 FL = 0~%uint8 FR = 1~%uint8 RL = 2~%uint8 RR = 3~%uint8 FLFR = 4~%uint8 RLRR = 5~%uint8 RESERVED1 = 6~%uint8 RESERVED2 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetControlMotor)))
  "Returns full string definition for message of type 'TargetControlMotor"
  (cl:format cl:nil "uint8 FL = 0~%uint8 FR = 1~%uint8 RL = 2~%uint8 RR = 3~%uint8 FLFR = 4~%uint8 RLRR = 5~%uint8 RESERVED1 = 6~%uint8 RESERVED2 = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetControlMotor>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetControlMotor>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetControlMotor
    (cl:cons ':value (value msg))
))
