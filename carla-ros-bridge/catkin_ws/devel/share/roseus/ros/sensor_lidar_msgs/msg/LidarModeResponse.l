;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarModeResponse)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarModeResponse (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARMODERESPONSE")
  (make-package "SENSOR_LIDAR_MSGS::LIDARMODERESPONSE"))

(in-package "ROS")
;;//! \htmlinclude LidarModeResponse.msg.html


(defclass sensor_lidar_msgs::LidarModeResponse
  :super ros::object
  :slots (_lidar_mode_resp ))

(defmethod sensor_lidar_msgs::LidarModeResponse
  (:init
   (&key
    ((:lidar_mode_resp __lidar_mode_resp) ())
    )
   (send-super :init)
   (setq _lidar_mode_resp __lidar_mode_resp)
   self)
  (:lidar_mode_resp
   (&rest __lidar_mode_resp)
   (if (keywordp (car __lidar_mode_resp))
       (send* _lidar_mode_resp __lidar_mode_resp)
     (progn
       (if __lidar_mode_resp (setq _lidar_mode_resp (car __lidar_mode_resp)))
       _lidar_mode_resp)))
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarModeRequest[] _lidar_mode_resp
    (apply #'+ (send-all _lidar_mode_resp :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarModeRequest[] _lidar_mode_resp
     (write-long (length _lidar_mode_resp) s)
     (dolist (elem _lidar_mode_resp)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarModeRequest[] _lidar_mode_resp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lidar_mode_resp (let (r) (dotimes (i n) (push (instance sensor_lidar_msgs::LidarModeRequest :init) r)) r))
     (dolist (elem- _lidar_mode_resp)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarModeResponse :md5sum-) "12056cea15bb46bc31740a59f297ae72")
(setf (get sensor_lidar_msgs::LidarModeResponse :datatype-) "sensor_lidar_msgs/LidarModeResponse")
(setf (get sensor_lidar_msgs::LidarModeResponse :definition-)
      "sensor_lidar_msgs/LidarModeRequest[] lidar_mode_resp

================================================================================
MSG: sensor_lidar_msgs/LidarModeRequest
sensor_lidar_msgs/LidarID id
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



(provide :sensor_lidar_msgs/LidarModeResponse "12056cea15bb46bc31740a59f297ae72")


