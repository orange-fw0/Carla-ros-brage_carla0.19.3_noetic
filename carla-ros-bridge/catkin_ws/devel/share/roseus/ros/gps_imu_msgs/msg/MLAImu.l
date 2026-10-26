;; Auto-generated. Do not edit!


(when (boundp 'gps_imu_msgs::MLAImu)
  (if (not (find-package "GPS_IMU_MSGS"))
    (make-package "GPS_IMU_MSGS"))
  (shadow 'MLAImu (find-package "GPS_IMU_MSGS")))
(unless (find-package "GPS_IMU_MSGS::MLAIMU")
  (make-package "GPS_IMU_MSGS::MLAIMU"))

(in-package "ROS")
;;//! \htmlinclude MLAImu.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gps_imu_msgs::MLAImu
  :super ros::object
  :slots (_header _meta _info ))

(defmethod gps_imu_msgs::MLAImu
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance gps_imu_msgs::MLAImuMeta :init))
    ((:info __info) (instance gps_imu_msgs::MLAImuInfo :init))
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
    ;; gps_imu_msgs/MLAImuMeta _meta
    (send _meta :serialization-length)
    ;; gps_imu_msgs/MLAImuInfo _info
    (send _info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gps_imu_msgs/MLAImuMeta _meta
       (send _meta :serialize s)
     ;; gps_imu_msgs/MLAImuInfo _info
       (send _info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gps_imu_msgs/MLAImuMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; gps_imu_msgs/MLAImuInfo _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;;
   self)
  )

(setf (get gps_imu_msgs::MLAImu :md5sum-) "3acff02242d022ed9da7184ede468123")
(setf (get gps_imu_msgs::MLAImu :datatype-) "gps_imu_msgs/MLAImu")
(setf (get gps_imu_msgs::MLAImu :definition-)
      "std_msgs/Header header
gps_imu_msgs/MLAImuMeta meta
gps_imu_msgs/MLAImuInfo info

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
MSG: gps_imu_msgs/MLAImuMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: gps_imu_msgs/MLAImuInfo
uint8 MLA_IMU_BASIC = 1
uint8 available
gps_imu_msgs/MLAImuBasic imu_data_basic

================================================================================
MSG: gps_imu_msgs/MLAImuBasic
float64 accx
float64 accy
float64 accz
float64 gyrox
float64 gyroy
float64 gyroz
float64 temperature

")



(provide :gps_imu_msgs/MLAImu "3acff02242d022ed9da7184ede468123")


