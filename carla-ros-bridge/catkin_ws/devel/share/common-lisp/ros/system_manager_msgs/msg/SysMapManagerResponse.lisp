; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysMapManagerResponse.msg.html

(cl:defclass <SysMapManagerResponse> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (request_seq
    :reader request_seq
    :initarg :request_seq
    :type cl:integer
    :initform 0)
   (route_response
    :reader route_response
    :initarg :route_response
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SysMapManagerResponse (<SysMapManagerResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysMapManagerResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysMapManagerResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysMapManagerResponse> is deprecated: use system_manager_msgs-msg:SysMapManagerResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SysMapManagerResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request_seq-val :lambda-list '(m))
(cl:defmethod request_seq-val ((m <SysMapManagerResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:request_seq-val is deprecated.  Use system_manager_msgs-msg:request_seq instead.")
  (request_seq m))

(cl:ensure-generic-function 'route_response-val :lambda-list '(m))
(cl:defmethod route_response-val ((m <SysMapManagerResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:route_response-val is deprecated.  Use system_manager_msgs-msg:route_response instead.")
  (route_response m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SysMapManagerResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:type-val is deprecated.  Use system_manager_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SysMapManagerResponse>)))
    "Constants for message type '<SysMapManagerResponse>"
  '((:JSON . 1)
    (:PROTOBUF . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SysMapManagerResponse)))
    "Constants for message type 'SysMapManagerResponse"
  '((:JSON . 1)
    (:PROTOBUF . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysMapManagerResponse>) ostream)
  "Serializes a message object of type '<SysMapManagerResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_seq)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'route_response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'route_response))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysMapManagerResponse>) istream)
  "Deserializes a message object of type '<SysMapManagerResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'route_response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'route_response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysMapManagerResponse>)))
  "Returns string type for a message object of type '<SysMapManagerResponse>"
  "system_manager_msgs/SysMapManagerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysMapManagerResponse)))
  "Returns string type for a message object of type 'SysMapManagerResponse"
  "system_manager_msgs/SysMapManagerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysMapManagerResponse>)))
  "Returns md5sum for a message object of type '<SysMapManagerResponse>"
  "ab10b4057ea956418d01f4bf70d1e3b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysMapManagerResponse)))
  "Returns md5sum for a message object of type 'SysMapManagerResponse"
  "ab10b4057ea956418d01f4bf70d1e3b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysMapManagerResponse>)))
  "Returns full string definition for message of type '<SysMapManagerResponse>"
  (cl:format cl:nil "uint8 JSON = 1~%uint8 PROTOBUF = 2~%std_msgs/Header header~%uint32 request_seq~%string route_response~%uint8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysMapManagerResponse)))
  "Returns full string definition for message of type 'SysMapManagerResponse"
  (cl:format cl:nil "uint8 JSON = 1~%uint8 PROTOBUF = 2~%std_msgs/Header header~%uint32 request_seq~%string route_response~%uint8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysMapManagerResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'route_response))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysMapManagerResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'SysMapManagerResponse
    (cl:cons ':header (header msg))
    (cl:cons ':request_seq (request_seq msg))
    (cl:cons ':route_response (route_response msg))
    (cl:cons ':type (type msg))
))
