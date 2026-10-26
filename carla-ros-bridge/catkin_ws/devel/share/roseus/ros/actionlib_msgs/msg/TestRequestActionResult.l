;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TestRequestActionResult)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TestRequestActionResult (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TESTREQUESTACTIONRESULT")
  (make-package "ACTIONLIB_MSGS::TESTREQUESTACTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude TestRequestActionResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass actionlib_msgs::TestRequestActionResult
  :super ros::object
  :slots (_header _status _result ))

(defmethod actionlib_msgs::TestRequestActionResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance actionlib_msgs::GoalStatus :init))
    ((:result __result) (instance actionlib_msgs::TestRequestResult :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   (setq _result __result)
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
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; actionlib_msgs/GoalStatus _status
    (send _status :serialization-length)
    ;; actionlib_msgs/TestRequestResult _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; actionlib_msgs/GoalStatus _status
       (send _status :serialize s)
     ;; actionlib_msgs/TestRequestResult _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; actionlib_msgs/GoalStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; actionlib_msgs/TestRequestResult _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(setf (get actionlib_msgs::TestRequestActionResult :md5sum-) "ee2f9e0b1a1c9a65a9f5d1c0603c18b5")
(setf (get actionlib_msgs::TestRequestActionResult :datatype-) "actionlib_msgs/TestRequestActionResult")
(setf (get actionlib_msgs::TestRequestActionResult :definition-)
      "std_msgs/Header header
actionlib_msgs/GoalStatus status
actionlib_msgs/TestRequestResult result

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
MSG: actionlib_msgs/TestRequestResult
int32 the_result
bool is_simple_server

")



(provide :actionlib_msgs/TestRequestActionResult "ee2f9e0b1a1c9a65a9f5d1c0603c18b5")


