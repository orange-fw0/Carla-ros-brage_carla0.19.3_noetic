;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MapLane)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MapLane (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MAPLANE")
  (make-package "MOMENTA_MSGS::MAPLANE"))

(in-package "ROS")
;;//! \htmlinclude MapLane.msg.html


(defclass momenta_msgs::MapLane
  :super ros::object
  :slots (_lane _cur_idx _global_idx ))

(defmethod momenta_msgs::MapLane
  (:init
   (&key
    ((:lane __lane) ())
    ((:cur_idx __cur_idx) 0)
    ((:global_idx __global_idx) 0)
    )
   (send-super :init)
   (setq _lane __lane)
   (setq _cur_idx (round __cur_idx))
   (setq _global_idx (round __global_idx))
   self)
  (:lane
   (&rest __lane)
   (if (keywordp (car __lane))
       (send* _lane __lane)
     (progn
       (if __lane (setq _lane (car __lane)))
       _lane)))
  (:cur_idx
   (&optional __cur_idx)
   (if __cur_idx (setq _cur_idx __cur_idx)) _cur_idx)
  (:global_idx
   (&optional __global_idx)
   (if __global_idx (setq _global_idx __global_idx)) _global_idx)
  (:serialization-length
   ()
   (+
    ;; momenta_msgs/LanePoint[] _lane
    (apply #'+ (send-all _lane :serialization-length)) 4
    ;; uint32 _cur_idx
    4
    ;; uint32 _global_idx
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; momenta_msgs/LanePoint[] _lane
     (write-long (length _lane) s)
     (dolist (elem _lane)
       (send elem :serialize s)
       )
     ;; uint32 _cur_idx
       (write-long _cur_idx s)
     ;; uint32 _global_idx
       (write-long _global_idx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; momenta_msgs/LanePoint[] _lane
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane (let (r) (dotimes (i n) (push (instance momenta_msgs::LanePoint :init) r)) r))
     (dolist (elem- _lane)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _cur_idx
     (setq _cur_idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _global_idx
     (setq _global_idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::MapLane :md5sum-) "8b043baf328728e593b5f2c33290b355")
(setf (get momenta_msgs::MapLane :datatype-) "momenta_msgs/MapLane")
(setf (get momenta_msgs::MapLane :definition-)
      "momenta_msgs/LanePoint[] lane
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

")



(provide :momenta_msgs/MapLane "8b043baf328728e593b5f2c33290b355")


