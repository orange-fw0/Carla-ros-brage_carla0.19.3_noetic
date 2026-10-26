;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::SpeedChangePoint)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'SpeedChangePoint (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::SPEEDCHANGEPOINT")
  (make-package "MOMENTA_MSGS::SPEEDCHANGEPOINT"))

(in-package "ROS")
;;//! \htmlinclude SpeedChangePoint.msg.html


(defclass momenta_msgs::SpeedChangePoint
  :super ros::object
  :slots (_x _y _speed ))

(defmethod momenta_msgs::SpeedChangePoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _speed (float __speed))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get momenta_msgs::SpeedChangePoint :md5sum-) "7db44c9095febdd845f32851a1d81afd")
(setf (get momenta_msgs::SpeedChangePoint :datatype-) "momenta_msgs/SpeedChangePoint")
(setf (get momenta_msgs::SpeedChangePoint :definition-)
      "float64 x
float64 y
float64 speed

")



(provide :momenta_msgs/SpeedChangePoint "7db44c9095febdd845f32851a1d81afd")


