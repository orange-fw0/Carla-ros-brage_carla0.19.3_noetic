; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude SpeedSignTypeEnum.msg.html

(cl:defclass <SpeedSignTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpeedSignTypeEnum (<SpeedSignTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedSignTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedSignTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<SpeedSignTypeEnum> is deprecated: use perception_interface_msgs-msg:SpeedSignTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SpeedSignTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedSignTypeEnum>)))
    "Constants for message type '<SpeedSignTypeEnum>"
  '((:SPEED_SIGN_TYPE_UNKNOWN . 0)
    (:SPEED_SIGN_TYPE_HIGH_SPEED . 1)
    (:SPEED_SIGN_TYPE_LOW_SPEED . 2)
    (:SPEED_SIGN_TYPE_DESPEED . 3)
    (:SPEED_SIGN_TYPE_RECOMMENDED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedSignTypeEnum)))
    "Constants for message type 'SpeedSignTypeEnum"
  '((:SPEED_SIGN_TYPE_UNKNOWN . 0)
    (:SPEED_SIGN_TYPE_HIGH_SPEED . 1)
    (:SPEED_SIGN_TYPE_LOW_SPEED . 2)
    (:SPEED_SIGN_TYPE_DESPEED . 3)
    (:SPEED_SIGN_TYPE_RECOMMENDED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedSignTypeEnum>) ostream)
  "Serializes a message object of type '<SpeedSignTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedSignTypeEnum>) istream)
  "Deserializes a message object of type '<SpeedSignTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedSignTypeEnum>)))
  "Returns string type for a message object of type '<SpeedSignTypeEnum>"
  "perception_interface_msgs/SpeedSignTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedSignTypeEnum)))
  "Returns string type for a message object of type 'SpeedSignTypeEnum"
  "perception_interface_msgs/SpeedSignTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedSignTypeEnum>)))
  "Returns md5sum for a message object of type '<SpeedSignTypeEnum>"
  "e8f2c656277b8c98d0025ad139767e27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedSignTypeEnum)))
  "Returns md5sum for a message object of type 'SpeedSignTypeEnum"
  "e8f2c656277b8c98d0025ad139767e27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedSignTypeEnum>)))
  "Returns full string definition for message of type '<SpeedSignTypeEnum>"
  (cl:format cl:nil "uint8 SPEED_SIGN_TYPE_UNKNOWN = 0~%uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1~%uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2~%uint8 SPEED_SIGN_TYPE_DESPEED = 3~%uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedSignTypeEnum)))
  "Returns full string definition for message of type 'SpeedSignTypeEnum"
  (cl:format cl:nil "uint8 SPEED_SIGN_TYPE_UNKNOWN = 0~%uint8 SPEED_SIGN_TYPE_HIGH_SPEED = 1~%uint8 SPEED_SIGN_TYPE_LOW_SPEED = 2~%uint8 SPEED_SIGN_TYPE_DESPEED = 3~%uint8 SPEED_SIGN_TYPE_RECOMMENDED = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedSignTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedSignTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedSignTypeEnum
    (cl:cons ':value (value msg))
))
