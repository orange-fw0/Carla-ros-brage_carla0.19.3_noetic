;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::HdmapAvailableInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'HdmapAvailableInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::HDMAPAVAILABLEINFO")
  (make-package "SYSTEM_MANAGER_MSGS::HDMAPAVAILABLEINFO"))

(in-package "ROS")
;;//! \htmlinclude HdmapAvailableInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*UNAVAILABLE*" (find-package "SYSTEM_MANAGER_MSGS::HDMAPAVAILABLEINFO"))
(shadow '*UNAVAILABLE* (find-package "SYSTEM_MANAGER_MSGS::HDMAPAVAILABLEINFO"))
(defconstant system_manager_msgs::HdmapAvailableInfo::*UNAVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "SYSTEM_MANAGER_MSGS::HDMAPAVAILABLEINFO"))
(shadow '*AVAILABLE* (find-package "SYSTEM_MANAGER_MSGS::HDMAPAVAILABLEINFO"))
(defconstant system_manager_msgs::HdmapAvailableInfo::*AVAILABLE* 1)

(defun system_manager_msgs::HdmapAvailableInfo-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::HdmapAvailableInfo::*UNAVAILABLE*)
        ((= const 1) 'system_manager_msgs::HdmapAvailableInfo::*AVAILABLE*)
        (t nil)))

(defclass system_manager_msgs::HdmapAvailableInfo
  :super ros::object
  :slots (_header _value _detailed_info ))

(defmethod system_manager_msgs::HdmapAvailableInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:value __value) 0)
    ((:detailed_info __detailed_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _value (round __value))
   (setq _detailed_info (string __detailed_info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:detailed_info
   (&optional __detailed_info)
   (if __detailed_info (setq _detailed_info __detailed_info)) _detailed_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _value
    1
    ;; string _detailed_info
    4 (length _detailed_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _value
       (write-byte _value s)
     ;; string _detailed_info
       (write-long (length _detailed_info) s) (princ _detailed_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _detailed_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detailed_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::HdmapAvailableInfo :md5sum-) "92099df3794d9ea81d01b871e85b2c81")
(setf (get system_manager_msgs::HdmapAvailableInfo :datatype-) "system_manager_msgs/HdmapAvailableInfo")
(setf (get system_manager_msgs::HdmapAvailableInfo :definition-)
      "uint8 UNAVAILABLE = 0
uint8 AVAILABLE = 1
std_msgs/Header header
uint8 value
string detailed_info

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



(provide :system_manager_msgs/HdmapAvailableInfo "92099df3794d9ea81d01b871e85b2c81")


