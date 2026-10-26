;; Auto-generated. Do not edit!


(when (boundp 'gps_imu_msgs::MLAGnssInfo)
  (if (not (find-package "GPS_IMU_MSGS"))
    (make-package "GPS_IMU_MSGS"))
  (shadow 'MLAGnssInfo (find-package "GPS_IMU_MSGS")))
(unless (find-package "GPS_IMU_MSGS::MLAGNSSINFO")
  (make-package "GPS_IMU_MSGS::MLAGNSSINFO"))

(in-package "ROS")
;;//! \htmlinclude MLAGnssInfo.msg.html


(intern "*MLA_GNSS_BASIC*" (find-package "GPS_IMU_MSGS::MLAGNSSINFO"))
(shadow '*MLA_GNSS_BASIC* (find-package "GPS_IMU_MSGS::MLAGNSSINFO"))
(defconstant gps_imu_msgs::MLAGnssInfo::*MLA_GNSS_BASIC* 1)
(intern "*MLA_GNSS_EXTEND*" (find-package "GPS_IMU_MSGS::MLAGNSSINFO"))
(shadow '*MLA_GNSS_EXTEND* (find-package "GPS_IMU_MSGS::MLAGNSSINFO"))
(defconstant gps_imu_msgs::MLAGnssInfo::*MLA_GNSS_EXTEND* 2)

(defun gps_imu_msgs::MLAGnssInfo-to-symbol (const)
  (cond
        ((= const 1) 'gps_imu_msgs::MLAGnssInfo::*MLA_GNSS_BASIC*)
        ((= const 2) 'gps_imu_msgs::MLAGnssInfo::*MLA_GNSS_EXTEND*)
        (t nil)))

(defclass gps_imu_msgs::MLAGnssInfo
  :super ros::object
  :slots (_available _gnss_data_basic _gnss_data_extend ))

(defmethod gps_imu_msgs::MLAGnssInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:gnss_data_basic __gnss_data_basic) (instance gps_imu_msgs::MLAGnssBasic :init))
    ((:gnss_data_extend __gnss_data_extend) (instance gps_imu_msgs::MLAGnssExtend :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _gnss_data_basic __gnss_data_basic)
   (setq _gnss_data_extend __gnss_data_extend)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:gnss_data_basic
   (&rest __gnss_data_basic)
   (if (keywordp (car __gnss_data_basic))
       (send* _gnss_data_basic __gnss_data_basic)
     (progn
       (if __gnss_data_basic (setq _gnss_data_basic (car __gnss_data_basic)))
       _gnss_data_basic)))
  (:gnss_data_extend
   (&rest __gnss_data_extend)
   (if (keywordp (car __gnss_data_extend))
       (send* _gnss_data_extend __gnss_data_extend)
     (progn
       (if __gnss_data_extend (setq _gnss_data_extend (car __gnss_data_extend)))
       _gnss_data_extend)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; gps_imu_msgs/MLAGnssBasic _gnss_data_basic
    (send _gnss_data_basic :serialization-length)
    ;; gps_imu_msgs/MLAGnssExtend _gnss_data_extend
    (send _gnss_data_extend :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; gps_imu_msgs/MLAGnssBasic _gnss_data_basic
       (send _gnss_data_basic :serialize s)
     ;; gps_imu_msgs/MLAGnssExtend _gnss_data_extend
       (send _gnss_data_extend :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; gps_imu_msgs/MLAGnssBasic _gnss_data_basic
     (send _gnss_data_basic :deserialize buf ptr-) (incf ptr- (send _gnss_data_basic :serialization-length))
   ;; gps_imu_msgs/MLAGnssExtend _gnss_data_extend
     (send _gnss_data_extend :deserialize buf ptr-) (incf ptr- (send _gnss_data_extend :serialization-length))
   ;;
   self)
  )

(setf (get gps_imu_msgs::MLAGnssInfo :md5sum-) "dd0fdd3d7d13e7ec21c780e65c672f57")
(setf (get gps_imu_msgs::MLAGnssInfo :datatype-) "gps_imu_msgs/MLAGnssInfo")
(setf (get gps_imu_msgs::MLAGnssInfo :definition-)
      "uint8 MLA_GNSS_BASIC = 1
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



(provide :gps_imu_msgs/MLAGnssInfo "dd0fdd3d7d13e7ec21c780e65c672f57")


