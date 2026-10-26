;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKEREPORT")
  (make-package "ENDPOINT_MSGS::BRAKEREPORT"))

(in-package "ROS")
;;//! \htmlinclude BrakeReport.msg.html


(intern "*BRAKE_REPORT_DATA*" (find-package "ENDPOINT_MSGS::BRAKEREPORT"))
(shadow '*BRAKE_REPORT_DATA* (find-package "ENDPOINT_MSGS::BRAKEREPORT"))
(defconstant endpoint_msgs::BrakeReport::*BRAKE_REPORT_DATA* 1)

(defun endpoint_msgs::BrakeReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::BrakeReport::*BRAKE_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::BrakeReport
  :super ros::object
  :slots (_available _brake_report_data ))

(defmethod endpoint_msgs::BrakeReport
  (:init
   (&key
    ((:available __available) 0)
    ((:brake_report_data __brake_report_data) (instance endpoint_msgs::BrakeReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _brake_report_data __brake_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:brake_report_data
   (&rest __brake_report_data)
   (if (keywordp (car __brake_report_data))
       (send* _brake_report_data __brake_report_data)
     (progn
       (if __brake_report_data (setq _brake_report_data (car __brake_report_data)))
       _brake_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/BrakeReportData _brake_report_data
    (send _brake_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/BrakeReportData _brake_report_data
       (send _brake_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/BrakeReportData _brake_report_data
     (send _brake_report_data :deserialize buf ptr-) (incf ptr- (send _brake_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::BrakeReport :md5sum-) "5d0730876c9eaa82cf827c44cc09db2f")
(setf (get endpoint_msgs::BrakeReport :datatype-) "endpoint_msgs/BrakeReport")
(setf (get endpoint_msgs::BrakeReport :definition-)
      "uint8 BRAKE_REPORT_DATA = 1
uint8 available
endpoint_msgs/BrakeReportData brake_report_data

================================================================================
MSG: endpoint_msgs/BrakeReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/BrakeType brake_type
float32 pedal_input
float32 brake_command
float32 brake_output
bool override
float32 ahb_exec_brake_force
bool ahb_exec_brake_force_valid
bool ready
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
MSG: endpoint_msgs/BrakeType
uint8 PEDAL = 1
uint8 DECELERATION = 2
uint8 MASTER_CYLINDERPRESSURE = 3
uint8 WHEEL_CYLINDERPRESSURE = 4
uint8 TORQUE = 5
uint8 DISTANCE = 6
uint8 SV = 7
uint8 RESERVED = 8
uint8 value

")



(provide :endpoint_msgs/BrakeReport "5d0730876c9eaa82cf827c44cc09db2f")


