; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysLPNPMappingCommand.msg.html

(cl:defclass <SysLPNPMappingCommand> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SysLPNPMappingCommand (<SysLPNPMappingCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysLPNPMappingCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysLPNPMappingCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysLPNPMappingCommand> is deprecated: use system_manager_msgs-msg:SysLPNPMappingCommand instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SysLPNPMappingCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SysLPNPMappingCommand>)))
    "Constants for message type '<SysLPNPMappingCommand>"
  '((:START_SILENT_MODE . 0)
    (:START_USER_MODE . 1)
    (:FINISH . 2)
    (:ABORT . 3)
    (:BACK_TO_SILENT_MODE . 4)
    (:SAVE . 5)
    (:RESET_BUFFER . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SysLPNPMappingCommand)))
    "Constants for message type 'SysLPNPMappingCommand"
  '((:START_SILENT_MODE . 0)
    (:START_USER_MODE . 1)
    (:FINISH . 2)
    (:ABORT . 3)
    (:BACK_TO_SILENT_MODE . 4)
    (:SAVE . 5)
    (:RESET_BUFFER . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysLPNPMappingCommand>) ostream)
  "Serializes a message object of type '<SysLPNPMappingCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysLPNPMappingCommand>) istream)
  "Deserializes a message object of type '<SysLPNPMappingCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysLPNPMappingCommand>)))
  "Returns string type for a message object of type '<SysLPNPMappingCommand>"
  "system_manager_msgs/SysLPNPMappingCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysLPNPMappingCommand)))
  "Returns string type for a message object of type 'SysLPNPMappingCommand"
  "system_manager_msgs/SysLPNPMappingCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysLPNPMappingCommand>)))
  "Returns md5sum for a message object of type '<SysLPNPMappingCommand>"
  "0cc954be2b276c6a59ac2a7d95f3a812")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysLPNPMappingCommand)))
  "Returns md5sum for a message object of type 'SysLPNPMappingCommand"
  "0cc954be2b276c6a59ac2a7d95f3a812")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysLPNPMappingCommand>)))
  "Returns full string definition for message of type '<SysLPNPMappingCommand>"
  (cl:format cl:nil "uint8 START_SILENT_MODE = 0~%uint8 START_USER_MODE = 1~%uint8 FINISH = 2~%uint8 ABORT = 3~%uint8 BACK_TO_SILENT_MODE = 4~%uint8 SAVE = 5~%uint8 RESET_BUFFER = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysLPNPMappingCommand)))
  "Returns full string definition for message of type 'SysLPNPMappingCommand"
  (cl:format cl:nil "uint8 START_SILENT_MODE = 0~%uint8 START_USER_MODE = 1~%uint8 FINISH = 2~%uint8 ABORT = 3~%uint8 BACK_TO_SILENT_MODE = 4~%uint8 SAVE = 5~%uint8 RESET_BUFFER = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysLPNPMappingCommand>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysLPNPMappingCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SysLPNPMappingCommand
    (cl:cons ':value (value msg))
))
