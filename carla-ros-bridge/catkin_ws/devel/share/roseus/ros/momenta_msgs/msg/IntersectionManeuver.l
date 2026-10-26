;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::IntersectionManeuver)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'IntersectionManeuver (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::INTERSECTIONMANEUVER")
  (make-package "MOMENTA_MSGS::INTERSECTIONMANEUVER"))

(in-package "ROS")
;;//! \htmlinclude IntersectionManeuver.msg.html


(defclass momenta_msgs::IntersectionManeuver
  :super ros::object
  :slots (_direction _distance _length ))

(defmethod momenta_msgs::IntersectionManeuver
  (:init
   (&key
    ((:direction __direction) 0)
    ((:distance __distance) 0.0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _direction (round __direction))
   (setq _distance (float __distance))
   (setq _length (float __length))
   self)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; uint8 _direction
    1
    ;; float64 _distance
    8
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _direction
       (write-byte _direction s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get momenta_msgs::IntersectionManeuver :md5sum-) "ab1a9f360b17e4f43fe8d873f4ffa50e")
(setf (get momenta_msgs::IntersectionManeuver :datatype-) "momenta_msgs/IntersectionManeuver")
(setf (get momenta_msgs::IntersectionManeuver :definition-)
      "uint8 direction
float64 distance
float64 length

")



(provide :momenta_msgs/IntersectionManeuver "ab1a9f360b17e4f43fe8d873f4ffa50e")


