; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysControllerResponse.msg.html

(cl:defclass <SysControllerResponse> (roslisp-msg-protocol:ros-message)
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
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SysControllerResponse (<SysControllerResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysControllerResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysControllerResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysControllerResponse> is deprecated: use system_manager_msgs-msg:SysControllerResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SysControllerResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request_seq-val :lambda-list '(m))
(cl:defmethod request_seq-val ((m <SysControllerResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:request_seq-val is deprecated.  Use system_manager_msgs-msg:request_seq instead.")
  (request_seq m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SysControllerResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:success-val is deprecated.  Use system_manager_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysControllerResponse>) ostream)
  "Serializes a message object of type '<SysControllerResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysControllerResponse>) istream)
  "Deserializes a message object of type '<SysControllerResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysControllerResponse>)))
  "Returns string type for a message object of type '<SysControllerResponse>"
  "system_manager_msgs/SysControllerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysControllerResponse)))
  "Returns string type for a message object of type 'SysControllerResponse"
  "system_manager_msgs/SysControllerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysControllerResponse>)))
  "Returns md5sum for a message object of type '<SysControllerResponse>"
  "9e9b9422c8f427b39efb20b79080d25d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysControllerResponse)))
  "Returns md5sum for a message object of type 'SysControllerResponse"
  "9e9b9422c8f427b39efb20b79080d25d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysControllerResponse>)))
  "Returns full string definition for message of type '<SysControllerResponse>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 request_seq~%bool success~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysControllerResponse)))
  "Returns full string definition for message of type 'SysControllerResponse"
  (cl:format cl:nil "std_msgs/Header header~%uint32 request_seq~%bool success~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysControllerResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysControllerResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'SysControllerResponse
    (cl:cons ':header (header msg))
    (cl:cons ':request_seq (request_seq msg))
    (cl:cons ':success (success msg))
))
