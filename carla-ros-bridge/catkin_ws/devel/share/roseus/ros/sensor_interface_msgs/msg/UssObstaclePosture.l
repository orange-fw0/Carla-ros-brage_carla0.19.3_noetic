;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssObstaclePosture)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssObstaclePosture (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSOBSTACLEPOSTURE")
  (make-package "SENSOR_INTERFACE_MSGS::USSOBSTACLEPOSTURE"))

(in-package "ROS")
;;//! \htmlinclude UssObstaclePosture.msg.html


(defclass sensor_interface_msgs::UssObstaclePosture
  :super ros::object
  :slots (_timestamp _posture_x _posture_y _posture_theta ))

(defmethod sensor_interface_msgs::UssObstaclePosture
  (:init
   (&key
    ((:timestamp __timestamp) 0)
    ((:posture_x __posture_x) 0.0)
    ((:posture_y __posture_y) 0.0)
    ((:posture_theta __posture_theta) 0.0)
    )
   (send-super :init)
   (setq _timestamp (round __timestamp))
   (setq _posture_x (float __posture_x))
   (setq _posture_y (float __posture_y))
   (setq _posture_theta (float __posture_theta))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:posture_x
   (&optional __posture_x)
   (if __posture_x (setq _posture_x __posture_x)) _posture_x)
  (:posture_y
   (&optional __posture_y)
   (if __posture_y (setq _posture_y __posture_y)) _posture_y)
  (:posture_theta
   (&optional __posture_theta)
   (if __posture_theta (setq _posture_theta __posture_theta)) _posture_theta)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp
    8
    ;; float32 _posture_x
    4
    ;; float32 _posture_y
    4
    ;; float32 _posture_theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp) (= (length (_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp . bv) 1) -1) s))
             ((and (class _timestamp) (= (length (_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_timestamp . bv) 0) s)
              (write-long (if (>= _timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp s)(write-long (if (>= _timestamp 0) 0 #xffffffff) s)))
     ;; float32 _posture_x
       (sys::poke _posture_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posture_y
       (sys::poke _posture_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _posture_theta
       (sys::poke _posture_theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _posture_x
     (setq _posture_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posture_y
     (setq _posture_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _posture_theta
     (setq _posture_theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssObstaclePosture :md5sum-) "a42b2261ec94328995ebab19d0158fc8")
(setf (get sensor_interface_msgs::UssObstaclePosture :datatype-) "sensor_interface_msgs/UssObstaclePosture")
(setf (get sensor_interface_msgs::UssObstaclePosture :definition-)
      "uint64 timestamp
float32 posture_x
float32 posture_y
float32 posture_theta

")



(provide :sensor_interface_msgs/UssObstaclePosture "a42b2261ec94328995ebab19d0158fc8")


