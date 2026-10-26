; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TOSCommand.msg.html

(cl:defclass <TOSCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tos_set_speed_cmd
    :reader tos_set_speed_cmd
    :initarg :tos_set_speed_cmd
    :type tos_msgs-msg:TOSSetSpeedCmd
    :initform (cl:make-instance 'tos_msgs-msg:TOSSetSpeedCmd))
   (tos_nudge_cmd
    :reader tos_nudge_cmd
    :initarg :tos_nudge_cmd
    :type tos_msgs-msg:TOSNudgeCmd
    :initform (cl:make-instance 'tos_msgs-msg:TOSNudgeCmd)))
)

(cl:defclass TOSCommand (<TOSCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TOSCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TOSCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TOSCommand> is deprecated: use tos_msgs-msg:TOSCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TOSCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tos_set_speed_cmd-val :lambda-list '(m))
(cl:defmethod tos_set_speed_cmd-val ((m <TOSCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:tos_set_speed_cmd-val is deprecated.  Use tos_msgs-msg:tos_set_speed_cmd instead.")
  (tos_set_speed_cmd m))

(cl:ensure-generic-function 'tos_nudge_cmd-val :lambda-list '(m))
(cl:defmethod tos_nudge_cmd-val ((m <TOSCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:tos_nudge_cmd-val is deprecated.  Use tos_msgs-msg:tos_nudge_cmd instead.")
  (tos_nudge_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TOSCommand>) ostream)
  "Serializes a message object of type '<TOSCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tos_set_speed_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tos_nudge_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TOSCommand>) istream)
  "Deserializes a message object of type '<TOSCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tos_set_speed_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tos_nudge_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TOSCommand>)))
  "Returns string type for a message object of type '<TOSCommand>"
  "tos_msgs/TOSCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TOSCommand)))
  "Returns string type for a message object of type 'TOSCommand"
  "tos_msgs/TOSCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TOSCommand>)))
  "Returns md5sum for a message object of type '<TOSCommand>"
  "aa0e281be7190eefeb03ee59f35c1ab1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TOSCommand)))
  "Returns md5sum for a message object of type 'TOSCommand"
  "aa0e281be7190eefeb03ee59f35c1ab1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TOSCommand>)))
  "Returns full string definition for message of type '<TOSCommand>"
  (cl:format cl:nil "std_msgs/Header header~%tos_msgs/TOSSetSpeedCmd tos_set_speed_cmd~%tos_msgs/TOSNudgeCmd tos_nudge_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TOSSetSpeedCmd~%uint8 available~%float64 tos_set_speed~%~%================================================================================~%MSG: tos_msgs/TOSNudgeCmd~%uint8 available~%tos_msgs/TOSNudgeEnum nudge_cmd~%~%================================================================================~%MSG: tos_msgs/TOSNudgeEnum~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TOSCommand)))
  "Returns full string definition for message of type 'TOSCommand"
  (cl:format cl:nil "std_msgs/Header header~%tos_msgs/TOSSetSpeedCmd tos_set_speed_cmd~%tos_msgs/TOSNudgeCmd tos_nudge_cmd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TOSSetSpeedCmd~%uint8 available~%float64 tos_set_speed~%~%================================================================================~%MSG: tos_msgs/TOSNudgeCmd~%uint8 available~%tos_msgs/TOSNudgeEnum nudge_cmd~%~%================================================================================~%MSG: tos_msgs/TOSNudgeEnum~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TOSCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tos_set_speed_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tos_nudge_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TOSCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TOSCommand
    (cl:cons ':header (header msg))
    (cl:cons ':tos_set_speed_cmd (tos_set_speed_cmd msg))
    (cl:cons ':tos_nudge_cmd (tos_nudge_cmd msg))
))
