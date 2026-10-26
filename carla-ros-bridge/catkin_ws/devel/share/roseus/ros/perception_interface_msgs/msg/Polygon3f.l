;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::Polygon3f)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'Polygon3f (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::POLYGON3F")
  (make-package "PERCEPTION_INTERFACE_MSGS::POLYGON3F"))

(in-package "ROS")
;;//! \htmlinclude Polygon3f.msg.html


(defclass perception_interface_msgs::Polygon3f
  :super ros::object
  :slots (_points ))

(defmethod perception_interface_msgs::Polygon3f
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

(setf (get perception_interface_msgs::Polygon3f :md5sum-) "cd60a26494a087f577976f0329fa120e")
(setf (get perception_interface_msgs::Polygon3f :datatype-) "perception_interface_msgs/Polygon3f")
(setf (get perception_interface_msgs::Polygon3f :definition-)
      "perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :perception_interface_msgs/Polygon3f "cd60a26494a087f577976f0329fa120e")


