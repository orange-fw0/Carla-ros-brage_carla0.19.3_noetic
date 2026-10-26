;; Auto-generated. Do not edit!


(when (boundp 'gps_imu_msgs::MLAGnss)
  (if (not (find-package "GPS_IMU_MSGS"))
    (make-package "GPS_IMU_MSGS"))
  (shadow 'MLAGnss (find-package "GPS_IMU_MSGS")))
(unless (find-package "GPS_IMU_MSGS::MLAGNSS")
  (make-package "GPS_IMU_MSGS::MLAGNSS"))

(in-package "ROS")
;;//! \htmlinclude MLAGnss.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_imu_msgs::MLAGnss
  :super ros::object
  :slots (_header _meta _info ))

(defmethod gps_imu_msgs::MLAGnss
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance gps_imu_msgs::MLAGnssMeta :init))
    ((:info __info) (instance gps_imu_msgs::MLAGnssInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _info __info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gps_imu_msgs/MLAGnssMeta _meta
    (send _meta :serialization-length)
    ;; gps_imu_msgs/MLAGnssInfo _info
    (send _info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gps_imu_msgs/MLAGnssMeta _meta
       (send _meta :serialize s)
     ;; gps_imu_msgs/MLAGnssInfo _info
       (send _info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gps_imu_msgs/MLAGnssMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; gps_imu_msgs/MLAGnssInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;;
   self)
  )

(setf (get gps_imu_msgs::MLAGnss :md5sum-) "b5b1291bb25e18f6cd8b1f941c56771d")
(setf (get gps_imu_msgs::MLAGnss :datatype-) "gps_imu_msgs/MLAGnss")
(setf (get gps_imu_msgs::MLAGnss :definition-)
      "std_msgs/Header header
gps_imu_msgs/MLAGnssMeta meta
gps_imu_msgs/MLAGnssInfo info

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: gps_imu_msgs/MLAGnssMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: gps_imu_msgs/MLAGnssInfo
uint8 MLA_GNSS_BASIC = 1
uint8 MLA_GNSS_EXTEND = 2
uint8 available
gps_imu_msgs/MLAGnssBasic gnss_data_basic
gps_imu_msgs/MLAGnssExtend gnss_data_extend

================================================================================
MSG: gps_imu_msgs/MLAGnssBasic
float64 lat
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

================================================================================
MSG: gps_imu_msgs/MLAGnssExtend
int16 sv_num
int16[] sv_id
int16[] sv_elv
int16[] sv_az
int16[] sv_cno
float64 std_pe
float64 std_pn
float64 std_pu
float64 std_ve
float64 std_vn
float64 std_vu
float64 dual_antenna_azimuth
float64 pdop
float64 vdop
int8 fix_type
float64 alt_msl

")



(provide :gps_imu_msgs/MLAGnss "b5b1291bb25e18f6cd8b1f941c56771d")


