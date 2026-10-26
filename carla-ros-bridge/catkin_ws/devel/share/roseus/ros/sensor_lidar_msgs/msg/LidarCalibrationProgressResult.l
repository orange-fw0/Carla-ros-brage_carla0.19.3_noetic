;; Auto-generated. Do not edit!


(when (boundp 'sensor_lidar_msgs::LidarCalibrationProgressResult)
  (if (not (find-package "SENSOR_LIDAR_MSGS"))
    (make-package "SENSOR_LIDAR_MSGS"))
  (shadow 'LidarCalibrationProgressResult (find-package "SENSOR_LIDAR_MSGS")))
(unless (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT")
  (make-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibrationProgressResult.msg.html


(intern "*NONE*" (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(shadow '*NONE* (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(defconstant sensor_lidar_msgs::LidarCalibrationProgressResult::*NONE* 0)
(intern "*INIT*" (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(shadow '*INIT* (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(defconstant sensor_lidar_msgs::LidarCalibrationProgressResult::*INIT* 1)
(intern "*ONGOING*" (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(shadow '*ONGOING* (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(defconstant sensor_lidar_msgs::LidarCalibrationProgressResult::*ONGOING* 2)
(intern "*COMPLETE_SUCCESSFUL*" (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(shadow '*COMPLETE_SUCCESSFUL* (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(defconstant sensor_lidar_msgs::LidarCalibrationProgressResult::*COMPLETE_SUCCESSFUL* 3)
(intern "*COMPLETE_WITH_ERROR*" (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(shadow '*COMPLETE_WITH_ERROR* (find-package "SENSOR_LIDAR_MSGS::LIDARCALIBRATIONPROGRESSRESULT"))
(defconstant sensor_lidar_msgs::LidarCalibrationProgressResult::*COMPLETE_WITH_ERROR* 4)

(defun sensor_lidar_msgs::LidarCalibrationProgressResult-to-symbol (const)
  (cond
        ((= const 0) 'sensor_lidar_msgs::LidarCalibrationProgressResult::*None*)
        ((= const 1) 'sensor_lidar_msgs::LidarCalibrationProgressResult::*Init*)
        ((= const 2) 'sensor_lidar_msgs::LidarCalibrationProgressResult::*Ongoing*)
        ((= const 3) 'sensor_lidar_msgs::LidarCalibrationProgressResult::*Complete_Successful*)
        ((= const 4) 'sensor_lidar_msgs::LidarCalibrationProgressResult::*Complete_With_Error*)
        (t nil)))

(defclass sensor_lidar_msgs::LidarCalibrationProgressResult
  :super ros::object
  :slots (_value ))

(defmethod sensor_lidar_msgs::LidarCalibrationProgressResult
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get sensor_lidar_msgs::LidarCalibrationProgressResult :md5sum-) "930f2fdef13c3190fdbeda7406771f57")
(setf (get sensor_lidar_msgs::LidarCalibrationProgressResult :datatype-) "sensor_lidar_msgs/LidarCalibrationProgressResult")
(setf (get sensor_lidar_msgs::LidarCalibrationProgressResult :definition-)
      "uint8 None = 0
uint8 Init = 1
uint8 Ongoing = 2
uint8 Complete_Successful = 3
uint8 Complete_With_Error = 4
uint8 value

")



(provide :sensor_lidar_msgs/LidarCalibrationProgressResult "930f2fdef13c3190fdbeda7406771f57")


