; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude BagRecorderTrigger.msg.html

(cl:defclass <BagRecorderTrigger> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (scenario_flag
    :reader scenario_flag
    :initarg :scenario_flag
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass BagRecorderTrigger (<BagRecorderTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BagRecorderTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BagRecorderTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<BagRecorderTrigger> is deprecated: use momenta_msgs-msg:BagRecorderTrigger instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BagRecorderTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'scenario_flag-val :lambda-list '(m))
(cl:defmethod scenario_flag-val ((m <BagRecorderTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:scenario_flag-val is deprecated.  Use momenta_msgs-msg:scenario_flag instead.")
  (scenario_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BagRecorderTrigger>) ostream)
  "Serializes a message object of type '<BagRecorderTrigger>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scenario_flag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'scenario_flag))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BagRecorderTrigger>) istream)
  "Deserializes a message object of type '<BagRecorderTrigger>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scenario_flag) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scenario_flag)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BagRecorderTrigger>)))
  "Returns string type for a message object of type '<BagRecorderTrigger>"
  "momenta_msgs/BagRecorderTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BagRecorderTrigger)))
  "Returns string type for a message object of type 'BagRecorderTrigger"
  "momenta_msgs/BagRecorderTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BagRecorderTrigger>)))
  "Returns md5sum for a message object of type '<BagRecorderTrigger>"
  "d76574c91578cbb4cf58c0bbd4a3efd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BagRecorderTrigger)))
  "Returns md5sum for a message object of type 'BagRecorderTrigger"
  "d76574c91578cbb4cf58c0bbd4a3efd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BagRecorderTrigger>)))
  "Returns full string definition for message of type '<BagRecorderTrigger>"
  (cl:format cl:nil "std_msgs/Header header~%string[] scenario_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BagRecorderTrigger)))
  "Returns full string definition for message of type 'BagRecorderTrigger"
  (cl:format cl:nil "std_msgs/Header header~%string[] scenario_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BagRecorderTrigger>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scenario_flag) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BagRecorderTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'BagRecorderTrigger
    (cl:cons ':header (header msg))
    (cl:cons ':scenario_flag (scenario_flag msg))
))
