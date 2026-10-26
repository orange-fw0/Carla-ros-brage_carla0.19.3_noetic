;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Polyline2f)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Polyline2f (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::POLYLINE2F")
  (make-package "PLANNING_MSGS::POLYLINE2F"))

(in-package "ROS")
;;//! \htmlinclude Polyline2f.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass planning_msgs::Polyline2f
  :super ros::object
  :slots (_points ))

(defmethod planning_msgs::Polyline2f
  (:init
   (&key
    ((:points __points) ())
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::Polyline2f :md5sum-) "cd60a26494a087f577976f0329fa120e")
(setf (get planning_msgs::Polyline2f :datatype-) "planning_msgs/Polyline2f")
(setf (get planning_msgs::Polyline2f :definition-)
      "geometry_msgs/Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :planning_msgs/Polyline2f "cd60a26494a087f577976f0329fa120e")


