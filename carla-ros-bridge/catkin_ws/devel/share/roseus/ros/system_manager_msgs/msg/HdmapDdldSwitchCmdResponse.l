;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::HdmapDdldSwitchCmdResponse)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'HdmapDdldSwitchCmdResponse (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDSWITCHCMDRESPONSE")
  (make-package "SYSTEM_MANAGER_MSGS::HDMAPDDLDSWITCHCMDRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude HdmapDdldSwitchCmdResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::HdmapDdldSwitchCmdResponse
  :super ros::object
  :slots (_header _request_seq _success ))

(defmethod system_manager_msgs::HdmapDdldSwitchCmdResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request_seq __request_seq) 0)
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _request_seq (round __request_seq))
   (setq _success __success)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request_seq
   (&optional __request_seq)
   (if __request_seq (setq _request_seq __request_seq)) _request_seq)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _request_seq
    4
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _request_seq
       (write-long _request_seq s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _request_seq
     (setq _request_seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get system_manager_msgs::HdmapDdldSwitchCmdResponse :md5sum-) "9e9b9422c8f427b39efb20b79080d25d")
(setf (get system_manager_msgs::HdmapDdldSwitchCmdResponse :datatype-) "system_manager_msgs/HdmapDdldSwitchCmdResponse")
(setf (get system_manager_msgs::HdmapDdldSwitchCmdResponse :definition-)
      "std_msgs/Header header
uint32 request_seq
bool success

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



(provide :system_manager_msgs/HdmapDdldSwitchCmdResponse "9e9b9422c8f427b39efb20b79080d25d")


