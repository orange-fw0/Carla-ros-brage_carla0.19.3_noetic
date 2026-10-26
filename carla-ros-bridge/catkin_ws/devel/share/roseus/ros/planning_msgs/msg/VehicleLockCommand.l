;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::VehicleLockCommand)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'VehicleLockCommand (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::VEHICLELOCKCOMMAND")
  (make-package "PLANNING_MSGS::VEHICLELOCKCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude VehicleLockCommand.msg.html


(intern "*VEHICLE_LOCK*" (find-package "PLANNING_MSGS::VEHICLELOCKCOMMAND"))
(shadow '*VEHICLE_LOCK* (find-package "PLANNING_MSGS::VEHICLELOCKCOMMAND"))
(defconstant planning_msgs::VehicleLockCommand::*VEHICLE_LOCK* 1)

(defun planning_msgs::VehicleLockCommand-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::VehicleLockCommand::*VEHICLE_LOCK*)
        (t nil)))

(defclass planning_msgs::VehicleLockCommand
  :super ros::object
  :slots (_available _vehicle_lock ))

(defmethod planning_msgs::VehicleLockCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:vehicle_lock __vehicle_lock) (instance planning_msgs::VehicleLock :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _vehicle_lock __vehicle_lock)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:vehicle_lock
   (&rest __vehicle_lock)
   (if (keywordp (car __vehicle_lock))
       (send* _vehicle_lock __vehicle_lock)
     (progn
       (if __vehicle_lock (setq _vehicle_lock (car __vehicle_lock)))
       _vehicle_lock)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/VehicleLock _vehicle_lock
    (send _vehicle_lock :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/VehicleLock _vehicle_lock
       (send _vehicle_lock :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/VehicleLock _vehicle_lock
     (send _vehicle_lock :deserialize buf ptr-) (incf ptr- (send _vehicle_lock :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::VehicleLockCommand :md5sum-) "068d34cfbc2002e983cebb24416495fa")
(setf (get planning_msgs::VehicleLockCommand :datatype-) "planning_msgs/VehicleLockCommand")
(setf (get planning_msgs::VehicleLockCommand :definition-)
      "uint8 VEHICLE_LOCK = 1
uint8 available
planning_msgs/VehicleLock vehicle_lock

================================================================================
MSG: planning_msgs/VehicleLock
uint8 NONE = 0
uint8 UNLOCK = 1
uint8 LOCK = 2
uint8 value

")



(provide :planning_msgs/VehicleLockCommand "068d34cfbc2002e983cebb24416495fa")


