;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicObstacleInfo)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicObstacleInfo (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBSTACLEINFO")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICOBSTACLEINFO"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicObstacleInfo.msg.html


(defclass sensor_interface_msgs::UltrasonicObstacleInfo
  :super ros::object
  :slots (_timestamp _key_point_probability _obstacle_key_point_data ))

(defmethod sensor_interface_msgs::UltrasonicObstacleInfo
  (:init
   (&key
    ((:timestamp __timestamp) 0)
    ((:key_point_probability __key_point_probability) 0.0)
    ((:obstacle_key_point_data __obstacle_key_point_data) ())
    )
   (send-super :init)
   (setq _timestamp (round __timestamp))
   (setq _key_point_probability (float __key_point_probability))
   (setq _obstacle_key_point_data __obstacle_key_point_data)
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:key_point_probability
   (&optional __key_point_probability)
   (if __key_point_probability (setq _key_point_probability __key_point_probability)) _key_point_probability)
  (:obstacle_key_point_data
   (&rest __obstacle_key_point_data)
   (if (keywordp (car __obstacle_key_point_data))
       (send* _obstacle_key_point_data __obstacle_key_point_data)
     (progn
       (if __obstacle_key_point_data (setq _obstacle_key_point_data (car __obstacle_key_point_data)))
       _obstacle_key_point_data)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp
    8
    ;; float32 _key_point_probability
    4
    ;; sensor_interface_msgs/ObstacleKeyPointData[] _obstacle_key_point_data
    (apply #'+ (send-all _obstacle_key_point_data :serialization-length)) 4
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
     ;; float32 _key_point_probability
       (sys::poke _key_point_probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_interface_msgs/ObstacleKeyPointData[] _obstacle_key_point_data
     (write-long (length _obstacle_key_point_data) s)
     (dolist (elem _obstacle_key_point_data)
       (send elem :serialize s)
       )
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
   ;; float32 _key_point_probability
     (setq _key_point_probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_interface_msgs/ObstacleKeyPointData[] _obstacle_key_point_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_key_point_data (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::ObstacleKeyPointData :init) r)) r))
     (dolist (elem- _obstacle_key_point_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicObstacleInfo :md5sum-) "6e8b0d9d7e8e55821c1821c59296e611")
(setf (get sensor_interface_msgs::UltrasonicObstacleInfo :datatype-) "sensor_interface_msgs/UltrasonicObstacleInfo")
(setf (get sensor_interface_msgs::UltrasonicObstacleInfo :definition-)
      "uint64 timestamp
float32 key_point_probability
sensor_interface_msgs/ObstacleKeyPointData[] obstacle_key_point_data

================================================================================
MSG: sensor_interface_msgs/ObstacleKeyPointData
float32 point_x
float32 point_y

")



(provide :sensor_interface_msgs/UltrasonicObstacleInfo "6e8b0d9d7e8e55821c1821c59296e611")


