;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Lane)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Lane (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::LANE")
  (make-package "MOMENTA_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::Lane
  :super ros::object
  :slots (_header _left_lanemark _right_lanemark _mid_line _width ))

(defmethod momenta_msgs::Lane
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_lanemark __left_lanemark) (instance momenta_msgs::Lanemark :init))
    ((:right_lanemark __right_lanemark) (instance momenta_msgs::Lanemark :init))
    ((:mid_line __mid_line) (instance momenta_msgs::Line :init))
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_lanemark __left_lanemark)
   (setq _right_lanemark __right_lanemark)
   (setq _mid_line __mid_line)
   (setq _width (float __width))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_lanemark
   (&rest __left_lanemark)
   (if (keywordp (car __left_lanemark))
       (send* _left_lanemark __left_lanemark)
     (progn
       (if __left_lanemark (setq _left_lanemark (car __left_lanemark)))
       _left_lanemark)))
  (:right_lanemark
   (&rest __right_lanemark)
   (if (keywordp (car __right_lanemark))
       (send* _right_lanemark __right_lanemark)
     (progn
       (if __right_lanemark (setq _right_lanemark (car __right_lanemark)))
       _right_lanemark)))
  (:mid_line
   (&rest __mid_line)
   (if (keywordp (car __mid_line))
       (send* _mid_line __mid_line)
     (progn
       (if __mid_line (setq _mid_line (car __mid_line)))
       _mid_line)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; momenta_msgs/Lanemark _left_lanemark
    (send _left_lanemark :serialization-length)
    ;; momenta_msgs/Lanemark _right_lanemark
    (send _right_lanemark :serialization-length)
    ;; momenta_msgs/Line _mid_line
    (send _mid_line :serialization-length)
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; momenta_msgs/Lanemark _left_lanemark
       (send _left_lanemark :serialize s)
     ;; momenta_msgs/Lanemark _right_lanemark
       (send _right_lanemark :serialize s)
     ;; momenta_msgs/Line _mid_line
       (send _mid_line :serialize s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; momenta_msgs/Lanemark _left_lanemark
     (send _left_lanemark :deserialize buf ptr-) (incf ptr- (send _left_lanemark :serialization-length))
   ;; momenta_msgs/Lanemark _right_lanemark
     (send _right_lanemark :deserialize buf ptr-) (incf ptr- (send _right_lanemark :serialization-length))
   ;; momenta_msgs/Line _mid_line
     (send _mid_line :deserialize buf ptr-) (incf ptr- (send _mid_line :serialization-length))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::Lane :md5sum-) "3d382b3275ac23c4c0868787de279d0f")
(setf (get momenta_msgs::Lane :datatype-) "momenta_msgs/Lane")
(setf (get momenta_msgs::Lane :definition-)
      "std_msgs/Header header
momenta_msgs/Lanemark left_lanemark
momenta_msgs/Lanemark right_lanemark
momenta_msgs/Line mid_line
float32 width

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



(provide :momenta_msgs/Lane "3d382b3275ac23c4c0868787de279d0f")


