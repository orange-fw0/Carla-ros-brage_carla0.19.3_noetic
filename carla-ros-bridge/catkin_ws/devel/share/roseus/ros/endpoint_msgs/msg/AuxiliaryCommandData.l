;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AuxiliaryCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AuxiliaryCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AUXILIARYCOMMANDDATA")
  (make-package "ENDPOINT_MSGS::AUXILIARYCOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude AuxiliaryCommandData.msg.html


(defclass endpoint_msgs::AuxiliaryCommandData
  :super ros::object
  :slots (_timestamp_us _wiper_enable _front_wiper _rear_wiper _rearview_mirror _vehicle_power _vehicle_lock _seat_belt_alarm _seat_belt_tightening _steering_wheel_alarm _buzzer_alarm _horn_enable _parking_lonti_control_mode _emergencybraking_enable _gradualbraking_enable _shared_control_enable _shared_contro_state _shared_control_steer_gain_level _shared_control_eps_torque_limit ))

(defmethod endpoint_msgs::AuxiliaryCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:wiper_enable __wiper_enable) nil)
    ((:front_wiper __front_wiper) (instance endpoint_msgs::WiperCommandType :init))
    ((:rear_wiper __rear_wiper) (instance endpoint_msgs::WiperCommandType :init))
    ((:rearview_mirror __rearview_mirror) (instance endpoint_msgs::MirrorState :init))
    ((:vehicle_power __vehicle_power) (instance endpoint_msgs::PowerModeType :init))
    ((:vehicle_lock __vehicle_lock) (instance endpoint_msgs::VehicleLockType :init))
    ((:seat_belt_alarm __seat_belt_alarm) nil)
    ((:seat_belt_tightening __seat_belt_tightening) nil)
    ((:steering_wheel_alarm __steering_wheel_alarm) nil)
    ((:buzzer_alarm __buzzer_alarm) nil)
    ((:horn_enable __horn_enable) nil)
    ((:parking_lonti_control_mode __parking_lonti_control_mode) (instance endpoint_msgs::ApaVcurCtlMode :init))
    ((:emergencybraking_enable __emergencybraking_enable) nil)
    ((:gradualbraking_enable __gradualbraking_enable) nil)
    ((:shared_control_enable __shared_control_enable) nil)
    ((:shared_contro_state __shared_contro_state) nil)
    ((:shared_control_steer_gain_level __shared_control_steer_gain_level) 0.0)
    ((:shared_control_eps_torque_limit __shared_control_eps_torque_limit) 0.0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _wiper_enable __wiper_enable)
   (setq _front_wiper __front_wiper)
   (setq _rear_wiper __rear_wiper)
   (setq _rearview_mirror __rearview_mirror)
   (setq _vehicle_power __vehicle_power)
   (setq _vehicle_lock __vehicle_lock)
   (setq _seat_belt_alarm __seat_belt_alarm)
   (setq _seat_belt_tightening __seat_belt_tightening)
   (setq _steering_wheel_alarm __steering_wheel_alarm)
   (setq _buzzer_alarm __buzzer_alarm)
   (setq _horn_enable __horn_enable)
   (setq _parking_lonti_control_mode __parking_lonti_control_mode)
   (setq _emergencybraking_enable __emergencybraking_enable)
   (setq _gradualbraking_enable __gradualbraking_enable)
   (setq _shared_control_enable __shared_control_enable)
   (setq _shared_contro_state __shared_contro_state)
   (setq _shared_control_steer_gain_level (float __shared_control_steer_gain_level))
   (setq _shared_control_eps_torque_limit (float __shared_control_eps_torque_limit))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:wiper_enable
   (&optional (__wiper_enable :null))
   (if (not (eq __wiper_enable :null)) (setq _wiper_enable __wiper_enable)) _wiper_enable)
  (:front_wiper
   (&rest __front_wiper)
   (if (keywordp (car __front_wiper))
       (send* _front_wiper __front_wiper)
     (progn
       (if __front_wiper (setq _front_wiper (car __front_wiper)))
       _front_wiper)))
  (:rear_wiper
   (&rest __rear_wiper)
   (if (keywordp (car __rear_wiper))
       (send* _rear_wiper __rear_wiper)
     (progn
       (if __rear_wiper (setq _rear_wiper (car __rear_wiper)))
       _rear_wiper)))
  (:rearview_mirror
   (&rest __rearview_mirror)
   (if (keywordp (car __rearview_mirror))
       (send* _rearview_mirror __rearview_mirror)
     (progn
       (if __rearview_mirror (setq _rearview_mirror (car __rearview_mirror)))
       _rearview_mirror)))
  (:vehicle_power
   (&rest __vehicle_power)
   (if (keywordp (car __vehicle_power))
       (send* _vehicle_power __vehicle_power)
     (progn
       (if __vehicle_power (setq _vehicle_power (car __vehicle_power)))
       _vehicle_power)))
  (:vehicle_lock
   (&rest __vehicle_lock)
   (if (keywordp (car __vehicle_lock))
       (send* _vehicle_lock __vehicle_lock)
     (progn
       (if __vehicle_lock (setq _vehicle_lock (car __vehicle_lock)))
       _vehicle_lock)))
  (:seat_belt_alarm
   (&optional (__seat_belt_alarm :null))
   (if (not (eq __seat_belt_alarm :null)) (setq _seat_belt_alarm __seat_belt_alarm)) _seat_belt_alarm)
  (:seat_belt_tightening
   (&optional (__seat_belt_tightening :null))
   (if (not (eq __seat_belt_tightening :null)) (setq _seat_belt_tightening __seat_belt_tightening)) _seat_belt_tightening)
  (:steering_wheel_alarm
   (&optional (__steering_wheel_alarm :null))
   (if (not (eq __steering_wheel_alarm :null)) (setq _steering_wheel_alarm __steering_wheel_alarm)) _steering_wheel_alarm)
  (:buzzer_alarm
   (&optional (__buzzer_alarm :null))
   (if (not (eq __buzzer_alarm :null)) (setq _buzzer_alarm __buzzer_alarm)) _buzzer_alarm)
  (:horn_enable
   (&optional (__horn_enable :null))
   (if (not (eq __horn_enable :null)) (setq _horn_enable __horn_enable)) _horn_enable)
  (:parking_lonti_control_mode
   (&rest __parking_lonti_control_mode)
   (if (keywordp (car __parking_lonti_control_mode))
       (send* _parking_lonti_control_mode __parking_lonti_control_mode)
     (progn
       (if __parking_lonti_control_mode (setq _parking_lonti_control_mode (car __parking_lonti_control_mode)))
       _parking_lonti_control_mode)))
  (:emergencybraking_enable
   (&optional (__emergencybraking_enable :null))
   (if (not (eq __emergencybraking_enable :null)) (setq _emergencybraking_enable __emergencybraking_enable)) _emergencybraking_enable)
  (:gradualbraking_enable
   (&optional (__gradualbraking_enable :null))
   (if (not (eq __gradualbraking_enable :null)) (setq _gradualbraking_enable __gradualbraking_enable)) _gradualbraking_enable)
  (:shared_control_enable
   (&optional (__shared_control_enable :null))
   (if (not (eq __shared_control_enable :null)) (setq _shared_control_enable __shared_control_enable)) _shared_control_enable)
  (:shared_contro_state
   (&optional (__shared_contro_state :null))
   (if (not (eq __shared_contro_state :null)) (setq _shared_contro_state __shared_contro_state)) _shared_contro_state)
  (:shared_control_steer_gain_level
   (&optional __shared_control_steer_gain_level)
   (if __shared_control_steer_gain_level (setq _shared_control_steer_gain_level __shared_control_steer_gain_level)) _shared_control_steer_gain_level)
  (:shared_control_eps_torque_limit
   (&optional __shared_control_eps_torque_limit)
   (if __shared_control_eps_torque_limit (setq _shared_control_eps_torque_limit __shared_control_eps_torque_limit)) _shared_control_eps_torque_limit)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _wiper_enable
    1
    ;; endpoint_msgs/WiperCommandType _front_wiper
    (send _front_wiper :serialization-length)
    ;; endpoint_msgs/WiperCommandType _rear_wiper
    (send _rear_wiper :serialization-length)
    ;; endpoint_msgs/MirrorState _rearview_mirror
    (send _rearview_mirror :serialization-length)
    ;; endpoint_msgs/PowerModeType _vehicle_power
    (send _vehicle_power :serialization-length)
    ;; endpoint_msgs/VehicleLockType _vehicle_lock
    (send _vehicle_lock :serialization-length)
    ;; bool _seat_belt_alarm
    1
    ;; bool _seat_belt_tightening
    1
    ;; bool _steering_wheel_alarm
    1
    ;; bool _buzzer_alarm
    1
    ;; bool _horn_enable
    1
    ;; endpoint_msgs/ApaVcurCtlMode _parking_lonti_control_mode
    (send _parking_lonti_control_mode :serialization-length)
    ;; bool _emergencybraking_enable
    1
    ;; bool _gradualbraking_enable
    1
    ;; bool _shared_control_enable
    1
    ;; bool _shared_contro_state
    1
    ;; float32 _shared_control_steer_gain_level
    4
    ;; float32 _shared_control_eps_torque_limit
    4
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
     ;; bool _wiper_enable
       (if _wiper_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/WiperCommandType _front_wiper
       (send _front_wiper :serialize s)
     ;; endpoint_msgs/WiperCommandType _rear_wiper
       (send _rear_wiper :serialize s)
     ;; endpoint_msgs/MirrorState _rearview_mirror
       (send _rearview_mirror :serialize s)
     ;; endpoint_msgs/PowerModeType _vehicle_power
       (send _vehicle_power :serialize s)
     ;; endpoint_msgs/VehicleLockType _vehicle_lock
       (send _vehicle_lock :serialize s)
     ;; bool _seat_belt_alarm
       (if _seat_belt_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _seat_belt_tightening
       (if _seat_belt_tightening (write-byte -1 s) (write-byte 0 s))
     ;; bool _steering_wheel_alarm
       (if _steering_wheel_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _buzzer_alarm
       (if _buzzer_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _horn_enable
       (if _horn_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/ApaVcurCtlMode _parking_lonti_control_mode
       (send _parking_lonti_control_mode :serialize s)
     ;; bool _emergencybraking_enable
       (if _emergencybraking_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _gradualbraking_enable
       (if _gradualbraking_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _shared_control_enable
       (if _shared_control_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _shared_contro_state
       (if _shared_contro_state (write-byte -1 s) (write-byte 0 s))
     ;; float32 _shared_control_steer_gain_level
       (sys::poke _shared_control_steer_gain_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _shared_control_eps_torque_limit
       (sys::poke _shared_control_eps_torque_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; bool _wiper_enable
     (setq _wiper_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/WiperCommandType _front_wiper
     (send _front_wiper :deserialize buf ptr-) (incf ptr- (send _front_wiper :serialization-length))
   ;; endpoint_msgs/WiperCommandType _rear_wiper
     (send _rear_wiper :deserialize buf ptr-) (incf ptr- (send _rear_wiper :serialization-length))
   ;; endpoint_msgs/MirrorState _rearview_mirror
     (send _rearview_mirror :deserialize buf ptr-) (incf ptr- (send _rearview_mirror :serialization-length))
   ;; endpoint_msgs/PowerModeType _vehicle_power
     (send _vehicle_power :deserialize buf ptr-) (incf ptr- (send _vehicle_power :serialization-length))
   ;; endpoint_msgs/VehicleLockType _vehicle_lock
     (send _vehicle_lock :deserialize buf ptr-) (incf ptr- (send _vehicle_lock :serialization-length))
   ;; bool _seat_belt_alarm
     (setq _seat_belt_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _seat_belt_tightening
     (setq _seat_belt_tightening (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _steering_wheel_alarm
     (setq _steering_wheel_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buzzer_alarm
     (setq _buzzer_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _horn_enable
     (setq _horn_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/ApaVcurCtlMode _parking_lonti_control_mode
     (send _parking_lonti_control_mode :deserialize buf ptr-) (incf ptr- (send _parking_lonti_control_mode :serialization-length))
   ;; bool _emergencybraking_enable
     (setq _emergencybraking_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gradualbraking_enable
     (setq _gradualbraking_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _shared_control_enable
     (setq _shared_control_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _shared_contro_state
     (setq _shared_contro_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _shared_control_steer_gain_level
     (setq _shared_control_steer_gain_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _shared_control_eps_torque_limit
     (setq _shared_control_eps_torque_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get endpoint_msgs::AuxiliaryCommandData :md5sum-) "41eec34e86b9dc8b6e2aa4c7d0428198")
(setf (get endpoint_msgs::AuxiliaryCommandData :datatype-) "endpoint_msgs/AuxiliaryCommandData")
(setf (get endpoint_msgs::AuxiliaryCommandData :definition-)
      "uint64 timestamp_us
bool wiper_enable
endpoint_msgs/WiperCommandType front_wiper
endpoint_msgs/WiperCommandType rear_wiper
endpoint_msgs/MirrorState rearview_mirror
endpoint_msgs/PowerModeType vehicle_power
endpoint_msgs/VehicleLockType vehicle_lock
bool seat_belt_alarm
bool seat_belt_tightening
bool steering_wheel_alarm
bool buzzer_alarm
bool horn_enable
endpoint_msgs/ApaVcurCtlMode parking_lonti_control_mode
bool emergencybraking_enable
bool gradualbraking_enable
bool shared_control_enable
bool shared_contro_state
float32 shared_control_steer_gain_level
float32 shared_control_eps_torque_limit

================================================================================
MSG: endpoint_msgs/WiperCommandType
uint8 OFF = 0
uint8 LOW = 1
uint8 HIGH = 2
uint8 AUTO = 3
uint8 SPRAY = 4
uint8 RESERVED = 5
uint8 value

================================================================================
MSG: endpoint_msgs/MirrorState
uint8 NO_REQUEST = 0
uint8 REQUEST_UNFOLD = 1
uint8 REQUEST_FOLD = 2
uint8 RESERVED1 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/PowerModeType
uint8 VEHILCE_POWER_MODE_OFF = 0
uint8 VEHILCE_POWER_MODE_NORMAL = 1
uint8 VEHILCE_POWER_MODE_AUTODRIVE = 2
uint8 VEHILCE_POWER_MODE_RESERVED1 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleLockType
uint8 NONE = 0
uint8 UNLOCK = 1
uint8 LOCK = 2
uint8 value

================================================================================
MSG: endpoint_msgs/ApaVcurCtlMode
uint8 NORMAL = 0
uint8 DR_SWITCH_MODE = 1
uint8 OBSTACLE_CROSSING_MODE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 RESERVED4 = 6
uint8 RESERVED5 = 7
uint8 value

")



(provide :endpoint_msgs/AuxiliaryCommandData "41eec34e86b9dc8b6e2aa4c7d0428198")


