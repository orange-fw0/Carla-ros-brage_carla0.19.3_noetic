;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AuxiliaryReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AuxiliaryReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AUXILIARYREPORT")
  (make-package "ENDPOINT_MSGS::AUXILIARYREPORT"))

(in-package "ROS")
;;//! \htmlinclude AuxiliaryReport.msg.html


(intern "*AUXILIARY_REPORT_DATA*" (find-package "ENDPOINT_MSGS::AUXILIARYREPORT"))
(shadow '*AUXILIARY_REPORT_DATA* (find-package "ENDPOINT_MSGS::AUXILIARYREPORT"))
(defconstant endpoint_msgs::AuxiliaryReport::*AUXILIARY_REPORT_DATA* 1)

(defun endpoint_msgs::AuxiliaryReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::AuxiliaryReport::*AUXILIARY_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::AuxiliaryReport
  :super ros::object
  :slots (_available _auxiliary_report_data ))

(defmethod endpoint_msgs::AuxiliaryReport
  (:init
   (&key
    ((:available __available) 0)
    ((:auxiliary_report_data __auxiliary_report_data) (instance endpoint_msgs::AuxiliaryReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _auxiliary_report_data __auxiliary_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:auxiliary_report_data
   (&rest __auxiliary_report_data)
   (if (keywordp (car __auxiliary_report_data))
       (send* _auxiliary_report_data __auxiliary_report_data)
     (progn
       (if __auxiliary_report_data (setq _auxiliary_report_data (car __auxiliary_report_data)))
       _auxiliary_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/AuxiliaryReportData _auxiliary_report_data
    (send _auxiliary_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/AuxiliaryReportData _auxiliary_report_data
       (send _auxiliary_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/AuxiliaryReportData _auxiliary_report_data
     (send _auxiliary_report_data :deserialize buf ptr-) (incf ptr- (send _auxiliary_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::AuxiliaryReport :md5sum-) "6651f4ec1683fcefcc01e5bcd9a9df24")
(setf (get endpoint_msgs::AuxiliaryReport :datatype-) "endpoint_msgs/AuxiliaryReport")
(setf (get endpoint_msgs::AuxiliaryReport :definition-)
      "uint8 AUXILIARY_REPORT_DATA = 1
uint8 available
endpoint_msgs/AuxiliaryReportData auxiliary_report_data

================================================================================
MSG: endpoint_msgs/AuxiliaryReportData
uint64 timestamp_us
endpoint_msgs/RearviewMirrorStatus rearview_mirror
endpoint_msgs/PowerModeType vehicle_power_mode
bool vehicle_power_valid
bool vehicle_lock
bool vehicle_horn
endpoint_msgs/RainSensorLevel rain_sensor_level
float32 vehicle_speed_on_dashboard
bool vehicle_speed_on_dashboard_valid
endpoint_msgs/VehicleSpeedonDashboardUnit vehicle_speed_on_dashboard_unit
float32 vehicle_outside_temp
bool vehicle_outside_temp_valid
float32 vechile_inside_temp
bool vechile_inside_temp_valid
endpoint_msgs/VehicleModeState vehicle_mode_state
endpoint_msgs/VehicledrivingMode vehicle_driving_mode
endpoint_msgs/ChargeConnectState charge_connect_status
endpoint_msgs/AutoDriveStatus auto_driver_status
bool shared_control_state
bool shared_control_enable
endpoint_msgs/RearviewMirrorAdjustSwitch rearview_mirror_adjust_switch
float32 horizontal_light_lumens
bool horizontal_light_lumens_valid
float32 vertical_light_lumens
bool vertical_light_lumens_valid

================================================================================
MSG: endpoint_msgs/RearviewMirrorStatus
uint8 NONE = 0
uint8 OPEN = 1
uint8 CLOSE = 2
uint8 OPENING = 3
uint8 CLOSING = 4
uint8 PROCESSING = 5
uint8 RESERVED = 6
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/PowerModeType
uint8 VEHILCE_POWER_MODE_OFF = 0
uint8 VEHILCE_POWER_MODE_NORMAL = 1
uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2
uint8 VEHILCE_POWER_MODE_RESERVED1 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/RainSensorLevel
uint8 RAIN_SENSOR_OFF = 0
uint8 RARIN_SENSOR_LEVEL_LOW = 1
uint8 RARIN_SENSOR_LEVEL_MID = 2
uint8 RARIN_SENSOR_LEVEL_HIGH = 3
uint8 RARIN_SENSOR_LEVEL_RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleSpeedonDashboardUnit
uint8 NONE = 0
uint8 KMH = 1
uint8 MILEH = 2
uint8 UNKNOWN = 3
uint8 RESVERD = 4
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleModeState
uint8 NONE = 0
uint8 NORMAL_MODE = 1
uint8 MANUFACTURE_MODE = 2
uint8 TRANSPORT_MODE = 3
uint8 SHOWROOM_MODE = 4
uint8 POSTCRASH_MODE = 5
uint8 MAINTENANCE_MODE = 6
uint8 CARWASH_MODE = 7
uint8 BENCHTEST_MODE = 8
uint8 DRAG_MODE = 9
uint8 RESERVED1 = 10
uint8 RESERVED2 = 11
uint8 RESERVED3 = 12
uint8 value

================================================================================
MSG: endpoint_msgs/VehicledrivingMode
uint8 NONE = 0
uint8 NORMAL = 1
uint8 DRIFT_EXP = 2
uint8 WINTER_SPORT = 3
uint8 OFFROAD = 4
uint8 RACE_TRACK = 5
uint8 ROCK = 6
uint8 SAND = 7
uint8 SPORT = 8
uint8 ECO = 9
uint8 MUD = 10
uint8 OPD = 11
uint8 WADING = 12
uint8 SNOW = 13
uint8 ICE = 14
uint8 GRASS = 15
uint8 GRIT = 16
uint8 MOUNTAIN = 17
uint8 SUPER_WADING = 18
uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19
uint8 TURN_IN_PLACE = 20
uint8 ECO_PLUS = 21
uint8 RALLY = 22
uint8 LIMP_MODE = 23
uint8 SPORT_PLUS = 24
uint8 CREEP = 25
uint8 OVERCLOCKING_MODE = 26
uint8 ANTISKID_CHAIN = 27
uint8 STRUCK_ASSISTANT = 28
uint8 TERRAIN_ASSISTANT = 29
uint8 ITAC = 30
uint8 Ext_Endurance = 31
uint8 DEEPSNOW = 32
uint8 TBS_Detn = 33
uint8 AUTOMATIC_MODE = 34
uint8 CUSTOM_MODE = 35
uint8 RESERVED1 = 36
uint8 RESERVED2 = 37
uint8 RESERVED3 = 38
uint8 mode
uint8 sub_mode

================================================================================
MSG: endpoint_msgs/ChargeConnectState
uint8 NONE = 0
uint8 NOT_CONNECTED = 1
uint8 CONNECTED = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/AutoDriveStatus
uint8 NONE = 0
uint8 READY = 1
uint8 NOT_READY = 2
uint8 value

================================================================================
MSG: endpoint_msgs/RearviewMirrorAdjustSwitch
uint8 NONE = 0
uint8 ON = 1
uint8 OFF = 2
uint8 value

")



(provide :endpoint_msgs/AuxiliaryReport "6651f4ec1683fcefcc01e5bcd9a9df24")


