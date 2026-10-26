;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::CalibrationRequest)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'CalibrationRequest (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUEST")
  (make-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUEST"))

(in-package "ROS")
;;//! \htmlinclude CalibrationRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*START*" (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUEST"))
(shadow '*START* (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUEST"))
(defconstant system_manager_msgs::CalibrationRequest::*START* 1)
(intern "*CONTINUE*" (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUEST"))
(shadow '*CONTINUE* (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUEST"))
(defconstant system_manager_msgs::CalibrationRequest::*CONTINUE* 2)
(intern "*STOP*" (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUEST"))
(shadow '*STOP* (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUEST"))
(defconstant system_manager_msgs::CalibrationRequest::*STOP* 3)

(defun system_manager_msgs::CalibrationRequest-to-symbol (const)
  (cond
        ((= const 1) 'system_manager_msgs::CalibrationRequest::*START*)
        ((= const 2) 'system_manager_msgs::CalibrationRequest::*CONTINUE*)
        ((= const 3) 'system_manager_msgs::CalibrationRequest::*STOP*)
        (t nil)))

(defclass system_manager_msgs::CalibrationRequest
  :super ros::object
  :slots (_header _source _id _command _target_state ))

(defmethod system_manager_msgs::CalibrationRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source __source) "")
    ((:id __id) 0)
    ((:command __command) 0)
    ((:target_state __target_state) (instance system_manager_msgs::SsmState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _source (string __source))
   (setq _id (round __id))
   (setq _command (round __command))
   (setq _target_state __target_state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:target_state
   (&rest __target_state)
   (if (keywordp (car __target_state))
       (send* _target_state __target_state)
     (progn
       (if __target_state (setq _target_state (car __target_state)))
       _target_state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _source
    4 (length _source)
    ;; uint32 _id
    4
    ;; uint8 _command
    1
    ;; system_manager_msgs/SsmState _target_state
    (send _target_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _command
       (write-byte _command s)
     ;; system_manager_msgs/SsmState _target_state
       (send _target_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _command
     (setq _command (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; system_manager_msgs/SsmState _target_state
     (send _target_state :deserialize buf ptr-) (incf ptr- (send _target_state :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::CalibrationRequest :md5sum-) "eecaef67e39a0b2d7e61379df4f82efe")
(setf (get system_manager_msgs::CalibrationRequest :datatype-) "system_manager_msgs/CalibrationRequest")
(setf (get system_manager_msgs::CalibrationRequest :definition-)
      "uint8 START = 1
uint8 CONTINUE = 2
uint8 STOP = 3
std_msgs/Header header
string source
uint32 id
uint8 command
system_manager_msgs/SsmState target_state

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



(provide :system_manager_msgs/CalibrationRequest "eecaef67e39a0b2d7e61379df4f82efe")


