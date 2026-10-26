; Auto-generated. Do not edit!


(cl:in-package actionlib_msgs-msg)


;//! \htmlinclude TwoIntsActionFeedback.msg.html

(cl:defclass <TwoIntsActionFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (feedback
    :reader feedback
    :initarg :feedback
    :type actionlib_msgs-msg:TwoIntsFeedback
    :initform (cl:make-instance 'actionlib_msgs-msg:TwoIntsFeedback)))
)

(cl:defclass TwoIntsActionFeedback (<TwoIntsActionFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TwoIntsActionFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TwoIntsActionFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name actionlib_msgs-msg:<TwoIntsActionFeedback> is deprecated: use actionlib_msgs-msg:TwoIntsActionFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TwoIntsActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:header-val is deprecated.  Use actionlib_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TwoIntsActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:status-val is deprecated.  Use actionlib_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <TwoIntsActionFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader actionlib_msgs-msg:feedback-val is deprecated.  Use actionlib_msgs-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TwoIntsActionFeedback>) ostream)
  "Serializes a message object of type '<TwoIntsActionFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TwoIntsActionFeedback>) istream)
  "Deserializes a message object of type '<TwoIntsActionFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TwoIntsActionFeedback>)))
  "Returns string type for a message object of type '<TwoIntsActionFeedback>"
  "actionlib_msgs/TwoIntsActionFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TwoIntsActionFeedback)))
  "Returns string type for a message object of type 'TwoIntsActionFeedback"
  "actionlib_msgs/TwoIntsActionFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TwoIntsActionFeedback>)))
  "Returns md5sum for a message object of type '<TwoIntsActionFeedback>"
  "c3e71db54096da3dd704c30971c6e756")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TwoIntsActionFeedback)))
  "Returns md5sum for a message object of type 'TwoIntsActionFeedback"
  "c3e71db54096da3dd704c30971c6e756")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TwoIntsActionFeedback>)))
  "Returns full string definition for message of type '<TwoIntsActionFeedback>"
  (cl:format cl:nil "std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TwoIntsFeedback feedback~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsFeedback~%bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TwoIntsActionFeedback)))
  "Returns full string definition for message of type 'TwoIntsActionFeedback"
  (cl:format cl:nil "std_msgs/Header header~%actionlib_msgs/GoalStatus status~%actionlib_msgs/TwoIntsFeedback feedback~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%uint8 PENDING = 0~%uint8 ACTIVE = 1~%uint8 PREEMPTED = 2~%uint8 SUCCEEDED = 3~%uint8 ABORTED = 4~%uint8 REJECTED = 5~%uint8 PREEMPTING = 6~%uint8 RECALLING = 7~%uint8 RECALLED = 8~%uint8 LOST = 9~%actionlib_msgs/GoalID goal_id~%uint8 status~%string text~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%uint64 stamp~%string id~%~%================================================================================~%MSG: actionlib_msgs/TwoIntsFeedback~%bool mfrmsg_empty_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TwoIntsActionFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TwoIntsActionFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TwoIntsActionFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':feedback (feedback msg))
))
