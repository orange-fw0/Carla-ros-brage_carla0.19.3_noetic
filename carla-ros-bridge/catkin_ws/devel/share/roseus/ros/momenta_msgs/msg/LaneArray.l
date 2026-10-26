;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::LaneArray)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'LaneArray (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::LANEARRAY")
  (make-package "MOMENTA_MSGS::LANEARRAY"))

(in-package "ROS")
;;//! \htmlinclude LaneArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::LaneArray
  :super ros::object
  :slots (_header _lane_array _current_lane_idx ))

(defmethod momenta_msgs::LaneArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lane_array __lane_array) ())
    ((:current_lane_idx __current_lane_idx) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _lane_array __lane_array)
   (setq _current_lane_idx (round __current_lane_idx))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lane_array
   (&rest __lane_array)
   (if (keywordp (car __lane_array))
       (send* _lane_array __lane_array)
     (progn
       (if __lane_array (setq _lane_array (car __lane_array)))
       _lane_array)))
  (:current_lane_idx
   (&optional __current_lane_idx)
   (if __current_lane_idx (setq _current_lane_idx __current_lane_idx)) _current_lane_idx)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/Lane[] _lane_array
    (apply #'+ (send-all _lane_array :serialization-length)) 4
    ;; uint8 _current_lane_idx
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/Lane[] _lane_array
     (write-long (length _lane_array) s)
     (dolist (elem _lane_array)
       (send elem :serialize s)
       )
     ;; uint8 _current_lane_idx
       (write-byte _current_lane_idx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/Lane[] _lane_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_array (let (r) (dotimes (i n) (push (instance momenta_msgs::Lane :init) r)) r))
     (dolist (elem- _lane_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _current_lane_idx
     (setq _current_lane_idx (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::LaneArray :md5sum-) "4c2fe9b8bba839e0239dd165bdce006c")
(setf (get momenta_msgs::LaneArray :datatype-) "momenta_msgs/LaneArray")
(setf (get momenta_msgs::LaneArray :definition-)
      "std_msgs/Header header
momenta_msgs/Lane[] lane_array
uint8 current_lane_idx

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
MSG: momenta_msgs/Lane
std_msgs/Header header
momenta_msgs/Lanemark left_lanemark
momenta_msgs/Lanemark right_lanemark
momenta_msgs/Line mid_line
float32 width

================================================================================
MSG: momenta_msgs/Lanemark
uint32 id
float32 prob
bool is_solid
bool is_boundary
uint8 color
bool is_Yline
bool is_biline
geometry_msgs/Pose2D[] pts_on_img
geometry_msgs/Pose2D[] pts_on_bv

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
MSG: momenta_msgs/Line
geometry_msgs/Pose2D[] pose_array

")



(provide :momenta_msgs/LaneArray "4c2fe9b8bba839e0239dd165bdce006c")


