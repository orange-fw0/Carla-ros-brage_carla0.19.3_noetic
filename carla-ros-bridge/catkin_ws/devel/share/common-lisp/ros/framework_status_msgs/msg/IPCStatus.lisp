; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude IPCStatus.msg.html

(cl:defclass <IPCStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cpu_status
    :reader cpu_status
    :initarg :cpu_status
    :type framework_status_msgs-msg:CPUStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:CPUStatus))
   (disk_status
    :reader disk_status
    :initarg :disk_status
    :type framework_status_msgs-msg:DiskStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:DiskStatus))
   (gpu_status
    :reader gpu_status
    :initarg :gpu_status
    :type framework_status_msgs-msg:GPUStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:GPUStatus))
   (memory_status
    :reader memory_status
    :initarg :memory_status
    :type framework_status_msgs-msg:MemoryStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:MemoryStatus))
   (net_status
    :reader net_status
    :initarg :net_status
    :type framework_status_msgs-msg:NetStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:NetStatus))
   (process_status
    :reader process_status
    :initarg :process_status
    :type framework_status_msgs-msg:ProcessStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:ProcessStatus))
   (time_status
    :reader time_status
    :initarg :time_status
    :type framework_status_msgs-msg:TimeStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:TimeStatus)))
)

(cl:defclass IPCStatus (<IPCStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IPCStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IPCStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<IPCStatus> is deprecated: use framework_status_msgs-msg:IPCStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IPCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cpu_status-val :lambda-list '(m))
(cl:defmethod cpu_status-val ((m <IPCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_status-val is deprecated.  Use framework_status_msgs-msg:cpu_status instead.")
  (cpu_status m))

(cl:ensure-generic-function 'disk_status-val :lambda-list '(m))
(cl:defmethod disk_status-val ((m <IPCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:disk_status-val is deprecated.  Use framework_status_msgs-msg:disk_status instead.")
  (disk_status m))

(cl:ensure-generic-function 'gpu_status-val :lambda-list '(m))
(cl:defmethod gpu_status-val ((m <IPCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_status-val is deprecated.  Use framework_status_msgs-msg:gpu_status instead.")
  (gpu_status m))

(cl:ensure-generic-function 'memory_status-val :lambda-list '(m))
(cl:defmethod memory_status-val ((m <IPCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:memory_status-val is deprecated.  Use framework_status_msgs-msg:memory_status instead.")
  (memory_status m))

(cl:ensure-generic-function 'net_status-val :lambda-list '(m))
(cl:defmethod net_status-val ((m <IPCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:net_status-val is deprecated.  Use framework_status_msgs-msg:net_status instead.")
  (net_status m))

(cl:ensure-generic-function 'process_status-val :lambda-list '(m))
(cl:defmethod process_status-val ((m <IPCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:process_status-val is deprecated.  Use framework_status_msgs-msg:process_status instead.")
  (process_status m))

(cl:ensure-generic-function 'time_status-val :lambda-list '(m))
(cl:defmethod time_status-val ((m <IPCStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:time_status-val is deprecated.  Use framework_status_msgs-msg:time_status instead.")
  (time_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IPCStatus>) ostream)
  "Serializes a message object of type '<IPCStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cpu_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'disk_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpu_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'memory_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'net_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'process_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'time_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IPCStatus>) istream)
  "Deserializes a message object of type '<IPCStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cpu_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'disk_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpu_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'memory_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'net_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'process_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'time_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IPCStatus>)))
  "Returns string type for a message object of type '<IPCStatus>"
  "framework_status_msgs/IPCStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IPCStatus)))
  "Returns string type for a message object of type 'IPCStatus"
  "framework_status_msgs/IPCStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IPCStatus>)))
  "Returns md5sum for a message object of type '<IPCStatus>"
  "b015f3f3cd15999614995c189967cea3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IPCStatus)))
  "Returns md5sum for a message object of type 'IPCStatus"
  "b015f3f3cd15999614995c189967cea3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IPCStatus>)))
  "Returns full string definition for message of type '<IPCStatus>"
  (cl:format cl:nil "std_msgs/Header header~%framework_status_msgs/CPUStatus cpu_status~%framework_status_msgs/DiskStatus disk_status~%framework_status_msgs/GPUStatus gpu_status~%framework_status_msgs/MemoryStatus memory_status~%framework_status_msgs/NetStatus net_status~%framework_status_msgs/ProcessStatus process_status~%framework_status_msgs/TimeStatus time_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/CPUStatus~%uint8 CPU_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/CPUStatusData cpu_status_data~%~%================================================================================~%MSG: framework_status_msgs/CPUStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint8 cpu_count~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32[] cpu_average_load~%float32 cpu_average_temperature~%float32 cpu_average_frequency~%string[] top_processes~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/DiskStatus~%uint8 DISK_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/DiskStatusData disk_status_data~%~%================================================================================~%MSG: framework_status_msgs/DiskStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 disk_usage~%string disk_io_counters~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/GPUStatus~%uint8 GPU_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/GPUStatusData gpu_status_data~%~%================================================================================~%MSG: framework_status_msgs/GPUStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/SingleGPUStatus[] gpu_status_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleGPUStatus~%uint8 gpu_id~%float32 gpu_current_percent~%float32 gpu_average_percent~%float32 gpu_memory_current_percent~%float32 gpu_memory_average_percent~%float32 gpu_temperature~%float32 gpu_power~%string[] top_processes~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/MemoryStatus~%uint8 MEMORY_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/MemoryStatusData memory_status_data~%~%================================================================================~%MSG: framework_status_msgs/MemoryStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 virtual_memory~%float32 swap_memory~%string[] top_processes~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/NetStatus~%uint8 NET_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/NetStatusData net_status_data~%~%================================================================================~%MSG: framework_status_msgs/NetStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/NetCardStatus[] net_card_status_list~%framework_status_msgs/NetAliveStatus[] net_alive_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/NetCardStatus~%string net_card_name~%float32 bytes_sent_rate~%float32 bytes_recv_rate~%float32 packets_sent_rate~%float32 packets_recv_rate~%float32 errin_rate~%float32 errout_rate~%float32 dropin_rate~%float32 dropout_rate~%bool net_card_isup~%uint8 duplex~%uint32 speed~%uint32 mtu~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/NetAliveStatus~%string name~%uint32 loss_count~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/ProcessStatus~%uint8 PROCESS_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/ProcessStatusData process_status_data~%~%================================================================================~%MSG: framework_status_msgs/ProcessStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/SingleProcessStatus[] process_status_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleProcessStatus~%string process_name~%bool is_alive~%uint8 num_threads~%float32 voluntary_ctxt_switches_rate~%float32 nonvoluntary_ctxt_switches_rate~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32 memory_current_percent~%float32 memory_average_percent~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/TimeStatus~%uint8 TIME_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/TimeStatusData time_status_data~%~%================================================================================~%MSG: framework_status_msgs/TimeStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IPCStatus)))
  "Returns full string definition for message of type 'IPCStatus"
  (cl:format cl:nil "std_msgs/Header header~%framework_status_msgs/CPUStatus cpu_status~%framework_status_msgs/DiskStatus disk_status~%framework_status_msgs/GPUStatus gpu_status~%framework_status_msgs/MemoryStatus memory_status~%framework_status_msgs/NetStatus net_status~%framework_status_msgs/ProcessStatus process_status~%framework_status_msgs/TimeStatus time_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/CPUStatus~%uint8 CPU_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/CPUStatusData cpu_status_data~%~%================================================================================~%MSG: framework_status_msgs/CPUStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint8 cpu_count~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32[] cpu_average_load~%float32 cpu_average_temperature~%float32 cpu_average_frequency~%string[] top_processes~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/DiskStatus~%uint8 DISK_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/DiskStatusData disk_status_data~%~%================================================================================~%MSG: framework_status_msgs/DiskStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 disk_usage~%string disk_io_counters~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/GPUStatus~%uint8 GPU_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/GPUStatusData gpu_status_data~%~%================================================================================~%MSG: framework_status_msgs/GPUStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/SingleGPUStatus[] gpu_status_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleGPUStatus~%uint8 gpu_id~%float32 gpu_current_percent~%float32 gpu_average_percent~%float32 gpu_memory_current_percent~%float32 gpu_memory_average_percent~%float32 gpu_temperature~%float32 gpu_power~%string[] top_processes~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/MemoryStatus~%uint8 MEMORY_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/MemoryStatusData memory_status_data~%~%================================================================================~%MSG: framework_status_msgs/MemoryStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 virtual_memory~%float32 swap_memory~%string[] top_processes~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/NetStatus~%uint8 NET_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/NetStatusData net_status_data~%~%================================================================================~%MSG: framework_status_msgs/NetStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/NetCardStatus[] net_card_status_list~%framework_status_msgs/NetAliveStatus[] net_alive_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/NetCardStatus~%string net_card_name~%float32 bytes_sent_rate~%float32 bytes_recv_rate~%float32 packets_sent_rate~%float32 packets_recv_rate~%float32 errin_rate~%float32 errout_rate~%float32 dropin_rate~%float32 dropout_rate~%bool net_card_isup~%uint8 duplex~%uint32 speed~%uint32 mtu~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/NetAliveStatus~%string name~%uint32 loss_count~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/ProcessStatus~%uint8 PROCESS_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/ProcessStatusData process_status_data~%~%================================================================================~%MSG: framework_status_msgs/ProcessStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/SingleProcessStatus[] process_status_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleProcessStatus~%string process_name~%bool is_alive~%uint8 num_threads~%float32 voluntary_ctxt_switches_rate~%float32 nonvoluntary_ctxt_switches_rate~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32 memory_current_percent~%float32 memory_average_percent~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/TimeStatus~%uint8 TIME_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/TimeStatusData time_status_data~%~%================================================================================~%MSG: framework_status_msgs/TimeStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IPCStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cpu_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'disk_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpu_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'memory_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'net_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'process_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'time_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IPCStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'IPCStatus
    (cl:cons ':header (header msg))
    (cl:cons ':cpu_status (cpu_status msg))
    (cl:cons ':disk_status (disk_status msg))
    (cl:cons ':gpu_status (gpu_status msg))
    (cl:cons ':memory_status (memory_status msg))
    (cl:cons ':net_status (net_status msg))
    (cl:cons ':process_status (process_status msg))
    (cl:cons ':time_status (time_status msg))
))
