;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::TirePressureReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'TirePressureReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::TIREPRESSUREREPORT")
  (make-package "ENDPOINT_MSGS::TIREPRESSUREREPORT"))

(in-package "ROS")
;;//! \htmlinclude TirePressureReport.msg.html


(intern "*TIRE_PRESSURE_REPORT_DATA*" (find-package "ENDPOINT_MSGS::TIREPRESSUREREPORT"))
(shadow '*TIRE_PRESSURE_REPORT_DATA* (find-package "ENDPOINT_MSGS::TIREPRESSUREREPORT"))
(defconstant endpoint_msgs::TirePressureReport::*TIRE_PRESSURE_REPORT_DATA* 1)

(defun endpoint_msgs::TirePressureReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::TirePressureReport::*TIRE_PRESSURE_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::TirePressureReport
  :super ros::object
  :slots (_available _tire_pressure_report_data ))

(defmethod endpoint_msgs::TirePressureReport
  (:init
   (&key
    ((:available __available) 0)
    ((:tire_pressure_report_data __tire_pressure_report_data) (instance endpoint_msgs::TirePressureReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _tire_pressure_report_data __tire_pressure_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:tire_pressure_report_data
   (&rest __tire_pressure_report_data)
   (if (keywordp (car __tire_pressure_report_data))
       (send* _tire_pressure_report_data __tire_pressure_report_data)
     (progn
       (if __tire_pressure_report_data (setq _tire_pressure_report_data (car __tire_pressure_report_data)))
       _tire_pressure_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/TirePressureReportData _tire_pressure_report_data
    (send _tire_pressure_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/TirePressureReportData _tire_pressure_report_data
       (send _tire_pressure_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/TirePressureReportData _tire_pressure_report_data
     (send _tire_pressure_report_data :deserialize buf ptr-) (incf ptr- (send _tire_pressure_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::TirePressureReport :md5sum-) "99880e90926d831c93e6c0ef60107cde")
(setf (get endpoint_msgs::TirePressureReport :datatype-) "endpoint_msgs/TirePressureReport")
(setf (get endpoint_msgs::TirePressureReport :definition-)
      "uint8 TIRE_PRESSURE_REPORT_DATA = 1
uint8 available
endpoint_msgs/TirePressureReportData tire_pressure_report_data

================================================================================
MSG: endpoint_msgs/TirePressureReportData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

")



(provide :endpoint_msgs/TirePressureReport "99880e90926d831c93e6c0ef60107cde")


