;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::SpeedPlan)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'SpeedPlan (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::SPEEDPLAN")
  (make-package "PLANNING_MSGS::SPEEDPLAN"))

(in-package "ROS")
;;//! \htmlinclude SpeedPlan.msg.html


(defclass planning_msgs::SpeedPlan
  :super ros::object
  :slots (_v _a _j ))

(defmethod planning_msgs::SpeedPlan
  (:init
   (&key
    ((:v __v) 0.0)
    ((:a __a) 0.0)
    ((:j __j) 0.0)
    )
   (send-super :init)
   (setq _v (float __v))
   (setq _a (float __a))
   (setq _j (float __j))
   self)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:j
   (&optional __j)
   (if __j (setq _j __j)) _j)
  (:serialization-length
   ()
   (+
    ;; float64 _v
    8
    ;; float64 _a
    8
    ;; float64 _j
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _j
       (sys::poke _j (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _j
     (setq _j (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::SpeedPlan :md5sum-) "376777d117cb685db6344350dbee2063")
(setf (get planning_msgs::SpeedPlan :datatype-) "planning_msgs/SpeedPlan")
(setf (get planning_msgs::SpeedPlan :definition-)
      "float64 v
float64 a
float64 j

")



(provide :planning_msgs/SpeedPlan "376777d117cb685db6344350dbee2063")


