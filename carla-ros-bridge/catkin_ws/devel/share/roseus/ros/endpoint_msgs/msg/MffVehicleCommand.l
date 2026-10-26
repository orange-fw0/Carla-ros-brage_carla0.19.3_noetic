;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::MffVehicleCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'MffVehicleCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MFFVEHICLECOMMAND")
  (make-package "ENDPOINT_MSGS::MFFVEHICLECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MffVehicleCommand.msg.html


(intern "*MFF_VEHICLE_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::MFFVEHICLECOMMAND"))
(shadow '*MFF_VEHICLE_COMMAND_DATA* (find-package "ENDPOINT_MSGS::MFFVEHICLECOMMAND"))
(defconstant endpoint_msgs::MffVehicleCommand::*MFF_VEHICLE_COMMAND_DATA* 1)

(defun endpoint_msgs::MffVehicleCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::MffVehicleCommand::*MFF_VEHICLE_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::MffVehicleCommand
  :super ros::object
  :slots (_available _mff_vehicle_command_data _json_command ))

(defmethod endpoint_msgs::MffVehicleCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:mff_vehicle_command_data __mff_vehicle_command_data) (instance endpoint_msgs::MffVehicleCommandData :init))
    ((:json_command __json_command) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _mff_vehicle_command_data __mff_vehicle_command_data)
   (setq _json_command (string __json_command))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:mff_vehicle_command_data
   (&rest __mff_vehicle_command_data)
   (if (keywordp (car __mff_vehicle_command_data))
       (send* _mff_vehicle_command_data __mff_vehicle_command_data)
     (progn
       (if __mff_vehicle_command_data (setq _mff_vehicle_command_data (car __mff_vehicle_command_data)))
       _mff_vehicle_command_data)))
  (:json_command
   (&optional __json_command)
   (if __json_command (setq _json_command __json_command)) _json_command)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/MffVehicleCommandData _mff_vehicle_command_data
    (send _mff_vehicle_command_data :serialization-length)
    ;; string _json_command
    4 (length _json_command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/MffVehicleCommandData _mff_vehicle_command_data
       (send _mff_vehicle_command_data :serialize s)
     ;; string _json_command
       (write-long (length _json_command) s) (princ _json_command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/MffVehicleCommandData _mff_vehicle_command_data
     (send _mff_vehicle_command_data :deserialize buf ptr-) (incf ptr- (send _mff_vehicle_command_data :serialization-length))
   ;; string _json_command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json_command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get endpoint_msgs::MffVehicleCommand :md5sum-) "8482add1d3da79c9d38a17fa8e74b284")
(setf (get endpoint_msgs::MffVehicleCommand :datatype-) "endpoint_msgs/MffVehicleCommand")
(setf (get endpoint_msgs::MffVehicleCommand :definition-)
      "uint8 MFF_VEHICLE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/MffVehicleCommandData mff_vehicle_command_data
string json_command

================================================================================
MSG: endpoint_msgs/MffVehicleCommandData
uint64 timestamp_us
endpoint_msgs/HeatWireCommand heat_wire_command
endpoint_msgs/RearviewMirrorCommand rearview_mirror_command
endpoint_msgs/SuspensionCommand suspension_comand
endpoint_msgs/SentryModeCommand sentrymode_command
endpoint_msgs/TurnSignalCommand turn_signal_command

================================================================================
MSG: endpoint_msgs/HeatWireCommand
endpoint_msgs/CameraSurfaceCondition ff_camera_status
endpoint_msgs/CameraSurfaceCondition fw_camera_status
endpoint_msgs/HeatWireControlType heat_wire_control

================================================================================
MSG: endpoint_msgs/CameraSurfaceCondition
uint8 INVALID = 0
uint8 NORMAL = 1
uint8 WATER = 2
uint8 MOISTURE = 3
uint8 BLOCKAGE = 4
uint8 DIZZY = 5
uint8 DARKNESS = 6
uint8 DIRTY = 7
uint8 RESERVED1 = 8
uint8 RESERVED2 = 9
uint8 RESERVED3 = 10
uint8 RESERVED4 = 11
uint8 RESERVED5 = 12
uint8 RESERVED6 = 13
uint8 RESERVED7 = 14
uint8 RESERVED8 = 15
uint8 value

================================================================================
MSG: endpoint_msgs/HeatWireControlType
uint8 NONE = 0
uint8 STANDBY = 1
uint8 HEAT = 2
uint8 NOHEAT = 3
uint8 FAILURE = 255
uint8 value

================================================================================
MSG: endpoint_msgs/RearviewMirrorCommand
bool rearview_mirror_enable
endpoint_msgs/MirrorState rearview_mirror_command
endpoint_msgs/RWhSteerModType rwheel_steer_mode

================================================================================
MSG: endpoint_msgs/MirrorState
uint8 NO_REQUEST = 0
uint8 REQUEST_UNFOLD = 1
uint8 REQUEST_FOLD = 2
uint8 RESERVED1 = 3
uint8 value

================================================================================
MSG: endpoint_msgs/RWhSteerModType
uint8 NO_REQUEST = 0
uint8 CONTROL_REQUEST = 1
uint8 LOCK_REQUEST = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionCommand
bool suspension_enable
bool suspension_adjust_pause
bool suspension_safety_mode
endpoint_msgs/SuspensionLevel suspension_level_command

================================================================================
MSG: endpoint_msgs/SuspensionLevel
uint8 SUSPENSION_NONE = 0
uint8 SUSPENSION_LEVEL1 = 1
uint8 SUSPENSION_LEVEL2 = 2
uint8 SUSPENSION_LEVEL3 = 3
uint8 SUSPENSION_LEVEL4 = 4
uint8 SUSPENSION_LEVEL5 = 5
uint8 SUSPENSION_LEVEL6 = 6
uint8 SUSPENSION_LEVEL7 = 7
uint8 SUSPENSION_LEVEL8 = 8
uint8 SUSPENSION_LEVEL9 = 9
uint8 SUSPENSION_LEVEL10 = 10
uint8 value

================================================================================
MSG: endpoint_msgs/SentryModeCommand
endpoint_msgs/SentryEmergencyFlasherLevel sentry_emergency_flasher_level
endpoint_msgs/SentryHornLevel snetry_horn_level

================================================================================
MSG: endpoint_msgs/SentryEmergencyFlasherLevel
uint8 EmergencyFlasherReq_NONE = 0
uint8 EmergencyFlasherReq_LEVEL1 = 1
uint8 EmergencyFlasherReq_LEVEL2 = 2
uint8 value

================================================================================
MSG: endpoint_msgs/SentryHornLevel
uint8 HornReq_NONE = 0
uint8 HornReq_LEVEL1 = 1
uint8 HornReq_LEVEL2 = 2
uint8 value

================================================================================
MSG: endpoint_msgs/TurnSignalCommand
bool turn_signal_enable
endpoint_msgs/TurnSignal turn_signal_state

================================================================================
MSG: endpoint_msgs/TurnSignal
uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 EMERGENCY_FLASHER = 3
uint8 INVALID = 255
uint8 value

")



(provide :endpoint_msgs/MffVehicleCommand "8482add1d3da79c9d38a17fa8e74b284")


