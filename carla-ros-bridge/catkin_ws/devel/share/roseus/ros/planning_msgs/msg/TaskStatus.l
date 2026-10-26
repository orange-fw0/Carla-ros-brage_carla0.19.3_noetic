;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TaskStatus)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TaskStatus (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TASKSTATUS")
  (make-package "PLANNING_MSGS::TASKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TaskStatus.msg.html
(if (not (find-package "ACTIONLIB_MSGS"))
  (ros::roseus-add-msgs "actionlib_msgs"))


(intern "*PLAN_TIMESTAMP_US*" (find-package "PLANNING_MSGS::TASKSTATUS"))
(shadow '*PLAN_TIMESTAMP_US* (find-package "PLANNING_MSGS::TASKSTATUS"))
(defconstant planning_msgs::TaskStatus::*PLAN_TIMESTAMP_US* 1)
(intern "*GOAL_ID*" (find-package "PLANNING_MSGS::TASKSTATUS"))
(shadow '*GOAL_ID* (find-package "PLANNING_MSGS::TASKSTATUS"))
(defconstant planning_msgs::TaskStatus::*GOAL_ID* 2)
(intern "*GOAL_STATUS*" (find-package "PLANNING_MSGS::TASKSTATUS"))
(shadow '*GOAL_STATUS* (find-package "PLANNING_MSGS::TASKSTATUS"))
(defconstant planning_msgs::TaskStatus::*GOAL_STATUS* 4)
(intern "*RESULT*" (find-package "PLANNING_MSGS::TASKSTATUS"))
(shadow '*RESULT* (find-package "PLANNING_MSGS::TASKSTATUS"))
(defconstant planning_msgs::TaskStatus::*RESULT* 8)

(defun planning_msgs::TaskStatus-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::TaskStatus::*PLAN_TIMESTAMP_US*)
        ((= const 2) 'planning_msgs::TaskStatus::*GOAL_ID*)
        ((= const 4) 'planning_msgs::TaskStatus::*GOAL_STATUS*)
        ((= const 8) 'planning_msgs::TaskStatus::*RESULT*)
        (t nil)))

(defclass planning_msgs::TaskStatus
  :super ros::object
  :slots (_available _plan_timestamp_us _goal_id _goal_status _result ))

(defmethod planning_msgs::TaskStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:plan_timestamp_us __plan_timestamp_us) 0)
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal_status __goal_status) (instance actionlib_msgs::GoalStatus :init))
    ((:result __result) (instance planning_msgs::Result :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _plan_timestamp_us (round __plan_timestamp_us))
   (setq _goal_id __goal_id)
   (setq _goal_status __goal_status)
   (setq _result __result)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:plan_timestamp_us
   (&optional __plan_timestamp_us)
   (if __plan_timestamp_us (setq _plan_timestamp_us __plan_timestamp_us)) _plan_timestamp_us)
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal_status
   (&rest __goal_status)
   (if (keywordp (car __goal_status))
       (send* _goal_status __goal_status)
     (progn
       (if __goal_status (setq _goal_status (car __goal_status)))
       _goal_status)))
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; uint64 _plan_timestamp_us
    8
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; actionlib_msgs/GoalStatus _goal_status
    (send _goal_status :serialization-length)
    ;; planning_msgs/Result _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; uint64 _plan_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _plan_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _plan_timestamp_us) (= (length (_plan_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_plan_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_plan_timestamp_us . bv) 1) -1) s))
             ((and (class _plan_timestamp_us) (= (length (_plan_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_plan_timestamp_us . bv) 0) s)
              (write-long (if (>= _plan_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _plan_timestamp_us s)(write-long (if (>= _plan_timestamp_us 0) 0 #xffffffff) s)))
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; actionlib_msgs/GoalStatus _goal_status
       (send _goal_status :serialize s)
     ;; planning_msgs/Result _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _plan_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _plan_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _plan_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; actionlib_msgs/GoalStatus _goal_status
     (send _goal_status :deserialize buf ptr-) (incf ptr- (send _goal_status :serialization-length))
   ;; planning_msgs/Result _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::TaskStatus :md5sum-) "d0a51c8f0dec1bf45410f1d2fea68a5e")
(setf (get planning_msgs::TaskStatus :datatype-) "planning_msgs/TaskStatus")
(setf (get planning_msgs::TaskStatus :definition-)
      "uint8 PLAN_TIMESTAMP_US = 1
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

")



(provide :planning_msgs/TaskStatus "d0a51c8f0dec1bf45410f1d2fea68a5e")


