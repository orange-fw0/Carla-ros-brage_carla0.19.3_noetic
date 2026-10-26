;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SBPResult)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SBPResult (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::SBPRESULT")
  (make-package "PLANNING_MSGS::SBPRESULT"))

(in-package "ROS")
;;//! \htmlinclude SBPResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planning_msgs::SBPResult
  :super ros::object
  :slots (_header _meta _task_status _extra ))

(defmethod planning_msgs::SBPResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance planning_msgs::SBPResultMeta :init))
    ((:task_status __task_status) ())
    ((:extra __extra) (instance planning_msgs::SBPResultExtra :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _task_status __task_status)
   (setq _extra __extra)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:task_status
   (&rest __task_status)
   (if (keywordp (car __task_status))
       (send* _task_status __task_status)
     (progn
       (if __task_status (setq _task_status (car __task_status)))
       _task_status)))
  (:extra
   (&rest __extra)
   (if (keywordp (car __extra))
       (send* _extra __extra)
     (progn
       (if __extra (setq _extra (car __extra)))
       _extra)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; planning_msgs/SBPResultMeta _meta
    (send _meta :serialization-length)
    ;; planning_msgs/TaskStatus[] _task_status
    (apply #'+ (send-all _task_status :serialization-length)) 4
    ;; planning_msgs/SBPResultExtra _extra
    (send _extra :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; planning_msgs/SBPResultMeta _meta
       (send _meta :serialize s)
     ;; planning_msgs/TaskStatus[] _task_status
     (write-long (length _task_status) s)
     (dolist (elem _task_status)
       (send elem :serialize s)
       )
     ;; planning_msgs/SBPResultExtra _extra
       (send _extra :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; planning_msgs/SBPResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; planning_msgs/TaskStatus[] _task_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _task_status (let (r) (dotimes (i n) (push (instance planning_msgs::TaskStatus :init) r)) r))
     (dolist (elem- _task_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planning_msgs/SBPResultExtra _extra
     (send _extra :deserialize buf ptr-) (incf ptr- (send _extra :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::SBPResult :md5sum-) "ede74308ea98b0eafa17a557f4668b3e")
(setf (get planning_msgs::SBPResult :datatype-) "planning_msgs/SBPResult")
(setf (get planning_msgs::SBPResult :definition-)
      "std_msgs/Header header
planning_msgs/SBPResultMeta meta
planning_msgs/TaskStatus[] task_status
planning_msgs/SBPResultExtra extra

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: planning_msgs/SBPResultMeta
uint64 timestamp_us

================================================================================
MSG: planning_msgs/TaskStatus
uint8 PLAN_TIMESTAMP_US = 1
uint8 GOAL_ID = 2
uint8 GOAL_STATUS = 4
uint8 RESULT = 8
uint8 available
uint64 plan_timestamp_us
actionlib_msgs/GoalID goal_id
actionlib_msgs/GoalStatus goal_status
planning_msgs/Result result

================================================================================
MSG: actionlib_msgs/GoalID
uint64 stamp
string id

================================================================================
MSG: actionlib_msgs/GoalStatus
uint8 PENDING = 0
uint8 ACTIVE = 1
uint8 PREEMPTED = 2
uint8 SUCCEEDED = 3
uint8 ABORTED = 4
uint8 REJECTED = 5
uint8 PREEMPTING = 6
uint8 RECALLING = 7
uint8 RECALLED = 8
uint8 LOST = 9
actionlib_msgs/GoalID goal_id
uint8 status
string text

================================================================================
MSG: planning_msgs/Result
uint8 ITERATION_TIMES = 1
uint8 TRAJECTORY = 2
uint8 NUM_SEGMENTS = 4
uint8 FAILURE_REASON = 8
uint8 available
int64 iteration_times
planning_msgs/SBPVehicleState[] trajectory
uint8 num_segments
planning_msgs/FailureReasonEnum failure_reason

================================================================================
MSG: planning_msgs/SBPVehicleState
geometry_msgs/Pose2D pose
float32 steer
planning_msgs/SteerModeEnum steer_mode
int8 gear

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: planning_msgs/SteerModeEnum
uint8 NORMAL = 0
uint8 TWIST = 1
uint8 TRANSLATION = 2
uint8 value

================================================================================
MSG: planning_msgs/FailureReasonEnum
uint8 INFEASIBLE = 1
uint8 TIMEOUT = 2
uint8 EXCEPTION = 4
uint8 value

================================================================================
MSG: planning_msgs/SBPResultExtra
uint8 JSON = 1
uint8 available
string json

")



(provide :planning_msgs/SBPResult "ede74308ea98b0eafa17a557f4668b3e")


