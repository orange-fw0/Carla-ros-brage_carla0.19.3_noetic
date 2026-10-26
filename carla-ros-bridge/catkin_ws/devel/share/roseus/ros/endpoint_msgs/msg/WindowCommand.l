;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WindowCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WindowCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WINDOWCOMMAND")
  (make-package "ENDPOINT_MSGS::WINDOWCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude WindowCommand.msg.html


(intern "*WINDOW_COMMAND_DATA*" (find-package "ENDPOINT_MSGS::WINDOWCOMMAND"))
(shadow '*WINDOW_COMMAND_DATA* (find-package "ENDPOINT_MSGS::WINDOWCOMMAND"))
(defconstant endpoint_msgs::WindowCommand::*WINDOW_COMMAND_DATA* 1)

(defun endpoint_msgs::WindowCommand-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WindowCommand::*WINDOW_COMMAND_DATA*)
        (t nil)))

(defclass endpoint_msgs::WindowCommand
  :super ros::object
  :slots (_available _window_command_data ))

(defmethod endpoint_msgs::WindowCommand
  (:init
   (&key
    ((:available __available) 0)
    ((:window_command_data __window_command_data) (instance endpoint_msgs::WindowCommandData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _window_command_data __window_command_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:window_command_data
   (&rest __window_command_data)
   (if (keywordp (car __window_command_data))
       (send* _window_command_data __window_command_data)
     (progn
       (if __window_command_data (setq _window_command_data (car __window_command_data)))
       _window_command_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WindowCommandData _window_command_data
    (send _window_command_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WindowCommandData _window_command_data
       (send _window_command_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WindowCommandData _window_command_data
     (send _window_command_data :deserialize buf ptr-) (incf ptr- (send _window_command_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WindowCommand :md5sum-) "48ff333a635b2a168eadf988567f71f5")
(setf (get endpoint_msgs::WindowCommand :datatype-) "endpoint_msgs/WindowCommand")
(setf (get endpoint_msgs::WindowCommand :definition-)
      "uint8 WINDOW_COMMAND_DATA = 1
uint8 available
endpoint_msgs/WindowCommandData window_command_data

================================================================================
MSG: endpoint_msgs/WindowCommandData
uint64 timestamp_us
bool window_lock
endpoint_msgs/WindowType window_left_front
endpoint_msgs/WindowType window_right_front
endpoint_msgs/WindowType window_left_rear
endpoint_msgs/WindowType window_right_rear
endpoint_msgs/WindowType window_top

================================================================================
MSG: endpoint_msgs/WindowType
uint8 LIFT_STOP = 0
uint8 LIFT_UP = 1
uint8 LIFT_DOWN = 2
uint8 value

")



(provide :endpoint_msgs/WindowCommand "48ff333a635b2a168eadf988567f71f5")


