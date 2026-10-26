;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarCalibrationResultResponse)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarCalibrationResultResponse (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONRESULTRESPONSE")
  (make-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONRESULTRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibrationResultResponse.msg.html


(defclass sensor_lidar_msgs::LidarCalibrationResultResponse
  :super ros::object
  :slots (_calib_result_res ))

(defmethod sensor_lidar_msgs::LidarCalibrationResultResponse
  (:init
   (&key
    ((:calib_result_res __calib_result_res) ())
    )
   (send-super :init)
   (setq _calib_result_res __calib_result_res)
   self)
  (:calib_result_res
   (&rest __calib_result_res)
   (if (keywordp (car __calib_result_res))
       (send* _calib_result_res __calib_result_res)
     (progn
       (if __calib_result_res (setq _calib_result_res (car __calib_result_res)))
       _calib_result_res)))
  (:serialization-length
   ()
   (+
    ;; sensor_lidar_msgs/LidarCalibrationResult[] _calib_result_res
    (apply #'+ (send-all _calib_result_res :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_lidar_msgs/LidarCalibrationResult[] _calib_result_res
     (write-long (length _calib_result_res) s)
     (dolist (elem _calib_result_res)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_lidar_msgs/LidarCalibrationResult[] _calib_result_res
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _calib_result_res (let (r) (dotimes (i n) (push (instance sensor_lidar_msgs::LidarCalibrationResult :init) r)) r))
     (dolist (elem- _calib_result_res)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarCalibrationResultResponse :md5sum-) "375ba0c54636d5e0250c6155c66c3ad0")
(setf (get sensor_lidar_msgs::LidarCalibrationResultResponse :datatype-) "sensor_lidar_msgs/LidarCalibrationResultResponse")
(setf (get sensor_lidar_msgs::LidarCalibrationResultResponse :definition-)
      "sensor_lidar_msgs/LidarCalibrationResult[] calib_result_res

================================================================================
MSG: sensor_lidar_msgs/LidarCalibrationResult
sensor_lidar_msgs/LidarID id
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



(provide :sensor_lidar_msgs/LidarCalibrationResultResponse "375ba0c54636d5e0250c6155c66c3ad0")


