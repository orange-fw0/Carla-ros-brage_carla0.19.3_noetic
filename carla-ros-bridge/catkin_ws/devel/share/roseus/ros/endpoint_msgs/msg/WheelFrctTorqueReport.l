;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelFrctTorqueReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelFrctTorqueReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELFRCTTORQUEREPORT")
  (make-package "ENDPOINT_MSGS::WHEELFRCTTORQUEREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelFrctTorqueReport.msg.html


(intern "*WHEEL_FRCT_TORQUE_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WHEELFRCTTORQUEREPORT"))
(shadow '*WHEEL_FRCT_TORQUE_REPORT_DATA* (find-package "ENDPOINT_MSGS::WHEELFRCTTORQUEREPORT"))
(defconstant endpoint_msgs::WheelFrctTorqueReport::*WHEEL_FRCT_TORQUE_REPORT_DATA* 1)

(defun endpoint_msgs::WheelFrctTorqueReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WheelFrctTorqueReport::*WHEEL_FRCT_TORQUE_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WheelFrctTorqueReport
  :super ros::object
  :slots (_available _wheel_frct_torque_report_data ))

(defmethod endpoint_msgs::WheelFrctTorqueReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wheel_frct_torque_report_data __wheel_frct_torque_report_data) (instance endpoint_msgs::WheelFrctTorqueReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wheel_frct_torque_report_data __wheel_frct_torque_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wheel_frct_torque_report_data
   (&rest __wheel_frct_torque_report_data)
   (if (keywordp (car __wheel_frct_torque_report_data))
       (send* _wheel_frct_torque_report_data __wheel_frct_torque_report_data)
     (progn
       (if __wheel_frct_torque_report_data (setq _wheel_frct_torque_report_data (car __wheel_frct_torque_report_data)))
       _wheel_frct_torque_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WheelFrctTorqueReportData _wheel_frct_torque_report_data
    (send _wheel_frct_torque_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WheelFrctTorqueReportData _wheel_frct_torque_report_data
       (send _wheel_frct_torque_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WheelFrctTorqueReportData _wheel_frct_torque_report_data
     (send _wheel_frct_torque_report_data :deserialize buf ptr-) (incf ptr- (send _wheel_frct_torque_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelFrctTorqueReport :md5sum-) "52516e6244acda6483e926a006c64bd4")
(setf (get endpoint_msgs::WheelFrctTorqueReport :datatype-) "endpoint_msgs/WheelFrctTorqueReport")
(setf (get endpoint_msgs::WheelFrctTorqueReport :definition-)
      "uint8 WHEEL_FRCT_TORQUE_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelFrctTorqueReportData wheel_frct_torque_report_data

================================================================================
MSG: endpoint_msgs/WheelFrctTorqueReportData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

")



(provide :endpoint_msgs/WheelFrctTorqueReport "52516e6244acda6483e926a006c64bd4")


