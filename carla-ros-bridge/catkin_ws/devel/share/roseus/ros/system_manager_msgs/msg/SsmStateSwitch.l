;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SsmStateSwitch)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SsmStateSwitch (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCH")
  (make-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCH"))

(in-package "ROS")
;;//! \htmlinclude SsmStateSwitch.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::SsmStateSwitch
  :super ros::object
  :slots (_header _state ))

(defmethod system_manager_msgs::SsmStateSwitch
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance system_manager_msgs::SsmState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; system_manager_msgs/SsmState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; system_manager_msgs/SsmState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; system_manager_msgs/SsmState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::SsmStateSwitch :md5sum-) "ca75b416d2aec87502ac1b6d96a3a0ff")
(setf (get system_manager_msgs::SsmStateSwitch :datatype-) "system_manager_msgs/SsmStateSwitch")
(setf (get system_manager_msgs::SsmStateSwitch :definition-)
      "std_msgs/Header header
system_manager_msgs/SsmState state

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
MSG: system_manager_msgs/SsmState
uint8 NONE = 255
uint8 INIT = 0
uint8 SHUTDOWN = 1
uint8 MANUAL = 2
uint8 AD = 3
uint8 SENTINEL = 4
uint8 PLCA = 5
uint8 SLCA = 6
uint8 NORMAL = 2
uint8 CALIB_PLAC_CAMERA = 9
uint8 CALIB_PLAC_LIDAR = 10
uint8 CALIB_ACE_CAMERA = 11
uint8 CALIB_ACE_LIDAR = 12
uint32 value

")



(provide :system_manager_msgs/SsmStateSwitch "ca75b416d2aec87502ac1b6d96a3a0ff")


