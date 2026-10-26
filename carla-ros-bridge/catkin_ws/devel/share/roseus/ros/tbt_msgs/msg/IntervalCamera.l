;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::IntervalCamera)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'IntervalCamera (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::INTERVALCAMERA")
  (make-package "TBT_MSGS::INTERVALCAMERA"))

(in-package "ROS")
;;//! \htmlinclude IntervalCamera.msg.html


(defclass tbt_msgs::IntervalCamera
  :super ros::object
  :slots (_speed_limit _distance _start_lat _start_long _end_lat _end_long ))

(defmethod tbt_msgs::IntervalCamera
  (:init
   (&key
    ((:speed_limit __speed_limit) 0)
    ((:distance __distance) 0)
    ((:start_lat __start_lat) 0.0)
    ((:start_long __start_long) 0.0)
    ((:end_lat __end_lat) 0.0)
    ((:end_long __end_long) 0.0)
    )
   (send-super :init)
   (setq _speed_limit (round __speed_limit))
   (setq _distance (round __distance))
   (setq _start_lat (float __start_lat))
   (setq _start_long (float __start_long))
   (setq _end_lat (float __end_lat))
   (setq _end_long (float __end_long))
   self)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:start_lat
   (&optional __start_lat)
   (if __start_lat (setq _start_lat __start_lat)) _start_lat)
  (:start_long
   (&optional __start_long)
   (if __start_long (setq _start_long __start_long)) _start_long)
  (:end_lat
   (&optional __end_lat)
   (if __end_lat (setq _end_lat __end_lat)) _end_lat)
  (:end_long
   (&optional __end_long)
   (if __end_long (setq _end_long __end_long)) _end_long)
  (:serialization-length
   ()
   (+
    ;; uint8 _speed_limit
    1
    ;; uint16 _distance
    2
    ;; float64 _start_lat
    8
    ;; float64 _start_long
    8
    ;; float64 _end_lat
    8
    ;; float64 _end_long
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _speed_limit
       (write-byte _speed_limit s)
     ;; uint16 _distance
       (write-word _distance s)
     ;; float64 _start_lat
       (sys::poke _start_lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _start_long
       (sys::poke _start_long (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_lat
       (sys::poke _end_lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_long
       (sys::poke _end_long (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _distance
     (setq _distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _start_lat
     (setq _start_lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _start_long
     (setq _start_long (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_lat
     (setq _end_lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_long
     (setq _end_long (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tbt_msgs::IntervalCamera :md5sum-) "66b6eeb10de2e2817875b67f8250c648")
(setf (get tbt_msgs::IntervalCamera :datatype-) "tbt_msgs/IntervalCamera")
(setf (get tbt_msgs::IntervalCamera :definition-)
      "uint8 speed_limit
uint16 distance
float64 start_lat
float64 start_long
float64 end_lat
float64 end_long

")



(provide :tbt_msgs/IntervalCamera "66b6eeb10de2e2817875b67f8250c648")


