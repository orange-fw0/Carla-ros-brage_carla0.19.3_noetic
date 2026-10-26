;; Auto-generated. Do not edit!


(when (boundp 'gps_imu_msgs::MLAGnssBasic)
  (if (not (find-package "GPS_IMU_MSGS"))
    (make-package "GPS_IMU_MSGS"))
  (shadow 'MLAGnssBasic (find-package "GPS_IMU_MSGS")))
(unless (find-package "GPS_IMU_MSGS::MLAGNSSBASIC")
  (make-package "GPS_IMU_MSGS::MLAGNSSBASIC"))

(in-package "ROS")
;;//! \htmlinclude MLAGnssBasic.msg.html


(defclass gps_imu_msgs::MLAGnssBasic
  :super ros::object
  :slots (_lat _lon _alt _vel_e _vel_n _vel_u _azi_track _speed _status _msg_type _sat_num _hdop _rtk_age _sec_in_gps_week _gps_week _utc_time ))

(defmethod gps_imu_msgs::MLAGnssBasic
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:vel_e __vel_e) 0.0)
    ((:vel_n __vel_n) 0.0)
    ((:vel_u __vel_u) 0.0)
    ((:azi_track __azi_track) 0.0)
    ((:speed __speed) 0.0)
    ((:status __status) 0)
    ((:msg_type __msg_type) 0)
    ((:sat_num __sat_num) 0)
    ((:hdop __hdop) 0.0)
    ((:rtk_age __rtk_age) 0.0)
    ((:sec_in_gps_week __sec_in_gps_week) 0.0)
    ((:gps_week __gps_week) 0)
    ((:utc_time __utc_time) 0.0)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _vel_e (float __vel_e))
   (setq _vel_n (float __vel_n))
   (setq _vel_u (float __vel_u))
   (setq _azi_track (float __azi_track))
   (setq _speed (float __speed))
   (setq _status (round __status))
   (setq _msg_type (round __msg_type))
   (setq _sat_num (round __sat_num))
   (setq _hdop (float __hdop))
   (setq _rtk_age (float __rtk_age))
   (setq _sec_in_gps_week (float __sec_in_gps_week))
   (setq _gps_week (round __gps_week))
   (setq _utc_time (float __utc_time))
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:vel_e
   (&optional __vel_e)
   (if __vel_e (setq _vel_e __vel_e)) _vel_e)
  (:vel_n
   (&optional __vel_n)
   (if __vel_n (setq _vel_n __vel_n)) _vel_n)
  (:vel_u
   (&optional __vel_u)
   (if __vel_u (setq _vel_u __vel_u)) _vel_u)
  (:azi_track
   (&optional __azi_track)
   (if __azi_track (setq _azi_track __azi_track)) _azi_track)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:msg_type
   (&optional __msg_type)
   (if __msg_type (setq _msg_type __msg_type)) _msg_type)
  (:sat_num
   (&optional __sat_num)
   (if __sat_num (setq _sat_num __sat_num)) _sat_num)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:rtk_age
   (&optional __rtk_age)
   (if __rtk_age (setq _rtk_age __rtk_age)) _rtk_age)
  (:sec_in_gps_week
   (&optional __sec_in_gps_week)
   (if __sec_in_gps_week (setq _sec_in_gps_week __sec_in_gps_week)) _sec_in_gps_week)
  (:gps_week
   (&optional __gps_week)
   (if __gps_week (setq _gps_week __gps_week)) _gps_week)
  (:utc_time
   (&optional __utc_time)
   (if __utc_time (setq _utc_time __utc_time)) _utc_time)
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ;; float64 _vel_e
    8
    ;; float64 _vel_n
    8
    ;; float64 _vel_u
    8
    ;; float64 _azi_track
    8
    ;; float64 _speed
    8
    ;; int8 _status
    1
    ;; int8 _msg_type
    1
    ;; int16 _sat_num
    2
    ;; float64 _hdop
    8
    ;; float64 _rtk_age
    8
    ;; float64 _sec_in_gps_week
    8
    ;; uint16 _gps_week
    2
    ;; float64 _utc_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_e
       (sys::poke _vel_e (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_n
       (sys::poke _vel_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_u
       (sys::poke _vel_u (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _azi_track
       (sys::poke _azi_track (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _status
       (write-byte _status s)
     ;; int8 _msg_type
       (write-byte _msg_type s)
     ;; int16 _sat_num
       (write-word _sat_num s)
     ;; float64 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rtk_age
       (sys::poke _rtk_age (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sec_in_gps_week
       (sys::poke _sec_in_gps_week (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _gps_week
       (write-word _gps_week s)
     ;; float64 _utc_time
       (sys::poke _utc_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_e
     (setq _vel_e (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_n
     (setq _vel_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_u
     (setq _vel_u (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _azi_track
     (setq _azi_track (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; int8 _msg_type
     (setq _msg_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _msg_type 127) (setq _msg_type (- _msg_type 256)))
   ;; int16 _sat_num
     (setq _sat_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _hdop
     (setq _hdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rtk_age
     (setq _rtk_age (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sec_in_gps_week
     (setq _sec_in_gps_week (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _gps_week
     (setq _gps_week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _utc_time
     (setq _utc_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gps_imu_msgs::MLAGnssBasic :md5sum-) "867555bcf22fe3ccc66b8a6449df4ab6")
(setf (get gps_imu_msgs::MLAGnssBasic :datatype-) "gps_imu_msgs/MLAGnssBasic")
(setf (get gps_imu_msgs::MLAGnssBasic :definition-)
      "float64 lat
float64 lon
float64 alt
float64 vel_e
float64 vel_n
float64 vel_u
float64 azi_track
float64 speed
int8 status
int8 msg_type
int16 sat_num
float64 hdop
float64 rtk_age
float64 sec_in_gps_week
uint16 gps_week
float64 utc_time

")



(provide :gps_imu_msgs/MLAGnssBasic "867555bcf22fe3ccc66b8a6449df4ab6")


