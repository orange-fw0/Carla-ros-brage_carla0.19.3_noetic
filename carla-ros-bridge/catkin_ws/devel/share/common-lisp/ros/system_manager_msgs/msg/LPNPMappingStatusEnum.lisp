; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude LPNPMappingStatusEnum.msg.html

(cl:defclass <LPNPMappingStatusEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LPNPMappingStatusEnum (<LPNPMappingStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LPNPMappingStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LPNPMappingStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<LPNPMappingStatusEnum> is deprecated: use system_manager_msgs-msg:LPNPMappingStatusEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LPNPMappingStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LPNPMappingStatusEnum>)))
    "Constants for message type '<LPNPMappingStatusEnum>"
  '((:SUCCESS . 0)
    (:MAPPING . 1)
    (:SAVING_MAP . 2)
    (:FAILURE . 3)
    (:MAPPING_IN . 4)
    (:MAPPING_OUT . 5)
    (:WAITING_TO_SAVE . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LPNPMappingStatusEnum)))
    "Constants for message type 'LPNPMappingStatusEnum"
  '((:SUCCESS . 0)
    (:MAPPING . 1)
    (:SAVING_MAP . 2)
    (:FAILURE . 3)
    (:MAPPING_IN . 4)
    (:MAPPING_OUT . 5)
    (:WAITING_TO_SAVE . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LPNPMappingStatusEnum>) ostream)
  "Serializes a message object of type '<LPNPMappingStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LPNPMappingStatusEnum>) istream)
  "Deserializes a message object of type '<LPNPMappingStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LPNPMappingStatusEnum>)))
  "Returns string type for a message object of type '<LPNPMappingStatusEnum>"
  "system_manager_msgs/LPNPMappingStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LPNPMappingStatusEnum)))
  "Returns string type for a message object of type 'LPNPMappingStatusEnum"
  "system_manager_msgs/LPNPMappingStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LPNPMappingStatusEnum>)))
  "Returns md5sum for a message object of type '<LPNPMappingStatusEnum>"
  "530e5858825296df987685e1fa37ccdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LPNPMappingStatusEnum)))
  "Returns md5sum for a message object of type 'LPNPMappingStatusEnum"
  "530e5858825296df987685e1fa37ccdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LPNPMappingStatusEnum>)))
  "Returns full string definition for message of type '<LPNPMappingStatusEnum>"
  (cl:format cl:nil "uint8 SUCCESS = 0~%uint8 MAPPING = 1~%uint8 SAVING_MAP = 2~%uint8 FAILURE = 3~%uint8 MAPPING_IN = 4~%uint8 MAPPING_OUT = 5~%uint8 WAITING_TO_SAVE = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LPNPMappingStatusEnum)))
  "Returns full string definition for message of type 'LPNPMappingStatusEnum"
  (cl:format cl:nil "uint8 SUCCESS = 0~%uint8 MAPPING = 1~%uint8 SAVING_MAP = 2~%uint8 FAILURE = 3~%uint8 MAPPING_IN = 4~%uint8 MAPPING_OUT = 5~%uint8 WAITING_TO_SAVE = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LPNPMappingStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LPNPMappingStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LPNPMappingStatusEnum
    (cl:cons ':value (value msg))
))
