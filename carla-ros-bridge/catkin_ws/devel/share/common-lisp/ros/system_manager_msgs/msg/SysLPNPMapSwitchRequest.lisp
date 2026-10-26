; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysLPNPMapSwitchRequest.msg.html

(cl:defclass <SysLPNPMapSwitchRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (map_dir
    :reader map_dir
    :initarg :map_dir
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (manual_init
    :reader manual_init
    :initarg :manual_init
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SysLPNPMapSwitchRequest (<SysLPNPMapSwitchRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysLPNPMapSwitchRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysLPNPMapSwitchRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysLPNPMapSwitchRequest> is deprecated: use system_manager_msgs-msg:SysLPNPMapSwitchRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SysLPNPMapSwitchRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'map_dir-val :lambda-list '(m))
(cl:defmethod map_dir-val ((m <SysLPNPMapSwitchRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:map_dir-val is deprecated.  Use system_manager_msgs-msg:map_dir instead.")
  (map_dir m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <SysLPNPMapSwitchRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:id-val is deprecated.  Use system_manager_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'manual_init-val :lambda-list '(m))
(cl:defmethod manual_init-val ((m <SysLPNPMapSwitchRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:manual_init-val is deprecated.  Use system_manager_msgs-msg:manual_init instead.")
  (manual_init m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysLPNPMapSwitchRequest>) ostream)
  "Serializes a message object of type '<SysLPNPMapSwitchRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_dir))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_dir))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'manual_init) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysLPNPMapSwitchRequest>) istream)
  "Deserializes a message object of type '<SysLPNPMapSwitchRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_dir) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_dir) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'manual_init) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysLPNPMapSwitchRequest>)))
  "Returns string type for a message object of type '<SysLPNPMapSwitchRequest>"
  "system_manager_msgs/SysLPNPMapSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysLPNPMapSwitchRequest)))
  "Returns string type for a message object of type 'SysLPNPMapSwitchRequest"
  "system_manager_msgs/SysLPNPMapSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysLPNPMapSwitchRequest>)))
  "Returns md5sum for a message object of type '<SysLPNPMapSwitchRequest>"
  "0b436fbdf4852c0d75eb97513df2128d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysLPNPMapSwitchRequest)))
  "Returns md5sum for a message object of type 'SysLPNPMapSwitchRequest"
  "0b436fbdf4852c0d75eb97513df2128d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysLPNPMapSwitchRequest>)))
  "Returns full string definition for message of type '<SysLPNPMapSwitchRequest>"
  (cl:format cl:nil "std_msgs/Header header~%string map_dir~%uint32 id~%bool manual_init~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysLPNPMapSwitchRequest)))
  "Returns full string definition for message of type 'SysLPNPMapSwitchRequest"
  (cl:format cl:nil "std_msgs/Header header~%string map_dir~%uint32 id~%bool manual_init~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysLPNPMapSwitchRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'map_dir))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysLPNPMapSwitchRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'SysLPNPMapSwitchRequest
    (cl:cons ':header (header msg))
    (cl:cons ':map_dir (map_dir msg))
    (cl:cons ':id (id msg))
    (cl:cons ':manual_init (manual_init msg))
))
