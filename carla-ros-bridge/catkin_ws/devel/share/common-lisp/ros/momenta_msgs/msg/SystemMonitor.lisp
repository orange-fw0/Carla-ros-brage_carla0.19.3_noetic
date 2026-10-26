; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude SystemMonitor.msg.html

(cl:defclass <SystemMonitor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (system_status
    :reader system_status
    :initarg :system_status
    :type cl:fixnum
    :initform 0)
   (warning_nodes_list
    :reader warning_nodes_list
    :initarg :warning_nodes_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (error_nodes_list
    :reader error_nodes_list
    :initarg :error_nodes_list
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass SystemMonitor (<SystemMonitor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemMonitor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemMonitor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<SystemMonitor> is deprecated: use momenta_msgs-msg:SystemMonitor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemMonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:header-val is deprecated.  Use momenta_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'system_status-val :lambda-list '(m))
(cl:defmethod system_status-val ((m <SystemMonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:system_status-val is deprecated.  Use momenta_msgs-msg:system_status instead.")
  (system_status m))

(cl:ensure-generic-function 'warning_nodes_list-val :lambda-list '(m))
(cl:defmethod warning_nodes_list-val ((m <SystemMonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:warning_nodes_list-val is deprecated.  Use momenta_msgs-msg:warning_nodes_list instead.")
  (warning_nodes_list m))

(cl:ensure-generic-function 'error_nodes_list-val :lambda-list '(m))
(cl:defmethod error_nodes_list-val ((m <SystemMonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:error_nodes_list-val is deprecated.  Use momenta_msgs-msg:error_nodes_list instead.")
  (error_nodes_list m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SystemMonitor>)))
    "Constants for message type '<SystemMonitor>"
  '((:SYSTEM_STATUS_NORMAL_TYPE . 0)
    (:SYSTEM_STATUS_WARNING_TYPE . 1)
    (:SYSTEM_STATUS_ERROR_TYPE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SystemMonitor)))
    "Constants for message type 'SystemMonitor"
  '((:SYSTEM_STATUS_NORMAL_TYPE . 0)
    (:SYSTEM_STATUS_WARNING_TYPE . 1)
    (:SYSTEM_STATUS_ERROR_TYPE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemMonitor>) ostream)
  "Serializes a message object of type '<SystemMonitor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'warning_nodes_list))))
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
   (cl:slot-value msg 'warning_nodes_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'error_nodes_list))))
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
   (cl:slot-value msg 'error_nodes_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemMonitor>) istream)
  "Deserializes a message object of type '<SystemMonitor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_status)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'warning_nodes_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'warning_nodes_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'error_nodes_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'error_nodes_list)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemMonitor>)))
  "Returns string type for a message object of type '<SystemMonitor>"
  "momenta_msgs/SystemMonitor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemMonitor)))
  "Returns string type for a message object of type 'SystemMonitor"
  "momenta_msgs/SystemMonitor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemMonitor>)))
  "Returns md5sum for a message object of type '<SystemMonitor>"
  "18f8caf115f21f130c236c5cd871b95f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemMonitor)))
  "Returns md5sum for a message object of type 'SystemMonitor"
  "18f8caf115f21f130c236c5cd871b95f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemMonitor>)))
  "Returns full string definition for message of type '<SystemMonitor>"
  (cl:format cl:nil "uint8 SYSTEM_STATUS_NORMAL_TYPE = 0~%uint8 SYSTEM_STATUS_WARNING_TYPE = 1~%uint8 SYSTEM_STATUS_ERROR_TYPE = 2~%std_msgs/Header header~%uint8 system_status~%string[] warning_nodes_list~%string[] error_nodes_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemMonitor)))
  "Returns full string definition for message of type 'SystemMonitor"
  (cl:format cl:nil "uint8 SYSTEM_STATUS_NORMAL_TYPE = 0~%uint8 SYSTEM_STATUS_WARNING_TYPE = 1~%uint8 SYSTEM_STATUS_ERROR_TYPE = 2~%std_msgs/Header header~%uint8 system_status~%string[] warning_nodes_list~%string[] error_nodes_list~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemMonitor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'warning_nodes_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'error_nodes_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemMonitor>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemMonitor
    (cl:cons ':header (header msg))
    (cl:cons ':system_status (system_status msg))
    (cl:cons ':warning_nodes_list (warning_nodes_list msg))
    (cl:cons ':error_nodes_list (error_nodes_list msg))
))
