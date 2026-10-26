;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::AccelerationPoint)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'AccelerationPoint (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::ACCELERATIONPOINT")
  (make-package "PLANNING_MSGS::ACCELERATIONPOINT"))

(in-package "ROS")
;;//! \htmlinclude AccelerationPoint.msg.html


(defclass planning_msgs::AccelerationPoint
  :super ros::object
  :slots (_acc _jerk ))

(defmethod planning_msgs::AccelerationPoint
  (:init
   (&key
    ((:acc __acc) 0.0)
    ((:jerk __jerk) 0.0)
    )
   (send-super :init)
   (setq _acc (float __acc))
   (setq _jerk (float __jerk))
   self)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:jerk
   (&optional __jerk)
   (if __jerk (setq _jerk __jerk)) _jerk)
  (:serialization-length
   ()
   (+
    ;; float64 _acc
    8
    ;; float64 _jerk
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _jerk
       (sys::poke _jerk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _acc
     (setq _acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _jerk
     (setq _jerk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::AccelerationPoint :md5sum-) "a01ed4b9d22b73cecf21e3900cd9d044")
(setf (get planning_msgs::AccelerationPoint :datatype-) "planning_msgs/AccelerationPoint")
(setf (get planning_msgs::AccelerationPoint :definition-)
      "float64 acc
float64 jerk

")



(provide :planning_msgs/AccelerationPoint "a01ed4b9d22b73cecf21e3900cd9d044")


