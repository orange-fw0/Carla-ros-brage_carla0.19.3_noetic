;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::SystemStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'SystemStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::SYSTEMSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::SYSTEMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SystemStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODULE_STATUS*" (find-package "FRAMEWORK_STATUS_MSGS::SYSTEMSTATUS"))
(shadow '*MODULE_STATUS* (find-package "FRAMEWORK_STATUS_MSGS::SYSTEMSTATUS"))
(defconstant framework_status_msgs::SystemStatus::*MODULE_STATUS* 1)
(intern "*OVERALL_STATUS*" (find-package "FRAMEWORK_STATUS_MSGS::SYSTEMSTATUS"))
(shadow '*OVERALL_STATUS* (find-package "FRAMEWORK_STATUS_MSGS::SYSTEMSTATUS"))
(defconstant framework_status_msgs::SystemStatus::*OVERALL_STATUS* 2)

(defun framework_status_msgs::SystemStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::SystemStatus::*MODULE_STATUS*)
        ((= const 2) 'framework_status_msgs::SystemStatus::*OVERALL_STATUS*)
        (t nil)))

(defclass framework_status_msgs::SystemStatus
  :super ros::object
  :slots (_header _available _function_module_status_array _overall_status ))

(defmethod framework_status_msgs::SystemStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:available __available) 0)
    ((:function_module_status_array __function_module_status_array) ())
    ((:overall_status __overall_status) (instance framework_status_msgs::OverallStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _available (round __available))
   (setq _function_module_status_array __function_module_status_array)
   (setq _overall_status __overall_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:function_module_status_array
   (&rest __function_module_status_array)
   (if (keywordp (car __function_module_status_array))
       (send* _function_module_status_array __function_module_status_array)
     (progn
       (if __function_module_status_array (setq _function_module_status_array (car __function_module_status_array)))
       _function_module_status_array)))
  (:overall_status
   (&rest __overall_status)
   (if (keywordp (car __overall_status))
       (send* _overall_status __overall_status)
     (progn
       (if __overall_status (setq _overall_status (car __overall_status)))
       _overall_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _available
    4
    ;; framework_status_msgs/NodeStatus[] _function_module_status_array
    (apply #'+ (send-all _function_module_status_array :serialization-length)) 4
    ;; framework_status_msgs/OverallStatus _overall_status
    (send _overall_status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _available
       (write-long _available s)
     ;; framework_status_msgs/NodeStatus[] _function_module_status_array
     (write-long (length _function_module_status_array) s)
     (dolist (elem _function_module_status_array)
       (send elem :serialize s)
       )
     ;; framework_status_msgs/OverallStatus _overall_status
       (send _overall_status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; framework_status_msgs/NodeStatus[] _function_module_status_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _function_module_status_array (let (r) (dotimes (i n) (push (instance framework_status_msgs::NodeStatus :init) r)) r))
     (dolist (elem- _function_module_status_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; framework_status_msgs/OverallStatus _overall_status
     (send _overall_status :deserialize buf ptr-) (incf ptr- (send _overall_status :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::SystemStatus :md5sum-) "42e87a7dc2e841976934586b192074be")
(setf (get framework_status_msgs::SystemStatus :datatype-) "framework_status_msgs/SystemStatus")
(setf (get framework_status_msgs::SystemStatus :definition-)
      "uint32 MODULE_STATUS = 1
uint32 OVERALL_STATUS = 2
std_msgs/Header header
uint32 available
framework_status_msgs/NodeStatus[] function_module_status_array
framework_status_msgs/OverallStatus overall_status

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
MSG: framework_status_msgs/NodeStatus
uint64 timestamp_us
uint16 node_type
uint16 task_type
uint16 status
uint16 detail_status
float32 detail_value
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/OverallStatus
uint8 STOP = 0
uint8 SAFTY_RUNNING = 1
uint8 NORMAL_RUNNING = 2
uint8 TAKEOVER = 3
uint8 NONE = 0
uint8 SAFTY_RUNNING_WAIT_TAKEOVER = 1
std_msgs/Header header
uint64 timestamp_us
uint8 status
uint8 detail_status
string message

")



(provide :framework_status_msgs/SystemStatus "42e87a7dc2e841976934586b192074be")


