; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude DdldAvailableInfo.msg.html

(cl:defclass <DdldAvailableInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (detailed_info
    :reader detailed_info
    :initarg :detailed_info
    :type cl:string
    :initform ""))
)

(cl:defclass DdldAvailableInfo (<DdldAvailableInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DdldAvailableInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DdldAvailableInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<DdldAvailableInfo> is deprecated: use system_manager_msgs-msg:DdldAvailableInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DdldAvailableInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DdldAvailableInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:value-val is deprecated.  Use system_manager_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'detailed_info-val :lambda-list '(m))
(cl:defmethod detailed_info-val ((m <DdldAvailableInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:detailed_info-val is deprecated.  Use system_manager_msgs-msg:detailed_info instead.")
  (detailed_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DdldAvailableInfo>)))
    "Constants for message type '<DdldAvailableInfo>"
  '((:UNAVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DdldAvailableInfo)))
    "Constants for message type 'DdldAvailableInfo"
  '((:UNAVAILABLE . 0)
    (:AVAILABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DdldAvailableInfo>) ostream)
  "Serializes a message object of type '<DdldAvailableInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detailed_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detailed_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DdldAvailableInfo>) istream)
  "Deserializes a message object of type '<DdldAvailableInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detailed_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detailed_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DdldAvailableInfo>)))
  "Returns string type for a message object of type '<DdldAvailableInfo>"
  "system_manager_msgs/DdldAvailableInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DdldAvailableInfo)))
  "Returns string type for a message object of type 'DdldAvailableInfo"
  "system_manager_msgs/DdldAvailableInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DdldAvailableInfo>)))
  "Returns md5sum for a message object of type '<DdldAvailableInfo>"
  "92099df3794d9ea81d01b871e85b2c81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DdldAvailableInfo)))
  "Returns md5sum for a message object of type 'DdldAvailableInfo"
  "92099df3794d9ea81d01b871e85b2c81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DdldAvailableInfo>)))
  "Returns full string definition for message of type '<DdldAvailableInfo>"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%std_msgs/Header header~%uint8 value~%string detailed_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DdldAvailableInfo)))
  "Returns full string definition for message of type 'DdldAvailableInfo"
  (cl:format cl:nil "uint8 UNAVAILABLE = 0~%uint8 AVAILABLE = 1~%std_msgs/Header header~%uint8 value~%string detailed_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DdldAvailableInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'detailed_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DdldAvailableInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DdldAvailableInfo
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
    (cl:cons ':detailed_info (detailed_info msg))
))
