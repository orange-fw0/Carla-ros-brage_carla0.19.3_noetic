;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarErrorStatus)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarErrorStatus (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARERRORSTATUS")
  (make-package "SENSOR_LIDAR_MSGS::LIDARERRORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LidarErrorStatus.msg.html


(defclass sensor_lidar_msgs::LidarErrorStatus
  :super ros::object
  :slots (_status ))

(defmethod sensor_lidar_msgs::LidarErrorStatus
  (:init
   (&key
    ((:status __status) ())
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarErrorReport[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarErrorReport[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarErrorReport[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (let (r) (dotimes (i n) (push (instance sensor_lidar_msgs::LidarErrorReport :init) r)) r))
     (dolist (elem- _status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarErrorStatus :md5sum-) "a1b605ada709c81bf6788f8ef8da4154")
(setf (get sensor_lidar_msgs::LidarErrorStatus :datatype-) "sensor_lidar_msgs/LidarErrorStatus")
(setf (get sensor_lidar_msgs::LidarErrorStatus :definition-)
      "sensor_lidar_msgs/LidarErrorReport[] status

================================================================================
MSG: sensor_lidar_msgs/LidarErrorReport
uint32 Normal = 0
uint32 Hardware_error = 1
uint32 WindowContamination_Err = 2
uint32 FailSafe_error = 3
uint32 No_Calibration_error = 4
sensor_lidar_msgs/LidarID id
uint32 error_mode

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

")



(provide :sensor_lidar_msgs/LidarErrorStatus "a1b605ada709c81bf6788f8ef8da4154")


