;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelPositionReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelPositionReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELPOSITIONREPORT")
  (make-package "ENDPOINT_MSGS::WHEELPOSITIONREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelPositionReport.msg.html


(intern "*WHEEL_POSITION_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WHEELPOSITIONREPORT"))
(shadow '*WHEEL_POSITION_REPORT_DATA* (find-package "ENDPOINT_MSGS::WHEELPOSITIONREPORT"))
(defconstant endpoint_msgs::WheelPositionReport::*WHEEL_POSITION_REPORT_DATA* 1)

(defun endpoint_msgs::WheelPositionReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WheelPositionReport::*WHEEL_POSITION_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WheelPositionReport
  :super ros::object
  :slots (_available _wheel_position_report_data ))

(defmethod endpoint_msgs::WheelPositionReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wheel_position_report_data __wheel_position_report_data) (instance endpoint_msgs::WheelPositionReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wheel_position_report_data __wheel_position_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wheel_position_report_data
   (&rest __wheel_position_report_data)
   (if (keywordp (car __wheel_position_report_data))
       (send* _wheel_position_report_data __wheel_position_report_data)
     (progn
       (if __wheel_position_report_data (setq _wheel_position_report_data (car __wheel_position_report_data)))
       _wheel_position_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WheelPositionReportData _wheel_position_report_data
    (send _wheel_position_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WheelPositionReportData _wheel_position_report_data
       (send _wheel_position_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WheelPositionReportData _wheel_position_report_data
     (send _wheel_position_report_data :deserialize buf ptr-) (incf ptr- (send _wheel_position_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelPositionReport :md5sum-) "fb35a5946173d79e5b1c24ec1f5a7e36")
(setf (get endpoint_msgs::WheelPositionReport :datatype-) "endpoint_msgs/WheelPositionReport")
(setf (get endpoint_msgs::WheelPositionReport :definition-)
      "uint8 WHEEL_POSITION_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelPositionReportData wheel_position_report_data

================================================================================
MSG: endpoint_msgs/WheelPositionReportData
uint64 timestamp_us
int16 front_left
int16 front_right
int16 rear_left
int16 rear_right
bool valid

")



(provide :endpoint_msgs/WheelPositionReport "fb35a5946173d79e5b1c24ec1f5a7e36")


