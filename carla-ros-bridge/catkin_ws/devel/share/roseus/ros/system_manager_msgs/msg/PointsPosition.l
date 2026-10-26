;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::PointsPosition)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'PointsPosition (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::POINTSPOSITION")
  (make-package "SYSTEM_MANAGER_MSGS::POINTSPOSITION"))

(in-package "ROS")
;;//! \htmlinclude PointsPosition.msg.html
(if (not (find-package "MLA_LOCALIZATION_MSGS"))
  (ros::roseus-add-msgs "mla_localization_msgs"))


(defclass system_manager_msgs::PointsPosition
  :super ros::object
  :slots (_points ))

(defmethod system_manager_msgs::PointsPosition
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
    ;; mla_localization_msgs/MLAPosLocal[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mla_localization_msgs/MLAPosLocal[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mla_localization_msgs/MLAPosLocal[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance mla_localization_msgs::MLAPosLocal :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get system_manager_msgs::PointsPosition :md5sum-) "3fb3f9dacc279b964c4c8341122c34df")
(setf (get system_manager_msgs::PointsPosition :datatype-) "system_manager_msgs/PointsPosition")
(setf (get system_manager_msgs::PointsPosition :definition-)
      "mla_localization_msgs/MLAPosLocal[] points

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

")



(provide :system_manager_msgs/PointsPosition "3fb3f9dacc279b964c4c8341122c34df")


