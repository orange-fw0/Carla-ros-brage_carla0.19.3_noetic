;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysPlanningInfoForRADS)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysPlanningInfoForRADS (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGINFOFORRADS")
  (make-package "SYSTEM_MANAGER_MSGS::SYSPLANNINGINFOFORRADS"))

(in-package "ROS")
;;//! \htmlinclude SysPlanningInfoForRADS.msg.html


(defclass system_manager_msgs::SysPlanningInfoForRADS
  :super ros::object
  :slots (_mode _trajectory_points ))

(defmethod system_manager_msgs::SysPlanningInfoForRADS
  (:init
   (&key
    ((:mode __mode) (instance system_manager_msgs::FunctionModeEnum :init))
    ((:trajectory_points __trajectory_points) ())
    )
   (send-super :init)
   (setq _mode __mode)
   (setq _trajectory_points __trajectory_points)
   self)
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
  (:trajectory_points
   (&rest __trajectory_points)
   (if (keywordp (car __trajectory_points))
       (send* _trajectory_points __trajectory_points)
     (progn
       (if __trajectory_points (setq _trajectory_points (car __trajectory_points)))
       _trajectory_points)))
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/FunctionModeEnum _mode
    (send _mode :serialization-length)
    ;; system_manager_msgs/TrajectoryPoint[] _trajectory_points
    (apply #'+ (send-all _trajectory_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/FunctionModeEnum _mode
       (send _mode :serialize s)
     ;; system_manager_msgs/TrajectoryPoint[] _trajectory_points
     (write-long (length _trajectory_points) s)
     (dolist (elem _trajectory_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/FunctionModeEnum _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;; system_manager_msgs/TrajectoryPoint[] _trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_points (let (r) (dotimes (i n) (push (instance system_manager_msgs::TrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysPlanningInfoForRADS :md5sum-) "700944411c0d355f97bad6b53df332e5")
(setf (get system_manager_msgs::SysPlanningInfoForRADS :datatype-) "system_manager_msgs/SysPlanningInfoForRADS")
(setf (get system_manager_msgs::SysPlanningInfoForRADS :definition-)
      "system_manager_msgs/FunctionModeEnum mode
system_manager_msgs/TrajectoryPoint[] trajectory_points

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
MSG: system_manager_msgs/TrajectoryPoint
mla_localization_msgs/MLAPosLocal position
float64 velocity
float64 reserved
bool is_reverse
float32 steering_report
float64 yaw
string reserved_info

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

")



(provide :system_manager_msgs/SysPlanningInfoForRADS "700944411c0d355f97bad6b53df332e5")


