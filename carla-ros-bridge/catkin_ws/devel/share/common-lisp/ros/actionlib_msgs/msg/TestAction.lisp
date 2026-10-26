; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude TestAction.msg.html

(cl:defclass <TestAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type actionlib_msgs-msg:TestActionGoal
    :initform (cl:make-instance 'actionlib_msgs-msg:TestActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type actionlib_msgs-msg:TestActionResult
    :initform (cl:make-instance 'actionlib_msgs-msg:TestActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type actionlib_msgs-msg:TestActionFeedback
    :initform (cl:make-instance 'actionlib_msgs-msg:TestActionFeedback)))
)

(cl:defclass TestAction (<TestAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<TestAction> is deprecated: use actionlib_msgs-msg:TestAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <TestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_goal-val is deprecated.  Use actionlib_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <TestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_result-val is deprecated.  Use actionlib_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <TestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_feedback-val is deprecated.  Use actionlib_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestAction>) ostream)
  "Serializes a message object of type '<TestAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestAction>) istream)
  "Deserializes a message object of type '<TestAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestAction>)))
  "Returns string type for a message object of type '<TestAction>"
  "actionlib_msgs/TestAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestAction)))
  "Returns string type for a message object of type 'TestAction"
  "actionlib_msgs/TestAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestAction>)))
  "Returns md5sum for a message object of type '<TestAction>"
  "f20287af6725e0ce03568fd5a5c5314b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestAction)))
  "Returns md5sum for a message object of type 'TestAction"
  "f20287af6725e0ce03568fd5a5c5314b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestAction>)))
  "Returns full string definition for message of type '<TestAction>"
  (cl:format cl:nil "actionlib_msgs/TestActionGoal action_goal~%actionlib_msgs/TestActionResult action_result~%actionlib_msgs/TestActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib_msgs/TestActionGoal~%std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TestGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TestGoal~%int32 goal~%~%================================================================================~%MSG: actionlib_msgs/TestActionResult~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TestResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/TestResult~%int32 result~%~%================================================================================~%MSG: actionlib_msgs/TestActionFeedback~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TestFeedback feedback~%~%================================================================================~%MSG: actionlib_msgs/TestFeedback~%int32 feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestAction)))
  "Returns full string definition for message of type 'TestAction"
  (cl:format cl:nil "actionlib_msgs/TestActionGoal action_goal~%actionlib_msgs/TestActionResult action_result~%actionlib_msgs/TestActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib_msgs/TestActionGoal~%std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TestGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TestGoal~%int32 goal~%~%================================================================================~%MSG: actionlib_msgs/TestActionResult~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TestResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/TestResult~%int32 result~%~%================================================================================~%MSG: actionlib_msgs/TestActionFeedback~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TestFeedback feedback~%~%================================================================================~%MSG: actionlib_msgs/TestFeedback~%int32 feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestAction>))
  "Converts a ROS message object to a list"
  (cl:list 'TestAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
