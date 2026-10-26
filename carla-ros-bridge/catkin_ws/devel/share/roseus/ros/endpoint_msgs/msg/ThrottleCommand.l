;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ThrottleCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ThrottleCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::THROTTLECOMMAND")
  (make-package "ENDPOINT_MSGS::THROTTLECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ThrottleCommand.msg.html


(intern "*THROTTLE_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::THROTTLECOMMAND"))
(shadow '*THROTTLE_COMMAND_DATA* (find-package "ENDPOINT_MSGS::THROTTLECOMMAND"))
(defconstant endpoint_msgs::ThrottleCommand::*THROTTLE_COMMAND_DATA* 1)

(defun endpoint_msgs::ThrottleCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::ThrottleCommand::*THROTTLE_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::ThrottleCommand
  :super ros::object
  :slots (_available _throttle_command_data ))

(defmethod endpoint_msgs::ThrottleCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:throttle_command_data __throttle_command_data) (instance endpoint_msgs::ThrottleCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _throttle_command_data __throttle_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:throttle_command_data
   (&rest __throttle_command_data)
   (if (keywordp (car __throttle_command_data))
       (send* _throttle_command_data __throttle_command_data)
     (progn
       (if __throttle_command_data (setq _throttle_command_data (car __throttle_command_data)))
       _throttle_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/ThrottleCommandData _throttle_command_data
    (send _throttle_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/ThrottleCommandData _throttle_command_data
       (send _throttle_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/ThrottleCommandData _throttle_command_data
     (send _throttle_command_data :deserialize buf ptr-) (incf ptr- (send _throttle_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::ThrottleCommand :md5sum-) "316b02c950b344be768d1ff4cdaa63b9")
(setf (get endpoint_msgs::ThrottleCommand :datatype-) "endpoint_msgs/ThrottleCommand")
(setf (get endpoint_msgs::ThrottleCommand :definition-)
      "uint8 THROTTLE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/ThrottleCommandData throttle_command_data

================================================================================
MSG: endpoint_msgs/ThrottleCommandData
uint64 timestamp_us
bool throttle_enable
endpoint_msgs/ThrottleType throttle_type
float32 throttle_command

================================================================================
MSG: endpoint_msgs/ThrottleType
uint8 PEDAL = 0
uint8 THROTTLE = 1
uint8 TORQUE = 2
uint8 ACCELERATION = 3
uint8 SPEED = 4
uint8 SV = 5
uint8 RESERVED = 6
uint8 value

")



(provide :endpoint_msgs/ThrottleCommand "316b02c950b344be768d1ff4cdaa63b9")


