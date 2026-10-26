; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SsmStateSwitchResult.msg.html

(cl:defclass <SsmStateSwitchResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (source_state
    :reader source_state
    :initarg :source_state
    :type system_manager_msgs-msg:SsmState
    :initform (cl:make-instance 'system_manager_msgs-msg:SsmState))
   (target_state
    :reader target_state
    :initarg :target_state
    :type system_manager_msgs-msg:SsmState
    :initform (cl:make-instance 'system_manager_msgs-msg:SsmState))
   (code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SsmStateSwitchResult (<SsmStateSwitchResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SsmStateSwitchResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SsmStateSwitchResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SsmStateSwitchResult> is deprecated: use system_manager_msgs-msg:SsmStateSwitchResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SsmStateSwitchResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'source_state-val :lambda-list '(m))
(cl:defmethod source_state-val ((m <SsmStateSwitchResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:source_state-val is deprecated.  Use system_manager_msgs-msg:source_state instead.")
  (source_state m))

(cl:ensure-generic-function 'target_state-val :lambda-list '(m))
(cl:defmethod target_state-val ((m <SsmStateSwitchResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:target_state-val is deprecated.  Use system_manager_msgs-msg:target_state instead.")
  (target_state m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <SsmStateSwitchResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:code-val is deprecated.  Use system_manager_msgs-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SsmStateSwitchResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:message-val is deprecated.  Use system_manager_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SsmStateSwitchResult>)))
    "Constants for message type '<SsmStateSwitchResult>"
  '((:SUCCESS . 0)
    (:PENDING . 1)
    (:FAILED . 2)
    (:TIMEOUT . 3)
    (:INVALID_STATE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SsmStateSwitchResult)))
    "Constants for message type 'SsmStateSwitchResult"
  '((:SUCCESS . 0)
    (:PENDING . 1)
    (:FAILED . 2)
    (:TIMEOUT . 3)
    (:INVALID_STATE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SsmStateSwitchResult>) ostream)
  "Serializes a message object of type '<SsmStateSwitchResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'source_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SsmStateSwitchResult>) istream)
  "Deserializes a message object of type '<SsmStateSwitchResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'source_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_state) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SsmStateSwitchResult>)))
  "Returns string type for a message object of type '<SsmStateSwitchResult>"
  "system_manager_msgs/SsmStateSwitchResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SsmStateSwitchResult)))
  "Returns string type for a message object of type 'SsmStateSwitchResult"
  "system_manager_msgs/SsmStateSwitchResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SsmStateSwitchResult>)))
  "Returns md5sum for a message object of type '<SsmStateSwitchResult>"
  "c1d323785535a9cacbe426edf8155aca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SsmStateSwitchResult)))
  "Returns md5sum for a message object of type 'SsmStateSwitchResult"
  "c1d323785535a9cacbe426edf8155aca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SsmStateSwitchResult>)))
  "Returns full string definition for message of type '<SsmStateSwitchResult>"
  (cl:format cl:nil "uint8 SUCCESS = 0~%uint8 PENDING = 1~%uint8 FAILED = 2~%uint8 TIMEOUT = 3~%uint8 INVALID_STATE = 4~%std_msgs/Header header~%system_manager_msgs/SsmState source_state~%system_manager_msgs/SsmState target_state~%uint8 code~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SsmState~%uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SsmStateSwitchResult)))
  "Returns full string definition for message of type 'SsmStateSwitchResult"
  (cl:format cl:nil "uint8 SUCCESS = 0~%uint8 PENDING = 1~%uint8 FAILED = 2~%uint8 TIMEOUT = 3~%uint8 INVALID_STATE = 4~%std_msgs/Header header~%system_manager_msgs/SsmState source_state~%system_manager_msgs/SsmState target_state~%uint8 code~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SsmState~%uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SsmStateSwitchResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'source_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_state))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SsmStateSwitchResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SsmStateSwitchResult
    (cl:cons ':header (header msg))
    (cl:cons ':source_state (source_state msg))
    (cl:cons ':target_state (target_state msg))
    (cl:cons ':code (code msg))
    (cl:cons ':message (message msg))
))
