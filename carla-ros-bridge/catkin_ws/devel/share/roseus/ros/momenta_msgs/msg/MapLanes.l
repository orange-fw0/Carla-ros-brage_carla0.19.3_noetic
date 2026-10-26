;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MapLanes)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MapLanes (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MAPLANES")
  (make-package "MOMENTA_MSGS::MAPLANES"))

(in-package "ROS")
;;//! \htmlinclude MapLanes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::MapLanes
  :super ros::object
  :slots (_header _lanes _cur_lane_id _next_mdf ))

(defmethod momenta_msgs::MapLanes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lanes __lanes) ())
    ((:cur_lane_id __cur_lane_id) 0)
    ((:next_mdf __next_mdf) (instance momenta_msgs::Mdf :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lanes __lanes)
   (setq _cur_lane_id (round __cur_lane_id))
   (setq _next_mdf __next_mdf)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:cur_lane_id
   (&optional __cur_lane_id)
   (if __cur_lane_id (setq _cur_lane_id __cur_lane_id)) _cur_lane_id)
  (:next_mdf
   (&rest __next_mdf)
   (if (keywordp (car __next_mdf))
       (send* _next_mdf __next_mdf)
     (progn
       (if __next_mdf (setq _next_mdf (car __next_mdf)))
       _next_mdf)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/MapLane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ;; int32 _cur_lane_id
    4
    ;; momenta_msgs/Mdf _next_mdf
    (send _next_mdf :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/MapLane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;; int32 _cur_lane_id
       (write-long _cur_lane_id s)
     ;; momenta_msgs/Mdf _next_mdf
       (send _next_mdf :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/MapLane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance momenta_msgs::MapLane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _cur_lane_id
     (setq _cur_lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; momenta_msgs/Mdf _next_mdf
     (send _next_mdf :deserialize buf ptr-) (incf ptr- (send _next_mdf :serialization-length))
   ;;
   self)
  )

(setf (get momenta_msgs::MapLanes :md5sum-) "ced4682f20293b07d646ed602171e3a3")
(setf (get momenta_msgs::MapLanes :datatype-) "momenta_msgs/MapLanes")
(setf (get momenta_msgs::MapLanes :definition-)
      "std_msgs/Header header
momenta_msgs/MapLane[] lanes
int32 cur_lane_id
momenta_msgs/Mdf next_mdf

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
MSG: momenta_msgs/MapLane
momenta_msgs/LanePoint[] lane
uint32 cur_idx
uint32 global_idx

================================================================================
MSG: momenta_msgs/LanePoint
geometry_msgs/Pose2D pose
float32 vel_limit
float32 width_left
bool is_left_cross
float32 width_right
bool is_right_cross

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

================================================================================
MSG: momenta_msgs/Mdf
int32 id
int32 idx
float32 speed_limit
int32 p1
int32 p2
bool traffic_light

")



(provide :momenta_msgs/MapLanes "ced4682f20293b07d646ed602171e3a3")


