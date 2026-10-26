;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::TrafficLightInfo)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'TrafficLightInfo (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::TRAFFICLIGHTINFO")
  (make-package "MOMENTA_MSGS::TRAFFICLIGHTINFO"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightInfo.msg.html


(defclass momenta_msgs::TrafficLightInfo
  :super ros::object
  :slots (_patterns _direction ))

(defmethod momenta_msgs::TrafficLightInfo
  (:init
   (&key
    ((:patterns __patterns) (make-array 0 :initial-element 0 :element-type :char))
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _patterns __patterns)
   (setq _direction (round __direction))
   self)
  (:patterns
   (&optional __patterns)
   (if __patterns (setq _patterns __patterns)) _patterns)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; uint8[] _patterns
    (* 1    (length _patterns)) 4
    ;; uint8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _patterns
     (write-long (length _patterns) s)
     (princ _patterns s)
     ;; uint8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _patterns
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _patterns (make-array n :element-type :char))
     (replace _patterns buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::TrafficLightInfo :md5sum-) "be2858035f52aa8eedeb478ad0ef7af1")
(setf (get momenta_msgs::TrafficLightInfo :datatype-) "momenta_msgs/TrafficLightInfo")
(setf (get momenta_msgs::TrafficLightInfo :definition-)
      "uint8[] patterns
uint8 direction

")



(provide :momenta_msgs/TrafficLightInfo "be2858035f52aa8eedeb478ad0ef7af1")


