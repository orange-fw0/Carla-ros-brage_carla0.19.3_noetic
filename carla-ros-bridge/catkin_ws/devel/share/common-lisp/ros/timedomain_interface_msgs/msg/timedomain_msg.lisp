; Auto-generated. Do not edit!


(cl:in-package timedomain_interface_msgs-msg)


;//! \htmlinclude timedomain_msg.msg.html

(cl:defclass <timedomain_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (local_time
    :reader local_time
    :initarg :local_time
    :type cl:integer
    :initform 0)
   (gps_time
    :reader gps_time
    :initarg :gps_time
    :type cl:integer
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass timedomain_msg (<timedomain_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <timedomain_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'timedomain_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name timedomain_interface_msgs-msg:<timedomain_msg> is deprecated: use timedomain_interface_msgs-msg:timedomain_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <timedomain_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader timedomain_interface_msgs-msg:header-val is deprecated.  Use timedomain_interface_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'local_time-val :lambda-list '(m))
(cl:defmethod local_time-val ((m <timedomain_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader timedomain_interface_msgs-msg:local_time-val is deprecated.  Use timedomain_interface_msgs-msg:local_time instead.")
  (local_time m))

(cl:ensure-generic-function 'gps_time-val :lambda-list '(m))
(cl:defmethod gps_time-val ((m <timedomain_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader timedomain_interface_msgs-msg:gps_time-val is deprecated.  Use timedomain_interface_msgs-msg:gps_time instead.")
  (gps_time m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <timedomain_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader timedomain_interface_msgs-msg:state-val is deprecated.  Use timedomain_interface_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <timedomain_msg>) ostream)
  "Serializes a message object of type '<timedomain_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'local_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'local_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'local_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'local_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'local_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'local_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'local_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'local_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'gps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'gps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'gps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'gps_time)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <timedomain_msg>) istream)
  "Deserializes a message object of type '<timedomain_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'local_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'local_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'local_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'local_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'local_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'local_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'local_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'local_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'gps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'gps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'gps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'gps_time)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<timedomain_msg>)))
  "Returns string type for a message object of type '<timedomain_msg>"
  "timedomain_interface_msgs/timedomain_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'timedomain_msg)))
  "Returns string type for a message object of type 'timedomain_msg"
  "timedomain_interface_msgs/timedomain_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<timedomain_msg>)))
  "Returns md5sum for a message object of type '<timedomain_msg>"
  "55624a00177d7264c16ecdcff80366a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'timedomain_msg)))
  "Returns md5sum for a message object of type 'timedomain_msg"
  "55624a00177d7264c16ecdcff80366a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<timedomain_msg>)))
  "Returns full string definition for message of type '<timedomain_msg>"
  (cl:format cl:nil "std_msgs/Header header~%uint64 local_time~%uint64 gps_time~%int32 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'timedomain_msg)))
  "Returns full string definition for message of type 'timedomain_msg"
  (cl:format cl:nil "std_msgs/Header header~%uint64 local_time~%uint64 gps_time~%int32 state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <timedomain_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <timedomain_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'timedomain_msg
    (cl:cons ':header (header msg))
    (cl:cons ':local_time (local_time msg))
    (cl:cons ':gps_time (gps_time msg))
    (cl:cons ':state (state msg))
))
