; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SteerModeEnum.msg.html

(cl:defclass <SteerModeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SteerModeEnum (<SteerModeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteerModeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteerModeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SteerModeEnum> is deprecated: use planning_msgs-msg:SteerModeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SteerModeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SteerModeEnum>)))
    "Constants for message type '<SteerModeEnum>"
  '((:NORMAL . 0)
    (:TWIST . 1)
    (:TRANSLATION . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SteerModeEnum)))
    "Constants for message type 'SteerModeEnum"
  '((:NORMAL . 0)
    (:TWIST . 1)
    (:TRANSLATION . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteerModeEnum>) ostream)
  "Serializes a message object of type '<SteerModeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteerModeEnum>) istream)
  "Deserializes a message object of type '<SteerModeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteerModeEnum>)))
  "Returns string type for a message object of type '<SteerModeEnum>"
  "planning_msgs/SteerModeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteerModeEnum)))
  "Returns string type for a message object of type 'SteerModeEnum"
  "planning_msgs/SteerModeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteerModeEnum>)))
  "Returns md5sum for a message object of type '<SteerModeEnum>"
  "5d9da45c295d82807624b1f8ca2d413c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteerModeEnum)))
  "Returns md5sum for a message object of type 'SteerModeEnum"
  "5d9da45c295d82807624b1f8ca2d413c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteerModeEnum>)))
  "Returns full string definition for message of type '<SteerModeEnum>"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteerModeEnum)))
  "Returns full string definition for message of type 'SteerModeEnum"
  (cl:format cl:nil "uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteerModeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteerModeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'SteerModeEnum
    (cl:cons ':value (value msg))
))
