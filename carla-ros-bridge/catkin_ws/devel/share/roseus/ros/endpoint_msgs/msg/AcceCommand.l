;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AcceCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AcceCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::ACCECOMMAND")
  (make-package "ENDPOINT_MSGS::ACCECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude AcceCommand.msg.html


(intern "*ACCE_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::ACCECOMMAND"))
(shadow '*ACCE_COMMAND_DATA* (find-package "ENDPOINT_MSGS::ACCECOMMAND"))
(defconstant endpoint_msgs::AcceCommand::*ACCE_COMMAND_DATA* 1)

(defun endpoint_msgs::AcceCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::AcceCommand::*ACCE_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::AcceCommand
  :super ros::object
  :slots (_available _acce_command_data ))

(defmethod endpoint_msgs::AcceCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:acce_command_data __acce_command_data) (instance endpoint_msgs::AcceCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _acce_command_data __acce_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:acce_command_data
   (&rest __acce_command_data)
   (if (keywordp (car __acce_command_data))
       (send* _acce_command_data __acce_command_data)
     (progn
       (if __acce_command_data (setq _acce_command_data (car __acce_command_data)))
       _acce_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/AcceCommandData _acce_command_data
    (send _acce_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/AcceCommandData _acce_command_data
       (send _acce_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/AcceCommandData _acce_command_data
     (send _acce_command_data :deserialize buf ptr-) (incf ptr- (send _acce_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::AcceCommand :md5sum-) "2f6de581af5b4a3715678c4b86420f26")
(setf (get endpoint_msgs::AcceCommand :datatype-) "endpoint_msgs/AcceCommand")
(setf (get endpoint_msgs::AcceCommand :definition-)
      "uint8 ACCE_COMMAND_DATA = 1
uint8 available
endpoint_msgs/AcceCommandData acce_command_data

================================================================================
MSG: endpoint_msgs/AcceCommandData
uint64 timestamp_us
float32 command_value
bool acce_command_enable

")



(provide :endpoint_msgs/AcceCommand "2f6de581af5b4a3715678c4b86420f26")


