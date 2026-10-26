; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude TestRequestAction.msg.html

(cl:defclass <TestRequestAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type actionlib_msgs-msg:TestRequestActionGoal
    :initform (cl:make-instance 'actionlib_msgs-msg:TestRequestActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type actionlib_msgs-msg:TestRequestActionResult
    :initform (cl:make-instance 'actionlib_msgs-msg:TestRequestActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type actionlib_msgs-msg:TestRequestActionFeedback
    :initform (cl:make-instance 'actionlib_msgs-msg:TestRequestActionFeedback)))
)

(cl:defclass TestRequestAction (<TestRequestAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<TestRequestAction> is deprecated: use actionlib_msgs-msg:TestRequestAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <TestRequestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_goal-val is deprecated.  Use actionlib_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <TestRequestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_result-val is deprecated.  Use actionlib_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <TestRequestAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_feedback-val is deprecated.  Use actionlib_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestAction>) ostream)
  "Serializes a message object of type '<TestRequestAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestAction>) istream)
  "Deserializes a message object of type '<TestRequestAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestAction>)))
  "Returns string type for a message object of type '<TestRequestAction>"
  "actionlib_msgs/TestRequestAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestAction)))
  "Returns string type for a message object of type 'TestRequestAction"
  "actionlib_msgs/TestRequestAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestAction>)))
  "Returns md5sum for a message object of type '<TestRequestAction>"
  "fe2613e6ec6c40033e10b4415bc25619")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestAction)))
  "Returns md5sum for a message object of type 'TestRequestAction"
  "fe2613e6ec6c40033e10b4415bc25619")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestAction>)))
  "Returns full string definition for message of type '<TestRequestAction>"
  (cl:format cl:nil "actionlib_msgs/TestRequestActionGoal action_goal~%actionlib_msgs/TestRequestActionResult action_result~%actionlib_msgs/TestRequestActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib_msgs/TestRequestActionGoal~%std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TestRequestGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TestRequestGoal~%int32 TERMINATE_SUCCESS = 0~%int32 TERMINATE_ABORTED = 1~%int32 TERMINATE_REJECTED = 2~%int32 TERMINATE_LOSE = 3~%int32 TERMINATE_DROP = 4~%int32 TERMINATE_EXCEPTION = 5~%int32 terminate_status~%bool ignore_cancel~%string result_text~%int32 the_result~%bool is_simple_client~%int64 delay_accept~%int64 delay_terminate~%int64 pause_status~%~%================================================================================~%MSG: actionlib_msgs/TestRequestActionResult~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TestRequestResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/TestRequestResult~%int32 the_result~%bool is_simple_server~%~%================================================================================~%MSG: actionlib_msgs/TestRequestActionFeedback~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TestRequestFeedback feedback~%~%================================================================================~%MSG: actionlib_msgs/TestRequestFeedback~%bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestAction)))
  "Returns full string definition for message of type 'TestRequestAction"
  (cl:format cl:nil "actionlib_msgs/TestRequestActionGoal action_goal~%actionlib_msgs/TestRequestActionResult action_result~%actionlib_msgs/TestRequestActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib_msgs/TestRequestActionGoal~%std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TestRequestGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TestRequestGoal~%int32 TERMINATE_SUCCESS = 0~%int32 TERMINATE_ABORTED = 1~%int32 TERMINATE_REJECTED = 2~%int32 TERMINATE_LOSE = 3~%int32 TERMINATE_DROP = 4~%int32 TERMINATE_EXCEPTION = 5~%int32 terminate_status~%bool ignore_cancel~%string result_text~%int32 the_result~%bool is_simple_client~%int64 delay_accept~%int64 delay_terminate~%int64 pause_status~%~%================================================================================~%MSG: actionlib_msgs/TestRequestActionResult~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TestRequestResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/TestRequestResult~%int32 the_result~%bool is_simple_server~%~%================================================================================~%MSG: actionlib_msgs/TestRequestActionFeedback~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TestRequestFeedback feedback~%~%================================================================================~%MSG: actionlib_msgs/TestRequestFeedback~%bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestAction>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
