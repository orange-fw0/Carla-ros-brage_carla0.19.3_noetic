; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude HdmapDdldSwitchCmdRequest.msg.html

(cl:defclass <HdmapDdldSwitchCmdRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hdmap_ddld_mode
    :reader hdmap_ddld_mode
    :initarg :hdmap_ddld_mode
    :type system_manager_msgs-msg:HdmapDdldModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:HdmapDdldModeEnum)))
)

(cl:defclass HdmapDdldSwitchCmdRequest (<HdmapDdldSwitchCmdRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HdmapDdldSwitchCmdRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HdmapDdldSwitchCmdRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<HdmapDdldSwitchCmdRequest> is deprecated: use system_manager_msgs-msg:HdmapDdldSwitchCmdRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HdmapDdldSwitchCmdRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hdmap_ddld_mode-val :lambda-list '(m))
(cl:defmethod hdmap_ddld_mode-val ((m <HdmapDdldSwitchCmdRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:hdmap_ddld_mode-val is deprecated.  Use system_manager_msgs-msg:hdmap_ddld_mode instead.")
  (hdmap_ddld_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HdmapDdldSwitchCmdRequest>) ostream)
  "Serializes a message object of type '<HdmapDdldSwitchCmdRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hdmap_ddld_mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HdmapDdldSwitchCmdRequest>) istream)
  "Deserializes a message object of type '<HdmapDdldSwitchCmdRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hdmap_ddld_mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HdmapDdldSwitchCmdRequest>)))
  "Returns string type for a message object of type '<HdmapDdldSwitchCmdRequest>"
  "system_manager_msgs/HdmapDdldSwitchCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HdmapDdldSwitchCmdRequest)))
  "Returns string type for a message object of type 'HdmapDdldSwitchCmdRequest"
  "system_manager_msgs/HdmapDdldSwitchCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HdmapDdldSwitchCmdRequest>)))
  "Returns md5sum for a message object of type '<HdmapDdldSwitchCmdRequest>"
  "33ce916f016e7663814c8f691666481d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HdmapDdldSwitchCmdRequest)))
  "Returns md5sum for a message object of type 'HdmapDdldSwitchCmdRequest"
  "33ce916f016e7663814c8f691666481d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HdmapDdldSwitchCmdRequest>)))
  "Returns full string definition for message of type '<HdmapDdldSwitchCmdRequest>"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/HdmapDdldModeEnum hdmap_ddld_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/HdmapDdldModeEnum~%uint8 HDMAP = 0~%uint8 DDLD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HdmapDdldSwitchCmdRequest)))
  "Returns full string definition for message of type 'HdmapDdldSwitchCmdRequest"
  (cl:format cl:nil "std_msgs/Header header~%system_manager_msgs/HdmapDdldModeEnum hdmap_ddld_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/HdmapDdldModeEnum~%uint8 HDMAP = 0~%uint8 DDLD = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HdmapDdldSwitchCmdRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hdmap_ddld_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HdmapDdldSwitchCmdRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'HdmapDdldSwitchCmdRequest
    (cl:cons ':header (header msg))
    (cl:cons ':hdmap_ddld_mode (hdmap_ddld_mode msg))
))
