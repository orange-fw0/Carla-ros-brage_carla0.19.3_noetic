;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::IPCStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'IPCStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::IPCSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::IPCSTATUS"))

(in-package "ROS")
;;//! \htmlinclude IPCStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass framework_status_msgs::IPCStatus
  :super ros::object
  :slots (_header _cpu_status _disk_status _gpu_status _memory_status _net_status _process_status _time_status ))

(defmethod framework_status_msgs::IPCStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cpu_status __cpu_status) (instance framework_status_msgs::CPUStatus :init))
    ((:disk_status __disk_status) (instance framework_status_msgs::DiskStatus :init))
    ((:gpu_status __gpu_status) (instance framework_status_msgs::GPUStatus :init))
    ((:memory_status __memory_status) (instance framework_status_msgs::MemoryStatus :init))
    ((:net_status __net_status) (instance framework_status_msgs::NetStatus :init))
    ((:process_status __process_status) (instance framework_status_msgs::ProcessStatus :init))
    ((:time_status __time_status) (instance framework_status_msgs::TimeStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _cpu_status __cpu_status)
   (setq _disk_status __disk_status)
   (setq _gpu_status __gpu_status)
   (setq _memory_status __memory_status)
   (setq _net_status __net_status)
   (setq _process_status __process_status)
   (setq _time_status __time_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cpu_status
   (&rest __cpu_status)
   (if (keywordp (car __cpu_status))
       (send* _cpu_status __cpu_status)
     (progn
       (if __cpu_status (setq _cpu_status (car __cpu_status)))
       _cpu_status)))
  (:disk_status
   (&rest __disk_status)
   (if (keywordp (car __disk_status))
       (send* _disk_status __disk_status)
     (progn
       (if __disk_status (setq _disk_status (car __disk_status)))
       _disk_status)))
  (:gpu_status
   (&rest __gpu_status)
   (if (keywordp (car __gpu_status))
       (send* _gpu_status __gpu_status)
     (progn
       (if __gpu_status (setq _gpu_status (car __gpu_status)))
       _gpu_status)))
  (:memory_status
   (&rest __memory_status)
   (if (keywordp (car __memory_status))
       (send* _memory_status __memory_status)
     (progn
       (if __memory_status (setq _memory_status (car __memory_status)))
       _memory_status)))
  (:net_status
   (&rest __net_status)
   (if (keywordp (car __net_status))
       (send* _net_status __net_status)
     (progn
       (if __net_status (setq _net_status (car __net_status)))
       _net_status)))
  (:process_status
   (&rest __process_status)
   (if (keywordp (car __process_status))
       (send* _process_status __process_status)
     (progn
       (if __process_status (setq _process_status (car __process_status)))
       _process_status)))
  (:time_status
   (&rest __time_status)
   (if (keywordp (car __time_status))
       (send* _time_status __time_status)
     (progn
       (if __time_status (setq _time_status (car __time_status)))
       _time_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; framework_status_msgs/CPUStatus _cpu_status
    (send _cpu_status :serialization-length)
    ;; framework_status_msgs/DiskStatus _disk_status
    (send _disk_status :serialization-length)
    ;; framework_status_msgs/GPUStatus _gpu_status
    (send _gpu_status :serialization-length)
    ;; framework_status_msgs/MemoryStatus _memory_status
    (send _memory_status :serialization-length)
    ;; framework_status_msgs/NetStatus _net_status
    (send _net_status :serialization-length)
    ;; framework_status_msgs/ProcessStatus _process_status
    (send _process_status :serialization-length)
    ;; framework_status_msgs/TimeStatus _time_status
    (send _time_status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; framework_status_msgs/CPUStatus _cpu_status
       (send _cpu_status :serialize s)
     ;; framework_status_msgs/DiskStatus _disk_status
       (send _disk_status :serialize s)
     ;; framework_status_msgs/GPUStatus _gpu_status
       (send _gpu_status :serialize s)
     ;; framework_status_msgs/MemoryStatus _memory_status
       (send _memory_status :serialize s)
     ;; framework_status_msgs/NetStatus _net_status
       (send _net_status :serialize s)
     ;; framework_status_msgs/ProcessStatus _process_status
       (send _process_status :serialize s)
     ;; framework_status_msgs/TimeStatus _time_status
       (send _time_status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; framework_status_msgs/CPUStatus _cpu_status
     (send _cpu_status :deserialize buf ptr-) (incf ptr- (send _cpu_status :serialization-length))
   ;; framework_status_msgs/DiskStatus _disk_status
     (send _disk_status :deserialize buf ptr-) (incf ptr- (send _disk_status :serialization-length))
   ;; framework_status_msgs/GPUStatus _gpu_status
     (send _gpu_status :deserialize buf ptr-) (incf ptr- (send _gpu_status :serialization-length))
   ;; framework_status_msgs/MemoryStatus _memory_status
     (send _memory_status :deserialize buf ptr-) (incf ptr- (send _memory_status :serialization-length))
   ;; framework_status_msgs/NetStatus _net_status
     (send _net_status :deserialize buf ptr-) (incf ptr- (send _net_status :serialization-length))
   ;; framework_status_msgs/ProcessStatus _process_status
     (send _process_status :deserialize buf ptr-) (incf ptr- (send _process_status :serialization-length))
   ;; framework_status_msgs/TimeStatus _time_status
     (send _time_status :deserialize buf ptr-) (incf ptr- (send _time_status :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::IPCStatus :md5sum-) "b015f3f3cd15999614995c189967cea3")
(setf (get framework_status_msgs::IPCStatus :datatype-) "framework_status_msgs/IPCStatus")
(setf (get framework_status_msgs::IPCStatus :definition-)
      "std_msgs/Header header
framework_status_msgs/CPUStatus cpu_status
framework_status_msgs/DiskStatus disk_status
framework_status_msgs/GPUStatus gpu_status
framework_status_msgs/MemoryStatus memory_status
framework_status_msgs/NetStatus net_status
framework_status_msgs/ProcessStatus process_status
framework_status_msgs/TimeStatus time_status

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
MSG: framework_status_msgs/CPUStatus
uint8 CPU_STATUS_DATA = 1
uint8 available
framework_status_msgs/CPUStatusData cpu_status_data

================================================================================
MSG: framework_status_msgs/CPUStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
uint8 cpu_count
float32 cpu_current_percent
float32 cpu_average_percent
float32[] cpu_average_load
float32 cpu_average_temperature
float32 cpu_average_frequency
string[] top_processes
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/DiskStatus
uint8 DISK_STATUS_DATA = 1
uint8 available
framework_status_msgs/DiskStatusData disk_status_data

================================================================================
MSG: framework_status_msgs/DiskStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
float32 disk_usage
string disk_io_counters
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/GPUStatus
uint8 GPU_STATUS_DATA = 1
uint8 available
framework_status_msgs/GPUStatusData gpu_status_data

================================================================================
MSG: framework_status_msgs/GPUStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
framework_status_msgs/SingleGPUStatus[] gpu_status_list
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/SingleGPUStatus
uint8 gpu_id
float32 gpu_current_percent
float32 gpu_average_percent
float32 gpu_memory_current_percent
float32 gpu_memory_average_percent
float32 gpu_temperature
float32 gpu_power
string[] top_processes
string reserved_info

================================================================================
MSG: framework_status_msgs/MemoryStatus
uint8 MEMORY_STATUS_DATA = 1
uint8 available
framework_status_msgs/MemoryStatusData memory_status_data

================================================================================
MSG: framework_status_msgs/MemoryStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
float32 virtual_memory
float32 swap_memory
string[] top_processes
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/NetStatus
uint8 NET_STATUS_DATA = 1
uint8 available
framework_status_msgs/NetStatusData net_status_data

================================================================================
MSG: framework_status_msgs/NetStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
framework_status_msgs/NetCardStatus[] net_card_status_list
framework_status_msgs/NetAliveStatus[] net_alive_list
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/NetCardStatus
string net_card_name
float32 bytes_sent_rate
float32 bytes_recv_rate
float32 packets_sent_rate
float32 packets_recv_rate
float32 errin_rate
float32 errout_rate
float32 dropin_rate
float32 dropout_rate
bool net_card_isup
uint8 duplex
uint32 speed
uint32 mtu
string reserved_info

================================================================================
MSG: framework_status_msgs/NetAliveStatus
string name
uint32 loss_count
string reserved_info

================================================================================
MSG: framework_status_msgs/ProcessStatus
uint8 PROCESS_STATUS_DATA = 1
uint8 available
framework_status_msgs/ProcessStatusData process_status_data

================================================================================
MSG: framework_status_msgs/ProcessStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
framework_status_msgs/SingleProcessStatus[] process_status_list
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/SingleProcessStatus
string process_name
bool is_alive
uint8 num_threads
float32 voluntary_ctxt_switches_rate
float32 nonvoluntary_ctxt_switches_rate
float32 cpu_current_percent
float32 cpu_average_percent
float32 memory_current_percent
float32 memory_average_percent
string reserved_info

================================================================================
MSG: framework_status_msgs/TimeStatus
uint8 TIME_STATUS_DATA = 1
uint8 available
framework_status_msgs/TimeStatusData time_status_data

================================================================================
MSG: framework_status_msgs/TimeStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
string reserved_info
string message

")



(provide :framework_status_msgs/IPCStatus "b015f3f3cd15999614995c189967cea3")


