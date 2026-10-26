;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicEhcoInfo)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicEhcoInfo (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICEHCOINFO")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICEHCOINFO"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicEhcoInfo.msg.html


(defclass sensor_interface_msgs::UltrasonicEhcoInfo
  :super ros::object
  :slots (_uss_echo_distance _uss_echo_width ))

(defmethod sensor_interface_msgs::UltrasonicEhcoInfo
  (:init
   (&key
    ((:uss_echo_distance __uss_echo_distance) 0.0)
    ((:uss_echo_width __uss_echo_width) 0)
    )
   (send-super :init)
   (setq _uss_echo_distance (float __uss_echo_distance))
   (setq _uss_echo_width (round __uss_echo_width))
   self)
  (:uss_echo_distance
   (&optional __uss_echo_distance)
   (if __uss_echo_distance (setq _uss_echo_distance __uss_echo_distance)) _uss_echo_distance)
  (:uss_echo_width
   (&optional __uss_echo_width)
   (if __uss_echo_width (setq _uss_echo_width __uss_echo_width)) _uss_echo_width)
  (:serialization-length
   ()
   (+
    ;; float32 _uss_echo_distance
    4
    ;; uint64 _uss_echo_width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _uss_echo_distance
       (sys::poke _uss_echo_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _uss_echo_width
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _uss_echo_width (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _uss_echo_width) (= (length (_uss_echo_width . bv)) 2)) ;; bignum
              (write-long (ash (elt (_uss_echo_width . bv) 0) 0) s)
              (write-long (ash (elt (_uss_echo_width . bv) 1) -1) s))
             ((and (class _uss_echo_width) (= (length (_uss_echo_width . bv)) 1)) ;; big1
              (write-long (elt (_uss_echo_width . bv) 0) s)
              (write-long (if (>= _uss_echo_width 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _uss_echo_width s)(write-long (if (>= _uss_echo_width 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _uss_echo_distance
     (setq _uss_echo_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _uss_echo_width
     
#+(or :alpha :irix6 :x86_64)
      (setf _uss_echo_width (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _uss_echo_width (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicEhcoInfo :md5sum-) "0374e629b521929a28504f82c65b703d")
(setf (get sensor_interface_msgs::UltrasonicEhcoInfo :datatype-) "sensor_interface_msgs/UltrasonicEhcoInfo")
(setf (get sensor_interface_msgs::UltrasonicEhcoInfo :definition-)
      "float32 uss_echo_distance
uint64 uss_echo_width

")



(provide :sensor_interface_msgs/UltrasonicEhcoInfo "0374e629b521929a28504f82c65b703d")


