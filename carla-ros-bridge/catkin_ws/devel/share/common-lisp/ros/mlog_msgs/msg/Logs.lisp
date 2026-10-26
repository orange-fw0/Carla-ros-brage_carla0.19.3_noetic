; Auto-generated. Do not edit!


(cl:in-package mlog_msgs-msg)


;//! \htmlinclude Logs.msg.html

(cl:defclass <Logs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (entries
    :reader entries
    :initarg :entries
    :type (cl:vector mlog_msgs-msg:Entry)
   :initform (cl:make-array 0 :element-type 'mlog_msgs-msg:Entry :initial-element (cl:make-instance 'mlog_msgs-msg:Entry))))
)

(cl:defclass Logs (<Logs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Logs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Logs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mlog_msgs-msg:<Logs> is deprecated: use mlog_msgs-msg:Logs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Logs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mlog_msgs-msg:header-val is deprecated.  Use mlog_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'entries-val :lambda-list '(m))
(cl:defmethod entries-val ((m <Logs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mlog_msgs-msg:entries-val is deprecated.  Use mlog_msgs-msg:entries instead.")
  (entries m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Logs>) ostream)
  "Serializes a message object of type '<Logs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'entries))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'entries))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Logs>) istream)
  "Deserializes a message object of type '<Logs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'entries) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'entries)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mlog_msgs-msg:Entry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Logs>)))
  "Returns string type for a message object of type '<Logs>"
  "mlog_msgs/Logs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Logs)))
  "Returns string type for a message object of type 'Logs"
  "mlog_msgs/Logs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Logs>)))
  "Returns md5sum for a message object of type '<Logs>"
  "68e9e63185c0cb1889770fbf4e881576")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Logs)))
  "Returns md5sum for a message object of type 'Logs"
  "68e9e63185c0cb1889770fbf4e881576")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Logs>)))
  "Returns full string definition for message of type '<Logs>"
  (cl:format cl:nil "std_msgs/Header header~%mlog_msgs/Entry[] entries~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mlog_msgs/Entry~%uint8 DATA_TYPE_NORMAL = 0~%uint8 DATA_TYPE_MSG_TIMESTAMP = 1~%uint8 DATA_TYPE_MSG_RELATION = 2~%uint8 type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Logs)))
  "Returns full string definition for message of type 'Logs"
  (cl:format cl:nil "std_msgs/Header header~%mlog_msgs/Entry[] entries~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mlog_msgs/Entry~%uint8 DATA_TYPE_NORMAL = 0~%uint8 DATA_TYPE_MSG_TIMESTAMP = 1~%uint8 DATA_TYPE_MSG_RELATION = 2~%uint8 type~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Logs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'entries) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Logs>))
  "Converts a ROS message object to a list"
  (cl:list 'Logs
    (cl:cons ':header (header msg))
    (cl:cons ':entries (entries msg))
))
