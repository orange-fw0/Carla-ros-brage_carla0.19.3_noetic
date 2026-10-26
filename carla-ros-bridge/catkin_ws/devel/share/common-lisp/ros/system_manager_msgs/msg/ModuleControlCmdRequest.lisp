; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude ModuleControlCmdRequest.msg.html

(cl:defclass <ModuleControlCmdRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (running_mode
    :reader running_mode
    :initarg :running_mode
    :type system_manager_msgs-msg:RunningModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:RunningModeEnum))
   (module_control_cmd
    :reader module_control_cmd
    :initarg :module_control_cmd
    :type system_manager_msgs-msg:ModuleControlCmdEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:ModuleControlCmdEnum)))
)

(cl:defclass ModuleControlCmdRequest (<ModuleControlCmdRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleControlCmdRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleControlCmdRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<ModuleControlCmdRequest> is deprecated: use system_manager_msgs-msg:ModuleControlCmdRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ModuleControlCmdRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'running_mode-val :lambda-list '(m))
(cl:defmethod running_mode-val ((m <ModuleControlCmdRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:running_mode-val is deprecated.  Use system_manager_msgs-msg:running_mode instead.")
  (running_mode m))

(cl:ensure-generic-function 'module_control_cmd-val :lambda-list '(m))
(cl:defmethod module_control_cmd-val ((m <ModuleControlCmdRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:module_control_cmd-val is deprecated.  Use system_manager_msgs-msg:module_control_cmd instead.")
  (module_control_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleControlCmdRequest>) ostream)
  "Serializes a message object of type '<ModuleControlCmdRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'running_mode) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'module_control_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleControlCmdRequest>) istream)
  "Deserializes a message object of type '<ModuleControlCmdRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'running_mode) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'module_control_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleControlCmdRequest>)))
  "Returns string type for a message object of type '<ModuleControlCmdRequest>"
  "system_manager_msgs/ModuleControlCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleControlCmdRequest)))
  "Returns string type for a message object of type 'ModuleControlCmdRequest"
  "system_manager_msgs/ModuleControlCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleControlCmdRequest>)))
  "Returns md5sum for a message object of type '<ModuleControlCmdRequest>"
  "6bef79cd45830defc2dfa2dd2fd1e7f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleControlCmdRequest)))
  "Returns md5sum for a message object of type 'ModuleControlCmdRequest"
  "6bef79cd45830defc2dfa2dd2fd1e7f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleControlCmdRequest>)))
  "Returns full string definition for message of type '<ModuleControlCmdRequest>"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/RunningModeEnum running_mode~%system_manager_msgs/ModuleControlCmdEnum module_control_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/RunningModeEnum~%uint8 PILOT = 0~%uint8 PARKING = 1~%uint8 MANUAL_DRIVING = 2~%uint8 PRODUCTION_LINE = 3~%uint8 MEB = 4~%uint8 RADS = 5~%uint8 PILOT_WITH_PSD = 6~%uint8 SENTRY_MODE = 7~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ModuleControlCmdEnum~%uint8 PAUSE = 0~%uint8 RESUME = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleControlCmdRequest)))
  "Returns full string definition for message of type 'ModuleControlCmdRequest"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/RunningModeEnum running_mode~%system_manager_msgs/ModuleControlCmdEnum module_control_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/RunningModeEnum~%uint8 PILOT = 0~%uint8 PARKING = 1~%uint8 MANUAL_DRIVING = 2~%uint8 PRODUCTION_LINE = 3~%uint8 MEB = 4~%uint8 RADS = 5~%uint8 PILOT_WITH_PSD = 6~%uint8 SENTRY_MODE = 7~%uint8 value~%~%================================================================================~%MSG: system_manager_msgs/ModuleControlCmdEnum~%uint8 PAUSE = 0~%uint8 RESUME = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleControlCmdRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'running_mode))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'module_control_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleControlCmdRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleControlCmdRequest
    (cl:cons ':header (header msg))
    (cl:cons ':running_mode (running_mode msg))
    (cl:cons ':module_control_cmd (module_control_cmd msg))
))
