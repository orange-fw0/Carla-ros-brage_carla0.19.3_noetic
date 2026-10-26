; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysLPNPMappingInfo.msg.html

(cl:defclass <SysLPNPMappingInfo> (roslisp-msg-protocol:ros-message)
  ((function_mode
    :reader function_mode
    :initarg :function_mode
    :type system_manager_msgs-msg:FunctionModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:FunctionModeEnum))
   (map_dir
    :reader map_dir
    :initarg :map_dir
    :type cl:string
    :initform "")
   (map_name
    :reader map_name
    :initarg :map_name
    :type cl:integer
    :initform 0)
   (task_type
    :reader task_type
    :initarg :task_type
    :type system_manager_msgs-msg:SysLPNPMappingTaskType
    :initform (cl:make-instance 'system_manager_msgs-msg:SysLPNPMappingTaskType))
   (command
    :reader command
    :initarg :command
    :type system_manager_msgs-msg:SysLPNPMappingCommand
    :initform (cl:make-instance 'system_manager_msgs-msg:SysLPNPMappingCommand))
   (parking_name
    :reader parking_name
    :initarg :parking_name
    :type cl:string
    :initform "")
   (target_parking_space_id
    :reader target_parking_space_id
    :initarg :target_parking_space_id
    :type cl:integer
    :initform 0))
)

(cl:defclass SysLPNPMappingInfo (<SysLPNPMappingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysLPNPMappingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysLPNPMappingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysLPNPMappingInfo> is deprecated: use system_manager_msgs-msg:SysLPNPMappingInfo instead.")))

(cl:ensure-generic-function 'function_mode-val :lambda-list '(m))
(cl:defmethod function_mode-val ((m <SysLPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:function_mode-val is deprecated.  Use system_manager_msgs-msg:function_mode instead.")
  (function_mode m))

(cl:ensure-generic-function 'map_dir-val :lambda-list '(m))
(cl:defmethod map_dir-val ((m <SysLPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:map_dir-val is deprecated.  Use system_manager_msgs-msg:map_dir instead.")
  (map_dir m))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <SysLPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:map_name-val is deprecated.  Use system_manager_msgs-msg:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <SysLPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:task_type-val is deprecated.  Use system_manager_msgs-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <SysLPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:command-val is deprecated.  Use system_manager_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'parking_name-val :lambda-list '(m))
(cl:defmethod parking_name-val ((m <SysLPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:parking_name-val is deprecated.  Use system_manager_msgs-msg:parking_name instead.")
  (parking_name m))

(cl:ensure-generic-function 'target_parking_space_id-val :lambda-list '(m))
(cl:defmethod target_parking_space_id-val ((m <SysLPNPMappingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:target_parking_space_id-val is deprecated.  Use system_manager_msgs-msg:target_parking_space_id instead.")
  (target_parking_space_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysLPNPMappingInfo>) ostream)
  "Serializes a message object of type '<SysLPNPMappingInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'function_mode) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_dir))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_name)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_name)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_name)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_name)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'task_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parking_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parking_name))
  (cl:let* ((signed (cl:slot-value msg 'target_parking_space_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysLPNPMappingInfo>) istream)
  "Deserializes a message object of type '<SysLPNPMappingInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'function_mode) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_name)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_name)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_name)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_name)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'task_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parking_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parking_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_parking_space_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysLPNPMappingInfo>)))
  "Returns string type for a message object of type '<SysLPNPMappingInfo>"
  "system_manager_msgs/SysLPNPMappingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysLPNPMappingInfo)))
  "Returns string type for a message object of type 'SysLPNPMappingInfo"
  "system_manager_msgs/SysLPNPMappingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysLPNPMappingInfo>)))
  "Returns md5sum for a message object of type '<SysLPNPMappingInfo>"
  "0fedf36e358f781ec9a5351677b019dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysLPNPMappingInfo)))
  "Returns md5sum for a message object of type 'SysLPNPMappingInfo"
  "0fedf36e358f781ec9a5351677b019dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysLPNPMappingInfo>)))
  "Returns full string definition for message of type '<SysLPNPMappingInfo>"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum function_mode~%string map_dir~%uint32 map_name~%system_manager_msgs/SysLPNPMappingTaskType task_type~%system_manager_msgs/SysLPNPMappingCommand command~%string parking_name~%int32 target_parking_space_id~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/SysLPNPMappingTaskType~%uint8 DROP_OFF = 0~%uint8 PICK_UP = 1~%uint8 PARK_IN = 2~%uint8 PARK_OUT = 3~%uint8 VIRTUAL_PARK_IN = 4~%uint8 NUM = 5~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/SysLPNPMappingCommand~%uint8 START_SILENT_MODE = 0~%uint8 START_USER_MODE = 1~%uint8 FINISH = 2~%uint8 ABORT = 3~%uint8 BACK_TO_SILENT_MODE = 4~%uint8 SAVE = 5~%uint8 RESET_BUFFER = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysLPNPMappingInfo)))
  "Returns full string definition for message of type 'SysLPNPMappingInfo"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum function_mode~%string map_dir~%uint32 map_name~%system_manager_msgs/SysLPNPMappingTaskType task_type~%system_manager_msgs/SysLPNPMappingCommand command~%string parking_name~%int32 target_parking_space_id~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/SysLPNPMappingTaskType~%uint8 DROP_OFF = 0~%uint8 PICK_UP = 1~%uint8 PARK_IN = 2~%uint8 PARK_OUT = 3~%uint8 VIRTUAL_PARK_IN = 4~%uint8 NUM = 5~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/SysLPNPMappingCommand~%uint8 START_SILENT_MODE = 0~%uint8 START_USER_MODE = 1~%uint8 FINISH = 2~%uint8 ABORT = 3~%uint8 BACK_TO_SILENT_MODE = 4~%uint8 SAVE = 5~%uint8 RESET_BUFFER = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysLPNPMappingInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'function_mode))
     4 (cl:length (cl:slot-value msg 'map_dir))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'task_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command))
     4 (cl:length (cl:slot-value msg 'parking_name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysLPNPMappingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SysLPNPMappingInfo
    (cl:cons ':function_mode (function_mode msg))
    (cl:cons ':map_dir (map_dir msg))
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':command (command msg))
    (cl:cons ':parking_name (parking_name msg))
    (cl:cons ':target_parking_space_id (target_parking_space_id msg))
))
