; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysVehicleServiceInfoForParking.msg.html

(cl:defclass <SysVehicleServiceInfoForParking> (roslisp-msg-protocol:ros-message)
  ((function_mode
    :reader function_mode
    :initarg :function_mode
    :type system_manager_msgs-msg:FunctionModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:FunctionModeEnum))
   (apa_mode
    :reader apa_mode
    :initarg :apa_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SysVehicleServiceInfoForParking (<SysVehicleServiceInfoForParking>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysVehicleServiceInfoForParking>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysVehicleServiceInfoForParking)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysVehicleServiceInfoForParking> is deprecated: use system_manager_msgs-msg:SysVehicleServiceInfoForParking instead.")))

(cl:ensure-generic-function 'function_mode-val :lambda-list '(m))
(cl:defmethod function_mode-val ((m <SysVehicleServiceInfoForParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:function_mode-val is deprecated.  Use system_manager_msgs-msg:function_mode instead.")
  (function_mode m))

(cl:ensure-generic-function 'apa_mode-val :lambda-list '(m))
(cl:defmethod apa_mode-val ((m <SysVehicleServiceInfoForParking>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:apa_mode-val is deprecated.  Use system_manager_msgs-msg:apa_mode instead.")
  (apa_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SysVehicleServiceInfoForParking>)))
    "Constants for message type '<SysVehicleServiceInfoForParking>"
  '((:FOR_APA . 0)
    (:FOR_LPNP . 1)
    (:FOR_PNP . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SysVehicleServiceInfoForParking)))
    "Constants for message type 'SysVehicleServiceInfoForParking"
  '((:FOR_APA . 0)
    (:FOR_LPNP . 1)
    (:FOR_PNP . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysVehicleServiceInfoForParking>) ostream)
  "Serializes a message object of type '<SysVehicleServiceInfoForParking>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'function_mode) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'apa_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysVehicleServiceInfoForParking>) istream)
  "Deserializes a message object of type '<SysVehicleServiceInfoForParking>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'function_mode) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'apa_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysVehicleServiceInfoForParking>)))
  "Returns string type for a message object of type '<SysVehicleServiceInfoForParking>"
  "system_manager_msgs/SysVehicleServiceInfoForParking")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysVehicleServiceInfoForParking)))
  "Returns string type for a message object of type 'SysVehicleServiceInfoForParking"
  "system_manager_msgs/SysVehicleServiceInfoForParking")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysVehicleServiceInfoForParking>)))
  "Returns md5sum for a message object of type '<SysVehicleServiceInfoForParking>"
  "1ce86c98a90fb82bbfbd20feb8a58820")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysVehicleServiceInfoForParking)))
  "Returns md5sum for a message object of type 'SysVehicleServiceInfoForParking"
  "1ce86c98a90fb82bbfbd20feb8a58820")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysVehicleServiceInfoForParking>)))
  "Returns full string definition for message of type '<SysVehicleServiceInfoForParking>"
  (cl:format cl:nil "uint8 FOR_APA = 0~%uint8 FOR_LPNP = 1~%uint8 FOR_PNP = 2~%system_manager_msgs/FunctionModeEnum function_mode~%uint8 apa_mode~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysVehicleServiceInfoForParking)))
  "Returns full string definition for message of type 'SysVehicleServiceInfoForParking"
  (cl:format cl:nil "uint8 FOR_APA = 0~%uint8 FOR_LPNP = 1~%uint8 FOR_PNP = 2~%system_manager_msgs/FunctionModeEnum function_mode~%uint8 apa_mode~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysVehicleServiceInfoForParking>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'function_mode))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysVehicleServiceInfoForParking>))
  "Converts a ROS message object to a list"
  (cl:list 'SysVehicleServiceInfoForParking
    (cl:cons ':function_mode (function_mode msg))
    (cl:cons ':apa_mode (apa_mode msg))
))
