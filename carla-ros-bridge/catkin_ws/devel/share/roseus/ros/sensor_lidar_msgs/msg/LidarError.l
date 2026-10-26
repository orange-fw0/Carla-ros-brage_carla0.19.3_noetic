;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarError)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarError (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARERROR")
  (make-package "SENSOR_LIDAR_MSGS::LIDARERROR"))

(in-package "ROS")
;;//! \htmlinclude LidarError.msg.html


(defclass sensor_lidar_msgs::LidarError
  :super ros::object
  :slots (_MemsIntialization_Err _MemsOperating_Err _LidarTransmitting_Err _LidarReceiving_Err _Lidar_Fusa_Err _WindowContamination_Err _SunBlind_Err _WindowHeating_Err _LidarInternal_Err _LidarExternal_Err _LidarInternal_Volt_Err _Lidar_Temp_Err _Clock_Err _Sync_Err _reserved1 _reserved2 ))

(defmethod sensor_lidar_msgs::LidarError
  (:init
   (&key
    ((:MemsIntialization_Err __MemsIntialization_Err) 0)
    ((:MemsOperating_Err __MemsOperating_Err) 0)
    ((:LidarTransmitting_Err __LidarTransmitting_Err) 0)
    ((:LidarReceiving_Err __LidarReceiving_Err) 0)
    ((:Lidar_Fusa_Err __Lidar_Fusa_Err) 0)
    ((:WindowContamination_Err __WindowContamination_Err) 0)
    ((:SunBlind_Err __SunBlind_Err) 0)
    ((:WindowHeating_Err __WindowHeating_Err) 0)
    ((:LidarInternal_Err __LidarInternal_Err) 0)
    ((:LidarExternal_Err __LidarExternal_Err) 0)
    ((:LidarInternal_Volt_Err __LidarInternal_Volt_Err) 0)
    ((:Lidar_Temp_Err __Lidar_Temp_Err) 0)
    ((:Clock_Err __Clock_Err) 0)
    ((:Sync_Err __Sync_Err) 0)
    ((:reserved1 __reserved1) 0)
    ((:reserved2 __reserved2) 0)
    )
   (send-super :init)
   (setq _MemsIntialization_Err (round __MemsIntialization_Err))
   (setq _MemsOperating_Err (round __MemsOperating_Err))
   (setq _LidarTransmitting_Err (round __LidarTransmitting_Err))
   (setq _LidarReceiving_Err (round __LidarReceiving_Err))
   (setq _Lidar_Fusa_Err (round __Lidar_Fusa_Err))
   (setq _WindowContamination_Err (round __WindowContamination_Err))
   (setq _SunBlind_Err (round __SunBlind_Err))
   (setq _WindowHeating_Err (round __WindowHeating_Err))
   (setq _LidarInternal_Err (round __LidarInternal_Err))
   (setq _LidarExternal_Err (round __LidarExternal_Err))
   (setq _LidarInternal_Volt_Err (round __LidarInternal_Volt_Err))
   (setq _Lidar_Temp_Err (round __Lidar_Temp_Err))
   (setq _Clock_Err (round __Clock_Err))
   (setq _Sync_Err (round __Sync_Err))
   (setq _reserved1 (round __reserved1))
   (setq _reserved2 (round __reserved2))
   self)
  (:MemsIntialization_Err
   (&optional __MemsIntialization_Err)
   (if __MemsIntialization_Err (setq _MemsIntialization_Err __MemsIntialization_Err)) _MemsIntialization_Err)
  (:MemsOperating_Err
   (&optional __MemsOperating_Err)
   (if __MemsOperating_Err (setq _MemsOperating_Err __MemsOperating_Err)) _MemsOperating_Err)
  (:LidarTransmitting_Err
   (&optional __LidarTransmitting_Err)
   (if __LidarTransmitting_Err (setq _LidarTransmitting_Err __LidarTransmitting_Err)) _LidarTransmitting_Err)
  (:LidarReceiving_Err
   (&optional __LidarReceiving_Err)
   (if __LidarReceiving_Err (setq _LidarReceiving_Err __LidarReceiving_Err)) _LidarReceiving_Err)
  (:Lidar_Fusa_Err
   (&optional __Lidar_Fusa_Err)
   (if __Lidar_Fusa_Err (setq _Lidar_Fusa_Err __Lidar_Fusa_Err)) _Lidar_Fusa_Err)
  (:WindowContamination_Err
   (&optional __WindowContamination_Err)
   (if __WindowContamination_Err (setq _WindowContamination_Err __WindowContamination_Err)) _WindowContamination_Err)
  (:SunBlind_Err
   (&optional __SunBlind_Err)
   (if __SunBlind_Err (setq _SunBlind_Err __SunBlind_Err)) _SunBlind_Err)
  (:WindowHeating_Err
   (&optional __WindowHeating_Err)
   (if __WindowHeating_Err (setq _WindowHeating_Err __WindowHeating_Err)) _WindowHeating_Err)
  (:LidarInternal_Err
   (&optional __LidarInternal_Err)
   (if __LidarInternal_Err (setq _LidarInternal_Err __LidarInternal_Err)) _LidarInternal_Err)
  (:LidarExternal_Err
   (&optional __LidarExternal_Err)
   (if __LidarExternal_Err (setq _LidarExternal_Err __LidarExternal_Err)) _LidarExternal_Err)
  (:LidarInternal_Volt_Err
   (&optional __LidarInternal_Volt_Err)
   (if __LidarInternal_Volt_Err (setq _LidarInternal_Volt_Err __LidarInternal_Volt_Err)) _LidarInternal_Volt_Err)
  (:Lidar_Temp_Err
   (&optional __Lidar_Temp_Err)
   (if __Lidar_Temp_Err (setq _Lidar_Temp_Err __Lidar_Temp_Err)) _Lidar_Temp_Err)
  (:Clock_Err
   (&optional __Clock_Err)
   (if __Clock_Err (setq _Clock_Err __Clock_Err)) _Clock_Err)
  (:Sync_Err
   (&optional __Sync_Err)
   (if __Sync_Err (setq _Sync_Err __Sync_Err)) _Sync_Err)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:serialization-length
   ()
   (+
    ;; uint8 _MemsIntialization_Err
    1
    ;; uint8 _MemsOperating_Err
    1
    ;; uint8 _LidarTransmitting_Err
    1
    ;; uint8 _LidarReceiving_Err
    1
    ;; uint8 _Lidar_Fusa_Err
    1
    ;; uint8 _WindowContamination_Err
    1
    ;; uint8 _SunBlind_Err
    1
    ;; uint8 _WindowHeating_Err
    1
    ;; uint8 _LidarInternal_Err
    1
    ;; uint8 _LidarExternal_Err
    1
    ;; uint8 _LidarInternal_Volt_Err
    1
    ;; uint32 _Lidar_Temp_Err
    4
    ;; uint8 _Clock_Err
    1
    ;; uint8 _Sync_Err
    1
    ;; uint8 _reserved1
    1
    ;; uint8 _reserved2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _MemsIntialization_Err
       (write-byte _MemsIntialization_Err s)
     ;; uint8 _MemsOperating_Err
       (write-byte _MemsOperating_Err s)
     ;; uint8 _LidarTransmitting_Err
       (write-byte _LidarTransmitting_Err s)
     ;; uint8 _LidarReceiving_Err
       (write-byte _LidarReceiving_Err s)
     ;; uint8 _Lidar_Fusa_Err
       (write-byte _Lidar_Fusa_Err s)
     ;; uint8 _WindowContamination_Err
       (write-byte _WindowContamination_Err s)
     ;; uint8 _SunBlind_Err
       (write-byte _SunBlind_Err s)
     ;; uint8 _WindowHeating_Err
       (write-byte _WindowHeating_Err s)
     ;; uint8 _LidarInternal_Err
       (write-byte _LidarInternal_Err s)
     ;; uint8 _LidarExternal_Err
       (write-byte _LidarExternal_Err s)
     ;; uint8 _LidarInternal_Volt_Err
       (write-byte _LidarInternal_Volt_Err s)
     ;; uint32 _Lidar_Temp_Err
       (write-long _Lidar_Temp_Err s)
     ;; uint8 _Clock_Err
       (write-byte _Clock_Err s)
     ;; uint8 _Sync_Err
       (write-byte _Sync_Err s)
     ;; uint8 _reserved1
       (write-byte _reserved1 s)
     ;; uint8 _reserved2
       (write-byte _reserved2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _MemsIntialization_Err
     (setq _MemsIntialization_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _MemsOperating_Err
     (setq _MemsOperating_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LidarTransmitting_Err
     (setq _LidarTransmitting_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LidarReceiving_Err
     (setq _LidarReceiving_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Lidar_Fusa_Err
     (setq _Lidar_Fusa_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WindowContamination_Err
     (setq _WindowContamination_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SunBlind_Err
     (setq _SunBlind_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _WindowHeating_Err
     (setq _WindowHeating_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LidarInternal_Err
     (setq _LidarInternal_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LidarExternal_Err
     (setq _LidarExternal_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LidarInternal_Volt_Err
     (setq _LidarInternal_Volt_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _Lidar_Temp_Err
     (setq _Lidar_Temp_Err (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _Clock_Err
     (setq _Clock_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Sync_Err
     (setq _Sync_Err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarError :md5sum-) "6a95160d0c9ab50db5596dcb007fb02d")
(setf (get sensor_lidar_msgs::LidarError :datatype-) "sensor_lidar_msgs/LidarError")
(setf (get sensor_lidar_msgs::LidarError :definition-)
      "uint8 MemsIntialization_Err
uint8 MemsOperating_Err
uint8 LidarTransmitting_Err
uint8 LidarReceiving_Err
uint8 Lidar_Fusa_Err
uint8 WindowContamination_Err
uint8 SunBlind_Err
uint8 WindowHeating_Err
uint8 LidarInternal_Err
uint8 LidarExternal_Err
uint8 LidarInternal_Volt_Err
uint32 Lidar_Temp_Err
uint8 Clock_Err
uint8 Sync_Err
uint8 reserved1
uint8 reserved2

")



(provide :sensor_lidar_msgs/LidarError "6a95160d0c9ab50db5596dcb007fb02d")


