;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SsmStateSwitchResult)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SsmStateSwitchResult (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT")
  (make-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))

(in-package "ROS")
;;//! \htmlinclude SsmStateSwitchResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SUCCESS*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(shadow '*SUCCESS* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(defconstant system_manager_msgs::SsmStateSwitchResult::*SUCCESS* 0)
(intern "*PENDING*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(shadow '*PENDING* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(defconstant system_manager_msgs::SsmStateSwitchResult::*PENDING* 1)
(intern "*FAILED*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(shadow '*FAILED* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(defconstant system_manager_msgs::SsmStateSwitchResult::*FAILED* 2)
(intern "*TIMEOUT*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(shadow '*TIMEOUT* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(defconstant system_manager_msgs::SsmStateSwitchResult::*TIMEOUT* 3)
(intern "*INVALID_STATE*" (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(shadow '*INVALID_STATE* (find-package "SYSTEM_MANAGER_MSGS::SSMSTATESWITCHRESULT"))
(defconstant system_manager_msgs::SsmStateSwitchResult::*INVALID_STATE* 4)

(defun system_manager_msgs::SsmStateSwitchResult-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::SsmStateSwitchResult::*SUCCESS*)
        ((= const 1) 'system_manager_msgs::SsmStateSwitchResult::*PENDING*)
        ((= const 2) 'system_manager_msgs::SsmStateSwitchResult::*FAILED*)
        ((= const 3) 'system_manager_msgs::SsmStateSwitchResult::*TIMEOUT*)
        ((= const 4) 'system_manager_msgs::SsmStateSwitchResult::*INVALID_STATE*)
        (t nil)))

(defclass system_manager_msgs::SsmStateSwitchResult
  :super ros::object
  :slots (_header _source_state _target_state _code _message ))

(defmethod system_manager_msgs::SsmStateSwitchResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source_state __source_state) (instance system_manager_msgs::SsmState :init))
    ((:target_state __target_state) (instance system_manager_msgs::SsmState :init))
    ((:code __code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _source_state __source_state)
   (setq _target_state __target_state)
   (setq _code (round __code))
   (setq _message (string __message))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source_state
   (&rest __source_state)
   (if (keywordp (car __source_state))
       (send* _source_state __source_state)
     (progn
       (if __source_state (setq _source_state (car __source_state)))
       _source_state)))
  (:target_state
   (&rest __target_state)
   (if (keywordp (car __target_state))
       (send* _target_state __target_state)
     (progn
       (if __target_state (setq _target_state (car __target_state)))
       _target_state)))
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; system_manager_msgs/SsmState _source_state
    (send _source_state :serialization-length)
    ;; system_manager_msgs/SsmState _target_state
    (send _target_state :serialization-length)
    ;; uint8 _code
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; system_manager_msgs/SsmState _source_state
       (send _source_state :serialize s)
     ;; system_manager_msgs/SsmState _target_state
       (send _target_state :serialize s)
     ;; uint8 _code
       (write-byte _code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; system_manager_msgs/SsmState _source_state
     (send _source_state :deserialize buf ptr-) (incf ptr- (send _source_state :serialization-length))
   ;; system_manager_msgs/SsmState _target_state
     (send _target_state :deserialize buf ptr-) (incf ptr- (send _target_state :serialization-length))
   ;; uint8 _code
     (setq _code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::SsmStateSwitchResult :md5sum-) "c1d323785535a9cacbe426edf8155aca")
(setf (get system_manager_msgs::SsmStateSwitchResult :datatype-) "system_manager_msgs/SsmStateSwitchResult")
(setf (get system_manager_msgs::SsmStateSwitchResult :definition-)
      "uint8 SUCCESS = 0
uint8 PENDING = 1
uint8 FAILED = 2
uint8 TIMEOUT = 3
uint8 INVALID_STATE = 4
std_msgs/Header header
system_manager_msgs/SsmState source_state
system_manager_msgs/SsmState target_state
uint8 code
string message

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



(provide :system_manager_msgs/SsmStateSwitchResult "c1d323785535a9cacbe426edf8155aca")


