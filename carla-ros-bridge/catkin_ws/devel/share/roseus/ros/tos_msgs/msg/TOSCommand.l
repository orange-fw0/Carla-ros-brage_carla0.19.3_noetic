;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSCommand)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSCommand (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSCOMMAND")
  (make-package "TOS_MSGS::TOSCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TOSCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::TOSCommand
  :super ros::object
  :slots (_header _tos_set_speed_cmd _tos_nudge_cmd ))

(defmethod tos_msgs::TOSCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tos_set_speed_cmd __tos_set_speed_cmd) (instance tos_msgs::TOSSetSpeedCmd :init))
    ((:tos_nudge_cmd __tos_nudge_cmd) (instance tos_msgs::TOSNudgeCmd :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tos_set_speed_cmd __tos_set_speed_cmd)
   (setq _tos_nudge_cmd __tos_nudge_cmd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tos_set_speed_cmd
   (&rest __tos_set_speed_cmd)
   (if (keywordp (car __tos_set_speed_cmd))
       (send* _tos_set_speed_cmd __tos_set_speed_cmd)
     (progn
       (if __tos_set_speed_cmd (setq _tos_set_speed_cmd (car __tos_set_speed_cmd)))
       _tos_set_speed_cmd)))
  (:tos_nudge_cmd
   (&rest __tos_nudge_cmd)
   (if (keywordp (car __tos_nudge_cmd))
       (send* _tos_nudge_cmd __tos_nudge_cmd)
     (progn
       (if __tos_nudge_cmd (setq _tos_nudge_cmd (car __tos_nudge_cmd)))
       _tos_nudge_cmd)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tos_msgs/TOSSetSpeedCmd _tos_set_speed_cmd
    (send _tos_set_speed_cmd :serialization-length)
    ;; tos_msgs/TOSNudgeCmd _tos_nudge_cmd
    (send _tos_nudge_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tos_msgs/TOSSetSpeedCmd _tos_set_speed_cmd
       (send _tos_set_speed_cmd :serialize s)
     ;; tos_msgs/TOSNudgeCmd _tos_nudge_cmd
       (send _tos_nudge_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tos_msgs/TOSSetSpeedCmd _tos_set_speed_cmd
     (send _tos_set_speed_cmd :deserialize buf ptr-) (incf ptr- (send _tos_set_speed_cmd :serialization-length))
   ;; tos_msgs/TOSNudgeCmd _tos_nudge_cmd
     (send _tos_nudge_cmd :deserialize buf ptr-) (incf ptr- (send _tos_nudge_cmd :serialization-length))
   ;;
   self)
  )

(setf (get tos_msgs::TOSCommand :md5sum-) "aa0e281be7190eefeb03ee59f35c1ab1")
(setf (get tos_msgs::TOSCommand :datatype-) "tos_msgs/TOSCommand")
(setf (get tos_msgs::TOSCommand :definition-)
      "std_msgs/Header header
tos_msgs/TOSSetSpeedCmd tos_set_speed_cmd
tos_msgs/TOSNudgeCmd tos_nudge_cmd

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
MSG: tos_msgs/TOSSetSpeedCmd
uint8 available
float64 tos_set_speed

================================================================================
MSG: tos_msgs/TOSNudgeCmd
uint8 available
tos_msgs/TOSNudgeEnum nudge_cmd

================================================================================
MSG: tos_msgs/TOSNudgeEnum
uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 value

")



(provide :tos_msgs/TOSCommand "aa0e281be7190eefeb03ee59f35c1ab1")


