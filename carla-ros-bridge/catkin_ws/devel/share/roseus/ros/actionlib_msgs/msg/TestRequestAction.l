;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestRequestAction)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestRequestAction (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTREQUESTACTION")
  (make-package "ACTIONLIB_MSGS::TESTREQUESTACTION"))

(in-package "ROS")
;;//! \htmlinclude TestRequestAction.msg.html


(defclass actionlib_msgs::TestRequestAction
  :super ros::object
  :slots (_action_goal _action_result _action_feedback ))

(defmethod actionlib_msgs::TestRequestAction
  (:init
   (&key
    ((:action_goal __action_goal) (instance actionlib_msgs::TestRequestActionGoal :init))
    ((:action_result __action_result) (instance actionlib_msgs::TestRequestActionResult :init))
    ((:action_feedback __action_feedback) (instance actionlib_msgs::TestRequestActionFeedback :init))
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
    ;; actionlib_msgs/TestRequestActionGoal _action_goal
    (send _action_goal :serialization-length)
    ;; actionlib_msgs/TestRequestActionResult _action_result
    (send _action_result :serialization-length)
    ;; actionlib_msgs/TestRequestActionFeedback _action_feedback
    (send _action_feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; actionlib_msgs/TestRequestActionGoal _action_goal
       (send _action_goal :serialize s)
     ;; actionlib_msgs/TestRequestActionResult _action_result
       (send _action_result :serialize s)
     ;; actionlib_msgs/TestRequestActionFeedback _action_feedback
       (send _action_feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; actionlib_msgs/TestRequestActionGoal _action_goal
     (send _action_goal :deserialize buf ptr-) (incf ptr- (send _action_goal :serialization-length))
   ;; actionlib_msgs/TestRequestActionResult _action_result
     (send _action_result :deserialize buf ptr-) (incf ptr- (send _action_result :serialization-length))
   ;; actionlib_msgs/TestRequestActionFeedback _action_feedback
     (send _action_feedback :deserialize buf ptr-) (incf ptr- (send _action_feedback :serialization-length))
   ;;
   self)
  )

(setf (get actionlib_msgs::TestRequestAction :md5sum-) "fe2613e6ec6c40033e10b4415bc25619")
(setf (get actionlib_msgs::TestRequestAction :datatype-) "actionlib_msgs/TestRequestAction")
(setf (get actionlib_msgs::TestRequestAction :definition-)
      "actionlib_msgs/TestRequestActionGoal action_goal
actionlib_msgs/TestRequestActionResult action_result
actionlib_msgs/TestRequestActionFeedback action_feedback

================================================================================
MSG: actionlib_msgs/TestRequestActionGoal
std_msgs/Header header
actionlib_msgs/GoalID goal_id
actionlib_msgs/TestRequestGoal goal

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
MSG: actionlib_msgs/TestRequestGoal
int32 TERMINATE_SUCCESS = 0
int32 TERMINATE_ABORTED = 1
int32 TERMINATE_REJECTED = 2
int32 TERMINATE_LOSE = 3
int32 TERMINATE_DROP = 4
int32 TERMINATE_EXCEPTION = 5
int32 terminate_status
bool ignore_cancel
string result_text
int32 the_result
bool is_simple_client
int64 delay_accept
int64 delay_terminate
int64 pause_status

================================================================================
MSG: actionlib_msgs/TestRequestActionResult
std_msgs/Header header
actionlib_msgs/GoalStatus status
actionlib_msgs/TestRequestResult result

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
MSG: actionlib_msgs/TestRequestResult
int32 the_result
bool is_simple_server

================================================================================
MSG: actionlib_msgs/TestRequestActionFeedback
std_msgs/Header header
actionlib_msgs/GoalStatus status
actionlib_msgs/TestRequestFeedback feedback

================================================================================
MSG: actionlib_msgs/TestRequestFeedback
bool mfrmsg_empty_value

")



(provide :actionlib_msgs/TestRequestAction "fe2613e6ec6c40033e10b4415bc25619")


