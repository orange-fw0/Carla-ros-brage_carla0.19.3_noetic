;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::VelocityPoint)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'VelocityPoint (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::VELOCITYPOINT")
  (make-package "PLANNING_MSGS::VELOCITYPOINT"))

(in-package "ROS")
;;//! \htmlinclude VelocityPoint.msg.html


(defclass planning_msgs::VelocityPoint
  :super ros::object
  :slots (_target_velocity _relative_time _distance ))

(defmethod planning_msgs::VelocityPoint
  (:init
   (&key
    ((:target_velocity __target_velocity) 0.0)
    ((:relative_time __relative_time) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _target_velocity (float __target_velocity))
   (setq _relative_time (float __relative_time))
   (setq _distance (float __distance))
   self)
  (:target_velocity
   (&optional __target_velocity)
   (if __target_velocity (setq _target_velocity __target_velocity)) _target_velocity)
  (:relative_time
   (&optional __relative_time)
   (if __relative_time (setq _relative_time __relative_time)) _relative_time)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float64 _target_velocity
    8
    ;; float64 _relative_time
    8
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _target_velocity
       (sys::poke _target_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_time
       (sys::poke _relative_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _target_velocity
     (setq _target_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_time
     (setq _relative_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::VelocityPoint :md5sum-) "8f3bc5ab35a1f449e7aeaf2271f3edc6")
(setf (get planning_msgs::VelocityPoint :datatype-) "planning_msgs/VelocityPoint")
(setf (get planning_msgs::VelocityPoint :definition-)
      "float64 target_velocity
float64 relative_time
float64 distance

")



(provide :planning_msgs/VelocityPoint "8f3bc5ab35a1f449e7aeaf2271f3edc6")


