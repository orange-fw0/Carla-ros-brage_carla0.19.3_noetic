;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleExtraReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleExtraReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLEEXTRAREPORT")
  (make-package "ENDPOINT_MSGS::VEHICLEEXTRAREPORT"))

(in-package "ROS")
;;//! \htmlinclude VehicleExtraReport.msg.html


(intern "*VEHICLE_EXTRA_REPORT_DATA*" (find-package "ENDPOINT_MSGS::VEHICLEEXTRAREPORT"))
(shadow '*VEHICLE_EXTRA_REPORT_DATA* (find-package "ENDPOINT_MSGS::VEHICLEEXTRAREPORT"))
(defconstant endpoint_msgs::VehicleExtraReport::*VEHICLE_EXTRA_REPORT_DATA* 1)

(defun endpoint_msgs::VehicleExtraReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::VehicleExtraReport::*VEHICLE_EXTRA_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::VehicleExtraReport
  :super ros::object
  :slots (_available _vehicle_extra_report_data ))

(defmethod endpoint_msgs::VehicleExtraReport
  (:init
   (&key
    ((:available __available) 0)
    ((:vehicle_extra_report_data __vehicle_extra_report_data) (instance endpoint_msgs::VehicleExtraReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _vehicle_extra_report_data __vehicle_extra_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:vehicle_extra_report_data
   (&rest __vehicle_extra_report_data)
   (if (keywordp (car __vehicle_extra_report_data))
       (send* _vehicle_extra_report_data __vehicle_extra_report_data)
     (progn
       (if __vehicle_extra_report_data (setq _vehicle_extra_report_data (car __vehicle_extra_report_data)))
       _vehicle_extra_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/VehicleExtraReportData _vehicle_extra_report_data
    (send _vehicle_extra_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/VehicleExtraReportData _vehicle_extra_report_data
       (send _vehicle_extra_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/VehicleExtraReportData _vehicle_extra_report_data
     (send _vehicle_extra_report_data :deserialize buf ptr-) (incf ptr- (send _vehicle_extra_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleExtraReport :md5sum-) "ff7c1937abce7fa12f5200d7982e3233")
(setf (get endpoint_msgs::VehicleExtraReport :datatype-) "endpoint_msgs/VehicleExtraReport")
(setf (get endpoint_msgs::VehicleExtraReport :definition-)
      "uint8 VEHICLE_EXTRA_REPORT_DATA = 1
uint8 available
endpoint_msgs/VehicleExtraReportData vehicle_extra_report_data

================================================================================
MSG: endpoint_msgs/VehicleExtraReportData
uint64 timestamp_us
endpoint_msgs/CtaState cta_lf
endpoint_msgs/CtaState cta_rf
endpoint_msgs/CtaState cta_lr
endpoint_msgs/CtaState cta_rr
bool cta_valid
endpoint_msgs/DlpStatus dlp_state
bool dlp_valid
endpoint_msgs/HdcState hdc_state
bool hdc_valid
endpoint_msgs/LdpStatus ldp_status_left_lane
endpoint_msgs/LdpStatus ldp_status_right_lane
bool ldp_valid
endpoint_msgs/LdwStatus ldw_status
bool ldw_valid
endpoint_msgs/SrsCollosion srs_collosion
endpoint_msgs/ExtraReport extra

================================================================================
MSG: endpoint_msgs/CtaState
uint8 NO_WARNING = 0
uint8 WARNING_LEVE_1 = 1
uint8 WARNING_LEVE_2 = 2
uint8 value

================================================================================
MSG: endpoint_msgs/DlpStatus
uint8 NO_WARNING = 0
uint8 WARNING_LEVEL1 = 1
uint8 WARNING_LEVEL2 = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/HdcState
uint8 NORMAL = 0
uint8 ENABLED = 1
uint8 ACTIVED = 2
uint8 FAILED = 3
uint8 TEMPORARILY_INHIBITED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/LdpStatus
uint8 LDP_STATUS_OFF = 0
uint8 LDP_STATUS_STANDBY = 1
uint8 LDP_STATUS_ACTIVE = 2
uint8 LDP_STATUS_RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/LdwStatus
uint8 LDW_STATUS_OFF = 0
uint8 LDW_STATUS_STANDBY = 1
uint8 LDW_STATUS_DISABLED = 2
uint8 LDW_STATUS_OVERIDE = 3
uint8 LDW_STATUS_ACTIVE = 4
uint8 LDW_STATUS_RESERVED1 = 5
uint8 LDW_STATUS_RESERVED2 = 6
uint8 LDW_STATUS_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/SrsCollosion
uint8 NONE = 0
uint8 NOT_COLLOSION = 1
uint8 COLLOSION = 2
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/ExtraReport
uint8 available
string json

")



(provide :endpoint_msgs/VehicleExtraReport "ff7c1937abce7fa12f5200d7982e3233")


