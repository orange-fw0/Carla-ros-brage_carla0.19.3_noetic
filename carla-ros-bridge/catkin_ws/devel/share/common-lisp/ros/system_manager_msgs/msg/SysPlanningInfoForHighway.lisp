; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysPlanningInfoForHighway.msg.html

(cl:defclass <SysPlanningInfoForHighway> (roslisp-msg-protocol:ros-message)
  ((function_mode
    :reader function_mode
    :initarg :function_mode
    :type system_manager_msgs-msg:FunctionModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:FunctionModeEnum))
   (navi_settings
    :reader navi_settings
    :initarg :navi_settings
    :type system_manager_msgs-msg:NaviSettings
    :initform (cl:make-instance 'system_manager_msgs-msg:NaviSettings))
   (driving_style
    :reader driving_style
    :initarg :driving_style
    :type system_manager_msgs-msg:DrivingStyleEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:DrivingStyleEnum))
   (lane_change_cmd
    :reader lane_change_cmd
    :initarg :lane_change_cmd
    :type system_manager_msgs-msg:LaneChangeCmd
    :initform (cl:make-instance 'system_manager_msgs-msg:LaneChangeCmd))
   (start_stop_cmd
    :reader start_stop_cmd
    :initarg :start_stop_cmd
    :type system_manager_msgs-msg:StartStopCmdEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:StartStopCmdEnum))
   (lane_change_style
    :reader lane_change_style
    :initarg :lane_change_style
    :type system_manager_msgs-msg:LaneChangeStyleEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:LaneChangeStyleEnum)))
)

(cl:defclass SysPlanningInfoForHighway (<SysPlanningInfoForHighway>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysPlanningInfoForHighway>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysPlanningInfoForHighway)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysPlanningInfoForHighway> is deprecated: use system_manager_msgs-msg:SysPlanningInfoForHighway instead.")))

(cl:ensure-generic-function 'function_mode-val :lambda-list '(m))
(cl:defmethod function_mode-val ((m <SysPlanningInfoForHighway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:function_mode-val is deprecated.  Use system_manager_msgs-msg:function_mode instead.")
  (function_mode m))

(cl:ensure-generic-function 'navi_settings-val :lambda-list '(m))
(cl:defmethod navi_settings-val ((m <SysPlanningInfoForHighway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:navi_settings-val is deprecated.  Use system_manager_msgs-msg:navi_settings instead.")
  (navi_settings m))

(cl:ensure-generic-function 'driving_style-val :lambda-list '(m))
(cl:defmethod driving_style-val ((m <SysPlanningInfoForHighway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:driving_style-val is deprecated.  Use system_manager_msgs-msg:driving_style instead.")
  (driving_style m))

(cl:ensure-generic-function 'lane_change_cmd-val :lambda-list '(m))
(cl:defmethod lane_change_cmd-val ((m <SysPlanningInfoForHighway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:lane_change_cmd-val is deprecated.  Use system_manager_msgs-msg:lane_change_cmd instead.")
  (lane_change_cmd m))

(cl:ensure-generic-function 'start_stop_cmd-val :lambda-list '(m))
(cl:defmethod start_stop_cmd-val ((m <SysPlanningInfoForHighway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:start_stop_cmd-val is deprecated.  Use system_manager_msgs-msg:start_stop_cmd instead.")
  (start_stop_cmd m))

(cl:ensure-generic-function 'lane_change_style-val :lambda-list '(m))
(cl:defmethod lane_change_style-val ((m <SysPlanningInfoForHighway>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:lane_change_style-val is deprecated.  Use system_manager_msgs-msg:lane_change_style instead.")
  (lane_change_style m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysPlanningInfoForHighway>) ostream)
  "Serializes a message object of type '<SysPlanningInfoForHighway>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'function_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navi_settings) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driving_style) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_change_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_stop_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_change_style) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysPlanningInfoForHighway>) istream)
  "Deserializes a message object of type '<SysPlanningInfoForHighway>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'function_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navi_settings) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driving_style) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_change_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_stop_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_change_style) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysPlanningInfoForHighway>)))
  "Returns string type for a message object of type '<SysPlanningInfoForHighway>"
  "system_manager_msgs/SysPlanningInfoForHighway")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysPlanningInfoForHighway)))
  "Returns string type for a message object of type 'SysPlanningInfoForHighway"
  "system_manager_msgs/SysPlanningInfoForHighway")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysPlanningInfoForHighway>)))
  "Returns md5sum for a message object of type '<SysPlanningInfoForHighway>"
  "e6bf22ee6514788d823386fc7c22d717")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysPlanningInfoForHighway)))
  "Returns md5sum for a message object of type 'SysPlanningInfoForHighway"
  "e6bf22ee6514788d823386fc7c22d717")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysPlanningInfoForHighway>)))
  "Returns full string definition for message of type '<SysPlanningInfoForHighway>"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum function_mode~%system_manager_msgs/NaviSettings navi_settings~%system_manager_msgs/DrivingStyleEnum driving_style~%system_manager_msgs/LaneChangeCmd lane_change_cmd~%system_manager_msgs/StartStopCmdEnum start_stop_cmd~%system_manager_msgs/LaneChangeStyleEnum lane_change_style~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/NaviSettings~%float32 navi_max_speed~%system_manager_msgs/NaviTimeDistance navi_time_distance~%~%================================================================================~%MSG: system_manager_msgs/NaviTimeDistance~%uint8 AGGRESIVE = 0~%uint8 MODERATE_AGGRESIVE = 1~%uint8 NORMAL = 2~%uint8 MODERATE_CONSERVATIVE = 3~%uint8 CONSERVATIVE = 4~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/DrivingStyleEnum~%uint8 AGGRESIVE = 0~%uint8 NORMAL = 1~%uint8 CONSERVATIVE = 2~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeCmd~%system_manager_msgs/LaneChangeTypeEnum type~%system_manager_msgs/LaneChangeDirectionEnum direction~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeTypeEnum~%uint8 FORBIDDEN = 0~%uint8 INTERACTIVE = 1~%uint8 REMOVE_FORBIDDEN = 2~%uint8 REMOVE_INTERACTIVE = 3~%uint8 CONFIRM_MODE = 4~%uint8 REMOVE_CONFIRM_MODE = 5~%uint8 CONFIRM_APPROVED = 6~%uint8 CONFIRM_REFUSED = 7~%uint8 ENABLE_EVASIVE = 10~%uint8 DISABLE_EVASIVE = 11~%uint8 FORBIDDEN_INTERACTIVE = 12~%uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13~%uint8 FORBIDDEN_AUTO = 14~%uint8 REMOVE_FORBIDDEN_AUTO = 15~%uint8 FORBIDDEN_NAVI = 16~%uint8 REMOVE_FORBIDDEN_NAVI = 17~%uint8 CONFIRM_TIMEOUT = 18~%uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20~%uint8 ENABLE_RECOMMAND_AUTOMOUS = 21~%uint8 DISABLE_AUTOMOUS = 22~%uint8 ENABLE_PREFERED_LANE = 23~%uint8 DISABLE_PREFERED_LANE = 24~%uint8 LEFT_FIRST_LANE = 25~%uint8 LEFT_SECOND_LANE = 26~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeDirectionEnum~%uint8 LEFT = 0~%uint8 RIGHT = 1~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/StartStopCmdEnum~%uint8 START = 0~%uint8 STOP = 1~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeStyleEnum~%uint8 AGGRESIVE = 0~%uint8 NORMAL = 1~%uint8 CONSERVATIVE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysPlanningInfoForHighway)))
  "Returns full string definition for message of type 'SysPlanningInfoForHighway"
  (cl:format cl:nil "system_manager_msgs/FunctionModeEnum function_mode~%system_manager_msgs/NaviSettings navi_settings~%system_manager_msgs/DrivingStyleEnum driving_style~%system_manager_msgs/LaneChangeCmd lane_change_cmd~%system_manager_msgs/StartStopCmdEnum start_stop_cmd~%system_manager_msgs/LaneChangeStyleEnum lane_change_style~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/NaviSettings~%float32 navi_max_speed~%system_manager_msgs/NaviTimeDistance navi_time_distance~%~%================================================================================~%MSG: system_manager_msgs/NaviTimeDistance~%uint8 AGGRESIVE = 0~%uint8 MODERATE_AGGRESIVE = 1~%uint8 NORMAL = 2~%uint8 MODERATE_CONSERVATIVE = 3~%uint8 CONSERVATIVE = 4~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/DrivingStyleEnum~%uint8 AGGRESIVE = 0~%uint8 NORMAL = 1~%uint8 CONSERVATIVE = 2~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeCmd~%system_manager_msgs/LaneChangeTypeEnum type~%system_manager_msgs/LaneChangeDirectionEnum direction~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeTypeEnum~%uint8 FORBIDDEN = 0~%uint8 INTERACTIVE = 1~%uint8 REMOVE_FORBIDDEN = 2~%uint8 REMOVE_INTERACTIVE = 3~%uint8 CONFIRM_MODE = 4~%uint8 REMOVE_CONFIRM_MODE = 5~%uint8 CONFIRM_APPROVED = 6~%uint8 CONFIRM_REFUSED = 7~%uint8 ENABLE_EVASIVE = 10~%uint8 DISABLE_EVASIVE = 11~%uint8 FORBIDDEN_INTERACTIVE = 12~%uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13~%uint8 FORBIDDEN_AUTO = 14~%uint8 REMOVE_FORBIDDEN_AUTO = 15~%uint8 FORBIDDEN_NAVI = 16~%uint8 REMOVE_FORBIDDEN_NAVI = 17~%uint8 CONFIRM_TIMEOUT = 18~%uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20~%uint8 ENABLE_RECOMMAND_AUTOMOUS = 21~%uint8 DISABLE_AUTOMOUS = 22~%uint8 ENABLE_PREFERED_LANE = 23~%uint8 DISABLE_PREFERED_LANE = 24~%uint8 LEFT_FIRST_LANE = 25~%uint8 LEFT_SECOND_LANE = 26~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeDirectionEnum~%uint8 LEFT = 0~%uint8 RIGHT = 1~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/StartStopCmdEnum~%uint8 START = 0~%uint8 STOP = 1~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/LaneChangeStyleEnum~%uint8 AGGRESIVE = 0~%uint8 NORMAL = 1~%uint8 CONSERVATIVE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysPlanningInfoForHighway>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'function_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navi_settings))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driving_style))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_change_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_stop_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_change_style))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysPlanningInfoForHighway>))
  "Converts a ROS message object to a list"
  (cl:list 'SysPlanningInfoForHighway
    (cl:cons ':function_mode (function_mode msg))
    (cl:cons ':navi_settings (navi_settings msg))
    (cl:cons ':driving_style (driving_style msg))
    (cl:cons ':lane_change_cmd (lane_change_cmd msg))
    (cl:cons ':start_stop_cmd (start_stop_cmd msg))
    (cl:cons ':lane_change_style (lane_change_style msg))
))
