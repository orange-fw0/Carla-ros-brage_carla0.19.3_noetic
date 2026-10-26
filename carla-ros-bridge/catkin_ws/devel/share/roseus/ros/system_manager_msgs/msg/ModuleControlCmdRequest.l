;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ModuleControlCmdRequest)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ModuleControlCmdRequest (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::MODULECONTROLCMDREQUEST")
  (make-package "SYSTEM_MANAGER_MSGS::MODULECONTROLCMDREQUEST"))

(in-package "ROS")
;;//! \htmlinclude ModuleControlCmdRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::ModuleControlCmdRequest
  :super ros::object
  :slots (_header _running_mode _module_control_cmd ))

(defmethod system_manager_msgs::ModuleControlCmdRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:running_mode __running_mode) (instance system_manager_msgs::RunningModeEnum :init))
    ((:module_control_cmd __module_control_cmd) (instance system_manager_msgs::ModuleControlCmdEnum :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _running_mode __running_mode)
   (setq _module_control_cmd __module_control_cmd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:running_mode
   (&rest __running_mode)
   (if (keywordp (car __running_mode))
       (send* _running_mode __running_mode)
     (progn
       (if __running_mode (setq _running_mode (car __running_mode)))
       _running_mode)))
  (:module_control_cmd
   (&rest __module_control_cmd)
   (if (keywordp (car __module_control_cmd))
       (send* _module_control_cmd __module_control_cmd)
     (progn
       (if __module_control_cmd (setq _module_control_cmd (car __module_control_cmd)))
       _module_control_cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; system_manager_msgs/RunningModeEnum _running_mode
    (send _running_mode :serialization-length)
    ;; system_manager_msgs/ModuleControlCmdEnum _module_control_cmd
    (send _module_control_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; system_manager_msgs/RunningModeEnum _running_mode
       (send _running_mode :serialize s)
     ;; system_manager_msgs/ModuleControlCmdEnum _module_control_cmd
       (send _module_control_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; system_manager_msgs/RunningModeEnum _running_mode
     (send _running_mode :deserialize buf ptr-) (incf ptr- (send _running_mode :serialization-length))
   ;; system_manager_msgs/ModuleControlCmdEnum _module_control_cmd
     (send _module_control_cmd :deserialize buf ptr-) (incf ptr- (send _module_control_cmd :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::ModuleControlCmdRequest :md5sum-) "6bef79cd45830defc2dfa2dd2fd1e7f5")
(setf (get system_manager_msgs::ModuleControlCmdRequest :datatype-) "system_manager_msgs/ModuleControlCmdRequest")
(setf (get system_manager_msgs::ModuleControlCmdRequest :definition-)
      "std_msgs/Header header
system_manager_msgs/RunningModeEnum running_mode
system_manager_msgs/ModuleControlCmdEnum module_control_cmd

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: system_manager_msgs/RunningModeEnum
uint8 PILOT = 0
uint8 PARKING = 1
uint8 MANUAL_DRIVING = 2
uint8 PRODUCTION_LINE = 3
uint8 MEB = 4
uint8 RADS = 5
uint8 PILOT_WITH_PSD = 6
uint8 SENTRY_MODE = 7
uint8 value

================================================================================
MSG: system_manager_msgs/ModuleControlCmdEnum
uint8 PAUSE = 0
uint8 RESUME = 1
uint8 value

")



(provide :system_manager_msgs/ModuleControlCmdRequest "6bef79cd45830defc2dfa2dd2fd1e7f5")


