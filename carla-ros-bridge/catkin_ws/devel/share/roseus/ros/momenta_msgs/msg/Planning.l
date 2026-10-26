;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Planning)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Planning (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PLANNING")
  (make-package "MOMENTA_MSGS::PLANNING"))

(in-package "ROS")
;;//! \htmlinclude Planning.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::Planning
  :super ros::object
  :slots (_header _v_target _a_target _dis_to_stop _v_array _a_array _traffic_light_decision _traj _pose_array _lon_follow_obstacles _lon_overtake_obstacles _lat_nudge_obstacles _blocking_obstacle_id ))

(defmethod momenta_msgs::Planning
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:v_target __v_target) 0.0)
    ((:a_target __a_target) 0.0)
    ((:dis_to_stop __dis_to_stop) 0.0)
    ((:v_array __v_array) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:a_array __a_array) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:traffic_light_decision __traffic_light_decision) (make-array 0 :initial-element 0 :element-type :char))
    ((:traj __traj) (instance momenta_msgs::Trajectory :init))
    ((:pose_array __pose_array) ())
    ((:lon_follow_obstacles __lon_follow_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lon_overtake_obstacles __lon_overtake_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:lat_nudge_obstacles __lat_nudge_obstacles) (make-array 0 :initial-element 0 :element-type :integer))
    ((:blocking_obstacle_id __blocking_obstacle_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _v_target (float __v_target))
   (setq _a_target (float __a_target))
   (setq _dis_to_stop (float __dis_to_stop))
   (setq _v_array __v_array)
   (setq _a_array __a_array)
   (setq _traffic_light_decision __traffic_light_decision)
   (setq _traj __traj)
   (setq _pose_array __pose_array)
   (setq _lon_follow_obstacles __lon_follow_obstacles)
   (setq _lon_overtake_obstacles __lon_overtake_obstacles)
   (setq _lat_nudge_obstacles __lat_nudge_obstacles)
   (setq _blocking_obstacle_id (round __blocking_obstacle_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:v_target
   (&optional __v_target)
   (if __v_target (setq _v_target __v_target)) _v_target)
  (:a_target
   (&optional __a_target)
   (if __a_target (setq _a_target __a_target)) _a_target)
  (:dis_to_stop
   (&optional __dis_to_stop)
   (if __dis_to_stop (setq _dis_to_stop __dis_to_stop)) _dis_to_stop)
  (:v_array
   (&optional __v_array)
   (if __v_array (setq _v_array __v_array)) _v_array)
  (:a_array
   (&optional __a_array)
   (if __a_array (setq _a_array __a_array)) _a_array)
  (:traffic_light_decision
   (&optional __traffic_light_decision)
   (if __traffic_light_decision (setq _traffic_light_decision __traffic_light_decision)) _traffic_light_decision)
  (:traj
   (&rest __traj)
   (if (keywordp (car __traj))
       (send* _traj __traj)
     (progn
       (if __traj (setq _traj (car __traj)))
       _traj)))
  (:pose_array
   (&rest __pose_array)
   (if (keywordp (car __pose_array))
       (send* _pose_array __pose_array)
     (progn
       (if __pose_array (setq _pose_array (car __pose_array)))
       _pose_array)))
  (:lon_follow_obstacles
   (&optional __lon_follow_obstacles)
   (if __lon_follow_obstacles (setq _lon_follow_obstacles __lon_follow_obstacles)) _lon_follow_obstacles)
  (:lon_overtake_obstacles
   (&optional __lon_overtake_obstacles)
   (if __lon_overtake_obstacles (setq _lon_overtake_obstacles __lon_overtake_obstacles)) _lon_overtake_obstacles)
  (:lat_nudge_obstacles
   (&optional __lat_nudge_obstacles)
   (if __lat_nudge_obstacles (setq _lat_nudge_obstacles __lat_nudge_obstacles)) _lat_nudge_obstacles)
  (:blocking_obstacle_id
   (&optional __blocking_obstacle_id)
   (if __blocking_obstacle_id (setq _blocking_obstacle_id __blocking_obstacle_id)) _blocking_obstacle_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _v_target
    4
    ;; float32 _a_target
    4
    ;; float32 _dis_to_stop
    4
    ;; float32[] _v_array
    (* 4    (length _v_array)) 4
    ;; float32[] _a_array
    (* 4    (length _a_array)) 4
    ;; uint8[] _traffic_light_decision
    (* 1    (length _traffic_light_decision)) 4
    ;; momenta_msgs/Trajectory _traj
    (send _traj :serialization-length)
    ;; geometry_msgs/Pose2D[] _pose_array
    (apply #'+ (send-all _pose_array :serialization-length)) 4
    ;; uint32[] _lon_follow_obstacles
    (* 4    (length _lon_follow_obstacles)) 4
    ;; uint32[] _lon_overtake_obstacles
    (* 4    (length _lon_overtake_obstacles)) 4
    ;; uint32[] _lat_nudge_obstacles
    (* 4    (length _lat_nudge_obstacles)) 4
    ;; uint32 _blocking_obstacle_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _v_target
       (sys::poke _v_target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a_target
       (sys::poke _a_target (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dis_to_stop
       (sys::poke _dis_to_stop (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _v_array
     (write-long (length _v_array) s)
     (dotimes (i (length _v_array))
       (sys::poke (elt _v_array i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _a_array
     (write-long (length _a_array) s)
     (dotimes (i (length _a_array))
       (sys::poke (elt _a_array i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint8[] _traffic_light_decision
     (write-long (length _traffic_light_decision) s)
     (princ _traffic_light_decision s)
     ;; momenta_msgs/Trajectory _traj
       (send _traj :serialize s)
     ;; geometry_msgs/Pose2D[] _pose_array
     (write-long (length _pose_array) s)
     (dolist (elem _pose_array)
       (send elem :serialize s)
       )
     ;; uint32[] _lon_follow_obstacles
     (write-long (length _lon_follow_obstacles) s)
     (dotimes (i (length _lon_follow_obstacles))
       (write-long (elt _lon_follow_obstacles i) s)
       )
     ;; uint32[] _lon_overtake_obstacles
     (write-long (length _lon_overtake_obstacles) s)
     (dotimes (i (length _lon_overtake_obstacles))
       (write-long (elt _lon_overtake_obstacles i) s)
       )
     ;; uint32[] _lat_nudge_obstacles
     (write-long (length _lat_nudge_obstacles) s)
     (dotimes (i (length _lat_nudge_obstacles))
       (write-long (elt _lat_nudge_obstacles i) s)
       )
     ;; uint32 _blocking_obstacle_id
       (write-long _blocking_obstacle_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _v_target
     (setq _v_target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a_target
     (setq _a_target (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dis_to_stop
     (setq _dis_to_stop (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _v_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _v_array i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _a_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _a_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _a_array i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint8[] _traffic_light_decision
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _traffic_light_decision (make-array n :element-type :char))
     (replace _traffic_light_decision buf :start2 ptr-) (incf ptr- n))
   ;; momenta_msgs/Trajectory _traj
     (send _traj :deserialize buf ptr-) (incf ptr- (send _traj :serialization-length))
   ;; geometry_msgs/Pose2D[] _pose_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_array (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _pose_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _lon_follow_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lon_follow_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lon_follow_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _lon_overtake_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lon_overtake_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lon_overtake_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _lat_nudge_obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lat_nudge_obstacles (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _lat_nudge_obstacles i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32 _blocking_obstacle_id
     (setq _blocking_obstacle_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::Planning :md5sum-) "ab92aa9d2f14a467829d4a120d4e5d52")
(setf (get momenta_msgs::Planning :datatype-) "momenta_msgs/Planning")
(setf (get momenta_msgs::Planning :definition-)
      "std_msgs/Header header
float32 v_target
float32 a_target
float32 dis_to_stop
float32[] v_array
float32[] a_array
uint8[] traffic_light_decision
momenta_msgs/Trajectory traj
geometry_msgs/Pose2D[] pose_array
uint32[] lon_follow_obstacles
uint32[] lon_overtake_obstacles
uint32[] lat_nudge_obstacles
uint32 blocking_obstacle_id

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
MSG: momenta_msgs/Trajectory
std_msgs/Header header
momenta_msgs/Line path
float32[] vel_array
float32[] curvature
float32[] accleration
float32[] s
float32[] relative_time
bool is_replan
int32 type

================================================================================
MSG: momenta_msgs/Line
geometry_msgs/Pose2D[] pose_array

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :momenta_msgs/Planning "ab92aa9d2f14a467829d4a120d4e5d52")


