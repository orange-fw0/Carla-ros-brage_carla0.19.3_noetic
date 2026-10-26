;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestAction)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestAction (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTACTION")
  (make-package "ACTIONLIB_MSGS::TESTACTION"))

(in-package "ROS")
;;//! \htmlinclude TestAction.msg.html


(defclass actionlib_msgs::TestAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod actionlib_msgs::TestAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance actionlib_msgs::TestActionGoal :init))
    ((:action_result __action_result) (instance actionlib_msgs::TestActionResult :init))
    ((:action_feedback __action_feedback) (instance actionlib_msgs::TestActionFeedback :init))
    )
   (send-super :init)
   (setq _action_goal __action_goal)
   (setq _action_result __action_result)
   (setq _action_feedback __action_feedback)
   self)
  (:action_goal
   (&rest __action_goal)
   (if (keywordp (car __action_goal))
       (send* _action_goal __action_goal)
     (progn
       (if __action_goal (setq _action_goal (car __action_goal)))
       _action_goal)))
  (:action_result
   (&rest __action_result)
   (if (keywordp (car __action_result))
       (send* _action_result __action_result)
     (progn
       (if __action_result (setq _action_result (car __action_result)))
       _action_result)))
  (:action_feedback
   (&rest __action_feedback)
   (if (keywordp (car __action_feedback))
       (send* _action_feedback __action_feedback)
     (progn
       (if __action_feedback (setq _action_feedback (car __action_feedback)))
       _action_feedback)))
  (:serialization-length
   ()
   (+
    ;; actionlib_msgs/TestActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; actionlib_msgs/TestActionResult _action_result
    (send _action_result :serialization-length)
    ;; actionlib_msgs/TestActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; actionlib_msgs/TestActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; actionlib_msgs/TestActionResult _action_result
       (send _action_result :serialize s)
     ;; actionlib_msgs/TestActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; actionlib_msgs/TestActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; actionlib_msgs/TestActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; actionlib_msgs/TestActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get actionlib_msgs::TestAction :md5sum-) "f20287af6725e0ce03568fd5a5c5314b")
(setf (get actionlib_msgs::TestAction :datatype-) "actionlib_msgs/TestAction")
(setf (get actionlib_msgs::TestAction :definition-)
      "actionlib_msgs/TestActionGoal action_goal
actionlib_msgs/TestActionResult action_result
actionlib_msgs/TestActionFeedback action_feedback

================================================================================
MSG: actionlib_msgs/TestActionGoal
std_msgs/Header header
actionlib_msgs/GoalID goal_id
actionlib_msgs/TestGoal goal

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
MSG: actionlib_msgs/GoalID
uint64 stamp
string id

================================================================================
MSG: actionlib_msgs/TestGoal
int32 goal

================================================================================
MSG: actionlib_msgs/TestActionResult
std_msgs/Header header
actionlib_msgs/GoalStatus status
actionlib_msgs/TestResult result

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
MSG: actionlib_msgs/TestResult
int32 result

================================================================================
MSG: actionlib_msgs/TestActionFeedback
std_msgs/Header header
actionlib_msgs/GoalStatus status
actionlib_msgs/TestFeedback feedback

================================================================================
MSG: actionlib_msgs/TestFeedback
int32 feedback

")



(provide :actionlib_msgs/TestAction "f20287af6725e0ce03568fd5a5c5314b")


