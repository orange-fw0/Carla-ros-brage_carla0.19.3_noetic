;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelSpeedReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelSpeedReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELSPEEDREPORT")
  (make-package "ENDPOINT_MSGS::WHEELSPEEDREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeedReport.msg.html


(intern "*WHEEL_SPEED_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WHEELSPEEDREPORT"))
(shadow '*WHEEL_SPEED_REPORT_DATA* (find-package "ENDPOINT_MSGS::WHEELSPEEDREPORT"))
(defconstant endpoint_msgs::WheelSpeedReport::*WHEEL_SPEED_REPORT_DATA* 1)

(defun endpoint_msgs::WheelSpeedReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WheelSpeedReport::*WHEEL_SPEED_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WheelSpeedReport
  :super ros::object
  :slots (_available _wheel_speed_report_data ))

(defmethod endpoint_msgs::WheelSpeedReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wheel_speed_report_data __wheel_speed_report_data) (instance endpoint_msgs::WheelSpeedReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wheel_speed_report_data __wheel_speed_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wheel_speed_report_data
   (&rest __wheel_speed_report_data)
   (if (keywordp (car __wheel_speed_report_data))
       (send* _wheel_speed_report_data __wheel_speed_report_data)
     (progn
       (if __wheel_speed_report_data (setq _wheel_speed_report_data (car __wheel_speed_report_data)))
       _wheel_speed_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WheelSpeedReportData _wheel_speed_report_data
    (send _wheel_speed_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WheelSpeedReportData _wheel_speed_report_data
       (send _wheel_speed_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WheelSpeedReportData _wheel_speed_report_data
     (send _wheel_speed_report_data :deserialize buf ptr-) (incf ptr- (send _wheel_speed_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelSpeedReport :md5sum-) "e58af9dffa987dae3ddda85ae019745e")
(setf (get endpoint_msgs::WheelSpeedReport :datatype-) "endpoint_msgs/WheelSpeedReport")
(setf (get endpoint_msgs::WheelSpeedReport :definition-)
      "uint8 WHEEL_SPEED_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelSpeedReportData wheel_speed_report_data

================================================================================
MSG: endpoint_msgs/WheelSpeedReportData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
float32 front_left_mps
float32 front_right_mps
float32 rear_left_mps
float32 rear_right_mps
bool valid

")



(provide :endpoint_msgs/WheelSpeedReport "e58af9dffa987dae3ddda85ae019745e")


