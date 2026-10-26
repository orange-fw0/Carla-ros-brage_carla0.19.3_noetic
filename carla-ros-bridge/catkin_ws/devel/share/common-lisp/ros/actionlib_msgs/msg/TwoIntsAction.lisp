; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude TwoIntsAction.msg.html

(cl:defclass <TwoIntsAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type actionlib_msgs-msg:TwoIntsActionGoal
    :initform (cl:make-instance 'actionlib_msgs-msg:TwoIntsActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type actionlib_msgs-msg:TwoIntsActionResult
    :initform (cl:make-instance 'actionlib_msgs-msg:TwoIntsActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type actionlib_msgs-msg:TwoIntsActionFeedback
    :initform (cl:make-instance 'actionlib_msgs-msg:TwoIntsActionFeedback)))
)

(cl:defclass TwoIntsAction (<TwoIntsAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TwoIntsAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TwoIntsAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<TwoIntsAction> is deprecated: use actionlib_msgs-msg:TwoIntsAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <TwoIntsAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_goal-val is deprecated.  Use actionlib_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <TwoIntsAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_result-val is deprecated.  Use actionlib_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <TwoIntsAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:action_feedback-val is deprecated.  Use actionlib_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TwoIntsAction>) ostream)
  "Serializes a message object of type '<TwoIntsAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TwoIntsAction>) istream)
  "Deserializes a message object of type '<TwoIntsAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TwoIntsAction>)))
  "Returns string type for a message object of type '<TwoIntsAction>"
  "actionlib_msgs/TwoIntsAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TwoIntsAction)))
  "Returns string type for a message object of type 'TwoIntsAction"
  "actionlib_msgs/TwoIntsAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TwoIntsAction>)))
  "Returns md5sum for a message object of type '<TwoIntsAction>"
  "eaa5d16a91918b482d0e2ca543008893")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TwoIntsAction)))
  "Returns md5sum for a message object of type 'TwoIntsAction"
  "eaa5d16a91918b482d0e2ca543008893")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TwoIntsAction>)))
  "Returns full string definition for message of type '<TwoIntsAction>"
  (cl:format cl:nil "actionlib_msgs/TwoIntsActionGoal action_goal~%actionlib_msgs/TwoIntsActionResult action_result~%actionlib_msgs/TwoIntsActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsActionGoal~%std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TwoIntsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsGoal~%int64 a~%int64 b~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsActionResult~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TwoIntsResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsResult~%int64 sum~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsActionFeedback~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TwoIntsFeedback feedback~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsFeedback~%bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TwoIntsAction)))
  "Returns full string definition for message of type 'TwoIntsAction"
  (cl:format cl:nil "actionlib_msgs/TwoIntsActionGoal action_goal~%actionlib_msgs/TwoIntsActionResult action_result~%actionlib_msgs/TwoIntsActionFeedback action_feedback~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsActionGoal~%std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TwoIntsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsGoal~%int64 a~%int64 b~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsActionResult~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TwoIntsResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsResult~%int64 sum~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsActionFeedback~%std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TwoIntsFeedback feedback~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsFeedback~%bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TwoIntsAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TwoIntsAction>))
  "Converts a ROS message object to a list"
  (cl:list 'TwoIntsAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
