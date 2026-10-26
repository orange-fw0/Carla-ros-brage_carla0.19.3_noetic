;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::DebugInfo)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'DebugInfo (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::DEBUGINFO")
  (make-package "MOMENTA_MSGS::DEBUGINFO"))

(in-package "ROS")
;;//! \htmlinclude DebugInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LEVEL_DEBUG*" (find-package "MOMENTA_MSGS::DEBUGINFO"))
(shadow '*LEVEL_DEBUG* (find-package "MOMENTA_MSGS::DEBUGINFO"))
(defconstant momenta_msgs::DebugInfo::*LEVEL_DEBUG* 0)
(intern "*LEVEL_INFO*" (find-package "MOMENTA_MSGS::DEBUGINFO"))
(shadow '*LEVEL_INFO* (find-package "MOMENTA_MSGS::DEBUGINFO"))
(defconstant momenta_msgs::DebugInfo::*LEVEL_INFO* 1)
(intern "*LEVEL_WARN*" (find-package "MOMENTA_MSGS::DEBUGINFO"))
(shadow '*LEVEL_WARN* (find-package "MOMENTA_MSGS::DEBUGINFO"))
(defconstant momenta_msgs::DebugInfo::*LEVEL_WARN* 2)
(intern "*LEVEL_ERROR*" (find-package "MOMENTA_MSGS::DEBUGINFO"))
(shadow '*LEVEL_ERROR* (find-package "MOMENTA_MSGS::DEBUGINFO"))
(defconstant momenta_msgs::DebugInfo::*LEVEL_ERROR* 3)
(intern "*LEVEL_FATAL*" (find-package "MOMENTA_MSGS::DEBUGINFO"))
(shadow '*LEVEL_FATAL* (find-package "MOMENTA_MSGS::DEBUGINFO"))
(defconstant momenta_msgs::DebugInfo::*LEVEL_FATAL* 4)

(defun momenta_msgs::DebugInfo-to-symbol (const)
  (cond
        ((= const 0) 'momenta_msgs::DebugInfo::*LEVEL_DEBUG*)
        ((= const 1) 'momenta_msgs::DebugInfo::*LEVEL_INFO*)
        ((= const 2) 'momenta_msgs::DebugInfo::*LEVEL_WARN*)
        ((= const 3) 'momenta_msgs::DebugInfo::*LEVEL_ERROR*)
        ((= const 4) 'momenta_msgs::DebugInfo::*LEVEL_FATAL*)
        (t nil)))

(defclass momenta_msgs::DebugInfo
  :super ros::object
  :slots (_header _level _related_topic _data ))

(defmethod momenta_msgs::DebugInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:level __level) 0)
    ((:related_topic __related_topic) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _level (round __level))
   (setq _related_topic (string __related_topic))
   (setq _data (string __data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:related_topic
   (&optional __related_topic)
   (if __related_topic (setq _related_topic __related_topic)) _related_topic)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _level
    1
    ;; string _related_topic
    4 (length _related_topic)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _level
       (write-byte _level s)
     ;; string _related_topic
       (write-long (length _related_topic) s) (princ _related_topic s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _related_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _related_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::DebugInfo :md5sum-) "937cb0313ba8ca56b878ca360cd7bc95")
(setf (get momenta_msgs::DebugInfo :datatype-) "momenta_msgs/DebugInfo")
(setf (get momenta_msgs::DebugInfo :definition-)
      "uint8 LEVEL_DEBUG = 0
uint8 LEVEL_INFO = 1
uint8 LEVEL_WARN = 2
uint8 LEVEL_ERROR = 3
uint8 LEVEL_FATAL = 4
std_msgs/Header header
uint8 level
string related_topic
string data

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



(provide :momenta_msgs/DebugInfo "937cb0313ba8ca56b878ca360cd7bc95")


