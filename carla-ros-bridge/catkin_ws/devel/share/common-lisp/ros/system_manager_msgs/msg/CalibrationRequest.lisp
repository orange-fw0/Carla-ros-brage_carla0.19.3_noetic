; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude CalibrationRequest.msg.html

(cl:defclass <CalibrationRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (command
    :reader command
    :initarg :command
    :type cl:fixnum
    :initform 0)
   (target_state
    :reader target_state
    :initarg :target_state
    :type system_manager_msgs-msg:SsmState
    :initform (cl:make-instance 'system_manager_msgs-msg:SsmState)))
)

(cl:defclass CalibrationRequest (<CalibrationRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<CalibrationRequest> is deprecated: use system_manager_msgs-msg:CalibrationRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CalibrationRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <CalibrationRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:source-val is deprecated.  Use system_manager_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CalibrationRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:id-val is deprecated.  Use system_manager_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <CalibrationRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:command-val is deprecated.  Use system_manager_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'target_state-val :lambda-list '(m))
(cl:defmethod target_state-val ((m <CalibrationRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:target_state-val is deprecated.  Use system_manager_msgs-msg:target_state instead.")
  (target_state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CalibrationRequest>)))
    "Constants for message type '<CalibrationRequest>"
  '((:START . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CalibrationRequest)))
    "Constants for message type 'CalibrationRequest"
  '((:START . 1)
    (:CONTINUE . 2)
    (:STOP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationRequest>) ostream)
  "Serializes a message object of type '<CalibrationRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationRequest>) istream)
  "Deserializes a message object of type '<CalibrationRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationRequest>)))
  "Returns string type for a message object of type '<CalibrationRequest>"
  "system_manager_msgs/CalibrationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationRequest)))
  "Returns string type for a message object of type 'CalibrationRequest"
  "system_manager_msgs/CalibrationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationRequest>)))
  "Returns md5sum for a message object of type '<CalibrationRequest>"
  "eecaef67e39a0b2d7e61379df4f82efe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationRequest)))
  "Returns md5sum for a message object of type 'CalibrationRequest"
  "eecaef67e39a0b2d7e61379df4f82efe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationRequest>)))
  "Returns full string definition for message of type '<CalibrationRequest>"
  (cl:format cl:nil "uint8 START = 1~%uint8 CONTINUE = 2~%uint8 STOP = 3~%std_msgs/Header header~%string source~%uint32 id~%uint8 command~%system_manager_msgs/SsmState target_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SsmState~%uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationRequest)))
  "Returns full string definition for message of type 'CalibrationRequest"
  (cl:format cl:nil "uint8 START = 1~%uint8 CONTINUE = 2~%uint8 STOP = 3~%std_msgs/Header header~%string source~%uint32 id~%uint8 command~%system_manager_msgs/SsmState target_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: system_manager_msgs/SsmState~%uint8 NONE = 255~%uint8 INIT = 0~%uint8 SHUTDOWN = 1~%uint8 MANUAL = 2~%uint8 AD = 3~%uint8 SENTINEL = 4~%uint8 PLCA = 5~%uint8 SLCA = 6~%uint8 NORMAL = 2~%uint8 CALIB_PLAC_CAMERA = 9~%uint8 CALIB_PLAC_LIDAR = 10~%uint8 CALIB_ACE_CAMERA = 11~%uint8 CALIB_ACE_LIDAR = 12~%uint32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'source))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationRequest
    (cl:cons ':header (header msg))
    (cl:cons ':source (source msg))
    (cl:cons ':id (id msg))
    (cl:cons ':command (command msg))
    (cl:cons ':target_state (target_state msg))
))
