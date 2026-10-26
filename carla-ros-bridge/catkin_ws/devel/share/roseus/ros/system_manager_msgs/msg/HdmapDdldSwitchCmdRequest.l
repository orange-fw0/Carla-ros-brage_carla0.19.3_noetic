;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::HdmapDdldSwitchCmdRequest)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'HdmapDdldSwitchCmdRequest (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDSWITCHCMDREQUEST")
  (make-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDSWITCHCMDREQUEST"))

(in-package "ROS")
;;//! \htmlinclude HdmapDdldSwitchCmdRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::HdmapDdldSwitchCmdRequest
  :super ros::object
  :slots (_header _hdmap_ddld_mode ))

(defmethod system_manager_msgs::HdmapDdldSwitchCmdRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hdmap_ddld_mode __hdmap_ddld_mode) (instance system_manager_msgs::HdmapDdldModeEnum :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _hdmap_ddld_mode __hdmap_ddld_mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hdmap_ddld_mode
   (&rest __hdmap_ddld_mode)
   (if (keywordp (car __hdmap_ddld_mode))
       (send* _hdmap_ddld_mode __hdmap_ddld_mode)
     (progn
       (if __hdmap_ddld_mode (setq _hdmap_ddld_mode (car __hdmap_ddld_mode)))
       _hdmap_ddld_mode)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; system_manager_msgs/HdmapDdldModeEnum _hdmap_ddld_mode
    (send _hdmap_ddld_mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; system_manager_msgs/HdmapDdldModeEnum _hdmap_ddld_mode
       (send _hdmap_ddld_mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; system_manager_msgs/HdmapDdldModeEnum _hdmap_ddld_mode
     (send _hdmap_ddld_mode :deserialize buf ptr-) (incf ptr- (send _hdmap_ddld_mode :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::HdmapDdldSwitchCmdRequest :md5sum-) "33ce916f016e7663814c8f691666481d")
(setf (get system_manager_msgs::HdmapDdldSwitchCmdRequest :datatype-) "system_manager_msgs/HdmapDdldSwitchCmdRequest")
(setf (get system_manager_msgs::HdmapDdldSwitchCmdRequest :definition-)
      "std_msgs/Header header
system_manager_msgs/HdmapDdldModeEnum hdmap_ddld_mode

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
MSG: system_manager_msgs/HdmapDdldModeEnum
uint8 HDMAP = 0
uint8 DDLD = 1
uint8 value

")



(provide :system_manager_msgs/HdmapDdldSwitchCmdRequest "33ce916f016e7663814c8f691666481d")


