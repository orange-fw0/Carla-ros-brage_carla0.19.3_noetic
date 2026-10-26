;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::SystemMonitor)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'SystemMonitor (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::SYSTEMMONITOR")
  (make-package "MOMENTA_MSGS::SYSTEMMONITOR"))

(in-package "ROS")
;;//! \htmlinclude SystemMonitor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SYSTEM_STATUS_NORMAL_TYPE*" (find-package "MOMENTA_MSGS::SYSTEMMONITOR"))
(shadow '*SYSTEM_STATUS_NORMAL_TYPE* (find-package "MOMENTA_MSGS::SYSTEMMONITOR"))
(defconstant momenta_msgs::SystemMonitor::*SYSTEM_STATUS_NORMAL_TYPE* 0)
(intern "*SYSTEM_STATUS_WARNING_TYPE*" (find-package "MOMENTA_MSGS::SYSTEMMONITOR"))
(shadow '*SYSTEM_STATUS_WARNING_TYPE* (find-package "MOMENTA_MSGS::SYSTEMMONITOR"))
(defconstant momenta_msgs::SystemMonitor::*SYSTEM_STATUS_WARNING_TYPE* 1)
(intern "*SYSTEM_STATUS_ERROR_TYPE*" (find-package "MOMENTA_MSGS::SYSTEMMONITOR"))
(shadow '*SYSTEM_STATUS_ERROR_TYPE* (find-package "MOMENTA_MSGS::SYSTEMMONITOR"))
(defconstant momenta_msgs::SystemMonitor::*SYSTEM_STATUS_ERROR_TYPE* 2)

(defun momenta_msgs::SystemMonitor-to-symbol (const)
  (cond
        ((= const 0) 'momenta_msgs::SystemMonitor::*SYSTEM_STATUS_NORMAL_TYPE*)
        ((= const 1) 'momenta_msgs::SystemMonitor::*SYSTEM_STATUS_WARNING_TYPE*)
        ((= const 2) 'momenta_msgs::SystemMonitor::*SYSTEM_STATUS_ERROR_TYPE*)
        (t nil)))

(defclass momenta_msgs::SystemMonitor
  :super ros::object
  :slots (_header _system_status _warning_nodes_list _error_nodes_list ))

(defmethod momenta_msgs::SystemMonitor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:system_status __system_status) 0)
    ((:warning_nodes_list __warning_nodes_list) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:error_nodes_list __error_nodes_list) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _system_status (round __system_status))
   (setq _warning_nodes_list __warning_nodes_list)
   (setq _error_nodes_list __error_nodes_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:system_status
   (&optional __system_status)
   (if __system_status (setq _system_status __system_status)) _system_status)
  (:warning_nodes_list
   (&optional __warning_nodes_list)
   (if __warning_nodes_list (setq _warning_nodes_list __warning_nodes_list)) _warning_nodes_list)
  (:error_nodes_list
   (&optional __error_nodes_list)
   (if __error_nodes_list (setq _error_nodes_list __error_nodes_list)) _error_nodes_list)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _system_status
    1
    ;; string[] _warning_nodes_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _warning_nodes_list)) 4
    ;; string[] _error_nodes_list
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _error_nodes_list)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _system_status
       (write-byte _system_status s)
     ;; string[] _warning_nodes_list
     (write-long (length _warning_nodes_list) s)
     (dolist (elem _warning_nodes_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _error_nodes_list
     (write-long (length _error_nodes_list) s)
     (dolist (elem _error_nodes_list)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _system_status
     (setq _system_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string[] _warning_nodes_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _warning_nodes_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _warning_nodes_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _error_nodes_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error_nodes_list (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _error_nodes_list i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::SystemMonitor :md5sum-) "18f8caf115f21f130c236c5cd871b95f")
(setf (get momenta_msgs::SystemMonitor :datatype-) "momenta_msgs/SystemMonitor")
(setf (get momenta_msgs::SystemMonitor :definition-)
      "uint8 SYSTEM_STATUS_NORMAL_TYPE = 0
uint8 SYSTEM_STATUS_WARNING_TYPE = 1
uint8 SYSTEM_STATUS_ERROR_TYPE = 2
std_msgs/Header header
uint8 system_status
string[] warning_nodes_list
string[] error_nodes_list

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



(provide :momenta_msgs/SystemMonitor "18f8caf115f21f130c236c5cd871b95f")


