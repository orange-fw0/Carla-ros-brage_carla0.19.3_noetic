;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::RadTan)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'RadTan (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::RADTAN")
  (make-package "CALIB_INTERFACE_MSGS::RADTAN"))

(in-package "ROS")
;;//! \htmlinclude RadTan.msg.html


(defclass calib_interface_msgs::RadTan
  :super ros::object
  :slots (_k1 _k2 _p1 _p2 _k3 _k4 _k5 _k6 ))

(defmethod calib_interface_msgs::RadTan
  (:init
   (&key
    ((:k1 __k1) 0.0)
    ((:k2 __k2) 0.0)
    ((:p1 __p1) 0.0)
    ((:p2 __p2) 0.0)
    ((:k3 __k3) 0.0)
    ((:k4 __k4) 0.0)
    ((:k5 __k5) 0.0)
    ((:k6 __k6) 0.0)
    )
   (send-super :init)
   (setq _k1 (float __k1))
   (setq _k2 (float __k2))
   (setq _p1 (float __p1))
   (setq _p2 (float __p2))
   (setq _k3 (float __k3))
   (setq _k4 (float __k4))
   (setq _k5 (float __k5))
   (setq _k6 (float __k6))
   self)
  (:k1
   (&optional __k1)
   (if __k1 (setq _k1 __k1)) _k1)
  (:k2
   (&optional __k2)
   (if __k2 (setq _k2 __k2)) _k2)
  (:p1
   (&optional __p1)
   (if __p1 (setq _p1 __p1)) _p1)
  (:p2
   (&optional __p2)
   (if __p2 (setq _p2 __p2)) _p2)
  (:k3
   (&optional __k3)
   (if __k3 (setq _k3 __k3)) _k3)
  (:k4
   (&optional __k4)
   (if __k4 (setq _k4 __k4)) _k4)
  (:k5
   (&optional __k5)
   (if __k5 (setq _k5 __k5)) _k5)
  (:k6
   (&optional __k6)
   (if __k6 (setq _k6 __k6)) _k6)
  (:serialization-length
   ()
   (+
    ;; float64 _k1
    8
    ;; float64 _k2
    8
    ;; float64 _p1
    8
    ;; float64 _p2
    8
    ;; float64 _k3
    8
    ;; float64 _k4
    8
    ;; float64 _k5
    8
    ;; float64 _k6
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _k1
       (sys::poke _k1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k2
       (sys::poke _k2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _p1
       (sys::poke _p1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _p2
       (sys::poke _p2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k3
       (sys::poke _k3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k4
       (sys::poke _k4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k5
       (sys::poke _k5 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k6
       (sys::poke _k6 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _k1
     (setq _k1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k2
     (setq _k2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _p1
     (setq _p1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _p2
     (setq _p2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k3
     (setq _k3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k4
     (setq _k4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k5
     (setq _k5 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k6
     (setq _k6 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get calib_interface_msgs::RadTan :md5sum-) "97065f83266d5b12980128559075014e")
(setf (get calib_interface_msgs::RadTan :datatype-) "calib_interface_msgs/RadTan")
(setf (get calib_interface_msgs::RadTan :definition-)
      "float64 k1
float64 k2
float64 p1
float64 p2
float64 k3
float64 k4
float64 k5
float64 k6

")



(provide :calib_interface_msgs/RadTan "97065f83266d5b12980128559075014e")


