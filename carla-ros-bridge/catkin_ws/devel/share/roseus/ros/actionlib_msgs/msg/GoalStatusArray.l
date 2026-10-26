;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::GoalStatusArray)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'GoalStatusArray (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::GOALSTATUSARRAY")
  (make-package "ACTIONLIB_MSGS::GOALSTATUSARRAY"))

(in-package "ROS")
;;//! \htmlinclude GoalStatusArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass actionlib_msgs::GoalStatusArray
  :super ros::object
  :slots (_header _status_list ))

(defmethod actionlib_msgs::GoalStatusArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status_list __status_list) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _status_list __status_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status_list
   (&rest __status_list)
   (if (keywordp (car __status_list))
       (send* _status_list __status_list)
     (progn
       (if __status_list (setq _status_list (car __status_list)))
       _status_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalStatus[] _status_list
    (apply #'+ (send-all _status_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalStatus[] _status_list
     (write-long (length _status_list) s)
     (dolist (elem _status_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalStatus[] _status_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status_list (let (r) (dotimes (i n) (push (instance actionlib_msgs::GoalStatus :init) r)) r))
     (dolist (elem- _status_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get actionlib_msgs::GoalStatusArray :md5sum-) "bb6e4157c8b3566037cf1df366dfcb84")
(setf (get actionlib_msgs::GoalStatusArray :datatype-) "actionlib_msgs/GoalStatusArray")
(setf (get actionlib_msgs::GoalStatusArray :definition-)
      "std_msgs/Header header
actionlib_msgs/GoalStatus[] status_list

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

")



(provide :actionlib_msgs/GoalStatusArray "bb6e4157c8b3566037cf1df366dfcb84")


