;; Auto-generated. Do not edit!


(when (boundp 'adas_msgs::SentryStatus)
  (if (not (find-package "ADAS_MSGS"))
    (make-package "ADAS_MSGS"))
  (shadow 'SentryStatus (find-package "ADAS_MSGS")))
(unless (find-package "ADAS_MSGS::SENTRYSTATUS")
  (make-package "ADAS_MSGS::SENTRYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SentryStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass adas_msgs::SentryStatus
  :super ros::object
  :slots (_header _approach_warning_state _shake_warning_state ))

(defmethod adas_msgs::SentryStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:approach_warning_state __approach_warning_state) 0)
    ((:shake_warning_state __shake_warning_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _approach_warning_state (round __approach_warning_state))
   (setq _shake_warning_state (round __shake_warning_state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:approach_warning_state
   (&optional __approach_warning_state)
   (if __approach_warning_state (setq _approach_warning_state __approach_warning_state)) _approach_warning_state)
  (:shake_warning_state
   (&optional __shake_warning_state)
   (if __shake_warning_state (setq _shake_warning_state __shake_warning_state)) _shake_warning_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _approach_warning_state
    1
    ;; uint8 _shake_warning_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _approach_warning_state
       (write-byte _approach_warning_state s)
     ;; uint8 _shake_warning_state
       (write-byte _shake_warning_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _approach_warning_state
     (setq _approach_warning_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _shake_warning_state
     (setq _shake_warning_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adas_msgs::SentryStatus :md5sum-) "f33ec563dfef6aaa4f36dd15c3a8633d")
(setf (get adas_msgs::SentryStatus :datatype-) "adas_msgs/SentryStatus")
(setf (get adas_msgs::SentryStatus :definition-)
      "std_msgs/Header header
uint8 approach_warning_state
uint8 shake_warning_state

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

")



(provide :adas_msgs/SentryStatus "f33ec563dfef6aaa4f36dd15c3a8633d")


