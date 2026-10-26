;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelDrvTorqueReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelDrvTorqueReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELDRVTORQUEREPORT")
  (make-package "ENDPOINT_MSGS::WHEELDRVTORQUEREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelDrvTorqueReport.msg.html


(intern "*WHEEL_DRV_TORQUE_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WHEELDRVTORQUEREPORT"))
(shadow '*WHEEL_DRV_TORQUE_REPORT_DATA* (find-package "ENDPOINT_MSGS::WHEELDRVTORQUEREPORT"))
(defconstant endpoint_msgs::WheelDrvTorqueReport::*WHEEL_DRV_TORQUE_REPORT_DATA* 1)

(defun endpoint_msgs::WheelDrvTorqueReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WheelDrvTorqueReport::*WHEEL_DRV_TORQUE_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WheelDrvTorqueReport
  :super ros::object
  :slots (_available _wheel_drv_torque_report_data ))

(defmethod endpoint_msgs::WheelDrvTorqueReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wheel_drv_torque_report_data __wheel_drv_torque_report_data) (instance endpoint_msgs::WheelDrvTorqueReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wheel_drv_torque_report_data __wheel_drv_torque_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wheel_drv_torque_report_data
   (&rest __wheel_drv_torque_report_data)
   (if (keywordp (car __wheel_drv_torque_report_data))
       (send* _wheel_drv_torque_report_data __wheel_drv_torque_report_data)
     (progn
       (if __wheel_drv_torque_report_data (setq _wheel_drv_torque_report_data (car __wheel_drv_torque_report_data)))
       _wheel_drv_torque_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WheelDrvTorqueReportData _wheel_drv_torque_report_data
    (send _wheel_drv_torque_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WheelDrvTorqueReportData _wheel_drv_torque_report_data
       (send _wheel_drv_torque_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WheelDrvTorqueReportData _wheel_drv_torque_report_data
     (send _wheel_drv_torque_report_data :deserialize buf ptr-) (incf ptr- (send _wheel_drv_torque_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelDrvTorqueReport :md5sum-) "9e0ffa65f38cffe9e048528b06ed464b")
(setf (get endpoint_msgs::WheelDrvTorqueReport :datatype-) "endpoint_msgs/WheelDrvTorqueReport")
(setf (get endpoint_msgs::WheelDrvTorqueReport :definition-)
      "uint8 WHEEL_DRV_TORQUE_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelDrvTorqueReportData wheel_drv_torque_report_data

================================================================================
MSG: endpoint_msgs/WheelDrvTorqueReportData
uint64 timestamp_us
float32 front_left
bool front_left_valid
float32 front_right
float32 front_right_valid
float32 rear_left
float32 rear_left_valid
float32 rear_right
float32 rear_right_valid

")



(provide :endpoint_msgs/WheelDrvTorqueReport "9e0ffa65f38cffe9e048528b06ed464b")


