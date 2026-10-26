; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude TaskStatus.msg.html

(cl:defclass <TaskStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (plan_timestamp_us
    :reader plan_timestamp_us
    :initarg :plan_timestamp_us
    :type cl:integer
    :initform 0)
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal_status
    :reader goal_status
    :initarg :goal_status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (result
    :reader result
    :initarg :result
    :type planning_msgs-msg:Result
    :initform (cl:make-instance 'planning_msgs-msg:Result)))
)

(cl:defclass TaskStatus (<TaskStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TaskStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TaskStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<TaskStatus> is deprecated: use planning_msgs-msg:TaskStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'plan_timestamp_us-val :lambda-list '(m))
(cl:defmethod plan_timestamp_us-val ((m <TaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:plan_timestamp_us-val is deprecated.  Use planning_msgs-msg:plan_timestamp_us instead.")
  (plan_timestamp_us m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <TaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:goal_id-val is deprecated.  Use planning_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal_status-val :lambda-list '(m))
(cl:defmethod goal_status-val ((m <TaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:goal_status-val is deprecated.  Use planning_msgs-msg:goal_status instead.")
  (goal_status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TaskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:result-val is deprecated.  Use planning_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TaskStatus>)))
    "Constants for message type '<TaskStatus>"
  '((:PLAN_TIMESTAMP_US . 1)
    (:GOAL_ID . 2)
    (:GOAL_STATUS . 4)
    (:RESULT . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TaskStatus)))
    "Constants for message type 'TaskStatus"
  '((:PLAN_TIMESTAMP_US . 1)
    (:GOAL_ID . 2)
    (:GOAL_STATUS . 4)
    (:RESULT . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TaskStatus>) ostream)
  "Serializes a message object of type '<TaskStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'plan_timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TaskStatus>) istream)
  "Deserializes a message object of type '<TaskStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'plan_timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TaskStatus>)))
  "Returns string type for a message object of type '<TaskStatus>"
  "planning_msgs/TaskStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TaskStatus)))
  "Returns string type for a message object of type 'TaskStatus"
  "planning_msgs/TaskStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TaskStatus>)))
  "Returns md5sum for a message object of type '<TaskStatus>"
  "d0a51c8f0dec1bf45410f1d2fea68a5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TaskStatus)))
  "Returns md5sum for a message object of type 'TaskStatus"
  "d0a51c8f0dec1bf45410f1d2fea68a5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TaskStatus>)))
  "Returns full string definition for message of type '<TaskStatus>"
  (cl:format cl:nil "uint8 PLAN_TIMESTAMP_US = 1~%uint8 GOAL_ID = 2~%uint8 GOAL_STATUS = 4~%uint8 RESULT = 8~%uint8 available~%uint64 plan_timestamp_us~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/GoalStatus goal_status~%planning_msgs/Result result~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: planning_msgs/Result~%uint8 ITERATION_TIMES = 1~%uint8 TRAJECTORY = 2~%uint8 NUM_SEGMENTS = 4~%uint8 FAILURE_REASON = 8~%uint8 available~%int64 iteration_times~%planning_msgs/SBPVehicleState[] trajectory~%uint8 num_segments~%planning_msgs/FailureReasonEnum failure_reason~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/FailureReasonEnum~%uint8 INFEASIBLE = 1~%uint8 TIMEOUT = 2~%uint8 EXCEPTION = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TaskStatus)))
  "Returns full string definition for message of type 'TaskStatus"
  (cl:format cl:nil "uint8 PLAN_TIMESTAMP_US = 1~%uint8 GOAL_ID = 2~%uint8 GOAL_STATUS = 4~%uint8 RESULT = 8~%uint8 available~%uint64 plan_timestamp_us~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/GoalStatus goal_status~%planning_msgs/Result result~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: planning_msgs/Result~%uint8 ITERATION_TIMES = 1~%uint8 TRAJECTORY = 2~%uint8 NUM_SEGMENTS = 4~%uint8 FAILURE_REASON = 8~%uint8 available~%int64 iteration_times~%planning_msgs/SBPVehicleState[] trajectory~%uint8 num_segments~%planning_msgs/FailureReasonEnum failure_reason~%~%================================================================================~%MSG: planning_msgs/SBPVehicleState~%geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%================================================================================~%MSG: planning_msgs/FailureReasonEnum~%uint8 INFEASIBLE = 1~%uint8 TIMEOUT = 2~%uint8 EXCEPTION = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TaskStatus>))
  (cl:+ 0
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TaskStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TaskStatus
    (cl:cons ':available (available msg))
    (cl:cons ':plan_timestamp_us (plan_timestamp_us msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal_status (goal_status msg))
    (cl:cons ':result (result msg))
))
