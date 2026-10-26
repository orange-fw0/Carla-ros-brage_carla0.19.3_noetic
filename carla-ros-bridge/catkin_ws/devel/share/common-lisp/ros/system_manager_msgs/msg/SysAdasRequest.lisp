; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysAdasRequest.msg.html

(cl:defclass <SysAdasRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (info
    :reader info
    :initarg :info
    :type system_manager_msgs-msg:SysAdasInfo
    :initform (cl:make-instance 'system_manager_msgs-msg:SysAdasInfo)))
)

(cl:defclass SysAdasRequest (<SysAdasRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysAdasRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysAdasRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysAdasRequest> is deprecated: use system_manager_msgs-msg:SysAdasRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SysAdasRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <SysAdasRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:info-val is deprecated.  Use system_manager_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysAdasRequest>) ostream)
  "Serializes a message object of type '<SysAdasRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysAdasRequest>) istream)
  "Deserializes a message object of type '<SysAdasRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysAdasRequest>)))
  "Returns string type for a message object of type '<SysAdasRequest>"
  "system_manager_msgs/SysAdasRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysAdasRequest)))
  "Returns string type for a message object of type 'SysAdasRequest"
  "system_manager_msgs/SysAdasRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysAdasRequest>)))
  "Returns md5sum for a message object of type '<SysAdasRequest>"
  "0c17d8b04f612d47ae9f2958b0cc738f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysAdasRequest)))
  "Returns md5sum for a message object of type 'SysAdasRequest"
  "0c17d8b04f612d47ae9f2958b0cc738f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysAdasRequest>)))
  "Returns full string definition for message of type '<SysAdasRequest>"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/SysAdasInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SysAdasInfo~%system_manager_msgs/FunctionModeEnum function_mode~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysAdasRequest)))
  "Returns full string definition for message of type 'SysAdasRequest"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/SysAdasInfo info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SysAdasInfo~%system_manager_msgs/FunctionModeEnum function_mode~%~%================================================================================~%MSG: system_manager_msgs/FunctionModeEnum~%uint8 ACC = 0~%uint8 CP = 1~%uint8 HNP = 2~%uint8 APA = 3~%uint8 SVP = 4~%uint8 PLAC = 5~%uint8 ACE = 6~%uint8 PNP = 7~%uint8 LPNP = 8~%uint8 LPNP_MAPPING = 9~%uint8 MEB = 10~%uint8 RADS = 11~%uint8 MANUAL = 12~%uint8 NRP = 13~%uint8 UNP = 14~%uint8 RPA = 15~%uint8 MANUAL_WITH_CPP = 16~%uint8 EESF = 17~%uint8 LKC = 18~%uint8 SENTRY_MODE = 20~%uint8 ECO_ASSIST = 21~%uint8 MNP = 22~%uint8 MNP_MAPPING = 23~%uint8 L3_FADEIN = 24~%uint8 MANUAL_WITH_NPP = 66~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysAdasRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysAdasRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'SysAdasRequest
    (cl:cons ':header (header msg))
    (cl:cons ':info (info msg))
))
