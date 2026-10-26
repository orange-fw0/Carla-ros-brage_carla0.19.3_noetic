; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude NodesStatus.msg.html

(cl:defclass <NodesStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (nodes_status
    :reader nodes_status
    :initarg :nodes_status
    :type (cl:vector framework_status_msgs-msg:NodeStatus)
   :initform (cl:make-array 0 :element-type 'framework_status_msgs-msg:NodeStatus :initial-element (cl:make-instance 'framework_status_msgs-msg:NodeStatus)))
   (running_mode
    :reader running_mode
    :initarg :running_mode
    :type system_manager_msgs-msg:RunningModeEnum
    :initform (cl:make-instance 'system_manager_msgs-msg:RunningModeEnum)))
)

(cl:defclass NodesStatus (<NodesStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodesStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodesStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<NodesStatus> is deprecated: use framework_status_msgs-msg:NodesStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NodesStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'nodes_status-val :lambda-list '(m))
(cl:defmethod nodes_status-val ((m <NodesStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:nodes_status-val is deprecated.  Use framework_status_msgs-msg:nodes_status instead.")
  (nodes_status m))

(cl:ensure-generic-function 'running_mode-val :lambda-list '(m))
(cl:defmethod running_mode-val ((m <NodesStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:running_mode-val is deprecated.  Use framework_status_msgs-msg:running_mode instead.")
  (running_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodesStatus>) ostream)
  "Serializes a message object of type '<NodesStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nodes_status))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'running_mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodesStatus>) istream)
  "Deserializes a message object of type '<NodesStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'framework_status_msgs-msg:NodeStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'running_mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodesStatus>)))
  "Returns string type for a message object of type '<NodesStatus>"
  "framework_status_msgs/NodesStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodesStatus)))
  "Returns string type for a message object of type 'NodesStatus"
  "framework_status_msgs/NodesStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodesStatus>)))
  "Returns md5sum for a message object of type '<NodesStatus>"
  "73a976dd1599eb1b9de2a8eb1ff04431")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodesStatus)))
  "Returns md5sum for a message object of type 'NodesStatus"
  "73a976dd1599eb1b9de2a8eb1ff04431")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodesStatus>)))
  "Returns full string definition for message of type '<NodesStatus>"
  (cl:format cl:nil "std_msgs/Header header~%framework_status_msgs/NodeStatus[] nodes_status~%system_manager_msgs/RunningModeEnum running_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/NodeStatus~%uint64 timestamp_us~%uint16 node_type~%uint16 task_type~%uint16 status~%uint16 detail_status~%float32 detail_value~%string reserved_info~%string message~%~%================================================================================~%MSG: system_manager_msgs/RunningModeEnum~%uint8 PILOT = 0~%uint8 PARKING = 1~%uint8 MANUAL_DRIVING = 2~%uint8 PRODUCTION_LINE = 3~%uint8 MEB = 4~%uint8 RADS = 5~%uint8 PILOT_WITH_PSD = 6~%uint8 SENTRY_MODE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodesStatus)))
  "Returns full string definition for message of type 'NodesStatus"
  (cl:format cl:nil "std_msgs/Header header~%framework_status_msgs/NodeStatus[] nodes_status~%system_manager_msgs/RunningModeEnum running_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/NodeStatus~%uint64 timestamp_us~%uint16 node_type~%uint16 task_type~%uint16 status~%uint16 detail_status~%float32 detail_value~%string reserved_info~%string message~%~%================================================================================~%MSG: system_manager_msgs/RunningModeEnum~%uint8 PILOT = 0~%uint8 PARKING = 1~%uint8 MANUAL_DRIVING = 2~%uint8 PRODUCTION_LINE = 3~%uint8 MEB = 4~%uint8 RADS = 5~%uint8 PILOT_WITH_PSD = 6~%uint8 SENTRY_MODE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodesStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'running_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodesStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NodesStatus
    (cl:cons ':header (header msg))
    (cl:cons ':nodes_status (nodes_status msg))
    (cl:cons ':running_mode (running_mode msg))
))
