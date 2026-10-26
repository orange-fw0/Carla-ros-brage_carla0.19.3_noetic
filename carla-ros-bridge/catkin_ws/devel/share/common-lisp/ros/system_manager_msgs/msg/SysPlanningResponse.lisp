; Auto-generated. Do not edit!


(cl:in-package system_manager_msgs-msg)


;//! \htmlinclude SysPlanningResponse.msg.html

(cl:defclass <SysPlanningResponse> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SysPlanningResponse (<SysPlanningResponse>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SysPlanningResponse>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SysPlanningResponse)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name system_manager_msgs-msg:<SysPlanningResponse> is deprecated: use system_manager_msgs-msg:SysPlanningResponse instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SysPlanningResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:header-val is deprecated.  Use system_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'request_seq-val :lambda-list '(m))
(cl:defmethod request_seq-val ((m <SysPlanningResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:request_seq-val is deprecated.  Use system_manager_msgs-msg:request_seq instead.")
  (request_seq m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SysPlanningResponse>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader system_manager_msgs-msg:success-val is deprecated.  Use system_manager_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SysPlanningResponse>) ostream)
  "Serializes a message object of type '<SysPlanningResponse>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SysPlanningResponse>) istream)
  "Deserializes a message object of type '<SysPlanningResponse>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'request_seq)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SysPlanningResponse>)))
  "Returns string type for a message object of type '<SysPlanningResponse>"
  "system_manager_msgs/SysPlanningResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SysPlanningResponse)))
  "Returns string type for a message object of type 'SysPlanningResponse"
  "system_manager_msgs/SysPlanningResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SysPlanningResponse>)))
  "Returns md5sum for a message object of type '<SysPlanningResponse>"
  "9e9b9422c8f427b39efb20b79080d25d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SysPlanningResponse)))
  "Returns md5sum for a message object of type 'SysPlanningResponse"
  "9e9b9422c8f427b39efb20b79080d25d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SysPlanningResponse>)))
  "Returns full string definition for message of type '<SysPlanningResponse>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 request_seq~%bool success~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SysPlanningResponse)))
  "Returns full string definition for message of type 'SysPlanningResponse"
  (cl:format cl:nil "std_msgs/Header header~%uint32 request_seq~%bool success~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SysPlanningResponse>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SysPlanningResponse>))
  "Converts a ROS message object to a list"
  (cl:list 'SysPlanningResponse
    (cl:cons ':header (header msg))
    (cl:cons ':request_seq (request_seq msg))
    (cl:cons ':success (success msg))
))
