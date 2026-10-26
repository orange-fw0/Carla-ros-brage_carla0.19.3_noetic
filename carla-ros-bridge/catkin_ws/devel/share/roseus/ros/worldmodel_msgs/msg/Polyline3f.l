;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::Polyline3f)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'Polyline3f (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::POLYLINE3F")
  (make-package "WORLDMODEL_MSGS::POLYLINE3F"))

(in-package "ROS")
;;//! \htmlinclude Polyline3f.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::Polyline3f
  :super ros::object
  :slots (_points ))

(defmethod worldmodel_msgs::Polyline3f
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
    ;; perception_interface_msgs/Point3f[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point3f[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point3f[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get worldmodel_msgs::Polyline3f :md5sum-) "cd60a26494a087f577976f0329fa120e")
(setf (get worldmodel_msgs::Polyline3f :datatype-) "worldmodel_msgs/Polyline3f")
(setf (get worldmodel_msgs::Polyline3f :definition-)
      "perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/Polyline3f "cd60a26494a087f577976f0329fa120e")


