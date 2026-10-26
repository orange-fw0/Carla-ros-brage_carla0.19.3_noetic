;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SuspensionCommand)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SuspensionCommand (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SUSPENSIONCOMMAND")
  (make-package "ENDPOINT_MSGS::SUSPENSIONCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude SuspensionCommand.msg.html


(defclass endpoint_msgs::SuspensionCommand
  :super ros::object
  :slots (_suspension_enable _suspension_adjust_pause _suspension_safety_mode _suspension_level_command ))

(defmethod endpoint_msgs::SuspensionCommand
  (:init
   (&key
    ((:suspension_enable __suspension_enable) nil)
    ((:suspension_adjust_pause __suspension_adjust_pause) nil)
    ((:suspension_safety_mode __suspension_safety_mode) nil)
    ((:suspension_level_command __suspension_level_command) (instance endpoint_msgs::SuspensionLevel :init))
    )
   (send-super :init)
   (setq _suspension_enable __suspension_enable)
   (setq _suspension_adjust_pause __suspension_adjust_pause)
   (setq _suspension_safety_mode __suspension_safety_mode)
   (setq _suspension_level_command __suspension_level_command)
   self)
  (:suspension_enable
   (&optional (__suspension_enable :null))
   (if (not (eq __suspension_enable :null)) (setq _suspension_enable __suspension_enable)) _suspension_enable)
  (:suspension_adjust_pause
   (&optional (__suspension_adjust_pause :null))
   (if (not (eq __suspension_adjust_pause :null)) (setq _suspension_adjust_pause __suspension_adjust_pause)) _suspension_adjust_pause)
  (:suspension_safety_mode
   (&optional (__suspension_safety_mode :null))
   (if (not (eq __suspension_safety_mode :null)) (setq _suspension_safety_mode __suspension_safety_mode)) _suspension_safety_mode)
  (:suspension_level_command
   (&rest __suspension_level_command)
   (if (keywordp (car __suspension_level_command))
       (send* _suspension_level_command __suspension_level_command)
     (progn
       (if __suspension_level_command (setq _suspension_level_command (car __suspension_level_command)))
       _suspension_level_command)))
  (:serialization-length
   ()
   (+
    ;; bool _suspension_enable
    1
    ;; bool _suspension_adjust_pause
    1
    ;; bool _suspension_safety_mode
    1
    ;; endpoint_msgs/SuspensionLevel _suspension_level_command
    (send _suspension_level_command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _suspension_enable
       (if _suspension_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _suspension_adjust_pause
       (if _suspension_adjust_pause (write-byte -1 s) (write-byte 0 s))
     ;; bool _suspension_safety_mode
       (if _suspension_safety_mode (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/SuspensionLevel _suspension_level_command
       (send _suspension_level_command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _suspension_enable
     (setq _suspension_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _suspension_adjust_pause
     (setq _suspension_adjust_pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _suspension_safety_mode
     (setq _suspension_safety_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/SuspensionLevel _suspension_level_command
     (send _suspension_level_command :deserialize buf ptr-) (incf ptr- (send _suspension_level_command :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::SuspensionCommand :md5sum-) "ffeb9a9bde5675f34eb1cdac701a006f")
(setf (get endpoint_msgs::SuspensionCommand :datatype-) "endpoint_msgs/SuspensionCommand")
(setf (get endpoint_msgs::SuspensionCommand :definition-)
      "bool suspension_enable
bool suspension_adjust_pause
bool suspension_safety_mode
endpoint_msgs/SuspensionLevel suspension_level_command

================================================================================
MSG: endpoint_msgs/SuspensionLevel
uint8 SUSPENSION_NONE = 0
uint8 SUSPENSION_LEVEL1 = 1
uint8 SUSPENSION_LEVEL2 = 2
uint8 SUSPENSION_LEVEL3 = 3
uint8 SUSPENSION_LEVEL4 = 4
uint8 SUSPENSION_LEVEL5 = 5
uint8 SUSPENSION_LEVEL6 = 6
uint8 SUSPENSION_LEVEL7 = 7
uint8 SUSPENSION_LEVEL8 = 8
uint8 SUSPENSION_LEVEL9 = 9
uint8 SUSPENSION_LEVEL10 = 10
uint8 value

")



(provide :endpoint_msgs/SuspensionCommand "ffeb9a9bde5675f34eb1cdac701a006f")


