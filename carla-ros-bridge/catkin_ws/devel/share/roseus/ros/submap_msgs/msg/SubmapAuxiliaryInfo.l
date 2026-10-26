;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::SubmapAuxiliaryInfo)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'SubmapAuxiliaryInfo (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::SUBMAPAUXILIARYINFO")
  (make-package "SUBMAP_MSGS::SUBMAPAUXILIARYINFO"))

(in-package "ROS")
;;//! \htmlinclude SubmapAuxiliaryInfo.msg.html


(defclass submap_msgs::SubmapAuxiliaryInfo
  :super ros::object
  :slots (_trajectory ))

(defmethod submap_msgs::SubmapAuxiliaryInfo
  (:init
   (&key
    ((:trajectory __trajectory) (instance submap_msgs::SubmapTrajectory :init))
    )
   (send-super :init)
   (setq _trajectory __trajectory)
   self)
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; submap_msgs/SubmapTrajectory _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/SubmapTrajectory _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/SubmapTrajectory _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(setf (get submap_msgs::SubmapAuxiliaryInfo :md5sum-) "d9886ee6af805062c3b253e95f141d40")
(setf (get submap_msgs::SubmapAuxiliaryInfo :datatype-) "submap_msgs/SubmapAuxiliaryInfo")
(setf (get submap_msgs::SubmapAuxiliaryInfo :definition-)
      "submap_msgs/SubmapTrajectory trajectory

================================================================================
MSG: submap_msgs/SubmapTrajectory
float64 distance
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



(provide :submap_msgs/SubmapAuxiliaryInfo "d9886ee6af805062c3b253e95f141d40")


