;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::NodesStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'NodesStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::NODESSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::NODESSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NodesStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))
(if (not (find-package "SYSTEM_MANAGER_MSGS"))
  (ros::roseus-add-msgs "system_manager_msgs"))


(defclass framework_status_msgs::NodesStatus
  :super ros::object
  :slots (_header _nodes_status _running_mode ))

(defmethod framework_status_msgs::NodesStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:nodes_status __nodes_status) ())
    ((:running_mode __running_mode) (instance system_manager_msgs::RunningModeEnum :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _nodes_status __nodes_status)
   (setq _running_mode __running_mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:nodes_status
   (&rest __nodes_status)
   (if (keywordp (car __nodes_status))
       (send* _nodes_status __nodes_status)
     (progn
       (if __nodes_status (setq _nodes_status (car __nodes_status)))
       _nodes_status)))
  (:running_mode
   (&rest __running_mode)
   (if (keywordp (car __running_mode))
       (send* _running_mode __running_mode)
     (progn
       (if __running_mode (setq _running_mode (car __running_mode)))
       _running_mode)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; framework_status_msgs/NodeStatus[] _nodes_status
    (apply #'+ (send-all _nodes_status :serialization-length)) 4
    ;; system_manager_msgs/RunningModeEnum _running_mode
    (send _running_mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; framework_status_msgs/NodeStatus[] _nodes_status
     (write-long (length _nodes_status) s)
     (dolist (elem _nodes_status)
       (send elem :serialize s)
       )
     ;; system_manager_msgs/RunningModeEnum _running_mode
       (send _running_mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; framework_status_msgs/NodeStatus[] _nodes_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _nodes_status (let (r) (dotimes (i n) (push (instance framework_status_msgs::NodeStatus :init) r)) r))
     (dolist (elem- _nodes_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; system_manager_msgs/RunningModeEnum _running_mode
     (send _running_mode :deserialize buf ptr-) (incf ptr- (send _running_mode :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::NodesStatus :md5sum-) "73a976dd1599eb1b9de2a8eb1ff04431")
(setf (get framework_status_msgs::NodesStatus :datatype-) "framework_status_msgs/NodesStatus")
(setf (get framework_status_msgs::NodesStatus :definition-)
      "std_msgs/Header header
framework_status_msgs/NodeStatus[] nodes_status
system_manager_msgs/RunningModeEnum running_mode

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
MSG: system_manager_msgs/RunningModeEnum
uint8 PILOT = 0
uint8 PARKING = 1
uint8 MANUAL_DRIVING = 2
uint8 PRODUCTION_LINE = 3
uint8 MEB = 4
uint8 RADS = 5
uint8 PILOT_WITH_PSD = 6
uint8 SENTRY_MODE = 7
uint8 value

")



(provide :framework_status_msgs/NodesStatus "73a976dd1599eb1b9de2a8eb1ff04431")


