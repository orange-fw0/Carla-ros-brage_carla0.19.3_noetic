;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleLightReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleLightReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLELIGHTREPORT")
  (make-package "ENDPOINT_MSGS::VEHICLELIGHTREPORT"))

(in-package "ROS")
;;//! \htmlinclude VehicleLightReport.msg.html


(intern "*VEHICLE_LIGHT_REPORT_DATA*" (find-package "ENDPOINT_MSGS::VEHICLELIGHTREPORT"))
(shadow '*VEHICLE_LIGHT_REPORT_DATA* (find-package "ENDPOINT_MSGS::VEHICLELIGHTREPORT"))
(defconstant endpoint_msgs::VehicleLightReport::*VEHICLE_LIGHT_REPORT_DATA* 1)

(defun endpoint_msgs::VehicleLightReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::VehicleLightReport::*VEHICLE_LIGHT_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::VehicleLightReport
  :super ros::object
  :slots (_available _vehicle_light_report_data ))

(defmethod endpoint_msgs::VehicleLightReport
  (:init
   (&key
    ((:available __available) 0)
    ((:vehicle_light_report_data __vehicle_light_report_data) (instance endpoint_msgs::VehicleLightReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _vehicle_light_report_data __vehicle_light_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:vehicle_light_report_data
   (&rest __vehicle_light_report_data)
   (if (keywordp (car __vehicle_light_report_data))
       (send* _vehicle_light_report_data __vehicle_light_report_data)
     (progn
       (if __vehicle_light_report_data (setq _vehicle_light_report_data (car __vehicle_light_report_data)))
       _vehicle_light_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/VehicleLightReportData _vehicle_light_report_data
    (send _vehicle_light_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/VehicleLightReportData _vehicle_light_report_data
       (send _vehicle_light_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/VehicleLightReportData _vehicle_light_report_data
     (send _vehicle_light_report_data :deserialize buf ptr-) (incf ptr- (send _vehicle_light_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleLightReport :md5sum-) "495d152b9132f367627d82e7367095d1")
(setf (get endpoint_msgs::VehicleLightReport :datatype-) "endpoint_msgs/VehicleLightReport")
(setf (get endpoint_msgs::VehicleLightReport :definition-)
      "uint8 VEHICLE_LIGHT_REPORT_DATA = 1
uint8 available
endpoint_msgs/VehicleLightReportData vehicle_light_report_data

================================================================================
MSG: endpoint_msgs/VehicleLightReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/TurnSignal turn_signal_type
endpoint_msgs/FrontLightState front_light
bool width_light
bool reversing_light
bool front_fog_light
bool rear_fog_light
endpoint_msgs/LeverStatus lever_state
bool position_light_status
endpoint_msgs/BrakeLightStatus brake_light
endpoint_msgs/LeverType lever_type
bool auto_light_ctrl_state
endpoint_msgs/LightModeState light_mode_status
endpoint_msgs/FrontLightSwitchState front_light_switch_state
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
MSG: endpoint_msgs/TurnSignal
uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 EMERGENCY_FLASHER = 3
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/FrontLightState
uint8 LIGHT_OFF = 0
uint8 LOW_BEAM_LIGHT = 1
uint8 HIGH_BEAM_LIGHT = 2
uint8 OVERTAKING_FLASH = 3
uint8 LIGHT_AUTO = 4
uint8 value

================================================================================
MSG: endpoint_msgs/LeverStatus
uint8 LEVER_STATE_OFF = 0
uint8 LEVER_STATE_LEFT = 1
uint8 LEVER_STATE_RIGHT = 2
uint8 LEVER_STATE_LEFT_INVALID = 3
uint8 LEVER_STATE_RIGHT_INVALID = 4
uint8 LEVER_STATE_LEFT_LIGHT = 5
uint8 LEVER_STATE_RIGHT_LIGHT = 6
uint8 LEVER_STATE_RESERVED1 = 7
uint8 LEVER_STATE_RESERVED3 = 8
uint8 value

================================================================================
MSG: endpoint_msgs/BrakeLightStatus
uint8 BRAKE_LIGHT_NONE = 0
uint8 BRAKE_LIGHT_OFF = 1
uint8 BRAKE_LIGHT_ON = 2
uint8 BRAKE_LIGHT_INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/LeverType
uint8 LEVER_TYPE_MECHANICAL = 0
uint8 LEVER_TYPE_ELECTRONIC = 1
uint8 LEVER_STATE_RESERVED1 = 2
uint8 LEVER_STATE_RESERVED2 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/LightModeState
uint8 LIGHT_OFF = 0
uint8 LIGHT_AUTO = 1
uint8 LIGHT_LOW_BEAM = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/FrontLightSwitchState
uint8 FRONT_LIGHT_OFF = 0
uint8 FRONT_LIGHT_LOW = 1
uint8 FRONT_LIGHT_HIGH = 2
uint8 FRONT_LIGHT_FLASH = 3
uint8 RESERVED1 = 4
uint8 RESERVED2 = 5
uint8 value

")



(provide :endpoint_msgs/VehicleLightReport "495d152b9132f367627d82e7367095d1")


