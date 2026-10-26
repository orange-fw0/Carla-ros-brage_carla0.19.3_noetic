;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::AccelerationRange)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'AccelerationRange (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::ACCELERATIONRANGE")
  (make-package "PLANNING_MSGS::ACCELERATIONRANGE"))

(in-package "ROS")
;;//! \htmlinclude AccelerationRange.msg.html


(defclass planning_msgs::AccelerationRange
  :super ros::object
  :slots (_max _min ))

(defmethod planning_msgs::AccelerationRange
  (:init
   (&key
    ((:max __max) 0.0)
    ((:min __min) 0.0)
    )
   (send-super :init)
   (setq _max (float __max))
   (setq _min (float __min))
   self)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:serialization-length
   ()
   (+
    ;; float64 _max
    8
    ;; float64 _min
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _max
       (sys::poke _max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min
       (sys::poke _min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _max
     (setq _max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min
     (setq _min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::AccelerationRange :md5sum-) "1be1f057ba1e6e938ede7aada413094e")
(setf (get planning_msgs::AccelerationRange :datatype-) "planning_msgs/AccelerationRange")
(setf (get planning_msgs::AccelerationRange :definition-)
      "float64 max
float64 min

")



(provide :planning_msgs/AccelerationRange "1be1f057ba1e6e938ede7aada413094e")


