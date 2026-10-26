;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::EnergyRemainingReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'EnergyRemainingReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::ENERGYREMAININGREPORT")
  (make-package "ENDPOINT_MSGS::ENERGYREMAININGREPORT"))

(in-package "ROS")
;;//! \htmlinclude EnergyRemainingReport.msg.html


(intern "*ENERGY_REMAINING_REPORT_DATA*" (find-package "ENDPOINT_MSGS::ENERGYREMAININGREPORT"))
(shadow '*ENERGY_REMAINING_REPORT_DATA* (find-package "ENDPOINT_MSGS::ENERGYREMAININGREPORT"))
(defconstant endpoint_msgs::EnergyRemainingReport::*ENERGY_REMAINING_REPORT_DATA* 1)

(defun endpoint_msgs::EnergyRemainingReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::EnergyRemainingReport::*ENERGY_REMAINING_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::EnergyRemainingReport
  :super ros::object
  :slots (_available _energy_remaining_report_data ))

(defmethod endpoint_msgs::EnergyRemainingReport
  (:init
   (&key
    ((:available __available) 0)
    ((:energy_remaining_report_data __energy_remaining_report_data) (instance endpoint_msgs::EnergyRemainingReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _energy_remaining_report_data __energy_remaining_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:energy_remaining_report_data
   (&rest __energy_remaining_report_data)
   (if (keywordp (car __energy_remaining_report_data))
       (send* _energy_remaining_report_data __energy_remaining_report_data)
     (progn
       (if __energy_remaining_report_data (setq _energy_remaining_report_data (car __energy_remaining_report_data)))
       _energy_remaining_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/EnergyRemainingReportData _energy_remaining_report_data
    (send _energy_remaining_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/EnergyRemainingReportData _energy_remaining_report_data
       (send _energy_remaining_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/EnergyRemainingReportData _energy_remaining_report_data
     (send _energy_remaining_report_data :deserialize buf ptr-) (incf ptr- (send _energy_remaining_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::EnergyRemainingReport :md5sum-) "67632ed96489635b9c2922977d559b76")
(setf (get endpoint_msgs::EnergyRemainingReport :datatype-) "endpoint_msgs/EnergyRemainingReport")
(setf (get endpoint_msgs::EnergyRemainingReport :definition-)
      "uint8 ENERGY_REMAINING_REPORT_DATA = 1
uint8 available
endpoint_msgs/EnergyRemainingReportData energy_remaining_report_data

================================================================================
MSG: endpoint_msgs/EnergyRemainingReportData
uint64 timestamp_us
float32 level
float32 remaining_mileage
bool valid

")



(provide :endpoint_msgs/EnergyRemainingReport "67632ed96489635b9c2922977d559b76")


