;; Auto-generated. Do not edit!


(when (boundp 'mlog_msgs::Logs)
  (if (not (find-package "MLOG_MSGS"))
    (make-package "MLOG_MSGS"))
  (shadow 'Logs (find-package "MLOG_MSGS")))
(unless (find-package "MLOG_MSGS::LOGS")
  (make-package "MLOG_MSGS::LOGS"))

(in-package "ROS")
;;//! \htmlinclude Logs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mlog_msgs::Logs
  :super ros::object
  :slots (_header _entries ))

(defmethod mlog_msgs::Logs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:entries __entries) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _entries __entries)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:entries
   (&rest __entries)
   (if (keywordp (car __entries))
       (send* _entries __entries)
     (progn
       (if __entries (setq _entries (car __entries)))
       _entries)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mlog_msgs/Entry[] _entries
    (apply #'+ (send-all _entries :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mlog_msgs/Entry[] _entries
     (write-long (length _entries) s)
     (dolist (elem _entries)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mlog_msgs/Entry[] _entries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _entries (let (r) (dotimes (i n) (push (instance mlog_msgs::Entry :init) r)) r))
     (dolist (elem- _entries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mlog_msgs::Logs :md5sum-) "68e9e63185c0cb1889770fbf4e881576")
(setf (get mlog_msgs::Logs :datatype-) "mlog_msgs/Logs")
(setf (get mlog_msgs::Logs :definition-)
      "std_msgs/Header header
mlog_msgs/Entry[] entries

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
MSG: mlog_msgs/Entry
uint8 DATA_TYPE_NORMAL = 0
uint8 DATA_TYPE_MSG_TIMESTAMP = 1
uint8 DATA_TYPE_MSG_RELATION = 2
uint8 type
string data

")



(provide :mlog_msgs/Logs "68e9e63185c0cb1889770fbf4e881576")


