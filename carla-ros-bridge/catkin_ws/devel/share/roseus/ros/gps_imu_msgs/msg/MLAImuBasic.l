;; Auto-generated. Do not edit!


(when (boundp 'gps_imu_msgs::MLAImuBasic)
  (if (not (find-package "GPS_IMU_MSGS"))
    (make-package "GPS_IMU_MSGS"))
  (shadow 'MLAImuBasic (find-package "GPS_IMU_MSGS")))
(unless (find-package "GPS_IMU_MSGS::MLAIMUBASIC")
  (make-package "GPS_IMU_MSGS::MLAIMUBASIC"))

(in-package "ROS")
;;//! \htmlinclude MLAImuBasic.msg.html


(defclass gps_imu_msgs::MLAImuBasic
  :super ros::object
  :slots (_accx _accy _accz _gyrox _gyroy _gyroz _temperature ))

(defmethod gps_imu_msgs::MLAImuBasic
  (:init
   (&key
    ((:accx __accx) 0.0)
    ((:accy __accy) 0.0)
    ((:accz __accz) 0.0)
    ((:gyrox __gyrox) 0.0)
    ((:gyroy __gyroy) 0.0)
    ((:gyroz __gyroz) 0.0)
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _accx (float __accx))
   (setq _accy (float __accy))
   (setq _accz (float __accz))
   (setq _gyrox (float __gyrox))
   (setq _gyroy (float __gyroy))
   (setq _gyroz (float __gyroz))
   (setq _temperature (float __temperature))
   self)
  (:accx
   (&optional __accx)
   (if __accx (setq _accx __accx)) _accx)
  (:accy
   (&optional __accy)
   (if __accy (setq _accy __accy)) _accy)
  (:accz
   (&optional __accz)
   (if __accz (setq _accz __accz)) _accz)
  (:gyrox
   (&optional __gyrox)
   (if __gyrox (setq _gyrox __gyrox)) _gyrox)
  (:gyroy
   (&optional __gyroy)
   (if __gyroy (setq _gyroy __gyroy)) _gyroy)
  (:gyroz
   (&optional __gyroz)
   (if __gyroz (setq _gyroz __gyroz)) _gyroz)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; float64 _accx
    8
    ;; float64 _accy
    8
    ;; float64 _accz
    8
    ;; float64 _gyrox
    8
    ;; float64 _gyroy
    8
    ;; float64 _gyroz
    8
    ;; float64 _temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _accx
       (sys::poke _accx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accy
       (sys::poke _accy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _accz
       (sys::poke _accz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyrox
       (sys::poke _gyrox (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyroy
       (sys::poke _gyroy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gyroz
       (sys::poke _gyroz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _accx
     (setq _accx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accy
     (setq _accy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _accz
     (setq _accz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyrox
     (setq _gyrox (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyroy
     (setq _gyroy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gyroz
     (setq _gyroz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gps_imu_msgs::MLAImuBasic :md5sum-) "e48b0634009003373d93d35ff65e87fb")
(setf (get gps_imu_msgs::MLAImuBasic :datatype-) "gps_imu_msgs/MLAImuBasic")
(setf (get gps_imu_msgs::MLAImuBasic :definition-)
      "float64 accx
float64 accy
float64 accz
float64 gyrox
float64 gyroy
float64 gyroz
float64 temperature

")



(provide :gps_imu_msgs/MLAImuBasic "e48b0634009003373d93d35ff65e87fb")


