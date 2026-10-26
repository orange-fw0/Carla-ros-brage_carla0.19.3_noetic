;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::Polyn)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'Polyn (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::POLYN")
  (make-package "CALIB_INTERFACE_MSGS::POLYN"))

(in-package "ROS")
;;//! \htmlinclude Polyn.msg.html


(defclass calib_interface_msgs::Polyn
  :super ros::object
  :slots (_kc1 _kc2 _kc3 _kc4 ))

(defmethod calib_interface_msgs::Polyn
  (:init
   (&key
    ((:kc1 __kc1) 0.0)
    ((:kc2 __kc2) 0.0)
    ((:kc3 __kc3) 0.0)
    ((:kc4 __kc4) 0.0)
    )
   (send-super :init)
   (setq _kc1 (float __kc1))
   (setq _kc2 (float __kc2))
   (setq _kc3 (float __kc3))
   (setq _kc4 (float __kc4))
   self)
  (:kc1
   (&optional __kc1)
   (if __kc1 (setq _kc1 __kc1)) _kc1)
  (:kc2
   (&optional __kc2)
   (if __kc2 (setq _kc2 __kc2)) _kc2)
  (:kc3
   (&optional __kc3)
   (if __kc3 (setq _kc3 __kc3)) _kc3)
  (:kc4
   (&optional __kc4)
   (if __kc4 (setq _kc4 __kc4)) _kc4)
  (:serialization-length
   ()
   (+
    ;; float64 _kc1
    8
    ;; float64 _kc2
    8
    ;; float64 _kc3
    8
    ;; float64 _kc4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _kc1
       (sys::poke _kc1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kc2
       (sys::poke _kc2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kc3
       (sys::poke _kc3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kc4
       (sys::poke _kc4 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _kc1
     (setq _kc1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kc2
     (setq _kc2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kc3
     (setq _kc3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kc4
     (setq _kc4 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get calib_interface_msgs::Polyn :md5sum-) "13c3613f258efaf8c7ba6935cbfeffb8")
(setf (get calib_interface_msgs::Polyn :datatype-) "calib_interface_msgs/Polyn")
(setf (get calib_interface_msgs::Polyn :definition-)
      "float64 kc1
float64 kc2
float64 kc3
float64 kc4

")



(provide :calib_interface_msgs/Polyn "13c3613f258efaf8c7ba6935cbfeffb8")


