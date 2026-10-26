; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysEgoposeManagerInfo.msg.html

(cl:defclass <SysEgoposeManagerInfo> (roslisp-msg-protocol:ros-message)
  ((function_mode
    :reader function_mode
    :initarg :function_mode
    :type system_manager_msgs-msg:FunctionModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:FunctionModeEnum)))
)

(cl:defclass SysEgoposeManagerInfo (<SysEgoposeManagerInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysEgoposeManagerInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysEgoposeManagerInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysEgoposeManagerInfo> is deprecated: use system_manager_msgs-msg:SysEgoposeManagerInfo instead.")))

(cl:ensure-generic-function 'function_mode-val :lambda-list '(m))
(cl:defmethod function_mode-val ((m <SysEgoposeManagerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:function_mode-val is deprecated.  Use system_manager_msgs-msg:function_mode instead.")
  (function_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysEgoposeManagerInfo>) ostream)
  "Serializes a message object of type '<SysEgoposeManagerInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'function_mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysEgoposeManagerInfo>) istream)
  "Deserializes a message object of type '<SysEgoposeManagerInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'function_mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysEgoposeManagerInfo>)))
  "Returns string type for a message object of type '<SysEgoposeManagerInfo>"
  "system_manager_msgs/SysEgoposeManagerInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysEgoposeManagerInfo)))
  "Returns string type for a message object of type 'SysEgoposeManagerInfo"
  "system_manager_msgs/SysEgoposeManagerInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysEgoposeManagerInfo>)))
  "Returns md5sum for a message object of type '<SysEgoposeManagerInfo>"
  "4d842ce5a0436db29b7d7ed80fecdf08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysEgoposeManagerInfo)))
  "Returns md5sum for a message object of type 'SysEgoposeManagerInfo"
  "4d842ce5a0436db29b7d7ed80fecdf08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysEgoposeManagerInfo>)))
  "Returns full string definition for message of type '<SysEgoposeManagerInfo>"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum function_mode~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysEgoposeManagerInfo)))
  "Returns full string definition for message of type 'SysEgoposeManagerInfo"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum function_mode~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysEgoposeManagerInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'function_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysEgoposeManagerInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SysEgoposeManagerInfo
    (cl:cons ':function_mode (function_mode msg))
))
