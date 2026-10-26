; Auto-generated. Do not edit!


(cl:in-package adas_msgs-msg)


;//! \htmlinclude SentryStatus.msg.html

(cl:defclass <SentryStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (approach_warning_state
    :reader approach_warning_state
    :initarg :approach_warning_state
    :type cl:fixnum
    :initform 0)
   (shake_warning_state
    :reader shake_warning_state
    :initarg :shake_warning_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SentryStatus (<SentryStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adas_msgs-msg:<SentryStatus> is deprecated: use adas_msgs-msg:SentryStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SentryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:header-val is deprecated.  Use adas_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'approach_warning_state-val :lambda-list '(m))
(cl:defmethod approach_warning_state-val ((m <SentryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:approach_warning_state-val is deprecated.  Use adas_msgs-msg:approach_warning_state instead.")
  (approach_warning_state m))

(cl:ensure-generic-function 'shake_warning_state-val :lambda-list '(m))
(cl:defmethod shake_warning_state-val ((m <SentryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:shake_warning_state-val is deprecated.  Use adas_msgs-msg:shake_warning_state instead.")
  (shake_warning_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryStatus>) ostream)
  "Serializes a message object of type '<SentryStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'approach_warning_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shake_warning_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryStatus>) istream)
  "Deserializes a message object of type '<SentryStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'approach_warning_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shake_warning_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryStatus>)))
  "Returns string type for a message object of type '<SentryStatus>"
  "adas_msgs/SentryStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryStatus)))
  "Returns string type for a message object of type 'SentryStatus"
  "adas_msgs/SentryStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryStatus>)))
  "Returns md5sum for a message object of type '<SentryStatus>"
  "f33ec563dfef6aaa4f36dd15c3a8633d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryStatus)))
  "Returns md5sum for a message object of type 'SentryStatus"
  "f33ec563dfef6aaa4f36dd15c3a8633d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryStatus>)))
  "Returns full string definition for message of type '<SentryStatus>"
  (cl:format cl:nil "std_msgs/Header header~%uint8 approach_warning_state~%uint8 shake_warning_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryStatus)))
  "Returns full string definition for message of type 'SentryStatus"
  (cl:format cl:nil "std_msgs/Header header~%uint8 approach_warning_state~%uint8 shake_warning_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryStatus
    (cl:cons ':header (header msg))
    (cl:cons ':approach_warning_state (approach_warning_state msg))
    (cl:cons ':shake_warning_state (shake_warning_state msg))
))
