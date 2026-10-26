; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude SpeedSignSpeedEnum.msg.html

(cl:defclass <SpeedSignSpeedEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpeedSignSpeedEnum (<SpeedSignSpeedEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedSignSpeedEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedSignSpeedEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<SpeedSignSpeedEnum> is deprecated: use perception_interface_msgs-msg:SpeedSignSpeedEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SpeedSignSpeedEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedSignSpeedEnum>)))
    "Constants for message type '<SpeedSignSpeedEnum>"
  '((:SPEED_SIGN_SPEED_UNKNOWN . 0)
    (:SPEED_SIGN_SPEED_5 . 1)
    (:SPEED_SIGN_SPEED_10 . 2)
    (:SPEED_SIGN_SPEED_15 . 3)
    (:SPEED_SIGN_SPEED_20 . 4)
    (:SPEED_SIGN_SPEED_25 . 5)
    (:SPEED_SIGN_SPEED_30 . 6)
    (:SPEED_SIGN_SPEED_35 . 7)
    (:SPEED_SIGN_SPEED_40 . 8)
    (:SPEED_SIGN_SPEED_50 . 9)
    (:SPEED_SIGN_SPEED_60 . 10)
    (:SPEED_SIGN_SPEED_70 . 11)
    (:SPEED_SIGN_SPEED_80 . 12)
    (:SPEED_SIGN_SPEED_90 . 13)
    (:SPEED_SIGN_SPEED_100 . 14)
    (:SPEED_SIGN_SPEED_110 . 15)
    (:SPEED_SIGN_SPEED_120 . 16)
    (:SPEED_SIGN_SPEED_130 . 17)
    (:SPEED_SIGN_SPEED_140 . 18)
    (:SPEED_SIGN_SPEED_45 . 19)
    (:SPEED_SIGN_SPEED_55 . 20)
    (:SPEED_SIGN_SPEED_65 . 21)
    (:SPEED_SIGN_SPEED_75 . 22)
    (:SPEED_SIGN_SPEED_85 . 23))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedSignSpeedEnum)))
    "Constants for message type 'SpeedSignSpeedEnum"
  '((:SPEED_SIGN_SPEED_UNKNOWN . 0)
    (:SPEED_SIGN_SPEED_5 . 1)
    (:SPEED_SIGN_SPEED_10 . 2)
    (:SPEED_SIGN_SPEED_15 . 3)
    (:SPEED_SIGN_SPEED_20 . 4)
    (:SPEED_SIGN_SPEED_25 . 5)
    (:SPEED_SIGN_SPEED_30 . 6)
    (:SPEED_SIGN_SPEED_35 . 7)
    (:SPEED_SIGN_SPEED_40 . 8)
    (:SPEED_SIGN_SPEED_50 . 9)
    (:SPEED_SIGN_SPEED_60 . 10)
    (:SPEED_SIGN_SPEED_70 . 11)
    (:SPEED_SIGN_SPEED_80 . 12)
    (:SPEED_SIGN_SPEED_90 . 13)
    (:SPEED_SIGN_SPEED_100 . 14)
    (:SPEED_SIGN_SPEED_110 . 15)
    (:SPEED_SIGN_SPEED_120 . 16)
    (:SPEED_SIGN_SPEED_130 . 17)
    (:SPEED_SIGN_SPEED_140 . 18)
    (:SPEED_SIGN_SPEED_45 . 19)
    (:SPEED_SIGN_SPEED_55 . 20)
    (:SPEED_SIGN_SPEED_65 . 21)
    (:SPEED_SIGN_SPEED_75 . 22)
    (:SPEED_SIGN_SPEED_85 . 23))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedSignSpeedEnum>) ostream)
  "Serializes a message object of type '<SpeedSignSpeedEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedSignSpeedEnum>) istream)
  "Deserializes a message object of type '<SpeedSignSpeedEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedSignSpeedEnum>)))
  "Returns string type for a message object of type '<SpeedSignSpeedEnum>"
  "perception_interface_msgs/SpeedSignSpeedEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedSignSpeedEnum)))
  "Returns string type for a message object of type 'SpeedSignSpeedEnum"
  "perception_interface_msgs/SpeedSignSpeedEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedSignSpeedEnum>)))
  "Returns md5sum for a message object of type '<SpeedSignSpeedEnum>"
  "4acea4b006c25bf4c677269c6c288a0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedSignSpeedEnum)))
  "Returns md5sum for a message object of type 'SpeedSignSpeedEnum"
  "4acea4b006c25bf4c677269c6c288a0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedSignSpeedEnum>)))
  "Returns full string definition for message of type '<SpeedSignSpeedEnum>"
  (cl:format cl:nil "uint8 SPEED_SIGN_SPEED_UNKNOWN = 0~%uint8 SPEED_SIGN_SPEED_5 = 1~%uint8 SPEED_SIGN_SPEED_10 = 2~%uint8 SPEED_SIGN_SPEED_15 = 3~%uint8 SPEED_SIGN_SPEED_20 = 4~%uint8 SPEED_SIGN_SPEED_25 = 5~%uint8 SPEED_SIGN_SPEED_30 = 6~%uint8 SPEED_SIGN_SPEED_35 = 7~%uint8 SPEED_SIGN_SPEED_40 = 8~%uint8 SPEED_SIGN_SPEED_50 = 9~%uint8 SPEED_SIGN_SPEED_60 = 10~%uint8 SPEED_SIGN_SPEED_70 = 11~%uint8 SPEED_SIGN_SPEED_80 = 12~%uint8 SPEED_SIGN_SPEED_90 = 13~%uint8 SPEED_SIGN_SPEED_100 = 14~%uint8 SPEED_SIGN_SPEED_110 = 15~%uint8 SPEED_SIGN_SPEED_120 = 16~%uint8 SPEED_SIGN_SPEED_130 = 17~%uint8 SPEED_SIGN_SPEED_140 = 18~%uint8 SPEED_SIGN_SPEED_45 = 19~%uint8 SPEED_SIGN_SPEED_55 = 20~%uint8 SPEED_SIGN_SPEED_65 = 21~%uint8 SPEED_SIGN_SPEED_75 = 22~%uint8 SPEED_SIGN_SPEED_85 = 23~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedSignSpeedEnum)))
  "Returns full string definition for message of type 'SpeedSignSpeedEnum"
  (cl:format cl:nil "uint8 SPEED_SIGN_SPEED_UNKNOWN = 0~%uint8 SPEED_SIGN_SPEED_5 = 1~%uint8 SPEED_SIGN_SPEED_10 = 2~%uint8 SPEED_SIGN_SPEED_15 = 3~%uint8 SPEED_SIGN_SPEED_20 = 4~%uint8 SPEED_SIGN_SPEED_25 = 5~%uint8 SPEED_SIGN_SPEED_30 = 6~%uint8 SPEED_SIGN_SPEED_35 = 7~%uint8 SPEED_SIGN_SPEED_40 = 8~%uint8 SPEED_SIGN_SPEED_50 = 9~%uint8 SPEED_SIGN_SPEED_60 = 10~%uint8 SPEED_SIGN_SPEED_70 = 11~%uint8 SPEED_SIGN_SPEED_80 = 12~%uint8 SPEED_SIGN_SPEED_90 = 13~%uint8 SPEED_SIGN_SPEED_100 = 14~%uint8 SPEED_SIGN_SPEED_110 = 15~%uint8 SPEED_SIGN_SPEED_120 = 16~%uint8 SPEED_SIGN_SPEED_130 = 17~%uint8 SPEED_SIGN_SPEED_140 = 18~%uint8 SPEED_SIGN_SPEED_45 = 19~%uint8 SPEED_SIGN_SPEED_55 = 20~%uint8 SPEED_SIGN_SPEED_65 = 21~%uint8 SPEED_SIGN_SPEED_75 = 22~%uint8 SPEED_SIGN_SPEED_85 = 23~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedSignSpeedEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedSignSpeedEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedSignSpeedEnum
    (cl:cons ':value (value msg))
))
