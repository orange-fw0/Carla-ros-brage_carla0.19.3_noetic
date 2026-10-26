;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WireControlTypeCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WireControlTypeCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIRECONTROLTYPECOMMAND")
  (make-package "ENDPOINT_MSGS::WIRECONTROLTYPECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude WireControlTypeCommand.msg.html


(intern "*WIRE_CONTROL_TYPE_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::WIRECONTROLTYPECOMMAND"))
(shadow '*WIRE_CONTROL_TYPE_COMMAND_DATA* (find-package "ENDPOINT_MSGS::WIRECONTROLTYPECOMMAND"))
(defconstant endpoint_msgs::WireControlTypeCommand::*WIRE_CONTROL_TYPE_COMMAND_DATA* 1)

(defun endpoint_msgs::WireControlTypeCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WireControlTypeCommand::*WIRE_CONTROL_TYPE_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::WireControlTypeCommand
  :super ros::object
  :slots (_available _wire_control_command_data ))

(defmethod endpoint_msgs::WireControlTypeCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:wire_control_command_data __wire_control_command_data) (instance endpoint_msgs::WireControlTypeCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wire_control_command_data __wire_control_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wire_control_command_data
   (&rest __wire_control_command_data)
   (if (keywordp (car __wire_control_command_data))
       (send* _wire_control_command_data __wire_control_command_data)
     (progn
       (if __wire_control_command_data (setq _wire_control_command_data (car __wire_control_command_data)))
       _wire_control_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WireControlTypeCommandData _wire_control_command_data
    (send _wire_control_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WireControlTypeCommandData _wire_control_command_data
       (send _wire_control_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WireControlTypeCommandData _wire_control_command_data
     (send _wire_control_command_data :deserialize buf ptr-) (incf ptr- (send _wire_control_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WireControlTypeCommand :md5sum-) "8feecdf63f47b53b2d0bd3053eca8d62")
(setf (get endpoint_msgs::WireControlTypeCommand :datatype-) "endpoint_msgs/WireControlTypeCommand")
(setf (get endpoint_msgs::WireControlTypeCommand :definition-)
      "uint8 WIRE_CONTROL_TYPE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/WireControlTypeCommandData wire_control_command_data

================================================================================
MSG: endpoint_msgs/WireControlTypeCommandData
uint64 timestamp_us
endpoint_msgs/WireControlType wire_type

================================================================================
MSG: endpoint_msgs/WireControlType
uint8 SYETEM_REQ_NONE = 0
uint8 SYSTEM_REQ_PILOT = 1
uint8 SYSTEM_REQ_APA = 2
uint8 SYSTEM_REQ_ACC = 3
uint8 SYSTEM_REQ_AVP = 4
uint8 SYSTEM_REQ_LVP = 5
uint8 SYSTEM_REQ_MRC = 6
uint8 RESERVED = 7
uint8 wire_control_type

")



(provide :endpoint_msgs/WireControlTypeCommand "8feecdf63f47b53b2d0bd3053eca8d62")


