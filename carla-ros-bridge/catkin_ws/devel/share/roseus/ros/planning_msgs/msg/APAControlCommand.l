;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::APAControlCommand)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'APAControlCommand (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::APACONTROLCOMMAND")
  (make-package "PLANNING_MSGS::APACONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude APAControlCommand.msg.html


(defclass planning_msgs::APAControlCommand
  :super ros::object
  :slots (_brake_mode _steering_mode _special_scenario_type _use_second_traj_sv _reserved ))

(defmethod planning_msgs::APAControlCommand
  (:init
   (&key
    ((:brake_mode __brake_mode) (instance planning_msgs::APABrakeMode :init))
    ((:steering_mode __steering_mode) (instance planning_msgs::APASteeringMode :init))
    ((:special_scenario_type __special_scenario_type) 0)
    ((:use_second_traj_sv __use_second_traj_sv) nil)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _brake_mode __brake_mode)
   (setq _steering_mode __steering_mode)
   (setq _special_scenario_type (round __special_scenario_type))
   (setq _use_second_traj_sv __use_second_traj_sv)
   (setq _reserved (string __reserved))
   self)
  (:brake_mode
   (&rest __brake_mode)
   (if (keywordp (car __brake_mode))
       (send* _brake_mode __brake_mode)
     (progn
       (if __brake_mode (setq _brake_mode (car __brake_mode)))
       _brake_mode)))
  (:steering_mode
   (&rest __steering_mode)
   (if (keywordp (car __steering_mode))
       (send* _steering_mode __steering_mode)
     (progn
       (if __steering_mode (setq _steering_mode (car __steering_mode)))
       _steering_mode)))
  (:special_scenario_type
   (&optional __special_scenario_type)
   (if __special_scenario_type (setq _special_scenario_type __special_scenario_type)) _special_scenario_type)
  (:use_second_traj_sv
   (&optional (__use_second_traj_sv :null))
   (if (not (eq __use_second_traj_sv :null)) (setq _use_second_traj_sv __use_second_traj_sv)) _use_second_traj_sv)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/APABrakeMode _brake_mode
    (send _brake_mode :serialization-length)
    ;; planning_msgs/APASteeringMode _steering_mode
    (send _steering_mode :serialization-length)
    ;; uint8 _special_scenario_type
    1
    ;; bool _use_second_traj_sv
    1
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/APABrakeMode _brake_mode
       (send _brake_mode :serialize s)
     ;; planning_msgs/APASteeringMode _steering_mode
       (send _steering_mode :serialize s)
     ;; uint8 _special_scenario_type
       (write-byte _special_scenario_type s)
     ;; bool _use_second_traj_sv
       (if _use_second_traj_sv (write-byte -1 s) (write-byte 0 s))
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/APABrakeMode _brake_mode
     (send _brake_mode :deserialize buf ptr-) (incf ptr- (send _brake_mode :serialization-length))
   ;; planning_msgs/APASteeringMode _steering_mode
     (send _steering_mode :deserialize buf ptr-) (incf ptr- (send _steering_mode :serialization-length))
   ;; uint8 _special_scenario_type
     (setq _special_scenario_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _use_second_traj_sv
     (setq _use_second_traj_sv (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::APAControlCommand :md5sum-) "62a7b78b1c9651470bdea942c2f091fb")
(setf (get planning_msgs::APAControlCommand :datatype-) "planning_msgs/APAControlCommand")
(setf (get planning_msgs::APAControlCommand :definition-)
      "planning_msgs/APABrakeMode brake_mode
planning_msgs/APASteeringMode steering_mode
uint8 special_scenario_type
bool use_second_traj_sv
string reserved

================================================================================
MSG: planning_msgs/APABrakeMode
uint8 DEFAULT = 0
uint8 HARD_BRAKE = 1
uint8 GENTLE_BRAKE = 2
uint8 value

================================================================================
MSG: planning_msgs/APASteeringMode
uint8 NONE = 0
uint8 STEERING_RESET = 1
uint8 value

")



(provide :planning_msgs/APAControlCommand "62a7b78b1c9651470bdea942c2f091fb")


