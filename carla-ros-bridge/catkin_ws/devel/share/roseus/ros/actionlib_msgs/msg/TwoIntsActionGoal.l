;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TwoIntsActionGoal)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TwoIntsActionGoal (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TWOINTSACTIONGOAL")
  (make-package "ACTIONLIB_MSGS::TWOINTSACTIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude TwoIntsActionGoal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass actionlib_msgs::TwoIntsActionGoal
  :super ros::object
  :slots (_header _goal_id _goal ))

(defmethod actionlib_msgs::TwoIntsActionGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_id __goal_id) (instance actionlib_msgs::GoalID :init))
    ((:goal __goal) (instance actionlib_msgs::TwoIntsGoal :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_id __goal_id)
   (setq _goal __goal)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_id
   (&rest __goal_id)
   (if (keywordp (car __goal_id))
       (send* _goal_id __goal_id)
     (progn
       (if __goal_id (setq _goal_id (car __goal_id)))
       _goal_id)))
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalID _goal_id
    (send _goal_id :serialization-length)
    ;; actionlib_msgs/TwoIntsGoal _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalID _goal_id
       (send _goal_id :serialize s)
     ;; actionlib_msgs/TwoIntsGoal _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalID _goal_id
     (send _goal_id :deserialize buf ptr-) (incf ptr- (send _goal_id :serialization-length))
   ;; actionlib_msgs/TwoIntsGoal _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get actionlib_msgs::TwoIntsActionGoal :md5sum-) "d14c903c72b6deb67409ac06c0eb914a")
(setf (get actionlib_msgs::TwoIntsActionGoal :datatype-) "actionlib_msgs/TwoIntsActionGoal")
(setf (get actionlib_msgs::TwoIntsActionGoal :definition-)
      "std_msgs/Header header
actionlib_msgs/GoalID goal_id
actionlib_msgs/TwoIntsGoal goal

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
MSG: actionlib_msgs/TwoIntsGoal
int64 a
int64 b

")



(provide :actionlib_msgs/TwoIntsActionGoal "d14c903c72b6deb67409ac06c0eb914a")


