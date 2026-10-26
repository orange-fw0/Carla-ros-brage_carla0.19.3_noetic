;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SsmCurrentState)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SsmCurrentState (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SSMCURRENTSTATE")
  (make-package "SYSTEM_MANAGER_MSGS::SSMCURRENTSTATE"))

(in-package "ROS")
;;//! \htmlinclude SsmCurrentState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass system_manager_msgs::SsmCurrentState
  :super ros::object
  :slots (_header _state _switching_state _can_switch ))

(defmethod system_manager_msgs::SsmCurrentState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:state __state) (instance system_manager_msgs::SsmState :init))
    ((:switching_state __switching_state) (instance system_manager_msgs::SsmState :init))
    ((:can_switch __can_switch) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _state __state)
   (setq _switching_state __switching_state)
   (setq _can_switch __can_switch)
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
  (:switching_state
   (&rest __switching_state)
   (if (keywordp (car __switching_state))
       (send* _switching_state __switching_state)
     (progn
       (if __switching_state (setq _switching_state (car __switching_state)))
       _switching_state)))
  (:can_switch
   (&optional (__can_switch :null))
   (if (not (eq __can_switch :null)) (setq _can_switch __can_switch)) _can_switch)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; system_manager_msgs/SsmState _state
    (send _state :serialization-length)
    ;; system_manager_msgs/SsmState _switching_state
    (send _switching_state :serialization-length)
    ;; bool _can_switch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; system_manager_msgs/SsmState _state
       (send _state :serialize s)
     ;; system_manager_msgs/SsmState _switching_state
       (send _switching_state :serialize s)
     ;; bool _can_switch
       (if _can_switch (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; system_manager_msgs/SsmState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;; system_manager_msgs/SsmState _switching_state
     (send _switching_state :deserialize buf ptr-) (incf ptr- (send _switching_state :serialization-length))
   ;; bool _can_switch
     (setq _can_switch (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get system_manager_msgs::SsmCurrentState :md5sum-) "1e3993b5e79fbd1989ad29d974ce7e35")
(setf (get system_manager_msgs::SsmCurrentState :datatype-) "system_manager_msgs/SsmCurrentState")
(setf (get system_manager_msgs::SsmCurrentState :definition-)
      "std_msgs/Header header
system_manager_msgs/SsmState state
system_manager_msgs/SsmState switching_state
bool can_switch

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



(provide :system_manager_msgs/SsmCurrentState "1e3993b5e79fbd1989ad29d974ce7e35")


