;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AuxiliaryReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AuxiliaryReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AUXILIARYREPORTDATA")
  (make-package "ENDPOINT_MSGS::AUXILIARYREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude AuxiliaryReportData.msg.html


(defclass endpoint_msgs::AuxiliaryReportData
  :super ros::object
  :slots (_timestamp_us _rearview_mirror _vehicle_power_mode _vehicle_power_valid _vehicle_lock _vehicle_horn _rain_sensor_level _vehicle_speed_on_dashboard _vehicle_speed_on_dashboard_valid _vehicle_speed_on_dashboard_unit _vehicle_outside_temp _vehicle_outside_temp_valid _vechile_inside_temp _vechile_inside_temp_valid _vehicle_mode_state _vehicle_driving_mode _charge_connect_status _auto_driver_status _shared_control_state _shared_control_enable _rearview_mirror_adjust_switch _horizontal_light_lumens _horizontal_light_lumens_valid _vertical_light_lumens _vertical_light_lumens_valid ))

(defmethod endpoint_msgs::AuxiliaryReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:rearview_mirror __rearview_mirror) (instance endpoint_msgs::RearviewMirrorStatus :init))
    ((:vehicle_power_mode __vehicle_power_mode) (instance endpoint_msgs::PowerModeType :init))
    ((:vehicle_power_valid __vehicle_power_valid) nil)
    ((:vehicle_lock __vehicle_lock) nil)
    ((:vehicle_horn __vehicle_horn) nil)
    ((:rain_sensor_level __rain_sensor_level) (instance endpoint_msgs::RainSensorLevel :init))
    ((:vehicle_speed_on_dashboard __vehicle_speed_on_dashboard) 0.0)
    ((:vehicle_speed_on_dashboard_valid __vehicle_speed_on_dashboard_valid) nil)
    ((:vehicle_speed_on_dashboard_unit __vehicle_speed_on_dashboard_unit) (instance endpoint_msgs::VehicleSpeedonDashboardUnit :init))
    ((:vehicle_outside_temp __vehicle_outside_temp) 0.0)
    ((:vehicle_outside_temp_valid __vehicle_outside_temp_valid) nil)
    ((:vechile_inside_temp __vechile_inside_temp) 0.0)
    ((:vechile_inside_temp_valid __vechile_inside_temp_valid) nil)
    ((:vehicle_mode_state __vehicle_mode_state) (instance endpoint_msgs::VehicleModeState :init))
    ((:vehicle_driving_mode __vehicle_driving_mode) (instance endpoint_msgs::VehicledrivingMode :init))
    ((:charge_connect_status __charge_connect_status) (instance endpoint_msgs::ChargeConnectState :init))
    ((:auto_driver_status __auto_driver_status) (instance endpoint_msgs::AutoDriveStatus :init))
    ((:shared_control_state __shared_control_state) nil)
    ((:shared_control_enable __shared_control_enable) nil)
    ((:rearview_mirror_adjust_switch __rearview_mirror_adjust_switch) (instance endpoint_msgs::RearviewMirrorAdjustSwitch :init))
    ((:horizontal_light_lumens __horizontal_light_lumens) 0.0)
    ((:horizontal_light_lumens_valid __horizontal_light_lumens_valid) nil)
    ((:vertical_light_lumens __vertical_light_lumens) 0.0)
    ((:vertical_light_lumens_valid __vertical_light_lumens_valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _rearview_mirror __rearview_mirror)
   (setq _vehicle_power_mode __vehicle_power_mode)
   (setq _vehicle_power_valid __vehicle_power_valid)
   (setq _vehicle_lock __vehicle_lock)
   (setq _vehicle_horn __vehicle_horn)
   (setq _rain_sensor_level __rain_sensor_level)
   (setq _vehicle_speed_on_dashboard (float __vehicle_speed_on_dashboard))
   (setq _vehicle_speed_on_dashboard_valid __vehicle_speed_on_dashboard_valid)
   (setq _vehicle_speed_on_dashboard_unit __vehicle_speed_on_dashboard_unit)
   (setq _vehicle_outside_temp (float __vehicle_outside_temp))
   (setq _vehicle_outside_temp_valid __vehicle_outside_temp_valid)
   (setq _vechile_inside_temp (float __vechile_inside_temp))
   (setq _vechile_inside_temp_valid __vechile_inside_temp_valid)
   (setq _vehicle_mode_state __vehicle_mode_state)
   (setq _vehicle_driving_mode __vehicle_driving_mode)
   (setq _charge_connect_status __charge_connect_status)
   (setq _auto_driver_status __auto_driver_status)
   (setq _shared_control_state __shared_control_state)
   (setq _shared_control_enable __shared_control_enable)
   (setq _rearview_mirror_adjust_switch __rearview_mirror_adjust_switch)
   (setq _horizontal_light_lumens (float __horizontal_light_lumens))
   (setq _horizontal_light_lumens_valid __horizontal_light_lumens_valid)
   (setq _vertical_light_lumens (float __vertical_light_lumens))
   (setq _vertical_light_lumens_valid __vertical_light_lumens_valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:rearview_mirror
   (&rest __rearview_mirror)
   (if (keywordp (car __rearview_mirror))
       (send* _rearview_mirror __rearview_mirror)
     (progn
       (if __rearview_mirror (setq _rearview_mirror (car __rearview_mirror)))
       _rearview_mirror)))
  (:vehicle_power_mode
   (&rest __vehicle_power_mode)
   (if (keywordp (car __vehicle_power_mode))
       (send* _vehicle_power_mode __vehicle_power_mode)
     (progn
       (if __vehicle_power_mode (setq _vehicle_power_mode (car __vehicle_power_mode)))
       _vehicle_power_mode)))
  (:vehicle_power_valid
   (&optional (__vehicle_power_valid :null))
   (if (not (eq __vehicle_power_valid :null)) (setq _vehicle_power_valid __vehicle_power_valid)) _vehicle_power_valid)
  (:vehicle_lock
   (&optional (__vehicle_lock :null))
   (if (not (eq __vehicle_lock :null)) (setq _vehicle_lock __vehicle_lock)) _vehicle_lock)
  (:vehicle_horn
   (&optional (__vehicle_horn :null))
   (if (not (eq __vehicle_horn :null)) (setq _vehicle_horn __vehicle_horn)) _vehicle_horn)
  (:rain_sensor_level
   (&rest __rain_sensor_level)
   (if (keywordp (car __rain_sensor_level))
       (send* _rain_sensor_level __rain_sensor_level)
     (progn
       (if __rain_sensor_level (setq _rain_sensor_level (car __rain_sensor_level)))
       _rain_sensor_level)))
  (:vehicle_speed_on_dashboard
   (&optional __vehicle_speed_on_dashboard)
   (if __vehicle_speed_on_dashboard (setq _vehicle_speed_on_dashboard __vehicle_speed_on_dashboard)) _vehicle_speed_on_dashboard)
  (:vehicle_speed_on_dashboard_valid
   (&optional (__vehicle_speed_on_dashboard_valid :null))
   (if (not (eq __vehicle_speed_on_dashboard_valid :null)) (setq _vehicle_speed_on_dashboard_valid __vehicle_speed_on_dashboard_valid)) _vehicle_speed_on_dashboard_valid)
  (:vehicle_speed_on_dashboard_unit
   (&rest __vehicle_speed_on_dashboard_unit)
   (if (keywordp (car __vehicle_speed_on_dashboard_unit))
       (send* _vehicle_speed_on_dashboard_unit __vehicle_speed_on_dashboard_unit)
     (progn
       (if __vehicle_speed_on_dashboard_unit (setq _vehicle_speed_on_dashboard_unit (car __vehicle_speed_on_dashboard_unit)))
       _vehicle_speed_on_dashboard_unit)))
  (:vehicle_outside_temp
   (&optional __vehicle_outside_temp)
   (if __vehicle_outside_temp (setq _vehicle_outside_temp __vehicle_outside_temp)) _vehicle_outside_temp)
  (:vehicle_outside_temp_valid
   (&optional (__vehicle_outside_temp_valid :null))
   (if (not (eq __vehicle_outside_temp_valid :null)) (setq _vehicle_outside_temp_valid __vehicle_outside_temp_valid)) _vehicle_outside_temp_valid)
  (:vechile_inside_temp
   (&optional __vechile_inside_temp)
   (if __vechile_inside_temp (setq _vechile_inside_temp __vechile_inside_temp)) _vechile_inside_temp)
  (:vechile_inside_temp_valid
   (&optional (__vechile_inside_temp_valid :null))
   (if (not (eq __vechile_inside_temp_valid :null)) (setq _vechile_inside_temp_valid __vechile_inside_temp_valid)) _vechile_inside_temp_valid)
  (:vehicle_mode_state
   (&rest __vehicle_mode_state)
   (if (keywordp (car __vehicle_mode_state))
       (send* _vehicle_mode_state __vehicle_mode_state)
     (progn
       (if __vehicle_mode_state (setq _vehicle_mode_state (car __vehicle_mode_state)))
       _vehicle_mode_state)))
  (:vehicle_driving_mode
   (&rest __vehicle_driving_mode)
   (if (keywordp (car __vehicle_driving_mode))
       (send* _vehicle_driving_mode __vehicle_driving_mode)
     (progn
       (if __vehicle_driving_mode (setq _vehicle_driving_mode (car __vehicle_driving_mode)))
       _vehicle_driving_mode)))
  (:charge_connect_status
   (&rest __charge_connect_status)
   (if (keywordp (car __charge_connect_status))
       (send* _charge_connect_status __charge_connect_status)
     (progn
       (if __charge_connect_status (setq _charge_connect_status (car __charge_connect_status)))
       _charge_connect_status)))
  (:auto_driver_status
   (&rest __auto_driver_status)
   (if (keywordp (car __auto_driver_status))
       (send* _auto_driver_status __auto_driver_status)
     (progn
       (if __auto_driver_status (setq _auto_driver_status (car __auto_driver_status)))
       _auto_driver_status)))
  (:shared_control_state
   (&optional (__shared_control_state :null))
   (if (not (eq __shared_control_state :null)) (setq _shared_control_state __shared_control_state)) _shared_control_state)
  (:shared_control_enable
   (&optional (__shared_control_enable :null))
   (if (not (eq __shared_control_enable :null)) (setq _shared_control_enable __shared_control_enable)) _shared_control_enable)
  (:rearview_mirror_adjust_switch
   (&rest __rearview_mirror_adjust_switch)
   (if (keywordp (car __rearview_mirror_adjust_switch))
       (send* _rearview_mirror_adjust_switch __rearview_mirror_adjust_switch)
     (progn
       (if __rearview_mirror_adjust_switch (setq _rearview_mirror_adjust_switch (car __rearview_mirror_adjust_switch)))
       _rearview_mirror_adjust_switch)))
  (:horizontal_light_lumens
   (&optional __horizontal_light_lumens)
   (if __horizontal_light_lumens (setq _horizontal_light_lumens __horizontal_light_lumens)) _horizontal_light_lumens)
  (:horizontal_light_lumens_valid
   (&optional (__horizontal_light_lumens_valid :null))
   (if (not (eq __horizontal_light_lumens_valid :null)) (setq _horizontal_light_lumens_valid __horizontal_light_lumens_valid)) _horizontal_light_lumens_valid)
  (:vertical_light_lumens
   (&optional __vertical_light_lumens)
   (if __vertical_light_lumens (setq _vertical_light_lumens __vertical_light_lumens)) _vertical_light_lumens)
  (:vertical_light_lumens_valid
   (&optional (__vertical_light_lumens_valid :null))
   (if (not (eq __vertical_light_lumens_valid :null)) (setq _vertical_light_lumens_valid __vertical_light_lumens_valid)) _vertical_light_lumens_valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/RearviewMirrorStatus _rearview_mirror
    (send _rearview_mirror :serialization-length)
    ;; endpoint_msgs/PowerModeType _vehicle_power_mode
    (send _vehicle_power_mode :serialization-length)
    ;; bool _vehicle_power_valid
    1
    ;; bool _vehicle_lock
    1
    ;; bool _vehicle_horn
    1
    ;; endpoint_msgs/RainSensorLevel _rain_sensor_level
    (send _rain_sensor_level :serialization-length)
    ;; float32 _vehicle_speed_on_dashboard
    4
    ;; bool _vehicle_speed_on_dashboard_valid
    1
    ;; endpoint_msgs/VehicleSpeedonDashboardUnit _vehicle_speed_on_dashboard_unit
    (send _vehicle_speed_on_dashboard_unit :serialization-length)
    ;; float32 _vehicle_outside_temp
    4
    ;; bool _vehicle_outside_temp_valid
    1
    ;; float32 _vechile_inside_temp
    4
    ;; bool _vechile_inside_temp_valid
    1
    ;; endpoint_msgs/VehicleModeState _vehicle_mode_state
    (send _vehicle_mode_state :serialization-length)
    ;; endpoint_msgs/VehicledrivingMode _vehicle_driving_mode
    (send _vehicle_driving_mode :serialization-length)
    ;; endpoint_msgs/ChargeConnectState _charge_connect_status
    (send _charge_connect_status :serialization-length)
    ;; endpoint_msgs/AutoDriveStatus _auto_driver_status
    (send _auto_driver_status :serialization-length)
    ;; bool _shared_control_state
    1
    ;; bool _shared_control_enable
    1
    ;; endpoint_msgs/RearviewMirrorAdjustSwitch _rearview_mirror_adjust_switch
    (send _rearview_mirror_adjust_switch :serialization-length)
    ;; float32 _horizontal_light_lumens
    4
    ;; bool _horizontal_light_lumens_valid
    1
    ;; float32 _vertical_light_lumens
    4
    ;; bool _vertical_light_lumens_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; endpoint_msgs/RearviewMirrorStatus _rearview_mirror
       (send _rearview_mirror :serialize s)
     ;; endpoint_msgs/PowerModeType _vehicle_power_mode
       (send _vehicle_power_mode :serialize s)
     ;; bool _vehicle_power_valid
       (if _vehicle_power_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_lock
       (if _vehicle_lock (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_horn
       (if _vehicle_horn (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/RainSensorLevel _rain_sensor_level
       (send _rain_sensor_level :serialize s)
     ;; float32 _vehicle_speed_on_dashboard
       (sys::poke _vehicle_speed_on_dashboard (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _vehicle_speed_on_dashboard_valid
       (if _vehicle_speed_on_dashboard_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/VehicleSpeedonDashboardUnit _vehicle_speed_on_dashboard_unit
       (send _vehicle_speed_on_dashboard_unit :serialize s)
     ;; float32 _vehicle_outside_temp
       (sys::poke _vehicle_outside_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _vehicle_outside_temp_valid
       (if _vehicle_outside_temp_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vechile_inside_temp
       (sys::poke _vechile_inside_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _vechile_inside_temp_valid
       (if _vechile_inside_temp_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/VehicleModeState _vehicle_mode_state
       (send _vehicle_mode_state :serialize s)
     ;; endpoint_msgs/VehicledrivingMode _vehicle_driving_mode
       (send _vehicle_driving_mode :serialize s)
     ;; endpoint_msgs/ChargeConnectState _charge_connect_status
       (send _charge_connect_status :serialize s)
     ;; endpoint_msgs/AutoDriveStatus _auto_driver_status
       (send _auto_driver_status :serialize s)
     ;; bool _shared_control_state
       (if _shared_control_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _shared_control_enable
       (if _shared_control_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/RearviewMirrorAdjustSwitch _rearview_mirror_adjust_switch
       (send _rearview_mirror_adjust_switch :serialize s)
     ;; float32 _horizontal_light_lumens
       (sys::poke _horizontal_light_lumens (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _horizontal_light_lumens_valid
       (if _horizontal_light_lumens_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vertical_light_lumens
       (sys::poke _vertical_light_lumens (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _vertical_light_lumens_valid
       (if _vertical_light_lumens_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; endpoint_msgs/RearviewMirrorStatus _rearview_mirror
     (send _rearview_mirror :deserialize buf ptr-) (incf ptr- (send _rearview_mirror :serialization-length))
   ;; endpoint_msgs/PowerModeType _vehicle_power_mode
     (send _vehicle_power_mode :deserialize buf ptr-) (incf ptr- (send _vehicle_power_mode :serialization-length))
   ;; bool _vehicle_power_valid
     (setq _vehicle_power_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_lock
     (setq _vehicle_lock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_horn
     (setq _vehicle_horn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/RainSensorLevel _rain_sensor_level
     (send _rain_sensor_level :deserialize buf ptr-) (incf ptr- (send _rain_sensor_level :serialization-length))
   ;; float32 _vehicle_speed_on_dashboard
     (setq _vehicle_speed_on_dashboard (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _vehicle_speed_on_dashboard_valid
     (setq _vehicle_speed_on_dashboard_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/VehicleSpeedonDashboardUnit _vehicle_speed_on_dashboard_unit
     (send _vehicle_speed_on_dashboard_unit :deserialize buf ptr-) (incf ptr- (send _vehicle_speed_on_dashboard_unit :serialization-length))
   ;; float32 _vehicle_outside_temp
     (setq _vehicle_outside_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _vehicle_outside_temp_valid
     (setq _vehicle_outside_temp_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vechile_inside_temp
     (setq _vechile_inside_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _vechile_inside_temp_valid
     (setq _vechile_inside_temp_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/VehicleModeState _vehicle_mode_state
     (send _vehicle_mode_state :deserialize buf ptr-) (incf ptr- (send _vehicle_mode_state :serialization-length))
   ;; endpoint_msgs/VehicledrivingMode _vehicle_driving_mode
     (send _vehicle_driving_mode :deserialize buf ptr-) (incf ptr- (send _vehicle_driving_mode :serialization-length))
   ;; endpoint_msgs/ChargeConnectState _charge_connect_status
     (send _charge_connect_status :deserialize buf ptr-) (incf ptr- (send _charge_connect_status :serialization-length))
   ;; endpoint_msgs/AutoDriveStatus _auto_driver_status
     (send _auto_driver_status :deserialize buf ptr-) (incf ptr- (send _auto_driver_status :serialization-length))
   ;; bool _shared_control_state
     (setq _shared_control_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _shared_control_enable
     (setq _shared_control_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/RearviewMirrorAdjustSwitch _rearview_mirror_adjust_switch
     (send _rearview_mirror_adjust_switch :deserialize buf ptr-) (incf ptr- (send _rearview_mirror_adjust_switch :serialization-length))
   ;; float32 _horizontal_light_lumens
     (setq _horizontal_light_lumens (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _horizontal_light_lumens_valid
     (setq _horizontal_light_lumens_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vertical_light_lumens
     (setq _vertical_light_lumens (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _vertical_light_lumens_valid
     (setq _vertical_light_lumens_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::AuxiliaryReportData :md5sum-) "a0917d93c1e7202420b8b4c45178a9f0")
(setf (get endpoint_msgs::AuxiliaryReportData :datatype-) "endpoint_msgs/AuxiliaryReportData")
(setf (get endpoint_msgs::AuxiliaryReportData :definition-)
      "uint64 timestamp_us
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



(provide :endpoint_msgs/AuxiliaryReportData "a0917d93c1e7202420b8b4c45178a9f0")


