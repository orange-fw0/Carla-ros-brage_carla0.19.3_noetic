;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::GearCommand)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'GearCommand (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::GEARCOMMAND")
  (make-package "PLANNING_MSGS::GEARCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude GearCommand.msg.html


(intern "*GEAR_DATA*" (find-package "PLANNING_MSGS::GEARCOMMAND"))
(shadow '*GEAR_DATA* (find-package "PLANNING_MSGS::GEARCOMMAND"))
(defconstant planning_msgs::GearCommand::*GEAR_DATA* 1)

(defun planning_msgs::GearCommand-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::GearCommand::*GEAR_DATA*)
        (t nil)))

(defclass planning_msgs::GearCommand
  :super ros::object
  :slots (_available _gear_data ))

(defmethod planning_msgs::GearCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:gear_data __gear_data) (instance planning_msgs::Gear :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _gear_data __gear_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:gear_data
   (&rest __gear_data)
   (if (keywordp (car __gear_data))
       (send* _gear_data __gear_data)
     (progn
       (if __gear_data (setq _gear_data (car __gear_data)))
       _gear_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/Gear _gear_data
    (send _gear_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/Gear _gear_data
       (send _gear_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/Gear _gear_data
     (send _gear_data :deserialize buf ptr-) (incf ptr- (send _gear_data :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::GearCommand :md5sum-) "4d5d8e5fae5ca84436a24cdb203f776b")
(setf (get planning_msgs::GearCommand :datatype-) "planning_msgs/GearCommand")
(setf (get planning_msgs::GearCommand :definition-)
      "uint8 GEAR_DATA = 1
uint8 available
planning_msgs/Gear gear_data

================================================================================
MSG: planning_msgs/Gear
uint8 NONE = 0
uint8 PARK = 1
uint8 REVERSE = 2
uint8 NEUTRAL = 3
uint8 DRIVE = 4
uint8 LOW = 5
uint8 value

")



(provide :planning_msgs/GearCommand "4d5d8e5fae5ca84436a24cdb203f776b")


