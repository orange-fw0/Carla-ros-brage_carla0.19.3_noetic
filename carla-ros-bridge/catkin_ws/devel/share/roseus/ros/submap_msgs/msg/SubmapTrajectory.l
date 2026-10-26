;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::SubmapTrajectory)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'SubmapTrajectory (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::SUBMAPTRAJECTORY")
  (make-package "SUBMAP_MSGS::SUBMAPTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude SubmapTrajectory.msg.html


(defclass submap_msgs::SubmapTrajectory
  :super ros::object
  :slots (_distance _positions ))

(defmethod submap_msgs::SubmapTrajectory
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:positions __positions) ())
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _positions __positions)
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; submap_msgs/Position[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; submap_msgs/Position[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; submap_msgs/Position[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance submap_msgs::Position :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get submap_msgs::SubmapTrajectory :md5sum-) "aecb4b9dd86e97ea0eef1ea45e4a9304")
(setf (get submap_msgs::SubmapTrajectory :datatype-) "submap_msgs/SubmapTrajectory")
(setf (get submap_msgs::SubmapTrajectory :definition-)
      "float64 distance
submap_msgs/Position[] positions

================================================================================
MSG: submap_msgs/Position
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 translation
float64 timestamp

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :submap_msgs/SubmapTrajectory "aecb4b9dd86e97ea0eef1ea45e4a9304")


