;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelAngleReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelAngleReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELANGLEREPORT")
  (make-package "ENDPOINT_MSGS::WHEELANGLEREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelAngleReport.msg.html


(intern "*WHEEL_ANGLE_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WHEELANGLEREPORT"))
(shadow '*WHEEL_ANGLE_REPORT_DATA* (find-package "ENDPOINT_MSGS::WHEELANGLEREPORT"))
(defconstant endpoint_msgs::WheelAngleReport::*WHEEL_ANGLE_REPORT_DATA* 1)

(defun endpoint_msgs::WheelAngleReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WheelAngleReport::*WHEEL_ANGLE_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WheelAngleReport
  :super ros::object
  :slots (_available _wheel_angle_report_data ))

(defmethod endpoint_msgs::WheelAngleReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wheel_angle_report_data __wheel_angle_report_data) (instance endpoint_msgs::WheelAngleReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wheel_angle_report_data __wheel_angle_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wheel_angle_report_data
   (&rest __wheel_angle_report_data)
   (if (keywordp (car __wheel_angle_report_data))
       (send* _wheel_angle_report_data __wheel_angle_report_data)
     (progn
       (if __wheel_angle_report_data (setq _wheel_angle_report_data (car __wheel_angle_report_data)))
       _wheel_angle_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WheelAngleReportData _wheel_angle_report_data
    (send _wheel_angle_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WheelAngleReportData _wheel_angle_report_data
       (send _wheel_angle_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WheelAngleReportData _wheel_angle_report_data
     (send _wheel_angle_report_data :deserialize buf ptr-) (incf ptr- (send _wheel_angle_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelAngleReport :md5sum-) "cdaf5cf35e4a2593cc6d4f4aa9804a97")
(setf (get endpoint_msgs::WheelAngleReport :datatype-) "endpoint_msgs/WheelAngleReport")
(setf (get endpoint_msgs::WheelAngleReport :definition-)
      "uint8 WHEEL_ANGLE_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelAngleReportData wheel_angle_report_data

================================================================================
MSG: endpoint_msgs/WheelAngleReportData
uint64 timestamp_us
endpoint_msgs/RwsSysStatus rws_state
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

================================================================================
MSG: endpoint_msgs/RwsSysStatus
uint8 STANDARD_MODE = 0
uint8 COMFORTABLE_MODE = 1
uint8 SPORT_MODE = 2
uint8 AD_MODE = 3
uint8 ADLOCK_MODE = 4
uint8 RESERVED = 5
bool valid
uint8 value

")



(provide :endpoint_msgs/WheelAngleReport "cdaf5cf35e4a2593cc6d4f4aa9804a97")


