;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::RampManeuver)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'RampManeuver (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::RAMPMANEUVER")
  (make-package "WORLDMODEL_MSGS::RAMPMANEUVER"))

(in-package "ROS")
;;//! \htmlinclude RampManeuver.msg.html


(defclass worldmodel_msgs::RampManeuver
  :super ros::object
  :slots (_dis_to_ramp _length ))

(defmethod worldmodel_msgs::RampManeuver
  (:init
   (&key
    ((:dis_to_ramp __dis_to_ramp) 0.0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _dis_to_ramp (float __dis_to_ramp))
   (setq _length (float __length))
   self)
  (:dis_to_ramp
   (&optional __dis_to_ramp)
   (if __dis_to_ramp (setq _dis_to_ramp __dis_to_ramp)) _dis_to_ramp)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; float32 _dis_to_ramp
    4
    ;; float32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _dis_to_ramp
       (sys::poke _dis_to_ramp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _dis_to_ramp
     (setq _dis_to_ramp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get worldmodel_msgs::RampManeuver :md5sum-) "7913c40c76e8a83a94a1b0721d5aae93")
(setf (get worldmodel_msgs::RampManeuver :datatype-) "worldmodel_msgs/RampManeuver")
(setf (get worldmodel_msgs::RampManeuver :definition-)
      "float32 dis_to_ramp
float32 length

")



(provide :worldmodel_msgs/RampManeuver "7913c40c76e8a83a94a1b0721d5aae93")


