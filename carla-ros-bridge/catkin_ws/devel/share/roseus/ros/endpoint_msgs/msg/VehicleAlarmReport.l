;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleAlarmReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleAlarmReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLEALARMREPORT")
  (make-package "ENDPOINT_MSGS::VEHICLEALARMREPORT"))

(in-package "ROS")
;;//! \htmlinclude VehicleAlarmReport.msg.html


(intern "*VEHICLE_ALARM_REPORT_DATA*" (find-package "ENDPOINT_MSGS::VEHICLEALARMREPORT"))
(shadow '*VEHICLE_ALARM_REPORT_DATA* (find-package "ENDPOINT_MSGS::VEHICLEALARMREPORT"))
(defconstant endpoint_msgs::VehicleAlarmReport::*VEHICLE_ALARM_REPORT_DATA* 1)

(defun endpoint_msgs::VehicleAlarmReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::VehicleAlarmReport::*VEHICLE_ALARM_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::VehicleAlarmReport
  :super ros::object
  :slots (_available _vehicle_alarm_report_data ))

(defmethod endpoint_msgs::VehicleAlarmReport
  (:init
   (&key
    ((:available __available) 0)
    ((:vehicle_alarm_report_data __vehicle_alarm_report_data) (instance endpoint_msgs::VehicleAlarmReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _vehicle_alarm_report_data __vehicle_alarm_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:vehicle_alarm_report_data
   (&rest __vehicle_alarm_report_data)
   (if (keywordp (car __vehicle_alarm_report_data))
       (send* _vehicle_alarm_report_data __vehicle_alarm_report_data)
     (progn
       (if __vehicle_alarm_report_data (setq _vehicle_alarm_report_data (car __vehicle_alarm_report_data)))
       _vehicle_alarm_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/VehicleAlarmReportData _vehicle_alarm_report_data
    (send _vehicle_alarm_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/VehicleAlarmReportData _vehicle_alarm_report_data
       (send _vehicle_alarm_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/VehicleAlarmReportData _vehicle_alarm_report_data
     (send _vehicle_alarm_report_data :deserialize buf ptr-) (incf ptr- (send _vehicle_alarm_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleAlarmReport :md5sum-) "a49b06bc689f6938e2e2fd6c0542d0cd")
(setf (get endpoint_msgs::VehicleAlarmReport :datatype-) "endpoint_msgs/VehicleAlarmReport")
(setf (get endpoint_msgs::VehicleAlarmReport :definition-)
      "uint8 VEHICLE_ALARM_REPORT_DATA = 1
uint8 available
endpoint_msgs/VehicleAlarmReportData vehicle_alarm_report_data

================================================================================
MSG: endpoint_msgs/VehicleAlarmReportData
uint64 timestamp_us
bool seat_belt_alarm
bool seat_belt_tightening
bool steering_wheel_alarm
bool buzzer_alarm
endpoint_msgs/HandOffStatus steering_handoff
endpoint_msgs/FeetOffStatus feet_off
bool pkg_fastswitch_enable
bool tire_alarm
endpoint_msgs/VehicleCrashStatus vehicle_crash_status
bool valid

================================================================================
MSG: endpoint_msgs/HandOffStatus
uint8 HAND_OFF_STATUS_NONE = 0
uint8 HAND_OFF_STATUS_TRUE = 1
uint8 HAND_OFF_STATUS_FALSE = 2
uint8 HAND_OFF_STATUS_INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/FeetOffStatus
uint8 FEET_OFF_STATUS_NONE = 0
uint8 FEET_OFF_STATUS_TRUE = 1
uint8 FEET_OFF_STATUS_FALSE = 2
uint8 FEET_OFF_STATUS_INVALUD = 255
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleCrashStatus
uint8 NONE = 0
uint8 NO_CRASH = 1
uint8 CRASH = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/VehicleAlarmReport "a49b06bc689f6938e2e2fd6c0542d0cd")


