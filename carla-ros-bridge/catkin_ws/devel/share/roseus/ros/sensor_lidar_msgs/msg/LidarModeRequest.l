;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarModeRequest)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarModeRequest (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARMODEREQUEST")
  (make-package "SENSOR_LIDAR_MSGS::LIDARMODEREQUEST"))

(in-package "ROS")
;;//! \htmlinclude LidarModeRequest.msg.html


(defclass sensor_lidar_msgs::LidarModeRequest
  :super ros::object
  :slots (_id _mode ))

(defmethod sensor_lidar_msgs::LidarModeRequest
  (:init
   (&key
    ((:id __id) (instance sensor_lidar_msgs::LidarID :init))
    ((:mode __mode) (instance sensor_lidar_msgs::LidarMode :init))
    )
   (send-super :init)
   (setq _id __id)
   (setq _mode __mode)
   self)
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarID _id
    (send _id :serialization-length)
    ;; sensor_lidar_msgs/LidarMode _mode
    (send _mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarID _id
       (send _id :serialize s)
     ;; sensor_lidar_msgs/LidarMode _mode
       (send _mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarID _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;; sensor_lidar_msgs/LidarMode _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarModeRequest :md5sum-) "4444835642b6c551bb1faa8245470185")
(setf (get sensor_lidar_msgs::LidarModeRequest :datatype-) "sensor_lidar_msgs/LidarModeRequest")
(setf (get sensor_lidar_msgs::LidarModeRequest :definition-)
      "sensor_lidar_msgs/LidarID id
sensor_lidar_msgs/LidarMode mode

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
MSG: sensor_lidar_msgs/LidarMode
uint8 Normal_Mode = 0
uint8 EOL_Calibration_Mode = 1
uint8 AfterSale_Calibration_Mode = 2
uint8 SuperEco = 3
uint8 StandBy = 4
uint8 PlayBack = 5
uint8 Reserved = 6
uint8 value

")



(provide :sensor_lidar_msgs/LidarModeRequest "4444835642b6c551bb1faa8245470185")


