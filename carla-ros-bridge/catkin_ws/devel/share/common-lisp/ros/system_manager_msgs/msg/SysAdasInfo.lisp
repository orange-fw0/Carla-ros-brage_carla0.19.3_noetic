; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysAdasInfo.msg.html

(cl:defclass <SysAdasInfo> (roslisp-msg-protocol:ros-message)
  ((function_mode
    :reader function_mode
    :initarg :function_mode
    :type system_manager_msgs-msg:FunctionModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:FunctionModeEnum)))
)

(cl:defclass SysAdasInfo (<SysAdasInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysAdasInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysAdasInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysAdasInfo> is deprecated: use system_manager_msgs-msg:SysAdasInfo instead.")))

(cl:ensure-generic-function 'function_mode-val :lambda-list '(m))
(cl:defmethod function_mode-val ((m <SysAdasInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:function_mode-val is deprecated.  Use system_manager_msgs-msg:function_mode instead.")
  (function_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysAdasInfo>) ostream)
  "Serializes a message object of type '<SysAdasInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'function_mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysAdasInfo>) istream)
  "Deserializes a message object of type '<SysAdasInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'function_mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysAdasInfo>)))
  "Returns string type for a message object of type '<SysAdasInfo>"
  "system_manager_msgs/SysAdasInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysAdasInfo)))
  "Returns string type for a message object of type 'SysAdasInfo"
  "system_manager_msgs/SysAdasInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysAdasInfo>)))
  "Returns md5sum for a message object of type '<SysAdasInfo>"
  "4d842ce5a0436db29b7d7ed80fecdf08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysAdasInfo)))
  "Returns md5sum for a message object of type 'SysAdasInfo"
  "4d842ce5a0436db29b7d7ed80fecdf08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysAdasInfo>)))
  "Returns full string definition for message of type '<SysAdasInfo>"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum function_mode~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysAdasInfo)))
  "Returns full string definition for message of type 'SysAdasInfo"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum function_mode~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysAdasInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'function_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysAdasInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SysAdasInfo
    (cl:cons ':function_mode (function_mode msg))
))
