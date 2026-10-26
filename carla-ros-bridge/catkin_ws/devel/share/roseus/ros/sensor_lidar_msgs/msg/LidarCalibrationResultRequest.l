;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarCalibrationResultRequest)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarCalibrationResultRequest (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONRESULTREQUEST")
  (make-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONRESULTREQUEST"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibrationResultRequest.msg.html


(defclass sensor_lidar_msgs::LidarCalibrationResultRequest
  :super ros::object
  :slots (_id _type ))

(defmethod sensor_lidar_msgs::LidarCalibrationResultRequest
  (:init
   (&key
    ((:id __id) (instance sensor_lidar_msgs::LidarID :init))
    ((:type __type) (instance sensor_lidar_msgs::LidarCalibrationType :init))
    )
   (send-super :init)
   (setq _id __id)
   (setq _type __type)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarID _id
    (send _id :serialization-length)
    ;; sensor_lidar_msgs/LidarCalibrationType _type
    (send _type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarID _id
       (send _id :serialize s)
     ;; sensor_lidar_msgs/LidarCalibrationType _type
       (send _type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; sensor_lidar_msgs/LidarCalibrationType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarCalibrationResultRequest :md5sum-) "7e7206c0906d50fe4cd21763dfcd82e9")
(setf (get sensor_lidar_msgs::LidarCalibrationResultRequest :datatype-) "sensor_lidar_msgs/LidarCalibrationResultRequest")
(setf (get sensor_lidar_msgs::LidarCalibrationResultRequest :definition-)
      "sensor_lidar_msgs/LidarID id
sensor_lidar_msgs/LidarCalibrationType type

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
MSG: sensor_lidar_msgs/LidarCalibrationType
uint8 None = 0
uint8 EOL_Calibration = 1
uint8 AfterSale_Calibration = 2
uint8 value

")



(provide :sensor_lidar_msgs/LidarCalibrationResultRequest "7e7206c0906d50fe4cd21763dfcd82e9")


