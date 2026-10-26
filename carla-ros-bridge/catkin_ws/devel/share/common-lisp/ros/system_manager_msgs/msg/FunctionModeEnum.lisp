; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude FunctionModeEnum.msg.html

(cl:defclass <FunctionModeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FunctionModeEnum (<FunctionModeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FunctionModeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FunctionModeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<FunctionModeEnum> is deprecated: use system_manager_msgs-msg:FunctionModeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FunctionModeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FunctionModeEnum>)))
    "Constants for message type '<FunctionModeEnum>"
  '((:ACC . 0)
    (:CP . 1)
    (:HNP . 2)
    (:APA . 3)
    (:SVP . 4)
    (:PLAC . 5)
    (:ACE . 6)
    (:PNP . 7)
    (:LPNP . 8)
    (:LPNP_MAPPING . 9)
    (:MEB . 10)
    (:RADS . 11)
    (:MANUAL . 12)
    (:NRP . 13)
    (:UNP . 14)
    (:RPA . 15)
    (:MANUAL_WITH_CPP . 16)
    (:EESF . 17)
    (:LKC . 18)
    (:SENTRY_MODE . 20)
    (:ECO_ASSIST . 21)
    (:MNP . 22)
    (:MNP_MAPPING . 23)
    (:L3_FADEIN . 24)
    (:MANUAL_WITH_NPP . 66))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FunctionModeEnum)))
    "Constants for message type 'FunctionModeEnum"
  '((:ACC . 0)
    (:CP . 1)
    (:HNP . 2)
    (:APA . 3)
    (:SVP . 4)
    (:PLAC . 5)
    (:ACE . 6)
    (:PNP . 7)
    (:LPNP . 8)
    (:LPNP_MAPPING . 9)
    (:MEB . 10)
    (:RADS . 11)
    (:MANUAL . 12)
    (:NRP . 13)
    (:UNP . 14)
    (:RPA . 15)
    (:MANUAL_WITH_CPP . 16)
    (:EESF . 17)
    (:LKC . 18)
    (:SENTRY_MODE . 20)
    (:ECO_ASSIST . 21)
    (:MNP . 22)
    (:MNP_MAPPING . 23)
    (:L3_FADEIN . 24)
    (:MANUAL_WITH_NPP . 66))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FunctionModeEnum>) ostream)
  "Serializes a message object of type '<FunctionModeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FunctionModeEnum>) istream)
  "Deserializes a message object of type '<FunctionModeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FunctionModeEnum>)))
  "Returns string type for a message object of type '<FunctionModeEnum>"
  "system_manager_msgs/FunctionModeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FunctionModeEnum)))
  "Returns string type for a message object of type 'FunctionModeEnum"
  "system_manager_msgs/FunctionModeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FunctionModeEnum>)))
  "Returns md5sum for a message object of type '<FunctionModeEnum>"
  "7feadeed8d0e2eb93972f33e87ecc471")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FunctionModeEnum)))
  "Returns md5sum for a message object of type 'FunctionModeEnum"
  "7feadeed8d0e2eb93972f33e87ecc471")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FunctionModeEnum>)))
  "Returns full string definition for message of type '<FunctionModeEnum>"
  (cl:format cl:nil "uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FunctionModeEnum)))
  "Returns full string definition for message of type 'FunctionModeEnum"
  (cl:format cl:nil "uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FunctionModeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FunctionModeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'FunctionModeEnum
    (cl:cons ':value (value msg))
))
