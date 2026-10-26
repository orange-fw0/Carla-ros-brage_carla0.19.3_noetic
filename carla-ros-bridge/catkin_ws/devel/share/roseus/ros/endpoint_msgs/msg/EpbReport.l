;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::EpbReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'EpbReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::EPBREPORT")
  (make-package "ENDPOINT_MSGS::EPBREPORT"))

(in-package "ROS")
;;//! \htmlinclude EpbReport.msg.html


(intern "*EPB_REPORT_DATA*" (find-package "ENDPOINT_MSGS::EPBREPORT"))
(shadow '*EPB_REPORT_DATA* (find-package "ENDPOINT_MSGS::EPBREPORT"))
(defconstant endpoint_msgs::EpbReport::*EPB_REPORT_DATA* 1)

(defun endpoint_msgs::EpbReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::EpbReport::*EPB_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::EpbReport
  :super ros::object
  :slots (_available _epb_report_data ))

(defmethod endpoint_msgs::EpbReport
  (:init
   (&key
    ((:available __available) 0)
    ((:epb_report_data __epb_report_data) (instance endpoint_msgs::EpbReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _epb_report_data __epb_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:epb_report_data
   (&rest __epb_report_data)
   (if (keywordp (car __epb_report_data))
       (send* _epb_report_data __epb_report_data)
     (progn
       (if __epb_report_data (setq _epb_report_data (car __epb_report_data)))
       _epb_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/EpbReportData _epb_report_data
    (send _epb_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/EpbReportData _epb_report_data
       (send _epb_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/EpbReportData _epb_report_data
     (send _epb_report_data :deserialize buf ptr-) (incf ptr- (send _epb_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::EpbReport :md5sum-) "3c51bf21506af305eac481f247be5f57")
(setf (get endpoint_msgs::EpbReport :datatype-) "endpoint_msgs/EpbReport")
(setf (get endpoint_msgs::EpbReport :definition-)
      "uint8 EPB_REPORT_DATA = 1
uint8 available
endpoint_msgs/EpbReportData epb_report_data

================================================================================
MSG: endpoint_msgs/EpbReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/EpbStatus epb_report
endpoint_msgs/AutoHoldStatus auto_hold_state
bool vehicle_hold_active
bool overide
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
MSG: endpoint_msgs/EpbStatus
uint8 RELEASE = 0
uint8 PULLING = 1
uint8 PULL = 2
uint8 RELEASING = 3
uint8 RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AutoHoldStatus
uint8 SYS_OFF = 0
uint8 SYS_INTERVENTION = 1
uint8 SYS_STANDBY = 2
uint8 SYS_ERR = 3
uint8 RESERVED = 4
uint8 value

")



(provide :endpoint_msgs/EpbReport "3c51bf21506af305eac481f247be5f57")


