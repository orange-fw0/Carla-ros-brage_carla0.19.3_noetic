;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::MffCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'MffCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MFFCOMMAND")
  (make-package "ENDPOINT_MSGS::MFFCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MffCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass endpoint_msgs::MffCommand
  :super ros::object
  :slots (_header _mff_vehicle_command ))

(defmethod endpoint_msgs::MffCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mff_vehicle_command __mff_vehicle_command) (instance endpoint_msgs::MffVehicleCommand :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mff_vehicle_command __mff_vehicle_command)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mff_vehicle_command
   (&rest __mff_vehicle_command)
   (if (keywordp (car __mff_vehicle_command))
       (send* _mff_vehicle_command __mff_vehicle_command)
     (progn
       (if __mff_vehicle_command (setq _mff_vehicle_command (car __mff_vehicle_command)))
       _mff_vehicle_command)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; endpoint_msgs/MffVehicleCommand _mff_vehicle_command
    (send _mff_vehicle_command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; endpoint_msgs/MffVehicleCommand _mff_vehicle_command
       (send _mff_vehicle_command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; endpoint_msgs/MffVehicleCommand _mff_vehicle_command
     (send _mff_vehicle_command :deserialize buf ptr-) (incf ptr- (send _mff_vehicle_command :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::MffCommand :md5sum-) "82fd94470458a3806d1e9ab9ea8f37ca")
(setf (get endpoint_msgs::MffCommand :datatype-) "endpoint_msgs/MffCommand")
(setf (get endpoint_msgs::MffCommand :definition-)
      "std_msgs/Header header
endpoint_msgs/MffVehicleCommand mff_vehicle_command

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: endpoint_msgs/MffVehicleCommand
uint8 MFF_VEHICLE_COMMAND_DATA = 1
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



(provide :endpoint_msgs/MffCommand "82fd94470458a3806d1e9ab9ea8f37ca")


