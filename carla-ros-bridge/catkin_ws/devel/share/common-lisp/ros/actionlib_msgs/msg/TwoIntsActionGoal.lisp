; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude TwoIntsActionGoal.msg.html

(cl:defclass <TwoIntsActionGoal> (roslisp-msg-protocol:ros-message)
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
    :type actionlib_msgs-msg:TwoIntsGoal
    :initform (cl:make-instance 'actionlib_msgs-msg:TwoIntsGoal)))
)

(cl:defclass TwoIntsActionGoal (<TwoIntsActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TwoIntsActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TwoIntsActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<TwoIntsActionGoal> is deprecated: use actionlib_msgs-msg:TwoIntsActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TwoIntsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:header-val is deprecated.  Use actionlib_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <TwoIntsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:goal_id-val is deprecated.  Use actionlib_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <TwoIntsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:goal-val is deprecated.  Use actionlib_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TwoIntsActionGoal>) ostream)
  "Serializes a message object of type '<TwoIntsActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TwoIntsActionGoal>) istream)
  "Deserializes a message object of type '<TwoIntsActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TwoIntsActionGoal>)))
  "Returns string type for a message object of type '<TwoIntsActionGoal>"
  "actionlib_msgs/TwoIntsActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TwoIntsActionGoal)))
  "Returns string type for a message object of type 'TwoIntsActionGoal"
  "actionlib_msgs/TwoIntsActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TwoIntsActionGoal>)))
  "Returns md5sum for a message object of type '<TwoIntsActionGoal>"
  "d14c903c72b6deb67409ac06c0eb914a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TwoIntsActionGoal)))
  "Returns md5sum for a message object of type 'TwoIntsActionGoal"
  "d14c903c72b6deb67409ac06c0eb914a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TwoIntsActionGoal>)))
  "Returns full string definition for message of type '<TwoIntsActionGoal>"
  (cl:format cl:nil "std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TwoIntsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsGoal~%int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TwoIntsActionGoal)))
  "Returns full string definition for message of type 'TwoIntsActionGoal"
  (cl:format cl:nil "std_msgs/Header header~%actionlib_msgs/GoalID goal_id~%actionlib_msgs/TwoIntsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsGoal~%int64 a~%int64 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TwoIntsActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TwoIntsActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'TwoIntsActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
