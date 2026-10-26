;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestActionFeedback)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestActionFeedback (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTACTIONFEEDBACK")
  (make-package "ACTIONLIB_MSGS::TESTACTIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TestActionFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass actionlib_msgs::TestActionFeedback
  :super ros::object
  :slots (_header _status _feedback ))

(defmethod actionlib_msgs::TestActionFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance actionlib_msgs::GoalStatus :init))
    ((:feedback __feedback) (instance actionlib_msgs::TestFeedback :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   (setq _feedback __feedback)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:feedback
   (&rest __feedback)
   (if (keywordp (car __feedback))
       (send* _feedback __feedback)
     (progn
       (if __feedback (setq _feedback (car __feedback)))
       _feedback)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalStatus _status
    (send _status :serialization-length)
    ;; actionlib_msgs/TestFeedback _feedback
    (send _feedback :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalStatus _status
       (send _status :serialize s)
     ;; actionlib_msgs/TestFeedback _feedback
       (send _feedback :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; actionlib_msgs/TestFeedback _feedback
     (send _feedback :deserialize buf ptr-) (incf ptr- (send _feedback :serialization-length))
   ;;
   self)
  )

(setf (get actionlib_msgs::TestActionFeedback :md5sum-) "1209b6a84467f12f1f2907a448e66848")
(setf (get actionlib_msgs::TestActionFeedback :datatype-) "actionlib_msgs/TestActionFeedback")
(setf (get actionlib_msgs::TestActionFeedback :definition-)
      "std_msgs/Header header
actionlib_msgs/GoalStatus status
actionlib_msgs/TestFeedback feedback

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
MSG: actionlib_msgs/GoalID
uint64 stamp
string id

================================================================================
MSG: actionlib_msgs/TestFeedback
int32 feedback

")



(provide :actionlib_msgs/TestActionFeedback "1209b6a84467f12f1f2907a448e66848")


