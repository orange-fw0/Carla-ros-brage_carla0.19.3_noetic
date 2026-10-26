;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarCalibrationResult)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarCalibrationResult (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONRESULT")
  (make-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibrationResult.msg.html


(defclass sensor_lidar_msgs::LidarCalibrationResult
  :super ros::object
  :slots (_id _calib_result _horizont_result _rotation_result _canmsg_result ))

(defmethod sensor_lidar_msgs::LidarCalibrationResult
  (:init
   (&key
    ((:id __id) (instance sensor_lidar_msgs::LidarID :init))
    ((:calib_result __calib_result) (instance sensor_lidar_msgs::LidarCalibResult :init))
    ((:horizont_result __horizont_result) (instance sensor_lidar_msgs::LidarHorizontResult :init))
    ((:rotation_result __rotation_result) (instance sensor_lidar_msgs::LidarRotationResult :init))
    ((:canmsg_result __canmsg_result) 0)
    )
   (send-super :init)
   (setq _id __id)
   (setq _calib_result __calib_result)
   (setq _horizont_result __horizont_result)
   (setq _rotation_result __rotation_result)
   (setq _canmsg_result (round __canmsg_result))
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:calib_result
   (&rest __calib_result)
   (if (keywordp (car __calib_result))
       (send* _calib_result __calib_result)
     (progn
       (if __calib_result (setq _calib_result (car __calib_result)))
       _calib_result)))
  (:horizont_result
   (&rest __horizont_result)
   (if (keywordp (car __horizont_result))
       (send* _horizont_result __horizont_result)
     (progn
       (if __horizont_result (setq _horizont_result (car __horizont_result)))
       _horizont_result)))
  (:rotation_result
   (&rest __rotation_result)
   (if (keywordp (car __rotation_result))
       (send* _rotation_result __rotation_result)
     (progn
       (if __rotation_result (setq _rotation_result (car __rotation_result)))
       _rotation_result)))
  (:canmsg_result
   (&optional __canmsg_result)
   (if __canmsg_result (setq _canmsg_result __canmsg_result)) _canmsg_result)
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarID _id
    (send _id :serialization-length)
    ;; sensor_lidar_msgs/LidarCalibResult _calib_result
    (send _calib_result :serialization-length)
    ;; sensor_lidar_msgs/LidarHorizontResult _horizont_result
    (send _horizont_result :serialization-length)
    ;; sensor_lidar_msgs/LidarRotationResult _rotation_result
    (send _rotation_result :serialization-length)
    ;; uint8 _canmsg_result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarID _id
       (send _id :serialize s)
     ;; sensor_lidar_msgs/LidarCalibResult _calib_result
       (send _calib_result :serialize s)
     ;; sensor_lidar_msgs/LidarHorizontResult _horizont_result
       (send _horizont_result :serialize s)
     ;; sensor_lidar_msgs/LidarRotationResult _rotation_result
       (send _rotation_result :serialize s)
     ;; uint8 _canmsg_result
       (write-byte _canmsg_result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; sensor_lidar_msgs/LidarCalibResult _calib_result
     (send _calib_result :deserialize buf ptr-) (incf ptr- (send _calib_result :serialization-length))
   ;; sensor_lidar_msgs/LidarHorizontResult _horizont_result
     (send _horizont_result :deserialize buf ptr-) (incf ptr- (send _horizont_result :serialization-length))
   ;; sensor_lidar_msgs/LidarRotationResult _rotation_result
     (send _rotation_result :deserialize buf ptr-) (incf ptr- (send _rotation_result :serialization-length))
   ;; uint8 _canmsg_result
     (setq _canmsg_result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarCalibrationResult :md5sum-) "8e6048ce2b872ab46e98e1163301603d")
(setf (get sensor_lidar_msgs::LidarCalibrationResult :datatype-) "sensor_lidar_msgs/LidarCalibrationResult")
(setf (get sensor_lidar_msgs::LidarCalibrationResult :definition-)
      "sensor_lidar_msgs/LidarID id
sensor_lidar_msgs/LidarCalibResult calib_result
sensor_lidar_msgs/LidarHorizontResult horizont_result
sensor_lidar_msgs/LidarRotationResult rotation_result
uint8 canmsg_result

================================================================================
MSG: sensor_lidar_msgs/LidarID
uint32 None = 0
uint32 Front_Left = 1
uint32 Front_Right = 2
uint32 Middle_Left = 4
uint32 Middle_Right = 8
uint32 Rear_Left = 16
uint32 Rear_Right = 32
uint32 Front_Down = 64
uint32 Front_Up = 128
uint32 Rear_Down = 256
uint32 Rear_Up = 512
uint32 Centre = 1024
uint32 value

================================================================================
MSG: sensor_lidar_msgs/LidarCalibResult
uint8 value

================================================================================
MSG: sensor_lidar_msgs/LidarHorizontResult
uint8 value

================================================================================
MSG: sensor_lidar_msgs/LidarRotationResult
uint8 value

")



(provide :sensor_lidar_msgs/LidarCalibrationResult "8e6048ce2b872ab46e98e1163301603d")


