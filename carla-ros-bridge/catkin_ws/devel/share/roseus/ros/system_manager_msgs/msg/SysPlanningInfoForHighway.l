;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysPlanningInfoForHighway)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysPlanningInfoForHighway (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGINFOFORHIGHWAY")
  (make-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGINFOFORHIGHWAY"))

(in-package "ROS")
;;//! \htmlinclude SysPlanningInfoForHighway.msg.html


(defclass system_manager_msgs::SysPlanningInfoForHighway
  :super ros::object
  :slots (_function_mode _navi_settings _driving_style _lane_change_cmd _start_stop_cmd _lane_change_style ))

(defmethod system_manager_msgs::SysPlanningInfoForHighway
  (:init
   (&key
    ((:function_mode __function_mode) (instance system_manager_msgs::FunctionModeEnum :init))
    ((:navi_settings __navi_settings) (instance system_manager_msgs::NaviSettings :init))
    ((:driving_style __driving_style) (instance system_manager_msgs::DrivingStyleEnum :init))
    ((:lane_change_cmd __lane_change_cmd) (instance system_manager_msgs::LaneChangeCmd :init))
    ((:start_stop_cmd __start_stop_cmd) (instance system_manager_msgs::StartStopCmdEnum :init))
    ((:lane_change_style __lane_change_style) (instance system_manager_msgs::LaneChangeStyleEnum :init))
    )
   (send-super :init)
   (setq _function_mode __function_mode)
   (setq _navi_settings __navi_settings)
   (setq _driving_style __driving_style)
   (setq _lane_change_cmd __lane_change_cmd)
   (setq _start_stop_cmd __start_stop_cmd)
   (setq _lane_change_style __lane_change_style)
   self)
  (:function_mode
   (&rest __function_mode)
   (if (keywordp (car __function_mode))
       (send* _function_mode __function_mode)
     (progn
       (if __function_mode (setq _function_mode (car __function_mode)))
       _function_mode)))
  (:navi_settings
   (&rest __navi_settings)
   (if (keywordp (car __navi_settings))
       (send* _navi_settings __navi_settings)
     (progn
       (if __navi_settings (setq _navi_settings (car __navi_settings)))
       _navi_settings)))
  (:driving_style
   (&rest __driving_style)
   (if (keywordp (car __driving_style))
       (send* _driving_style __driving_style)
     (progn
       (if __driving_style (setq _driving_style (car __driving_style)))
       _driving_style)))
  (:lane_change_cmd
   (&rest __lane_change_cmd)
   (if (keywordp (car __lane_change_cmd))
       (send* _lane_change_cmd __lane_change_cmd)
     (progn
       (if __lane_change_cmd (setq _lane_change_cmd (car __lane_change_cmd)))
       _lane_change_cmd)))
  (:start_stop_cmd
   (&rest __start_stop_cmd)
   (if (keywordp (car __start_stop_cmd))
       (send* _start_stop_cmd __start_stop_cmd)
     (progn
       (if __start_stop_cmd (setq _start_stop_cmd (car __start_stop_cmd)))
       _start_stop_cmd)))
  (:lane_change_style
   (&rest __lane_change_style)
   (if (keywordp (car __lane_change_style))
       (send* _lane_change_style __lane_change_style)
     (progn
       (if __lane_change_style (setq _lane_change_style (car __lane_change_style)))
       _lane_change_style)))
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/FunctionModeEnum _function_mode
    (send _function_mode :serialization-length)
    ;; system_manager_msgs/NaviSettings _navi_settings
    (send _navi_settings :serialization-length)
    ;; system_manager_msgs/DrivingStyleEnum _driving_style
    (send _driving_style :serialization-length)
    ;; system_manager_msgs/LaneChangeCmd _lane_change_cmd
    (send _lane_change_cmd :serialization-length)
    ;; system_manager_msgs/StartStopCmdEnum _start_stop_cmd
    (send _start_stop_cmd :serialization-length)
    ;; system_manager_msgs/LaneChangeStyleEnum _lane_change_style
    (send _lane_change_style :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/FunctionModeEnum _function_mode
       (send _function_mode :serialize s)
     ;; system_manager_msgs/NaviSettings _navi_settings
       (send _navi_settings :serialize s)
     ;; system_manager_msgs/DrivingStyleEnum _driving_style
       (send _driving_style :serialize s)
     ;; system_manager_msgs/LaneChangeCmd _lane_change_cmd
       (send _lane_change_cmd :serialize s)
     ;; system_manager_msgs/StartStopCmdEnum _start_stop_cmd
       (send _start_stop_cmd :serialize s)
     ;; system_manager_msgs/LaneChangeStyleEnum _lane_change_style
       (send _lane_change_style :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/FunctionModeEnum _function_mode
     (send _function_mode :deserialize buf ptr-) (incf ptr- (send _function_mode :serialization-length))
   ;; system_manager_msgs/NaviSettings _navi_settings
     (send _navi_settings :deserialize buf ptr-) (incf ptr- (send _navi_settings :serialization-length))
   ;; system_manager_msgs/DrivingStyleEnum _driving_style
     (send _driving_style :deserialize buf ptr-) (incf ptr- (send _driving_style :serialization-length))
   ;; system_manager_msgs/LaneChangeCmd _lane_change_cmd
     (send _lane_change_cmd :deserialize buf ptr-) (incf ptr- (send _lane_change_cmd :serialization-length))
   ;; system_manager_msgs/StartStopCmdEnum _start_stop_cmd
     (send _start_stop_cmd :deserialize buf ptr-) (incf ptr- (send _start_stop_cmd :serialization-length))
   ;; system_manager_msgs/LaneChangeStyleEnum _lane_change_style
     (send _lane_change_style :deserialize buf ptr-) (incf ptr- (send _lane_change_style :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysPlanningInfoForHighway :md5sum-) "e6bf22ee6514788d823386fc7c22d717")
(setf (get system_manager_msgs::SysPlanningInfoForHighway :datatype-) "system_manager_msgs/SysPlanningInfoForHighway")
(setf (get system_manager_msgs::SysPlanningInfoForHighway :definition-)
      "system_manager_msgs/FunctionModeEnum function_mode
system_manager_msgs/NaviSettings navi_settings
system_manager_msgs/DrivingStyleEnum driving_style
system_manager_msgs/LaneChangeCmd lane_change_cmd
system_manager_msgs/StartStopCmdEnum start_stop_cmd
system_manager_msgs/LaneChangeStyleEnum lane_change_style

================================================================================
MSG: system_manager_msgs/FunctionModeEnum
uint8 ACC = 0
uint8 CP = 1
uint8 HNP = 2
uint8 APA = 3
uint8 SVP = 4
uint8 PLAC = 5
uint8 ACE = 6
uint8 PNP = 7
uint8 LPNP = 8
uint8 LPNP_MAPPING = 9
uint8 MEB = 10
uint8 RADS = 11
uint8 MANUAL = 12
uint8 NRP = 13
uint8 UNP = 14
uint8 RPA = 15
uint8 MANUAL_WITH_CPP = 16
uint8 EESF = 17
uint8 LKC = 18
uint8 SENTRY_MODE = 20
uint8 ECO_ASSIST = 21
uint8 MNP = 22
uint8 MNP_MAPPING = 23
uint8 L3_FADEIN = 24
uint8 MANUAL_WITH_NPP = 66
uint8 value

================================================================================
MSG: system_manager_msgs/NaviSettings
float32 navi_max_speed
system_manager_msgs/NaviTimeDistance navi_time_distance

================================================================================
MSG: system_manager_msgs/NaviTimeDistance
uint8 AGGRESIVE = 0
uint8 MODERATE_AGGRESIVE = 1
uint8 NORMAL = 2
uint8 MODERATE_CONSERVATIVE = 3
uint8 CONSERVATIVE = 4
uint8 value

================================================================================
MSG: system_manager_msgs/DrivingStyleEnum
uint8 AGGRESIVE = 0
uint8 NORMAL = 1
uint8 CONSERVATIVE = 2
uint8 value

================================================================================
MSG: system_manager_msgs/LaneChangeCmd
system_manager_msgs/LaneChangeTypeEnum type
system_manager_msgs/LaneChangeDirectionEnum direction

================================================================================
MSG: system_manager_msgs/LaneChangeTypeEnum
uint8 FORBIDDEN = 0
uint8 INTERACTIVE = 1
uint8 REMOVE_FORBIDDEN = 2
uint8 REMOVE_INTERACTIVE = 3
uint8 CONFIRM_MODE = 4
uint8 REMOVE_CONFIRM_MODE = 5
uint8 CONFIRM_APPROVED = 6
uint8 CONFIRM_REFUSED = 7
uint8 ENABLE_EVASIVE = 10
uint8 DISABLE_EVASIVE = 11
uint8 FORBIDDEN_INTERACTIVE = 12
uint8 REMOVE_FORBIDDEN_INTERACTIVE = 13
uint8 FORBIDDEN_AUTO = 14
uint8 REMOVE_FORBIDDEN_AUTO = 15
uint8 FORBIDDEN_NAVI = 16
uint8 REMOVE_FORBIDDEN_NAVI = 17
uint8 CONFIRM_TIMEOUT = 18
uint8 ENABLE_INITIALTIVE_AUTOMOUS = 20
uint8 ENABLE_RECOMMAND_AUTOMOUS = 21
uint8 DISABLE_AUTOMOUS = 22
uint8 ENABLE_PREFERED_LANE = 23
uint8 DISABLE_PREFERED_LANE = 24
uint8 LEFT_FIRST_LANE = 25
uint8 LEFT_SECOND_LANE = 26
uint8 value

================================================================================
MSG: system_manager_msgs/LaneChangeDirectionEnum
uint8 LEFT = 0
uint8 RIGHT = 1
uint8 value

================================================================================
MSG: system_manager_msgs/StartStopCmdEnum
uint8 START = 0
uint8 STOP = 1
uint8 value

================================================================================
MSG: system_manager_msgs/LaneChangeStyleEnum
uint8 AGGRESIVE = 0
uint8 NORMAL = 1
uint8 CONSERVATIVE = 2
uint8 value

")



(provide :system_manager_msgs/SysPlanningInfoForHighway "e6bf22ee6514788d823386fc7c22d717")


