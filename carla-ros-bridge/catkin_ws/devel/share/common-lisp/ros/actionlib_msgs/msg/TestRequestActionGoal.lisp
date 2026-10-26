; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude TestRequestActionGoal.msg.html

(cl:defclass <TestRequestActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type actionlib_msgs-msg:TestRequestGoal
    :initform (cl:make-instance 'actionlib_msgs-msg:TestRequestGoal)))
)

(cl:defclass TestRequestActionGoal (<TestRequestActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TestRequestActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TestRequestActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<TestRequestActionGoal> is deprecated: use actionlib_msgs-msg:TestRequestActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TestRequestActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:header-val is deprecated.  Use actionlib_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <TestRequestActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:goal_id-val is deprecated.  Use actionlib_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <TestRequestActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:goal-val is deprecated.  Use actionlib_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TestRequestActionGoal>) ostream)
  "Serializes a message object of type '<TestRequestActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TestRequestActionGoal>) istream)
  "Deserializes a message object of type '<TestRequestActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TestRequestActionGoal>)))
  "Returns string type for a message object of type '<TestRequestActionGoal>"
  "actionlib_msgs/TestRequestActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TestRequestActionGoal)))
  "Returns string type for a message object of type 'TestRequestActionGoal"
  "actionlib_msgs/TestRequestActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TestRequestActionGoal>)))
  "Returns md5sum for a message object of type '<TestRequestActionGoal>"
  "b7802bfad4bf20954a2f42bdd1fef07a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TestRequestActionGoal)))
  "Returns md5sum for a message object of type 'TestRequestActionGoal"
  "b7802bfad4bf20954a2f42bdd1fef07a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TestRequestActionGoal>)))
  "Returns full string definition for message of type '<TestRequestActionGoal>"
  (cl:format cl:nil "std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TestRequestGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TestRequestGoal~%int32 TERMINATE_SUCCESS = 0~%int32 TERMINATE_ABORTED = 1~%int32 TERMINATE_REJECTED = 2~%int32 TERMINATE_LOSE = 3~%int32 TERMINATE_DROP = 4~%int32 TERMINATE_EXCEPTION = 5~%int32 terminate_status~%bool ignore_cancel~%string result_text~%int32 the_result~%bool is_simple_client~%int64 delay_accept~%int64 delay_terminate~%int64 pause_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TestRequestActionGoal)))
  "Returns full string definition for message of type 'TestRequestActionGoal"
  (cl:format cl:nil "std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TestRequestGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TestRequestGoal~%int32 TERMINATE_SUCCESS = 0~%int32 TERMINATE_ABORTED = 1~%int32 TERMINATE_REJECTED = 2~%int32 TERMINATE_LOSE = 3~%int32 TERMINATE_DROP = 4~%int32 TERMINATE_EXCEPTION = 5~%int32 terminate_status~%bool ignore_cancel~%string result_text~%int32 the_result~%bool is_simple_client~%int64 delay_accept~%int64 delay_terminate~%int64 pause_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TestRequestActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TestRequestActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TestRequestActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
