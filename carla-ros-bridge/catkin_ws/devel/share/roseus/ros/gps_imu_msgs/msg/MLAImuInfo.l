;; Auto-generated. Do not edit!


(when (boundp 'gps_imu_msgs::MLAImuInfo)
  (if (not (find-package "GPS_IMU_MSGS"))
    (make-package "GPS_IMU_MSGS"))
  (shadow 'MLAImuInfo (find-package "GPS_IMU_MSGS")))
(unless (find-package "GPS_IMU_MSGS::MLAIMUINFO")
  (make-package "GPS_IMU_MSGS::MLAIMUINFO"))

(in-package "ROS")
;;//! \htmlinclude MLAImuInfo.msg.html


(intern "*MLA_IMU_BASIC*" (find-package "GPS_IMU_MSGS::MLAIMUINFO"))
(shadow '*MLA_IMU_BASIC* (find-package "GPS_IMU_MSGS::MLAIMUINFO"))
(defconstant gps_imu_msgs::MLAImuInfo::*MLA_IMU_BASIC* 1)

(defun gps_imu_msgs::MLAImuInfo-to-symbol (const)
  (cond
        ((= const 1) 'gps_imu_msgs::MLAImuInfo::*MLA_IMU_BASIC*)
        (t nil)))

(defclass gps_imu_msgs::MLAImuInfo
  :super ros::object
  :slots (_available _imu_data_basic ))

(defmethod gps_imu_msgs::MLAImuInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:imu_data_basic __imu_data_basic) (instance gps_imu_msgs::MLAImuBasic :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _imu_data_basic __imu_data_basic)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:imu_data_basic
   (&rest __imu_data_basic)
   (if (keywordp (car __imu_data_basic))
       (send* _imu_data_basic __imu_data_basic)
     (progn
       (if __imu_data_basic (setq _imu_data_basic (car __imu_data_basic)))
       _imu_data_basic)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; gps_imu_msgs/MLAImuBasic _imu_data_basic
    (send _imu_data_basic :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; gps_imu_msgs/MLAImuBasic _imu_data_basic
       (send _imu_data_basic :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; gps_imu_msgs/MLAImuBasic _imu_data_basic
     (send _imu_data_basic :deserialize buf ptr-) (incf ptr- (send _imu_data_basic :serialization-length))
   ;;
   self)
  )

(setf (get gps_imu_msgs::MLAImuInfo :md5sum-) "c958b67182ad72d78e12f405ff7a90a0")
(setf (get gps_imu_msgs::MLAImuInfo :datatype-) "gps_imu_msgs/MLAImuInfo")
(setf (get gps_imu_msgs::MLAImuInfo :definition-)
      "uint8 MLA_IMU_BASIC = 1
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



(provide :gps_imu_msgs/MLAImuInfo "c958b67182ad72d78e12f405ff7a90a0")


