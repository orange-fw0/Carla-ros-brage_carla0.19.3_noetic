;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SuspensionReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SuspensionReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SUSPENSIONREPORT")
  (make-package "ENDPOINT_MSGS::SUSPENSIONREPORT"))

(in-package "ROS")
;;//! \htmlinclude SuspensionReport.msg.html


(intern "*SUSPENSION_REPORT_DATA*" (find-package "ENDPOINT_MSGS::SUSPENSIONREPORT"))
(shadow '*SUSPENSION_REPORT_DATA* (find-package "ENDPOINT_MSGS::SUSPENSIONREPORT"))
(defconstant endpoint_msgs::SuspensionReport::*SUSPENSION_REPORT_DATA* 1)

(defun endpoint_msgs::SuspensionReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::SuspensionReport::*SUSPENSION_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::SuspensionReport
  :super ros::object
  :slots (_available _suspension_report_data ))

(defmethod endpoint_msgs::SuspensionReport
  (:init
   (&key
    ((:available __available) 0)
    ((:suspension_report_data __suspension_report_data) (instance endpoint_msgs::SuspensionReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _suspension_report_data __suspension_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:suspension_report_data
   (&rest __suspension_report_data)
   (if (keywordp (car __suspension_report_data))
       (send* _suspension_report_data __suspension_report_data)
     (progn
       (if __suspension_report_data (setq _suspension_report_data (car __suspension_report_data)))
       _suspension_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/SuspensionReportData _suspension_report_data
    (send _suspension_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/SuspensionReportData _suspension_report_data
       (send _suspension_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/SuspensionReportData _suspension_report_data
     (send _suspension_report_data :deserialize buf ptr-) (incf ptr- (send _suspension_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::SuspensionReport :md5sum-) "16a2437ec979e9b941a155db04e2443b")
(setf (get endpoint_msgs::SuspensionReport :datatype-) "endpoint_msgs/SuspensionReport")
(setf (get endpoint_msgs::SuspensionReport :definition-)
      "uint8 SUSPENSION_REPORT_DATA = 1
uint8 available
endpoint_msgs/SuspensionReportData suspension_report_data

================================================================================
MSG: endpoint_msgs/SuspensionReportData
uint64 timestamp_us
bool calibration_completed
endpoint_msgs/HeightLevel requested_target_level
endpoint_msgs/HeightLevel cur_height_status
endpoint_msgs/SuspensionHeight suspension_height
endpoint_msgs/SuspensionHeightValid suspension_hight_valid
endpoint_msgs/FailureStatus failure_status
float32 reserved1
float32 reserved2
endpoint_msgs/SuspensionAdjustStatus adjust_status

================================================================================
MSG: endpoint_msgs/HeightLevel
uint8 NONE = 0
uint8 LEVEL1 = 1
uint8 LEVEL2 = 2
uint8 LEVEL3 = 3
uint8 LEVEL4 = 4
uint8 LEVEL5 = 5
uint8 LEVEL6 = 6
uint8 LEVEL7 = 7
uint8 LEVEL8 = 8
uint8 LEVEL9 = 9
uint8 LEVEL10 = 10
uint8 RESERVED1 = 11
uint8 RESERVED2 = 12
uint8 RESERVED3 = 13
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionHeight
int8 front_left
int8 front_right
int8 rear_left
int8 rear_right

================================================================================
MSG: endpoint_msgs/SuspensionHeightValid
bool front_left
bool front_right
bool rear_left
bool rear_right

================================================================================
MSG: endpoint_msgs/FailureStatus
uint8 NOFAILURE = 0
uint8 TEMPORARYFAILURE = 1
uint8 FAILURE = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionAdjustStatus
uint8 NOACTION = 0
uint8 LOWERING = 1
uint8 LIFTING = 2
uint8 PENDING = 3
uint8 ADJUSTING = 4
uint8 RESERVED = 5
uint8 value

")



(provide :endpoint_msgs/SuspensionReport "16a2437ec979e9b941a155db04e2443b")


