;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::MpcTrajectoryResult)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'MpcTrajectoryResult (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::MPCTRAJECTORYRESULT")
  (make-package "PLANNING_MSGS::MPCTRAJECTORYRESULT"))

(in-package "ROS")
;;//! \htmlinclude MpcTrajectoryResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planning_msgs::MpcTrajectoryResult
  :super ros::object
  :slots (_header _mpc_trajectory ))

(defmethod planning_msgs::MpcTrajectoryResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mpc_trajectory __mpc_trajectory) (instance planning_msgs::MpcTrajectory :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mpc_trajectory __mpc_trajectory)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mpc_trajectory
   (&rest __mpc_trajectory)
   (if (keywordp (car __mpc_trajectory))
       (send* _mpc_trajectory __mpc_trajectory)
     (progn
       (if __mpc_trajectory (setq _mpc_trajectory (car __mpc_trajectory)))
       _mpc_trajectory)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; planning_msgs/MpcTrajectory _mpc_trajectory
    (send _mpc_trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; planning_msgs/MpcTrajectory _mpc_trajectory
       (send _mpc_trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; planning_msgs/MpcTrajectory _mpc_trajectory
     (send _mpc_trajectory :deserialize buf ptr-) (incf ptr- (send _mpc_trajectory :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::MpcTrajectoryResult :md5sum-) "c0c06aa87a196f7776351a8a3c091dc8")
(setf (get planning_msgs::MpcTrajectoryResult :datatype-) "planning_msgs/MpcTrajectoryResult")
(setf (get planning_msgs::MpcTrajectoryResult :definition-)
      "std_msgs/Header header
planning_msgs/MpcTrajectory mpc_trajectory

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
MSG: planning_msgs/MpcTrajectory
uint8 PATH_POINTS = 1
uint8 available
planning_msgs/MpcTrajectoryPoint[] path_points

================================================================================
MSG: planning_msgs/MpcTrajectoryPoint
planning_msgs/Point2d position_enu
float64 heading_yaw

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

")



(provide :planning_msgs/MpcTrajectoryResult "c0c06aa87a196f7776351a8a3c091dc8")


