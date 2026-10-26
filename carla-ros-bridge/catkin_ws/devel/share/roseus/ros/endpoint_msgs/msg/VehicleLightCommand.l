;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleLightCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleLightCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLELIGHTCOMMAND")
  (make-package "ENDPOINT_MSGS::VEHICLELIGHTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude VehicleLightCommand.msg.html


(intern "*VEHICLE_LIGHT_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::VEHICLELIGHTCOMMAND"))
(shadow '*VEHICLE_LIGHT_COMMAND_DATA* (find-package "ENDPOINT_MSGS::VEHICLELIGHTCOMMAND"))
(defconstant endpoint_msgs::VehicleLightCommand::*VEHICLE_LIGHT_COMMAND_DATA* 1)

(defun endpoint_msgs::VehicleLightCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::VehicleLightCommand::*VEHICLE_LIGHT_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::VehicleLightCommand
  :super ros::object
  :slots (_available _vehicle_light_command_data ))

(defmethod endpoint_msgs::VehicleLightCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:vehicle_light_command_data __vehicle_light_command_data) (instance endpoint_msgs::VehicleLightCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _vehicle_light_command_data __vehicle_light_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:vehicle_light_command_data
   (&rest __vehicle_light_command_data)
   (if (keywordp (car __vehicle_light_command_data))
       (send* _vehicle_light_command_data __vehicle_light_command_data)
     (progn
       (if __vehicle_light_command_data (setq _vehicle_light_command_data (car __vehicle_light_command_data)))
       _vehicle_light_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/VehicleLightCommandData _vehicle_light_command_data
    (send _vehicle_light_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/VehicleLightCommandData _vehicle_light_command_data
       (send _vehicle_light_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/VehicleLightCommandData _vehicle_light_command_data
     (send _vehicle_light_command_data :deserialize buf ptr-) (incf ptr- (send _vehicle_light_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleLightCommand :md5sum-) "fa46016dcab547655c996a6a4d1a3a9d")
(setf (get endpoint_msgs::VehicleLightCommand :datatype-) "endpoint_msgs/VehicleLightCommand")
(setf (get endpoint_msgs::VehicleLightCommand :definition-)
      "uint8 VEHICLE_LIGHT_COMMAND_DATA = 1
uint8 available
endpoint_msgs/VehicleLightCommandData vehicle_light_command_data

================================================================================
MSG: endpoint_msgs/VehicleLightCommandData
uint64 timestamp_us
bool light_enable
endpoint_msgs/TurnSignal turn_signal
endpoint_msgs/FrontLightState front_light
bool width_light
bool reversing_light
bool front_fog_light
bool rear_fog_light

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

")



(provide :endpoint_msgs/VehicleLightCommand "fa46016dcab547655c996a6a4d1a3a9d")


