;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::GearCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'GearCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::GEARCOMMAND")
  (make-package "ENDPOINT_MSGS::GEARCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude GearCommand.msg.html


(intern "*GEAR_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::GEARCOMMAND"))
(shadow '*GEAR_COMMAND_DATA* (find-package "ENDPOINT_MSGS::GEARCOMMAND"))
(defconstant endpoint_msgs::GearCommand::*GEAR_COMMAND_DATA* 1)

(defun endpoint_msgs::GearCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::GearCommand::*GEAR_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::GearCommand
  :super ros::object
  :slots (_available _gear_command_data ))

(defmethod endpoint_msgs::GearCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:gear_command_data __gear_command_data) (instance endpoint_msgs::GearCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _gear_command_data __gear_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:gear_command_data
   (&rest __gear_command_data)
   (if (keywordp (car __gear_command_data))
       (send* _gear_command_data __gear_command_data)
     (progn
       (if __gear_command_data (setq _gear_command_data (car __gear_command_data)))
       _gear_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/GearCommandData _gear_command_data
    (send _gear_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/GearCommandData _gear_command_data
       (send _gear_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/GearCommandData _gear_command_data
     (send _gear_command_data :deserialize buf ptr-) (incf ptr- (send _gear_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::GearCommand :md5sum-) "15582187c9de1557d187ccf881085401")
(setf (get endpoint_msgs::GearCommand :datatype-) "endpoint_msgs/GearCommand")
(setf (get endpoint_msgs::GearCommand :definition-)
      "uint8 GEAR_COMMAND_DATA = 1
uint8 available
endpoint_msgs/GearCommandData gear_command_data

================================================================================
MSG: endpoint_msgs/GearCommandData
uint64 timestamp_us
bool gear_enable
endpoint_msgs/Gear gear_type

================================================================================
MSG: endpoint_msgs/Gear
uint8 NONE = 0
uint8 PARK = 1
uint8 REVERSE = 2
uint8 NEUTRAL = 3
uint8 DRIVE = 4
uint8 LOW = 5
uint8 value

")



(provide :endpoint_msgs/GearCommand "15582187c9de1557d187ccf881085401")


