;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SpeedCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SpeedCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SPEEDCOMMAND")
  (make-package "ENDPOINT_MSGS::SPEEDCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SpeedCommand.msg.html


(intern "*SPEED_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::SPEEDCOMMAND"))
(shadow '*SPEED_COMMAND_DATA* (find-package "ENDPOINT_MSGS::SPEEDCOMMAND"))
(defconstant endpoint_msgs::SpeedCommand::*SPEED_COMMAND_DATA* 1)

(defun endpoint_msgs::SpeedCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::SpeedCommand::*SPEED_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::SpeedCommand
  :super ros::object
  :slots (_available _speed_command_data ))

(defmethod endpoint_msgs::SpeedCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:speed_command_data __speed_command_data) (instance endpoint_msgs::SpeedCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _speed_command_data __speed_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:speed_command_data
   (&rest __speed_command_data)
   (if (keywordp (car __speed_command_data))
       (send* _speed_command_data __speed_command_data)
     (progn
       (if __speed_command_data (setq _speed_command_data (car __speed_command_data)))
       _speed_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/SpeedCommandData _speed_command_data
    (send _speed_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/SpeedCommandData _speed_command_data
       (send _speed_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/SpeedCommandData _speed_command_data
     (send _speed_command_data :deserialize buf ptr-) (incf ptr- (send _speed_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::SpeedCommand :md5sum-) "a76bd53896f49e2b39dd5a952c5ca801")
(setf (get endpoint_msgs::SpeedCommand :datatype-) "endpoint_msgs/SpeedCommand")
(setf (get endpoint_msgs::SpeedCommand :definition-)
      "uint8 SPEED_COMMAND_DATA = 1
uint8 available
endpoint_msgs/SpeedCommandData speed_command_data

================================================================================
MSG: endpoint_msgs/SpeedCommandData
bool speed_enable
bool toque_unload_enable
float32 speed_command
float32 torque_ffwd_command
endpoint_msgs/TargetControlMotor target_control_motor
endpoint_msgs/TargetControlMode target_control_mode
float32 wheel_torque_lim_max
float32 wheel_torque_lim_min
float32 wheel_torque_rate_max
float32 wheel_torque_rate_min
float32 torque_unload_rate

================================================================================
MSG: endpoint_msgs/TargetControlMotor
uint8 FL = 0
uint8 FR = 1
uint8 RL = 2
uint8 RR = 3
uint8 FLFR = 4
uint8 RLRR = 5
uint8 RESERVED1 = 6
uint8 RESERVED2 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/TargetControlMode
uint8 NONE = 0
uint8 TORQUE = 1
uint8 SPEED = 2
uint8 RESERVE = 3
uint8 value

")



(provide :endpoint_msgs/SpeedCommand "a76bd53896f49e2b39dd5a952c5ca801")


