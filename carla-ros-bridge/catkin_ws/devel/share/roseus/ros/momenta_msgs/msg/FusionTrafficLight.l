;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::FusionTrafficLight)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'FusionTrafficLight (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::FUSIONTRAFFICLIGHT")
  (make-package "MOMENTA_MSGS::FUSIONTRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude FusionTrafficLight.msg.html


(defclass momenta_msgs::FusionTrafficLight
  :super ros::object
  :slots (_pattern _status _duration _remaining ))

(defmethod momenta_msgs::FusionTrafficLight
  (:init
   (&key
    ((:pattern __pattern) 0)
    ((:status __status) 0)
    ((:duration __duration) 0.0)
    ((:remaining __remaining) 0.0)
    )
   (send-super :init)
   (setq _pattern (round __pattern))
   (setq _status (round __status))
   (setq _duration (float __duration))
   (setq _remaining (float __remaining))
   self)
  (:pattern
   (&optional __pattern)
   (if __pattern (setq _pattern __pattern)) _pattern)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:remaining
   (&optional __remaining)
   (if __remaining (setq _remaining __remaining)) _remaining)
  (:serialization-length
   ()
   (+
    ;; int32 _pattern
    4
    ;; int32 _status
    4
    ;; float64 _duration
    8
    ;; float64 _remaining
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pattern
       (write-long _pattern s)
     ;; int32 _status
       (write-long _status s)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _remaining
       (sys::poke _remaining (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pattern
     (setq _pattern (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _remaining
     (setq _remaining (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get momenta_msgs::FusionTrafficLight :md5sum-) "aa96d0110452b1942c6d5c75952b2771")
(setf (get momenta_msgs::FusionTrafficLight :datatype-) "momenta_msgs/FusionTrafficLight")
(setf (get momenta_msgs::FusionTrafficLight :definition-)
      "int32 pattern
int32 status
float64 duration
float64 remaining

")



(provide :momenta_msgs/FusionTrafficLight "aa96d0110452b1942c6d5c75952b2771")


