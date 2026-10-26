;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SteeringCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SteeringCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::STEERINGCOMMAND")
  (make-package "ENDPOINT_MSGS::STEERINGCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SteeringCommand.msg.html


(intern "*STEERING_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::STEERINGCOMMAND"))
(shadow '*STEERING_COMMAND_DATA* (find-package "ENDPOINT_MSGS::STEERINGCOMMAND"))
(defconstant endpoint_msgs::SteeringCommand::*STEERING_COMMAND_DATA* 1)

(defun endpoint_msgs::SteeringCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::SteeringCommand::*STEERING_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::SteeringCommand
  :super ros::object
  :slots (_available _steering_command_data ))

(defmethod endpoint_msgs::SteeringCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:steering_command_data __steering_command_data) (instance endpoint_msgs::SteeringCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _steering_command_data __steering_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:steering_command_data
   (&rest __steering_command_data)
   (if (keywordp (car __steering_command_data))
       (send* _steering_command_data __steering_command_data)
     (progn
       (if __steering_command_data (setq _steering_command_data (car __steering_command_data)))
       _steering_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/SteeringCommandData _steering_command_data
    (send _steering_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/SteeringCommandData _steering_command_data
       (send _steering_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/SteeringCommandData _steering_command_data
     (send _steering_command_data :deserialize buf ptr-) (incf ptr- (send _steering_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::SteeringCommand :md5sum-) "aa73e43ae8aed3f4d1bce6a30c1ce479")
(setf (get endpoint_msgs::SteeringCommand :datatype-) "endpoint_msgs/SteeringCommand")
(setf (get endpoint_msgs::SteeringCommand :definition-)
      "uint8 STEERING_COMMAND_DATA = 1
uint8 available
endpoint_msgs/SteeringCommandData steering_command_data

================================================================================
MSG: endpoint_msgs/SteeringCommandData
uint64 timestamp_us
bool steering_enable
endpoint_msgs/SteeringType steering_type
float32 steering_command
float32 steering_rate
endpoint_msgs/RWhSteerModType rwheel_steer_mode
float32 rwheel_command
endpoint_msgs/RWhSteerDirection rwheel_steer_direction

================================================================================
MSG: endpoint_msgs/SteeringType
uint8 STEERING_ANGLE = 1
uint8 FRONT_WHEEL_ANGLE = 2
uint8 YAW_RATE = 3
uint8 TORQUE = 4
uint8 ANGLE_SPEED = 5
uint8 CURVATURE = 6
uint8 RESERVED = 7
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
MSG: endpoint_msgs/RWhSteerDirection
uint8 NONE = 0
uint8 SAME_DIRECTION = 1
uint8 OPPOSITE_DIRECTION = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

")



(provide :endpoint_msgs/SteeringCommand "aa73e43ae8aed3f4d1bce6a30c1ce479")


