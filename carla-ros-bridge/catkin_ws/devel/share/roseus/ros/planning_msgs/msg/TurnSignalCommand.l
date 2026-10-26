;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::TurnSignalCommand)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'TurnSignalCommand (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::TURNSIGNALCOMMAND")
  (make-package "PLANNING_MSGS::TURNSIGNALCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TurnSignalCommand.msg.html


(intern "*TURN_SIGNAL_DATA*" (find-package "PLANNING_MSGS::TURNSIGNALCOMMAND"))
(shadow '*TURN_SIGNAL_DATA* (find-package "PLANNING_MSGS::TURNSIGNALCOMMAND"))
(defconstant planning_msgs::TurnSignalCommand::*TURN_SIGNAL_DATA* 1)
(intern "*TURN_SIGNAL_SOURCE*" (find-package "PLANNING_MSGS::TURNSIGNALCOMMAND"))
(shadow '*TURN_SIGNAL_SOURCE* (find-package "PLANNING_MSGS::TURNSIGNALCOMMAND"))
(defconstant planning_msgs::TurnSignalCommand::*TURN_SIGNAL_SOURCE* 2)

(defun planning_msgs::TurnSignalCommand-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::TurnSignalCommand::*TURN_SIGNAL_DATA*)
        ((= const 2) 'planning_msgs::TurnSignalCommand::*TURN_SIGNAL_SOURCE*)
        (t nil)))

(defclass planning_msgs::TurnSignalCommand
  :super ros::object
  :slots (_available _turn_signal_data _turn_signal_source ))

(defmethod planning_msgs::TurnSignalCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:turn_signal_data __turn_signal_data) (instance planning_msgs::TurnSignal :init))
    ((:turn_signal_source __turn_signal_source) (instance planning_msgs::TurnSignalSource :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _turn_signal_data __turn_signal_data)
   (setq _turn_signal_source __turn_signal_source)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:turn_signal_data
   (&rest __turn_signal_data)
   (if (keywordp (car __turn_signal_data))
       (send* _turn_signal_data __turn_signal_data)
     (progn
       (if __turn_signal_data (setq _turn_signal_data (car __turn_signal_data)))
       _turn_signal_data)))
  (:turn_signal_source
   (&rest __turn_signal_source)
   (if (keywordp (car __turn_signal_source))
       (send* _turn_signal_source __turn_signal_source)
     (progn
       (if __turn_signal_source (setq _turn_signal_source (car __turn_signal_source)))
       _turn_signal_source)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/TurnSignal _turn_signal_data
    (send _turn_signal_data :serialization-length)
    ;; planning_msgs/TurnSignalSource _turn_signal_source
    (send _turn_signal_source :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/TurnSignal _turn_signal_data
       (send _turn_signal_data :serialize s)
     ;; planning_msgs/TurnSignalSource _turn_signal_source
       (send _turn_signal_source :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/TurnSignal _turn_signal_data
     (send _turn_signal_data :deserialize buf ptr-) (incf ptr- (send _turn_signal_data :serialization-length))
   ;; planning_msgs/TurnSignalSource _turn_signal_source
     (send _turn_signal_source :deserialize buf ptr-) (incf ptr- (send _turn_signal_source :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::TurnSignalCommand :md5sum-) "d5992dff01409a9a14e9e8979f4a12de")
(setf (get planning_msgs::TurnSignalCommand :datatype-) "planning_msgs/TurnSignalCommand")
(setf (get planning_msgs::TurnSignalCommand :definition-)
      "uint8 TURN_SIGNAL_DATA = 1
uint8 TURN_SIGNAL_SOURCE = 2
uint8 available
planning_msgs/TurnSignal turn_signal_data
planning_msgs/TurnSignalSource turn_signal_source

================================================================================
MSG: planning_msgs/TurnSignal
uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 EMERGENCY_FLASHER = 3
uint8 value

================================================================================
MSG: planning_msgs/TurnSignalSource
uint8 NONE = 0
uint8 MAP = 1
uint8 LC = 2
uint8 LB = 3
uint8 value

")



(provide :planning_msgs/TurnSignalCommand "d5992dff01409a9a14e9e8979f4a12de")


