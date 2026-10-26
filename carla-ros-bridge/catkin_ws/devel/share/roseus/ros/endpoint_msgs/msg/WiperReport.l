;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WiperReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WiperReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIPERREPORT")
  (make-package "ENDPOINT_MSGS::WIPERREPORT"))

(in-package "ROS")
;;//! \htmlinclude WiperReport.msg.html


(intern "*WIPER_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WIPERREPORT"))
(shadow '*WIPER_REPORT_DATA* (find-package "ENDPOINT_MSGS::WIPERREPORT"))
(defconstant endpoint_msgs::WiperReport::*WIPER_REPORT_DATA* 1)

(defun endpoint_msgs::WiperReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WiperReport::*WIPER_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WiperReport
  :super ros::object
  :slots (_available _wiper_report_data ))

(defmethod endpoint_msgs::WiperReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wiper_report_data __wiper_report_data) (instance endpoint_msgs::WiperReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wiper_report_data __wiper_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wiper_report_data
   (&rest __wiper_report_data)
   (if (keywordp (car __wiper_report_data))
       (send* _wiper_report_data __wiper_report_data)
     (progn
       (if __wiper_report_data (setq _wiper_report_data (car __wiper_report_data)))
       _wiper_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WiperReportData _wiper_report_data
    (send _wiper_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WiperReportData _wiper_report_data
       (send _wiper_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WiperReportData _wiper_report_data
     (send _wiper_report_data :deserialize buf ptr-) (incf ptr- (send _wiper_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WiperReport :md5sum-) "aae3c58e902eb64e17b4b2bd6b41ae95")
(setf (get endpoint_msgs::WiperReport :datatype-) "endpoint_msgs/WiperReport")
(setf (get endpoint_msgs::WiperReport :definition-)
      "uint8 WIPER_REPORT_DATA = 1
uint8 available
endpoint_msgs/WiperReportData wiper_report_data

================================================================================
MSG: endpoint_msgs/WiperReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/WiperStateType front_wiper_state
endpoint_msgs/WiperStateType rear_wiper_state
bool valid

================================================================================
MSG: endpoint_msgs/WorkType
uint8 MANUALPILOT = 0
uint8 AUTOPILOT_PILOT = 1
uint8 AUTOPILOT_APA = 2
uint8 AUTOPILOT_ACC = 3
uint8 AUTOPILOT_RESERVED1 = 4
uint8 AUTOPILOT_RESERVED2 = 5
uint8 AUTOPILOT_RESERVED3 = 6
uint8 AUTOPILOT_RESERVED4 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/WiperStateType
uint8 OFF = 0
uint8 AUTO_OFF = 1
uint8 AUTO_MOVING = 2
uint8 MANUAL_OFF = 3
uint8 MANUAL_ON = 4
uint8 MANUAL_LOW = 5
uint8 MANUAL_HIGH = 6
uint8 MIST_FLICK = 7
uint8 WASH = 8
uint8 AUTO_LOW = 9
uint8 AUTO_HIGH = 10
uint8 COURTESY_WIPE = 11
uint8 AUTO_ADJUST = 12
uint8 RESERVED = 13
uint8 STALLED = 14
uint8 NONE = 15
uint8 value

")



(provide :endpoint_msgs/WiperReport "aae3c58e902eb64e17b4b2bd6b41ae95")


