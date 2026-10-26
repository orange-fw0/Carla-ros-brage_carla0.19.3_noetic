; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude MpcTrajectoryResult.msg.html

(cl:defclass <MpcTrajectoryResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mpc_trajectory
    :reader mpc_trajectory
    :initarg :mpc_trajectory
    :type planning_msgs-msg:MpcTrajectory
    :initform (cl:make-instance 'planning_msgs-msg:MpcTrajectory)))
)

(cl:defclass MpcTrajectoryResult (<MpcTrajectoryResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MpcTrajectoryResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MpcTrajectoryResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<MpcTrajectoryResult> is deprecated: use planning_msgs-msg:MpcTrajectoryResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MpcTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:header-val is deprecated.  Use planning_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mpc_trajectory-val :lambda-list '(m))
(cl:defmethod mpc_trajectory-val ((m <MpcTrajectoryResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:mpc_trajectory-val is deprecated.  Use planning_msgs-msg:mpc_trajectory instead.")
  (mpc_trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MpcTrajectoryResult>) ostream)
  "Serializes a message object of type '<MpcTrajectoryResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mpc_trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MpcTrajectoryResult>) istream)
  "Deserializes a message object of type '<MpcTrajectoryResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mpc_trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MpcTrajectoryResult>)))
  "Returns string type for a message object of type '<MpcTrajectoryResult>"
  "planning_msgs/MpcTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MpcTrajectoryResult)))
  "Returns string type for a message object of type 'MpcTrajectoryResult"
  "planning_msgs/MpcTrajectoryResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MpcTrajectoryResult>)))
  "Returns md5sum for a message object of type '<MpcTrajectoryResult>"
  "c0c06aa87a196f7776351a8a3c091dc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MpcTrajectoryResult)))
  "Returns md5sum for a message object of type 'MpcTrajectoryResult"
  "c0c06aa87a196f7776351a8a3c091dc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MpcTrajectoryResult>)))
  "Returns full string definition for message of type '<MpcTrajectoryResult>"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/MpcTrajectory mpc_trajectory~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/MpcTrajectory~%uint8 PATH_POINTS = 1~%uint8 available~%planning_msgs/MpcTrajectoryPoint[] path_points~%~%================================================================================~%MSG: planning_msgs/MpcTrajectoryPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MpcTrajectoryResult)))
  "Returns full string definition for message of type 'MpcTrajectoryResult"
  (cl:format cl:nil "std_msgs/Header header~%planning_msgs/MpcTrajectory mpc_trajectory~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: planning_msgs/MpcTrajectory~%uint8 PATH_POINTS = 1~%uint8 available~%planning_msgs/MpcTrajectoryPoint[] path_points~%~%================================================================================~%MSG: planning_msgs/MpcTrajectoryPoint~%planning_msgs/Point2d position_enu~%float64 heading_yaw~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MpcTrajectoryResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mpc_trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MpcTrajectoryResult>))
  "Converts a ROS message object to a list"
  (cl:list 'MpcTrajectoryResult
    (cl:cons ':header (header msg))
    (cl:cons ':mpc_trajectory (mpc_trajectory msg))
))
