;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysLPNPMappingInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysLPNPMappingInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGINFO")
  (make-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPPINGINFO"))

(in-package "ROS")
;;//! \htmlinclude SysLPNPMappingInfo.msg.html


(defclass system_manager_msgs::SysLPNPMappingInfo
  :super ros::object
  :slots (_function_mode _map_dir _map_name _task_type _command _parking_name _target_parking_space_id ))

(defmethod system_manager_msgs::SysLPNPMappingInfo
  (:init
   (&key
    ((:function_mode __function_mode) (instance system_manager_msgs::FunctionModeEnum :init))
    ((:map_dir __map_dir) "")
    ((:map_name __map_name) 0)
    ((:task_type __task_type) (instance system_manager_msgs::SysLPNPMappingTaskType :init))
    ((:command __command) (instance system_manager_msgs::SysLPNPMappingCommand :init))
    ((:parking_name __parking_name) "")
    ((:target_parking_space_id __target_parking_space_id) 0)
    )
   (send-super :init)
   (setq _function_mode __function_mode)
   (setq _map_dir (string __map_dir))
   (setq _map_name (round __map_name))
   (setq _task_type __task_type)
   (setq _command __command)
   (setq _parking_name (string __parking_name))
   (setq _target_parking_space_id (round __target_parking_space_id))
   self)
  (:function_mode
   (&rest __function_mode)
   (if (keywordp (car __function_mode))
       (send* _function_mode __function_mode)
     (progn
       (if __function_mode (setq _function_mode (car __function_mode)))
       _function_mode)))
  (:map_dir
   (&optional __map_dir)
   (if __map_dir (setq _map_dir __map_dir)) _map_dir)
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:task_type
   (&rest __task_type)
   (if (keywordp (car __task_type))
       (send* _task_type __task_type)
     (progn
       (if __task_type (setq _task_type (car __task_type)))
       _task_type)))
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:parking_name
   (&optional __parking_name)
   (if __parking_name (setq _parking_name __parking_name)) _parking_name)
  (:target_parking_space_id
   (&optional __target_parking_space_id)
   (if __target_parking_space_id (setq _target_parking_space_id __target_parking_space_id)) _target_parking_space_id)
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/FunctionModeEnum _function_mode
    (send _function_mode :serialization-length)
    ;; string _map_dir
    4 (length _map_dir)
    ;; uint32 _map_name
    4
    ;; system_manager_msgs/SysLPNPMappingTaskType _task_type
    (send _task_type :serialization-length)
    ;; system_manager_msgs/SysLPNPMappingCommand _command
    (send _command :serialization-length)
    ;; string _parking_name
    4 (length _parking_name)
    ;; int32 _target_parking_space_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/FunctionModeEnum _function_mode
       (send _function_mode :serialize s)
     ;; string _map_dir
       (write-long (length _map_dir) s) (princ _map_dir s)
     ;; uint32 _map_name
       (write-long _map_name s)
     ;; system_manager_msgs/SysLPNPMappingTaskType _task_type
       (send _task_type :serialize s)
     ;; system_manager_msgs/SysLPNPMappingCommand _command
       (send _command :serialize s)
     ;; string _parking_name
       (write-long (length _parking_name) s) (princ _parking_name s)
     ;; int32 _target_parking_space_id
       (write-long _target_parking_space_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/FunctionModeEnum _function_mode
     (send _function_mode :deserialize buf ptr-) (incf ptr- (send _function_mode :serialization-length))
   ;; string _map_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _map_name
     (setq _map_name (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; system_manager_msgs/SysLPNPMappingTaskType _task_type
     (send _task_type :deserialize buf ptr-) (incf ptr- (send _task_type :serialization-length))
   ;; system_manager_msgs/SysLPNPMappingCommand _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;; string _parking_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parking_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _target_parking_space_id
     (setq _target_parking_space_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_manager_msgs::SysLPNPMappingInfo :md5sum-) "0fedf36e358f781ec9a5351677b019dd")
(setf (get system_manager_msgs::SysLPNPMappingInfo :datatype-) "system_manager_msgs/SysLPNPMappingInfo")
(setf (get system_manager_msgs::SysLPNPMappingInfo :definition-)
      "system_manager_msgs/FunctionModeEnum function_mode
string map_dir
uint32 map_name
system_manager_msgs/SysLPNPMappingTaskType task_type
system_manager_msgs/SysLPNPMappingCommand command
string parking_name
int32 target_parking_space_id

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
MSG: system_manager_msgs/SysLPNPMappingTaskType
uint8 DROP_OFF = 0
uint8 PICK_UP = 1
uint8 PARK_IN = 2
uint8 PARK_OUT = 3
uint8 VIRTUAL_PARK_IN = 4
uint8 NUM = 5
uint8 value

================================================================================
MSG: system_manager_msgs/SysLPNPMappingCommand
uint8 START_SILENT_MODE = 0
uint8 START_USER_MODE = 1
uint8 FINISH = 2
uint8 ABORT = 3
uint8 BACK_TO_SILENT_MODE = 4
uint8 SAVE = 5
uint8 RESET_BUFFER = 6
uint8 value

")



(provide :system_manager_msgs/SysLPNPMappingInfo "0fedf36e358f781ec9a5351677b019dd")


