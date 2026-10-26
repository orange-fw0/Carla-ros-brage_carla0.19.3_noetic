;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AuxiliaryCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AuxiliaryCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AUXILIARYCOMMAND")
  (make-package "ENDPOINT_MSGS::AUXILIARYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude AuxiliaryCommand.msg.html


(intern "*AUXILIARY_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::AUXILIARYCOMMAND"))
(shadow '*AUXILIARY_COMMAND_DATA* (find-package "ENDPOINT_MSGS::AUXILIARYCOMMAND"))
(defconstant endpoint_msgs::AuxiliaryCommand::*AUXILIARY_COMMAND_DATA* 1)

(defun endpoint_msgs::AuxiliaryCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::AuxiliaryCommand::*AUXILIARY_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::AuxiliaryCommand
  :super ros::object
  :slots (_available _auxiliary_command_data ))

(defmethod endpoint_msgs::AuxiliaryCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:auxiliary_command_data __auxiliary_command_data) (instance endpoint_msgs::AuxiliaryCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _auxiliary_command_data __auxiliary_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:auxiliary_command_data
   (&rest __auxiliary_command_data)
   (if (keywordp (car __auxiliary_command_data))
       (send* _auxiliary_command_data __auxiliary_command_data)
     (progn
       (if __auxiliary_command_data (setq _auxiliary_command_data (car __auxiliary_command_data)))
       _auxiliary_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/AuxiliaryCommandData _auxiliary_command_data
    (send _auxiliary_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/AuxiliaryCommandData _auxiliary_command_data
       (send _auxiliary_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/AuxiliaryCommandData _auxiliary_command_data
     (send _auxiliary_command_data :deserialize buf ptr-) (incf ptr- (send _auxiliary_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::AuxiliaryCommand :md5sum-) "4fdab96c0ecd165eae50dd7d8fd90979")
(setf (get endpoint_msgs::AuxiliaryCommand :datatype-) "endpoint_msgs/AuxiliaryCommand")
(setf (get endpoint_msgs::AuxiliaryCommand :definition-)
      "uint8 AUXILIARY_COMMAND_DATA = 1
uint8 available
endpoint_msgs/AuxiliaryCommandData auxiliary_command_data

================================================================================
MSG: endpoint_msgs/AuxiliaryCommandData
uint64 timestamp_us
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



(provide :endpoint_msgs/AuxiliaryCommand "4fdab96c0ecd165eae50dd7d8fd90979")


