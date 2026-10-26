; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SsmCurrentState.msg.html

(cl:defclass <SsmCurrentState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type system_manager_msgs-msg:SsmState
    :initform (cl:make-instance 'system_manager_msgs-msg:SsmState))
   (switching_state
    :reader switching_state
    :initarg :switching_state
    :type system_manager_msgs-msg:SsmState
    :initform (cl:make-instance 'system_manager_msgs-msg:SsmState))
   (can_switch
    :reader can_switch
    :initarg :can_switch
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SsmCurrentState (<SsmCurrentState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SsmCurrentState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SsmCurrentState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SsmCurrentState> is deprecated: use system_manager_msgs-msg:SsmCurrentState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SsmCurrentState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SsmCurrentState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:state-val is deprecated.  Use system_manager_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'switching_state-val :lambda-list '(m))
(cl:defmethod switching_state-val ((m <SsmCurrentState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:switching_state-val is deprecated.  Use system_manager_msgs-msg:switching_state instead.")
  (switching_state m))

(cl:ensure-generic-function 'can_switch-val :lambda-list '(m))
(cl:defmethod can_switch-val ((m <SsmCurrentState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:can_switch-val is deprecated.  Use system_manager_msgs-msg:can_switch instead.")
  (can_switch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SsmCurrentState>) ostream)
  "Serializes a message object of type '<SsmCurrentState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'switching_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_switch) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SsmCurrentState>) istream)
  "Deserializes a message object of type '<SsmCurrentState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'switching_state) istream)
    (cl:setf (cl:slot-value msg 'can_switch) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SsmCurrentState>)))
  "Returns string type for a message object of type '<SsmCurrentState>"
  "system_manager_msgs/SsmCurrentState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SsmCurrentState)))
  "Returns string type for a message object of type 'SsmCurrentState"
  "system_manager_msgs/SsmCurrentState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SsmCurrentState>)))
  "Returns md5sum for a message object of type '<SsmCurrentState>"
  "1e3993b5e79fbd1989ad29d974ce7e35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SsmCurrentState)))
  "Returns md5sum for a message object of type 'SsmCurrentState"
  "1e3993b5e79fbd1989ad29d974ce7e35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SsmCurrentState>)))
  "Returns full string definition for message of type '<SsmCurrentState>"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/SsmState state~%system_manager_msgs/SsmState switching_state~%bool can_switch~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SsmState~%uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SsmCurrentState)))
  "Returns full string definition for message of type 'SsmCurrentState"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/SsmState state~%system_manager_msgs/SsmState switching_state~%bool can_switch~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SsmState~%uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SsmCurrentState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'switching_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SsmCurrentState>))
  "Converts a ROS message object to a list"
  (cl:list 'SsmCurrentState
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':switching_state (switching_state msg))
    (cl:cons ':can_switch (can_switch msg))
))
