; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude MemoryStatus.msg.html

(cl:defclass <MemoryStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (memory_status_data
    :reader memory_status_data
    :initarg :memory_status_data
    :type framework_status_msgs-msg:MemoryStatusData
    :initform (cl:make-instance 'framework_status_msgs-msg:MemoryStatusData)))
)

(cl:defclass MemoryStatus (<MemoryStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MemoryStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MemoryStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<MemoryStatus> is deprecated: use framework_status_msgs-msg:MemoryStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MemoryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'memory_status_data-val :lambda-list '(m))
(cl:defmethod memory_status_data-val ((m <MemoryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:memory_status_data-val is deprecated.  Use framework_status_msgs-msg:memory_status_data instead.")
  (memory_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MemoryStatus>)))
    "Constants for message type '<MemoryStatus>"
  '((:MEMORY_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MemoryStatus)))
    "Constants for message type 'MemoryStatus"
  '((:MEMORY_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MemoryStatus>) ostream)
  "Serializes a message object of type '<MemoryStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'memory_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MemoryStatus>) istream)
  "Deserializes a message object of type '<MemoryStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'memory_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MemoryStatus>)))
  "Returns string type for a message object of type '<MemoryStatus>"
  "framework_status_msgs/MemoryStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MemoryStatus)))
  "Returns string type for a message object of type 'MemoryStatus"
  "framework_status_msgs/MemoryStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MemoryStatus>)))
  "Returns md5sum for a message object of type '<MemoryStatus>"
  "45e066a8a863afa81b1c7434ce54f1e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MemoryStatus)))
  "Returns md5sum for a message object of type 'MemoryStatus"
  "45e066a8a863afa81b1c7434ce54f1e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MemoryStatus>)))
  "Returns full string definition for message of type '<MemoryStatus>"
  (cl:format cl:nil "uint8 MEMORY_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/MemoryStatusData memory_status_data~%~%================================================================================~%MSG: framework_status_msgs/MemoryStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 virtual_memory~%float32 swap_memory~%string[] top_processes~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MemoryStatus)))
  "Returns full string definition for message of type 'MemoryStatus"
  (cl:format cl:nil "uint8 MEMORY_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/MemoryStatusData memory_status_data~%~%================================================================================~%MSG: framework_status_msgs/MemoryStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 virtual_memory~%float32 swap_memory~%string[] top_processes~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MemoryStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'memory_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MemoryStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MemoryStatus
    (cl:cons ':available (available msg))
    (cl:cons ':memory_status_data (memory_status_data msg))
))
