;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebStatusReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebStatusReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBSTATUSREPORT")
  (make-package "ENDPOINT_MSGS::AEBSTATUSREPORT"))

(in-package "ROS")
;;//! \htmlinclude AebStatusReport.msg.html


(intern "*AEB_STATUS_REPORT_DATA*" (find-package "ENDPOINT_MSGS::AEBSTATUSREPORT"))
(shadow '*AEB_STATUS_REPORT_DATA* (find-package "ENDPOINT_MSGS::AEBSTATUSREPORT"))
(defconstant endpoint_msgs::AebStatusReport::*AEB_STATUS_REPORT_DATA* 1)

(defun endpoint_msgs::AebStatusReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::AebStatusReport::*AEB_STATUS_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::AebStatusReport
  :super ros::object
  :slots (_available _aeb_status_data ))

(defmethod endpoint_msgs::AebStatusReport
  (:init
   (&key
    ((:available __available) 0)
    ((:aeb_status_data __aeb_status_data) (instance endpoint_msgs::AebStatusReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _aeb_status_data __aeb_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:aeb_status_data
   (&rest __aeb_status_data)
   (if (keywordp (car __aeb_status_data))
       (send* _aeb_status_data __aeb_status_data)
     (progn
       (if __aeb_status_data (setq _aeb_status_data (car __aeb_status_data)))
       _aeb_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/AebStatusReportData _aeb_status_data
    (send _aeb_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/AebStatusReportData _aeb_status_data
       (send _aeb_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/AebStatusReportData _aeb_status_data
     (send _aeb_status_data :deserialize buf ptr-) (incf ptr- (send _aeb_status_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::AebStatusReport :md5sum-) "c91c9f34e8112f573a399902202d66e1")
(setf (get endpoint_msgs::AebStatusReport :datatype-) "endpoint_msgs/AebStatusReport")
(setf (get endpoint_msgs::AebStatusReport :definition-)
      "uint8 AEB_STATUS_REPORT_DATA = 1
uint8 available
endpoint_msgs/AebStatusReportData aeb_status_data

================================================================================
MSG: endpoint_msgs/AebStatusReportData
uint64 timestamp_us
endpoint_msgs/AebSysStatus aeb_system_status
endpoint_msgs/AebSysFaultStatus aeb_system_fault_status
endpoint_msgs/AebBrkJerkResp awb_status
endpoint_msgs/AebDclResp dcl_status
endpoint_msgs/HbaStatus hba_status
endpoint_msgs/AebPrflResp prfl_status
bool aeb_valid
endpoint_msgs/FcwStatus fcw_status
bool fcw_valid
endpoint_msgs/VseSysState vse_state
bool vse_valid
endpoint_msgs/SwcStatus swc_status
bool swc_valid

================================================================================
MSG: endpoint_msgs/AebSysStatus
uint8 OFF = 0
uint8 STANDBY = 1
uint8 DISABLE = 2
uint8 OVERRIDE = 3
uint8 ACTIVED = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/AebSysFaultStatus
uint8 AEB_SYS_FALULT_NO_ERROR = 0
uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1
uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2
uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3
uint8 AEB_SYS_FALULT_RESERVED1 = 4
uint8 AEB_SYS_FALULT_RESERVED2 = 5
uint8 AEB_SYS_FALULT_RESERVED3 = 6
uint8 AEB_SYS_FALULT_RESERVED4 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/AebBrkJerkResp
uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1
uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2
uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_BRAKE_JERK_RESERVED = 5
uint8 value

================================================================================
MSG: endpoint_msgs/AebDclResp
uint8 AEB_DCL_NO_REQUEST = 0
uint8 AEB_DCL_REQUEST_HONORED = 1
uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_DCL_REQUEST_RESERVED1 = 5
uint8 AEB_DCL_REQUEST_RESERVED2 = 6
uint8 AEB_DCL_REQUEST_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/HbaStatus
uint8 AEB_HBA_NO_REQUEST = 0
uint8 AEB_HBA_REQUEST_HONORED = 1
uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_HBA_REQUEST_RESERVED1 = 5
uint8 AEB_HBA_REQUEST_RESERVED2 = 6
uint8 AEB_HBA_REQUEST_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/AebPrflResp
uint8 AEB_PRFL_NO_REQUEST = 0
uint8 AEB_PRFL_REQUEST_HONORED = 1
uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_PRFL_REQUEST_RESERVED1 = 5
uint8 AEB_PRFL_REQUEST_RESERVED2 = 6
uint8 AEB_PRFL_REQUEST_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/FcwStatus
uint8 OFF = 0
uint8 STANDBY = 1
uint8 DISABLE = 2
uint8 OVERRIDE = 3
uint8 ACTIVED = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/VseSysState
uint8 INAVTIVE = 0
uint8 ACTIVE = 1
uint8 FAULT = 2
uint8 WARMING_UP = 3
uint8 NOT_READY = 4
uint8 value

================================================================================
MSG: endpoint_msgs/SwcStatus
uint8 SWC_STATUS_NOT_ACTIVE = 0
uint8 SWC_STATUS_NORMAL = 1
uint8 SWC_STATUS_ERROR = 2
uint8 value

")



(provide :endpoint_msgs/AebStatusReport "c91c9f34e8112f573a399902202d66e1")


