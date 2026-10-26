; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude DebugInfo.msg.html

(cl:defclass <DebugInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (related_topic
    :reader related_topic
    :initarg :related_topic
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass DebugInfo (<DebugInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DebugInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DebugInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<DebugInfo> is deprecated: use momenta_msgs-msg:DebugInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <DebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:level-val is deprecated.  Use momenta_msgs-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'related_topic-val :lambda-list '(m))
(cl:defmethod related_topic-val ((m <DebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:related_topic-val is deprecated.  Use momenta_msgs-msg:related_topic instead.")
  (related_topic m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <DebugInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:data-val is deprecated.  Use momenta_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DebugInfo>)))
    "Constants for message type '<DebugInfo>"
  '((:LEVEL_DEBUG . 0)
    (:LEVEL_INFO . 1)
    (:LEVEL_WARN . 2)
    (:LEVEL_ERROR . 3)
    (:LEVEL_FATAL . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DebugInfo)))
    "Constants for message type 'DebugInfo"
  '((:LEVEL_DEBUG . 0)
    (:LEVEL_INFO . 1)
    (:LEVEL_WARN . 2)
    (:LEVEL_ERROR . 3)
    (:LEVEL_FATAL . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DebugInfo>) ostream)
  "Serializes a message object of type '<DebugInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'related_topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'related_topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DebugInfo>) istream)
  "Deserializes a message object of type '<DebugInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'related_topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'related_topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DebugInfo>)))
  "Returns string type for a message object of type '<DebugInfo>"
  "momenta_msgs/DebugInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DebugInfo)))
  "Returns string type for a message object of type 'DebugInfo"
  "momenta_msgs/DebugInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DebugInfo>)))
  "Returns md5sum for a message object of type '<DebugInfo>"
  "937cb0313ba8ca56b878ca360cd7bc95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DebugInfo)))
  "Returns md5sum for a message object of type 'DebugInfo"
  "937cb0313ba8ca56b878ca360cd7bc95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DebugInfo>)))
  "Returns full string definition for message of type '<DebugInfo>"
  (cl:format cl:nil "uint8 LEVEL_DEBUG = 0~%uint8 LEVEL_INFO = 1~%uint8 LEVEL_WARN = 2~%uint8 LEVEL_ERROR = 3~%uint8 LEVEL_FATAL = 4~%std_msgs/Header header~%uint8 level~%string related_topic~%string data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DebugInfo)))
  "Returns full string definition for message of type 'DebugInfo"
  (cl:format cl:nil "uint8 LEVEL_DEBUG = 0~%uint8 LEVEL_INFO = 1~%uint8 LEVEL_WARN = 2~%uint8 LEVEL_ERROR = 3~%uint8 LEVEL_FATAL = 4~%std_msgs/Header header~%uint8 level~%string related_topic~%string data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DebugInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'related_topic))
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DebugInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DebugInfo
    (cl:cons ':header (header msg))
    (cl:cons ':level (level msg))
    (cl:cons ':related_topic (related_topic msg))
    (cl:cons ':data (data msg))
))
