; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude SystemStatus.msg.html

(cl:defclass <SystemStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0)
   (function_module_status_array
    :reader function_module_status_array
    :initarg :function_module_status_array
    :type (cl:vector framework_status_msgs-msg:NodeStatus)
   :initform (cl:make-array 0 :element-type 'framework_status_msgs-msg:NodeStatus :initial-element (cl:make-instance 'framework_status_msgs-msg:NodeStatus)))
   (overall_status
    :reader overall_status
    :initarg :overall_status
    :type framework_status_msgs-msg:OverallStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:OverallStatus)))
)

(cl:defclass SystemStatus (<SystemStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SystemStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SystemStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<SystemStatus> is deprecated: use framework_status_msgs-msg:SystemStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'function_module_status_array-val :lambda-list '(m))
(cl:defmethod function_module_status_array-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:function_module_status_array-val is deprecated.  Use framework_status_msgs-msg:function_module_status_array instead.")
  (function_module_status_array m))

(cl:ensure-generic-function 'overall_status-val :lambda-list '(m))
(cl:defmethod overall_status-val ((m <SystemStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:overall_status-val is deprecated.  Use framework_status_msgs-msg:overall_status instead.")
  (overall_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SystemStatus>)))
    "Constants for message type '<SystemStatus>"
  '((:MODULE_STATUS . 1)
    (:OVERALL_STATUS . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SystemStatus)))
    "Constants for message type 'SystemStatus"
  '((:MODULE_STATUS . 1)
    (:OVERALL_STATUS . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SystemStatus>) ostream)
  "Serializes a message object of type '<SystemStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'function_module_status_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'function_module_status_array))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'overall_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SystemStatus>) istream)
  "Deserializes a message object of type '<SystemStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'function_module_status_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'function_module_status_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'framework_status_msgs-msg:NodeStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'overall_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SystemStatus>)))
  "Returns string type for a message object of type '<SystemStatus>"
  "framework_status_msgs/SystemStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SystemStatus)))
  "Returns string type for a message object of type 'SystemStatus"
  "framework_status_msgs/SystemStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SystemStatus>)))
  "Returns md5sum for a message object of type '<SystemStatus>"
  "42e87a7dc2e841976934586b192074be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SystemStatus)))
  "Returns md5sum for a message object of type 'SystemStatus"
  "42e87a7dc2e841976934586b192074be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SystemStatus>)))
  "Returns full string definition for message of type '<SystemStatus>"
  (cl:format cl:nil "uint32 MODULE_STATUS = 1~%uint32 OVERALL_STATUS = 2~%std_msgs/Header header~%uint32 available~%framework_status_msgs/NodeStatus[] function_module_status_array~%framework_status_msgs/OverallStatus overall_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/NodeStatus~%uint64 timestamp_us~%uint16 node_type~%uint16 task_type~%uint16 status~%uint16 detail_status~%float32 detail_value~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/OverallStatus~%uint8 STOP = 0~%uint8 SAFTY_RUNNING = 1~%uint8 NORMAL_RUNNING = 2~%uint8 TAKEOVER = 3~%uint8 NONE = 0~%uint8 SAFTY_RUNNING_WAIT_TAKEOVER = 1~%std_msgs/Header header~%uint64 timestamp_us~%uint8 status~%uint8 detail_status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SystemStatus)))
  "Returns full string definition for message of type 'SystemStatus"
  (cl:format cl:nil "uint32 MODULE_STATUS = 1~%uint32 OVERALL_STATUS = 2~%std_msgs/Header header~%uint32 available~%framework_status_msgs/NodeStatus[] function_module_status_array~%framework_status_msgs/OverallStatus overall_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/NodeStatus~%uint64 timestamp_us~%uint16 node_type~%uint16 task_type~%uint16 status~%uint16 detail_status~%float32 detail_value~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/OverallStatus~%uint8 STOP = 0~%uint8 SAFTY_RUNNING = 1~%uint8 NORMAL_RUNNING = 2~%uint8 TAKEOVER = 3~%uint8 NONE = 0~%uint8 SAFTY_RUNNING_WAIT_TAKEOVER = 1~%std_msgs/Header header~%uint64 timestamp_us~%uint8 status~%uint8 detail_status~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SystemStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'function_module_status_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'overall_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SystemStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SystemStatus
    (cl:cons ':header (header msg))
    (cl:cons ':available (available msg))
    (cl:cons ':function_module_status_array (function_module_status_array msg))
    (cl:cons ':overall_status (overall_status msg))
))
