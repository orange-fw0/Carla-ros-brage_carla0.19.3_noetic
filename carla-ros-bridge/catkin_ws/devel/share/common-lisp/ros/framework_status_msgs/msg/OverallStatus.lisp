; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude OverallStatus.msg.html

(cl:defclass <OverallStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (detail_status
    :reader detail_status
    :initarg :detail_status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass OverallStatus (<OverallStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OverallStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OverallStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<OverallStatus> is deprecated: use framework_status_msgs-msg:OverallStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OverallStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <OverallStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:timestamp_us-val is deprecated.  Use framework_status_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <OverallStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:status-val is deprecated.  Use framework_status_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'detail_status-val :lambda-list '(m))
(cl:defmethod detail_status-val ((m <OverallStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:detail_status-val is deprecated.  Use framework_status_msgs-msg:detail_status instead.")
  (detail_status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <OverallStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:message-val is deprecated.  Use framework_status_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<OverallStatus>)))
    "Constants for message type '<OverallStatus>"
  '((:STOP . 0)
    (:SAFTY_RUNNING . 1)
    (:NORMAL_RUNNING . 2)
    (:TAKEOVER . 3)
    (:NONE . 0)
    (:SAFTY_RUNNING_WAIT_TAKEOVER . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'OverallStatus)))
    "Constants for message type 'OverallStatus"
  '((:STOP . 0)
    (:SAFTY_RUNNING . 1)
    (:NORMAL_RUNNING . 2)
    (:TAKEOVER . 3)
    (:NONE . 0)
    (:SAFTY_RUNNING_WAIT_TAKEOVER . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OverallStatus>) ostream)
  "Serializes a message object of type '<OverallStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detail_status)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OverallStatus>) istream)
  "Deserializes a message object of type '<OverallStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'detail_status)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OverallStatus>)))
  "Returns string type for a message object of type '<OverallStatus>"
  "framework_status_msgs/OverallStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OverallStatus)))
  "Returns string type for a message object of type 'OverallStatus"
  "framework_status_msgs/OverallStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OverallStatus>)))
  "Returns md5sum for a message object of type '<OverallStatus>"
  "da53c828915078e6f234d3394552812d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OverallStatus)))
  "Returns md5sum for a message object of type 'OverallStatus"
  "da53c828915078e6f234d3394552812d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OverallStatus>)))
  "Returns full string definition for message of type '<OverallStatus>"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 SAFTY_RUNNING = 1~%uint8 NORMAL_RUNNING = 2~%uint8 TAKEOVER = 3~%uint8 NONE = 0~%uint8 SAFTY_RUNNING_WAIT_TAKEOVER = 1~%std_msgs/Header header~%uint64 timestamp_us~%uint8 status~%uint8 detail_status~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OverallStatus)))
  "Returns full string definition for message of type 'OverallStatus"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 SAFTY_RUNNING = 1~%uint8 NORMAL_RUNNING = 2~%uint8 TAKEOVER = 3~%uint8 NONE = 0~%uint8 SAFTY_RUNNING_WAIT_TAKEOVER = 1~%std_msgs/Header header~%uint64 timestamp_us~%uint8 status~%uint8 detail_status~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OverallStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OverallStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'OverallStatus
    (cl:cons ':header (header msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':status (status msg))
    (cl:cons ':detail_status (detail_status msg))
    (cl:cons ':message (message msg))
))
