;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysLPNPMapSwitchRequest)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysLPNPMapSwitchRequest (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPSWITCHREQUEST")
  (make-package "SYSTEM_MANAGER_MSGS::SYSLPNPMAPSWITCHREQUEST"))

(in-package "ROS")
;;//! \htmlinclude SysLPNPMapSwitchRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::SysLPNPMapSwitchRequest
  :super ros::object
  :slots (_header _map_dir _id _manual_init ))

(defmethod system_manager_msgs::SysLPNPMapSwitchRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:map_dir __map_dir) "")
    ((:id __id) 0)
    ((:manual_init __manual_init) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _map_dir (string __map_dir))
   (setq _id (round __id))
   (setq _manual_init __manual_init)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:map_dir
   (&optional __map_dir)
   (if __map_dir (setq _map_dir __map_dir)) _map_dir)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:manual_init
   (&optional (__manual_init :null))
   (if (not (eq __manual_init :null)) (setq _manual_init __manual_init)) _manual_init)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _map_dir
    4 (length _map_dir)
    ;; uint32 _id
    4
    ;; bool _manual_init
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _map_dir
       (write-long (length _map_dir) s) (princ _map_dir s)
     ;; uint32 _id
       (write-long _id s)
     ;; bool _manual_init
       (if _manual_init (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _map_dir
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_dir (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _manual_init
     (setq _manual_init (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get system_manager_msgs::SysLPNPMapSwitchRequest :md5sum-) "0b436fbdf4852c0d75eb97513df2128d")
(setf (get system_manager_msgs::SysLPNPMapSwitchRequest :datatype-) "system_manager_msgs/SysLPNPMapSwitchRequest")
(setf (get system_manager_msgs::SysLPNPMapSwitchRequest :definition-)
      "std_msgs/Header header
string map_dir
uint32 id
bool manual_init

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



(provide :system_manager_msgs/SysLPNPMapSwitchRequest "0b436fbdf4852c0d75eb97513df2128d")


