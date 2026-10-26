;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeInfoReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeInfoReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKEINFOREPORT")
  (make-package "ENDPOINT_MSGS::BRAKEINFOREPORT"))

(in-package "ROS")
;;//! \htmlinclude BrakeInfoReport.msg.html


(intern "*BRAKE_INFO_REPORT_DATA*" (find-package "ENDPOINT_MSGS::BRAKEINFOREPORT"))
(shadow '*BRAKE_INFO_REPORT_DATA* (find-package "ENDPOINT_MSGS::BRAKEINFOREPORT"))
(defconstant endpoint_msgs::BrakeInfoReport::*BRAKE_INFO_REPORT_DATA* 1)

(defun endpoint_msgs::BrakeInfoReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::BrakeInfoReport::*BRAKE_INFO_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::BrakeInfoReport
  :super ros::object
  :slots (_available _brake_info_report_data ))

(defmethod endpoint_msgs::BrakeInfoReport
  (:init
   (&key
    ((:available __available) 0)
    ((:brake_info_report_data __brake_info_report_data) (instance endpoint_msgs::BrakeInfoReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _brake_info_report_data __brake_info_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:brake_info_report_data
   (&rest __brake_info_report_data)
   (if (keywordp (car __brake_info_report_data))
       (send* _brake_info_report_data __brake_info_report_data)
     (progn
       (if __brake_info_report_data (setq _brake_info_report_data (car __brake_info_report_data)))
       _brake_info_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/BrakeInfoReportData _brake_info_report_data
    (send _brake_info_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/BrakeInfoReportData _brake_info_report_data
       (send _brake_info_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/BrakeInfoReportData _brake_info_report_data
     (send _brake_info_report_data :deserialize buf ptr-) (incf ptr- (send _brake_info_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::BrakeInfoReport :md5sum-) "4217cb9b7eb12b8d3bb88d65609a071a")
(setf (get endpoint_msgs::BrakeInfoReport :datatype-) "endpoint_msgs/BrakeInfoReport")
(setf (get endpoint_msgs::BrakeInfoReport :definition-)
      "uint8 BRAKE_INFO_REPORT_DATA = 1
uint8 available
endpoint_msgs/BrakeInfoReportData brake_info_report_data

================================================================================
MSG: endpoint_msgs/BrakeInfoReportData
uint64 timestamp_us
float32 accleration_on_wheel
float32 lateral_accleration_on_wheel
bool stationary
bool abs_active
bool abs_fault
bool tcs_active
bool tcs_fault
bool msr_active
bool msr_fault
bool esp_active
bool esp_fault
bool tsr_active
bool tsr_fault
bool pressure
float32 brake_torque_delivery
bool brake_torque_delivery_valid
float32 brake_regen_torque_delivery
bool brake_regen_torque_delivery_valid
float32 brake_frct_torque_delivery
bool brake_frct_torque_delivery_valid
float32 master_pressure_delivery
bool master_pressure_delivery_valid
float32 pedal_brake_torque
bool pedal_brake_torque_valid
bool pkg_fastswitch_enable
bool vehicle_block
endpoint_msgs/VehESPSwitch esp_status
bool vdc_active
bool vdc_fault
uint8 reserved

================================================================================
MSG: endpoint_msgs/VehESPSwitch
uint8 NONE = 0
uint8 ON = 1
uint8 OFF = 2
uint8 RESVERD = 3
uint8 INVALID = 255
uint8 value

")



(provide :endpoint_msgs/BrakeInfoReport "4217cb9b7eb12b8d3bb88d65609a071a")


