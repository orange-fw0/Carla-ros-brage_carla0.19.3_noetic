;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKECOMMAND")
  (make-package "ENDPOINT_MSGS::BRAKECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude BrakeCommand.msg.html


(intern "*BRAKE_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::BRAKECOMMAND"))
(shadow '*BRAKE_COMMAND_DATA* (find-package "ENDPOINT_MSGS::BRAKECOMMAND"))
(defconstant endpoint_msgs::BrakeCommand::*BRAKE_COMMAND_DATA* 1)

(defun endpoint_msgs::BrakeCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::BrakeCommand::*BRAKE_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::BrakeCommand
  :super ros::object
  :slots (_available _brake_command_data ))

(defmethod endpoint_msgs::BrakeCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:brake_command_data __brake_command_data) (instance endpoint_msgs::BrakeCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _brake_command_data __brake_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:brake_command_data
   (&rest __brake_command_data)
   (if (keywordp (car __brake_command_data))
       (send* _brake_command_data __brake_command_data)
     (progn
       (if __brake_command_data (setq _brake_command_data (car __brake_command_data)))
       _brake_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/BrakeCommandData _brake_command_data
    (send _brake_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/BrakeCommandData _brake_command_data
       (send _brake_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/BrakeCommandData _brake_command_data
     (send _brake_command_data :deserialize buf ptr-) (incf ptr- (send _brake_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::BrakeCommand :md5sum-) "06db64568b504b0dd22685d0e06d3223")
(setf (get endpoint_msgs::BrakeCommand :datatype-) "endpoint_msgs/BrakeCommand")
(setf (get endpoint_msgs::BrakeCommand :definition-)
      "uint8 BRAKE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/BrakeCommandData brake_command_data

================================================================================
MSG: endpoint_msgs/BrakeCommandData
uint64 timestamp_us
bool brake_enable
endpoint_msgs/BrakeType brake_type
float32 brake_command
endpoint_msgs/BrakeControlType brake_control_type
endpoint_msgs/AccStandstillType brake_acc_standstill
bool brake_acc_go
bool epb_enable
bool epb_command
bool auto_hold_command

================================================================================
MSG: endpoint_msgs/BrakeType
uint8 PEDAL = 1
uint8 DECELERATION = 2
uint8 MASTER_CYLINDERPRESSURE = 3
uint8 WHEEL_CYLINDERPRESSURE = 4
uint8 TORQUE = 5
uint8 DISTANCE = 6
uint8 SV = 7
uint8 RESERVED = 8
uint8 value

================================================================================
MSG: endpoint_msgs/BrakeControlType
uint8 NORMAL = 1
uint8 EMERGENT = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AccStandstillType
uint8 NO_REQUEST = 0
uint8 REQUEST = 1
uint8 REMIND_DRIVE_GO = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/BrakeCommand "06db64568b504b0dd22685d0e06d3223")


