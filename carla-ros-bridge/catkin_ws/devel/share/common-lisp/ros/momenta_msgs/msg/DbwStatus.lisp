; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude DbwStatus.msg.html

(cl:defclass <DbwStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DbwStatus (<DbwStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DbwStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DbwStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<DbwStatus> is deprecated: use momenta_msgs-msg:DbwStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DbwStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <DbwStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:status-val is deprecated.  Use momenta_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DbwStatus>) ostream)
  "Serializes a message object of type '<DbwStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DbwStatus>) istream)
  "Deserializes a message object of type '<DbwStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DbwStatus>)))
  "Returns string type for a message object of type '<DbwStatus>"
  "momenta_msgs/DbwStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DbwStatus)))
  "Returns string type for a message object of type 'DbwStatus"
  "momenta_msgs/DbwStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DbwStatus>)))
  "Returns md5sum for a message object of type '<DbwStatus>"
  "29e7de2a1b8476cc222dc6a214a9a968")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DbwStatus)))
  "Returns md5sum for a message object of type 'DbwStatus"
  "29e7de2a1b8476cc222dc6a214a9a968")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DbwStatus>)))
  "Returns full string definition for message of type '<DbwStatus>"
  (cl:format cl:nil "std_msgs/Header header~%bool status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DbwStatus)))
  "Returns full string definition for message of type 'DbwStatus"
  (cl:format cl:nil "std_msgs/Header header~%bool status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DbwStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DbwStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DbwStatus
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
