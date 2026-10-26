; Auto-generated. Do not edit!


(cl:in-package adas_msgs-msg)


;//! \htmlinclude AdasStatus.msg.html

(cl:defclass <AdasStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lca
    :reader lca
    :initarg :lca
    :type adas_msgs-msg:LcaStatus
    :initform (cl:make-instance 'adas_msgs-msg:LcaStatus))
   (bsd
    :reader bsd
    :initarg :bsd
    :type adas_msgs-msg:BsdStatus
    :initform (cl:make-instance 'adas_msgs-msg:BsdStatus))
   (dow
    :reader dow
    :initarg :dow
    :type adas_msgs-msg:DowStatus
    :initform (cl:make-instance 'adas_msgs-msg:DowStatus))
   (rcw
    :reader rcw
    :initarg :rcw
    :type adas_msgs-msg:RcwStatus
    :initform (cl:make-instance 'adas_msgs-msg:RcwStatus)))
)

(cl:defclass AdasStatus (<AdasStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdasStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdasStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name adas_msgs-msg:<AdasStatus> is deprecated: use adas_msgs-msg:AdasStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AdasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:header-val is deprecated.  Use adas_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lca-val :lambda-list '(m))
(cl:defmethod lca-val ((m <AdasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:lca-val is deprecated.  Use adas_msgs-msg:lca instead.")
  (lca m))

(cl:ensure-generic-function 'bsd-val :lambda-list '(m))
(cl:defmethod bsd-val ((m <AdasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:bsd-val is deprecated.  Use adas_msgs-msg:bsd instead.")
  (bsd m))

(cl:ensure-generic-function 'dow-val :lambda-list '(m))
(cl:defmethod dow-val ((m <AdasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:dow-val is deprecated.  Use adas_msgs-msg:dow instead.")
  (dow m))

(cl:ensure-generic-function 'rcw-val :lambda-list '(m))
(cl:defmethod rcw-val ((m <AdasStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader adas_msgs-msg:rcw-val is deprecated.  Use adas_msgs-msg:rcw instead.")
  (rcw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdasStatus>) ostream)
  "Serializes a message object of type '<AdasStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lca) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bsd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rcw) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdasStatus>) istream)
  "Deserializes a message object of type '<AdasStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lca) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bsd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rcw) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdasStatus>)))
  "Returns string type for a message object of type '<AdasStatus>"
  "adas_msgs/AdasStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdasStatus)))
  "Returns string type for a message object of type 'AdasStatus"
  "adas_msgs/AdasStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdasStatus>)))
  "Returns md5sum for a message object of type '<AdasStatus>"
  "a42d809339d43d8842c3cbde6e229299")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdasStatus)))
  "Returns md5sum for a message object of type 'AdasStatus"
  "a42d809339d43d8842c3cbde6e229299")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdasStatus>)))
  "Returns full string definition for message of type '<AdasStatus>"
  (cl:format cl:nil "std_msgs/Header header~%adas_msgs/LcaStatus lca~%adas_msgs/BsdStatus bsd~%adas_msgs/DowStatus dow~%adas_msgs/RcwStatus rcw~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: adas_msgs/LcaStatus~%uint8 left_state~%uint8 right_state~%~%================================================================================~%MSG: adas_msgs/BsdStatus~%uint8 left_state~%uint8 right_state~%~%================================================================================~%MSG: adas_msgs/DowStatus~%uint8 left_front_state~%uint8 left_rear_state~%uint8 right_front_state~%uint8 right_rear_state~%~%================================================================================~%MSG: adas_msgs/RcwStatus~%uint8 rcw_state~%uint8 rlw_state~%uint8 plw_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdasStatus)))
  "Returns full string definition for message of type 'AdasStatus"
  (cl:format cl:nil "std_msgs/Header header~%adas_msgs/LcaStatus lca~%adas_msgs/BsdStatus bsd~%adas_msgs/DowStatus dow~%adas_msgs/RcwStatus rcw~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: adas_msgs/LcaStatus~%uint8 left_state~%uint8 right_state~%~%================================================================================~%MSG: adas_msgs/BsdStatus~%uint8 left_state~%uint8 right_state~%~%================================================================================~%MSG: adas_msgs/DowStatus~%uint8 left_front_state~%uint8 left_rear_state~%uint8 right_front_state~%uint8 right_rear_state~%~%================================================================================~%MSG: adas_msgs/RcwStatus~%uint8 rcw_state~%uint8 rlw_state~%uint8 plw_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdasStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lca))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bsd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rcw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdasStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'AdasStatus
    (cl:cons ':header (header msg))
    (cl:cons ':lca (lca msg))
    (cl:cons ':bsd (bsd msg))
    (cl:cons ':dow (dow msg))
    (cl:cons ':rcw (rcw msg))
))
