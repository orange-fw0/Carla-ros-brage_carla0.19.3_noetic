;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::GearReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'GearReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::GEARREPORT")
  (make-package "ENDPOINT_MSGS::GEARREPORT"))

(in-package "ROS")
;;//! \htmlinclude GearReport.msg.html


(intern "*GEAR_REPORT_DATA*" (find-package "ENDPOINT_MSGS::GEARREPORT"))
(shadow '*GEAR_REPORT_DATA* (find-package "ENDPOINT_MSGS::GEARREPORT"))
(defconstant endpoint_msgs::GearReport::*GEAR_REPORT_DATA* 1)

(defun endpoint_msgs::GearReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::GearReport::*GEAR_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::GearReport
  :super ros::object
  :slots (_available _gear_report_data ))

(defmethod endpoint_msgs::GearReport
  (:init
   (&key
    ((:available __available) 0)
    ((:gear_report_data __gear_report_data) (instance endpoint_msgs::GearReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _gear_report_data __gear_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:gear_report_data
   (&rest __gear_report_data)
   (if (keywordp (car __gear_report_data))
       (send* _gear_report_data __gear_report_data)
     (progn
       (if __gear_report_data (setq _gear_report_data (car __gear_report_data)))
       _gear_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/GearReportData _gear_report_data
    (send _gear_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/GearReportData _gear_report_data
       (send _gear_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/GearReportData _gear_report_data
     (send _gear_report_data :deserialize buf ptr-) (incf ptr- (send _gear_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::GearReport :md5sum-) "761777a6f2b3b5226be6c7801de6c2ef")
(setf (get endpoint_msgs::GearReport :datatype-) "endpoint_msgs/GearReport")
(setf (get endpoint_msgs::GearReport :definition-)
      "uint8 GEAR_REPORT_DATA = 1
uint8 available
endpoint_msgs/GearReportData gear_report_data

================================================================================
MSG: endpoint_msgs/GearReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/Gear command
endpoint_msgs/Gear current_state
endpoint_msgs/GearReject reject
bool override
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
MSG: endpoint_msgs/Gear
uint8 NONE = 0
uint8 PARK = 1
uint8 REVERSE = 2
uint8 NEUTRAL = 3
uint8 DRIVE = 4
uint8 LOW = 5
uint8 value

================================================================================
MSG: endpoint_msgs/GearReject
uint8 NONE = 0
uint8 SHIFT_IN_PROGRESS = 1
uint8 OVERRIDE = 2
uint8 ROTARY_LOW = 3
uint8 ROTARY_PARK = 4
uint8 VEHICLE = 5
uint8 value

")



(provide :endpoint_msgs/GearReport "761777a6f2b3b5226be6c7801de6c2ef")


