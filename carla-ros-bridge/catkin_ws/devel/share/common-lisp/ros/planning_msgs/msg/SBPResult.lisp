; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SBPResult.msg.html

(cl:defclass <SBPResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type planning_msgs-msg:SBPResultMeta
    :initform (cl:make-instance 'planning_msgs-msg:SBPResultMeta))
   (task_status
    :reader task_status
    :initarg :task_status
    :type (cl:vector planning_msgs-msg:TaskStatus)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:TaskStatus :initial-element (cl:make-instance 'planning_msgs-msg:TaskStatus)))
   (extra
    :reader extra
    :initarg :extra
    :type planning_msgs-msg:SBPResultExtra
    :initform (cl:make-instance 'planning_msgs-msg:SBPResultExtra)))
)

(cl:defclass SBPResult (<SBPResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SBPResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SBPResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SBPResult> is deprecated: use planning_msgs-msg:SBPResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SBPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:header-val is deprecated.  Use planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <SBPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:meta-val is deprecated.  Use planning_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'task_status-val :lambda-list '(m))
(cl:defmethod task_status-val ((m <SBPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:task_status-val is deprecated.  Use planning_msgs-msg:task_status instead.")
  (task_status m))

(cl:ensure-generic-function 'extra-val :lambda-list '(m))
(cl:defmethod extra-val ((m <SBPResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:extra-val is deprecated.  Use planning_msgs-msg:extra instead.")
  (extra m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SBPResult>) ostream)
  "Serializes a message object of type '<SBPResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'task_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'task_status))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'extra) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SBPResult>) istream)
  "Deserializes a message object of type '<SBPResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'task_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'task_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:TaskStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'extra) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SBPResult>)))
  "Returns string type for a message object of type '<SBPResult>"
  "planning_msgs/SBPResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SBPResult)))
  "Returns string type for a message object of type 'SBPResult"
  "planning_msgs/SBPResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SBPResult>)))
  "Returns md5sum for a message object of type '<SBPResult>"
  "ede74308ea98b0eafa17a557f4668b3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SBPResult)))
  "Returns md5sum for a message object of type 'SBPResult"
  "ede74308ea98b0eafa17a557f4668b3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SBPResult>)))
  "Returns full string definition for message of type '<SBPResult>"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/SBPResultMeta meta~%planning_msgs/TaskStatus[] task_status~%planning_msgs/SBPResultExtra extra~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/SBPResultMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: planning_msgs/TaskStatus~%uint8 PLAN_TIMESTAMP_US = 1~%uint8 GOAL_ID = 2~%uint8 GOAL_STATUS = 4~%uint8 RESULT = 8~%uint8 available~%uint64 plan_timestamp_us~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/GoalStatus goal_status~%planning_msgs/Result result~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: planning_msgs/Result~%uint8 ITERATION_TIMES = 1~%uint8 TRAJECTORY = 2~%uint8 NUM_SEGMENTS = 4~%uint8 FAILURE_REASON = 8~%uint8 available~%int64 iteration_times~%planning_msgs/SBPVehicleState[] trajectory~%uint8 num_segments~%planning_msgs/FailureReasonEnum failure_reason~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/FailureReasonEnum~%uint8 INFEASIBLE = 1~%uint8 TIMEOUT = 2~%uint8 EXCEPTION = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/SBPResultExtra~%uint8 JSON = 1~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SBPResult)))
  "Returns full string definition for message of type 'SBPResult"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/SBPResultMeta meta~%planning_msgs/TaskStatus[] task_status~%planning_msgs/SBPResultExtra extra~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/SBPResultMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: planning_msgs/TaskStatus~%uint8 PLAN_TIMESTAMP_US = 1~%uint8 GOAL_ID = 2~%uint8 GOAL_STATUS = 4~%uint8 RESULT = 8~%uint8 available~%uint64 plan_timestamp_us~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/GoalStatus goal_status~%planning_msgs/Result result~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: planning_msgs/Result~%uint8 ITERATION_TIMES = 1~%uint8 TRAJECTORY = 2~%uint8 NUM_SEGMENTS = 4~%uint8 FAILURE_REASON = 8~%uint8 available~%int64 iteration_times~%planning_msgs/SBPVehicleState[] trajectory~%uint8 num_segments~%planning_msgs/FailureReasonEnum failure_reason~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/FailureReasonEnum~%uint8 INFEASIBLE = 1~%uint8 TIMEOUT = 2~%uint8 EXCEPTION = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/SBPResultExtra~%uint8 JSON = 1~%uint8 available~%string json~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SBPResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'task_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'extra))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SBPResult>))
  "Converts a ROS message object to a list"
  (cl:list 'SBPResult
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':task_status (task_status msg))
    (cl:cons ':extra (extra msg))
))
