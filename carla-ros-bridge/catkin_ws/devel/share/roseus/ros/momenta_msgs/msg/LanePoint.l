;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::LanePoint)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'LanePoint (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::LANEPOINT")
  (make-package "MOMENTA_MSGS::LANEPOINT"))

(in-package "ROS")
;;//! \htmlinclude LanePoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass momenta_msgs::LanePoint
  :super ros::object
  :slots (_pose _vel_limit _width_left _is_left_cross _width_right _is_right_cross ))

(defmethod momenta_msgs::LanePoint
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:vel_limit __vel_limit) 0.0)
    ((:width_left __width_left) 0.0)
    ((:is_left_cross __is_left_cross) nil)
    ((:width_right __width_right) 0.0)
    ((:is_right_cross __is_right_cross) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _vel_limit (float __vel_limit))
   (setq _width_left (float __width_left))
   (setq _is_left_cross __is_left_cross)
   (setq _width_right (float __width_right))
   (setq _is_right_cross __is_right_cross)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:vel_limit
   (&optional __vel_limit)
   (if __vel_limit (setq _vel_limit __vel_limit)) _vel_limit)
  (:width_left
   (&optional __width_left)
   (if __width_left (setq _width_left __width_left)) _width_left)
  (:is_left_cross
   (&optional (__is_left_cross :null))
   (if (not (eq __is_left_cross :null)) (setq _is_left_cross __is_left_cross)) _is_left_cross)
  (:width_right
   (&optional __width_right)
   (if __width_right (setq _width_right __width_right)) _width_right)
  (:is_right_cross
   (&optional (__is_right_cross :null))
   (if (not (eq __is_right_cross :null)) (setq _is_right_cross __is_right_cross)) _is_right_cross)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; float32 _vel_limit
    4
    ;; float32 _width_left
    4
    ;; bool _is_left_cross
    1
    ;; float32 _width_right
    4
    ;; bool _is_right_cross
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; float32 _vel_limit
       (sys::poke _vel_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width_left
       (sys::poke _width_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_left_cross
       (if _is_left_cross (write-byte -1 s) (write-byte 0 s))
     ;; float32 _width_right
       (sys::poke _width_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_right_cross
       (if _is_right_cross (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _vel_limit
     (setq _vel_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width_left
     (setq _width_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_left_cross
     (setq _is_left_cross (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _width_right
     (setq _width_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_right_cross
     (setq _is_right_cross (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::LanePoint :md5sum-) "2daab4136f40fcf33a0568ccb1b336b4")
(setf (get momenta_msgs::LanePoint :datatype-) "momenta_msgs/LanePoint")
(setf (get momenta_msgs::LanePoint :definition-)
      "geometry_msgs/Pose2D pose
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



(provide :momenta_msgs/LanePoint "2daab4136f40fcf33a0568ccb1b336b4")


