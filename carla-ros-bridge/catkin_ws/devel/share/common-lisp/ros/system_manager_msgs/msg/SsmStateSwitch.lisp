; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SsmStateSwitch.msg.html

(cl:defclass <SsmStateSwitch> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type system_manager_msgs-msg:SsmState
    :initform (cl:make-instance 'system_manager_msgs-msg:SsmState)))
)

(cl:defclass SsmStateSwitch (<SsmStateSwitch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SsmStateSwitch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SsmStateSwitch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SsmStateSwitch> is deprecated: use system_manager_msgs-msg:SsmStateSwitch instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SsmStateSwitch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SsmStateSwitch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:state-val is deprecated.  Use system_manager_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SsmStateSwitch>) ostream)
  "Serializes a message object of type '<SsmStateSwitch>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SsmStateSwitch>) istream)
  "Deserializes a message object of type '<SsmStateSwitch>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SsmStateSwitch>)))
  "Returns string type for a message object of type '<SsmStateSwitch>"
  "system_manager_msgs/SsmStateSwitch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SsmStateSwitch)))
  "Returns string type for a message object of type 'SsmStateSwitch"
  "system_manager_msgs/SsmStateSwitch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SsmStateSwitch>)))
  "Returns md5sum for a message object of type '<SsmStateSwitch>"
  "ca75b416d2aec87502ac1b6d96a3a0ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SsmStateSwitch)))
  "Returns md5sum for a message object of type 'SsmStateSwitch"
  "ca75b416d2aec87502ac1b6d96a3a0ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SsmStateSwitch>)))
  "Returns full string definition for message of type '<SsmStateSwitch>"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/SsmState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SsmState~%uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SsmStateSwitch)))
  "Returns full string definition for message of type 'SsmStateSwitch"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/SsmState state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SsmState~%uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SsmStateSwitch>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SsmStateSwitch>))
  "Converts a ROS message object to a list"
  (cl:list 'SsmStateSwitch
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
))
