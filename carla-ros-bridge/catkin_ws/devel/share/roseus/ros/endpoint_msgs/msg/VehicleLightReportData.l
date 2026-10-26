;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleLightReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleLightReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLELIGHTREPORTDATA")
  (make-package "ENDPOINT_MSGS::VEHICLELIGHTREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude VehicleLightReportData.msg.html


(defclass endpoint_msgs::VehicleLightReportData
  :super ros::object
  :slots (_timestamp_us _driver_work_type _turn_signal_type _front_light _width_light _reversing_light _front_fog_light _rear_fog_light _lever_state _position_light_status _brake_light _lever_type _auto_light_ctrl_state _light_mode_status _front_light_switch_state _valid ))

(defmethod endpoint_msgs::VehicleLightReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:driver_work_type __driver_work_type) (instance endpoint_msgs::WorkType :init))
    ((:turn_signal_type __turn_signal_type) (instance endpoint_msgs::TurnSignal :init))
    ((:front_light __front_light) (instance endpoint_msgs::FrontLightState :init))
    ((:width_light __width_light) nil)
    ((:reversing_light __reversing_light) nil)
    ((:front_fog_light __front_fog_light) nil)
    ((:rear_fog_light __rear_fog_light) nil)
    ((:lever_state __lever_state) (instance endpoint_msgs::LeverStatus :init))
    ((:position_light_status __position_light_status) nil)
    ((:brake_light __brake_light) (instance endpoint_msgs::BrakeLightStatus :init))
    ((:lever_type __lever_type) (instance endpoint_msgs::LeverType :init))
    ((:auto_light_ctrl_state __auto_light_ctrl_state) nil)
    ((:light_mode_status __light_mode_status) (instance endpoint_msgs::LightModeState :init))
    ((:front_light_switch_state __front_light_switch_state) (instance endpoint_msgs::FrontLightSwitchState :init))
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _driver_work_type __driver_work_type)
   (setq _turn_signal_type __turn_signal_type)
   (setq _front_light __front_light)
   (setq _width_light __width_light)
   (setq _reversing_light __reversing_light)
   (setq _front_fog_light __front_fog_light)
   (setq _rear_fog_light __rear_fog_light)
   (setq _lever_state __lever_state)
   (setq _position_light_status __position_light_status)
   (setq _brake_light __brake_light)
   (setq _lever_type __lever_type)
   (setq _auto_light_ctrl_state __auto_light_ctrl_state)
   (setq _light_mode_status __light_mode_status)
   (setq _front_light_switch_state __front_light_switch_state)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:driver_work_type
   (&rest __driver_work_type)
   (if (keywordp (car __driver_work_type))
       (send* _driver_work_type __driver_work_type)
     (progn
       (if __driver_work_type (setq _driver_work_type (car __driver_work_type)))
       _driver_work_type)))
  (:turn_signal_type
   (&rest __turn_signal_type)
   (if (keywordp (car __turn_signal_type))
       (send* _turn_signal_type __turn_signal_type)
     (progn
       (if __turn_signal_type (setq _turn_signal_type (car __turn_signal_type)))
       _turn_signal_type)))
  (:front_light
   (&rest __front_light)
   (if (keywordp (car __front_light))
       (send* _front_light __front_light)
     (progn
       (if __front_light (setq _front_light (car __front_light)))
       _front_light)))
  (:width_light
   (&optional (__width_light :null))
   (if (not (eq __width_light :null)) (setq _width_light __width_light)) _width_light)
  (:reversing_light
   (&optional (__reversing_light :null))
   (if (not (eq __reversing_light :null)) (setq _reversing_light __reversing_light)) _reversing_light)
  (:front_fog_light
   (&optional (__front_fog_light :null))
   (if (not (eq __front_fog_light :null)) (setq _front_fog_light __front_fog_light)) _front_fog_light)
  (:rear_fog_light
   (&optional (__rear_fog_light :null))
   (if (not (eq __rear_fog_light :null)) (setq _rear_fog_light __rear_fog_light)) _rear_fog_light)
  (:lever_state
   (&rest __lever_state)
   (if (keywordp (car __lever_state))
       (send* _lever_state __lever_state)
     (progn
       (if __lever_state (setq _lever_state (car __lever_state)))
       _lever_state)))
  (:position_light_status
   (&optional (__position_light_status :null))
   (if (not (eq __position_light_status :null)) (setq _position_light_status __position_light_status)) _position_light_status)
  (:brake_light
   (&rest __brake_light)
   (if (keywordp (car __brake_light))
       (send* _brake_light __brake_light)
     (progn
       (if __brake_light (setq _brake_light (car __brake_light)))
       _brake_light)))
  (:lever_type
   (&rest __lever_type)
   (if (keywordp (car __lever_type))
       (send* _lever_type __lever_type)
     (progn
       (if __lever_type (setq _lever_type (car __lever_type)))
       _lever_type)))
  (:auto_light_ctrl_state
   (&optional (__auto_light_ctrl_state :null))
   (if (not (eq __auto_light_ctrl_state :null)) (setq _auto_light_ctrl_state __auto_light_ctrl_state)) _auto_light_ctrl_state)
  (:light_mode_status
   (&rest __light_mode_status)
   (if (keywordp (car __light_mode_status))
       (send* _light_mode_status __light_mode_status)
     (progn
       (if __light_mode_status (setq _light_mode_status (car __light_mode_status)))
       _light_mode_status)))
  (:front_light_switch_state
   (&rest __front_light_switch_state)
   (if (keywordp (car __front_light_switch_state))
       (send* _front_light_switch_state __front_light_switch_state)
     (progn
       (if __front_light_switch_state (setq _front_light_switch_state (car __front_light_switch_state)))
       _front_light_switch_state)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/WorkType _driver_work_type
    (send _driver_work_type :serialization-length)
    ;; endpoint_msgs/TurnSignal _turn_signal_type
    (send _turn_signal_type :serialization-length)
    ;; endpoint_msgs/FrontLightState _front_light
    (send _front_light :serialization-length)
    ;; bool _width_light
    1
    ;; bool _reversing_light
    1
    ;; bool _front_fog_light
    1
    ;; bool _rear_fog_light
    1
    ;; endpoint_msgs/LeverStatus _lever_state
    (send _lever_state :serialization-length)
    ;; bool _position_light_status
    1
    ;; endpoint_msgs/BrakeLightStatus _brake_light
    (send _brake_light :serialization-length)
    ;; endpoint_msgs/LeverType _lever_type
    (send _lever_type :serialization-length)
    ;; bool _auto_light_ctrl_state
    1
    ;; endpoint_msgs/LightModeState _light_mode_status
    (send _light_mode_status :serialization-length)
    ;; endpoint_msgs/FrontLightSwitchState _front_light_switch_state
    (send _front_light_switch_state :serialization-length)
    ;; bool _valid
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
     ;; endpoint_msgs/WorkType _driver_work_type
       (send _driver_work_type :serialize s)
     ;; endpoint_msgs/TurnSignal _turn_signal_type
       (send _turn_signal_type :serialize s)
     ;; endpoint_msgs/FrontLightState _front_light
       (send _front_light :serialize s)
     ;; bool _width_light
       (if _width_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _reversing_light
       (if _reversing_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_fog_light
       (if _front_fog_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_fog_light
       (if _rear_fog_light (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/LeverStatus _lever_state
       (send _lever_state :serialize s)
     ;; bool _position_light_status
       (if _position_light_status (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/BrakeLightStatus _brake_light
       (send _brake_light :serialize s)
     ;; endpoint_msgs/LeverType _lever_type
       (send _lever_type :serialize s)
     ;; bool _auto_light_ctrl_state
       (if _auto_light_ctrl_state (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/LightModeState _light_mode_status
       (send _light_mode_status :serialize s)
     ;; endpoint_msgs/FrontLightSwitchState _front_light_switch_state
       (send _front_light_switch_state :serialize s)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
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
   ;; endpoint_msgs/WorkType _driver_work_type
     (send _driver_work_type :deserialize buf ptr-) (incf ptr- (send _driver_work_type :serialization-length))
   ;; endpoint_msgs/TurnSignal _turn_signal_type
     (send _turn_signal_type :deserialize buf ptr-) (incf ptr- (send _turn_signal_type :serialization-length))
   ;; endpoint_msgs/FrontLightState _front_light
     (send _front_light :deserialize buf ptr-) (incf ptr- (send _front_light :serialization-length))
   ;; bool _width_light
     (setq _width_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reversing_light
     (setq _reversing_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_fog_light
     (setq _front_fog_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_fog_light
     (setq _rear_fog_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/LeverStatus _lever_state
     (send _lever_state :deserialize buf ptr-) (incf ptr- (send _lever_state :serialization-length))
   ;; bool _position_light_status
     (setq _position_light_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/BrakeLightStatus _brake_light
     (send _brake_light :deserialize buf ptr-) (incf ptr- (send _brake_light :serialization-length))
   ;; endpoint_msgs/LeverType _lever_type
     (send _lever_type :deserialize buf ptr-) (incf ptr- (send _lever_type :serialization-length))
   ;; bool _auto_light_ctrl_state
     (setq _auto_light_ctrl_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/LightModeState _light_mode_status
     (send _light_mode_status :deserialize buf ptr-) (incf ptr- (send _light_mode_status :serialization-length))
   ;; endpoint_msgs/FrontLightSwitchState _front_light_switch_state
     (send _front_light_switch_state :deserialize buf ptr-) (incf ptr- (send _front_light_switch_state :serialization-length))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleLightReportData :md5sum-) "a2aff46d4a50d3f8495bd5d2edf45ed3")
(setf (get endpoint_msgs::VehicleLightReportData :datatype-) "endpoint_msgs/VehicleLightReportData")
(setf (get endpoint_msgs::VehicleLightReportData :definition-)
      "uint64 timestamp_us
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



(provide :endpoint_msgs/VehicleLightReportData "a2aff46d4a50d3f8495bd5d2edf45ed3")


