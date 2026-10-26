;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Line)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Line (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::LINE")
  (make-package "MOMENTA_MSGS::LINE"))

(in-package "ROS")
;;//! \htmlinclude Line.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass momenta_msgs::Line
  :super ros::object
  :slots (_pose_array ))

(defmethod momenta_msgs::Line
  (:init
   (&key
    ((:pose_array __pose_array) ())
    )
   (send-super :init)
   (setq _pose_array __pose_array)
   self)
  (:pose_array
   (&rest __pose_array)
   (if (keywordp (car __pose_array))
       (send* _pose_array __pose_array)
     (progn
       (if __pose_array (setq _pose_array (car __pose_array)))
       _pose_array)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D[] _pose_array
    (apply #'+ (send-all _pose_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D[] _pose_array
     (write-long (length _pose_array) s)
     (dolist (elem _pose_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D[] _pose_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_array (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose2D :init) r)) r))
     (dolist (elem- _pose_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::Line :md5sum-) "f78f94d848ebec9305f12de2f0673e6c")
(setf (get momenta_msgs::Line :datatype-) "momenta_msgs/Line")
(setf (get momenta_msgs::Line :definition-)
      "geometry_msgs/Pose2D[] pose_array

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



(provide :momenta_msgs/Line "f78f94d848ebec9305f12de2f0673e6c")


