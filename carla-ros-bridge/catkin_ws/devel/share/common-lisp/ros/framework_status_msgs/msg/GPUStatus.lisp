; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude GPUStatus.msg.html

(cl:defclass <GPUStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (gpu_status_data
    :reader gpu_status_data
    :initarg :gpu_status_data
    :type framework_status_msgs-msg:GPUStatusData
    :initform (cl:make-instance 'framework_status_msgs-msg:GPUStatusData)))
)

(cl:defclass GPUStatus (<GPUStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPUStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPUStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<GPUStatus> is deprecated: use framework_status_msgs-msg:GPUStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <GPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'gpu_status_data-val :lambda-list '(m))
(cl:defmethod gpu_status_data-val ((m <GPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:gpu_status_data-val is deprecated.  Use framework_status_msgs-msg:gpu_status_data instead.")
  (gpu_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GPUStatus>)))
    "Constants for message type '<GPUStatus>"
  '((:GPU_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GPUStatus)))
    "Constants for message type 'GPUStatus"
  '((:GPU_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPUStatus>) ostream)
  "Serializes a message object of type '<GPUStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpu_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPUStatus>) istream)
  "Deserializes a message object of type '<GPUStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpu_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPUStatus>)))
  "Returns string type for a message object of type '<GPUStatus>"
  "framework_status_msgs/GPUStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPUStatus)))
  "Returns string type for a message object of type 'GPUStatus"
  "framework_status_msgs/GPUStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPUStatus>)))
  "Returns md5sum for a message object of type '<GPUStatus>"
  "fcca9a1f41861458b2ecf3b1187a3f15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPUStatus)))
  "Returns md5sum for a message object of type 'GPUStatus"
  "fcca9a1f41861458b2ecf3b1187a3f15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPUStatus>)))
  "Returns full string definition for message of type '<GPUStatus>"
  (cl:format cl:nil "uint8 GPU_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/GPUStatusData gpu_status_data~%~%================================================================================~%MSG: framework_status_msgs/GPUStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/SingleGPUStatus[] gpu_status_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleGPUStatus~%uint8 gpu_id~%float32 gpu_current_percent~%float32 gpu_average_percent~%float32 gpu_memory_current_percent~%float32 gpu_memory_average_percent~%float32 gpu_temperature~%float32 gpu_power~%string[] top_processes~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPUStatus)))
  "Returns full string definition for message of type 'GPUStatus"
  (cl:format cl:nil "uint8 GPU_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/GPUStatusData gpu_status_data~%~%================================================================================~%MSG: framework_status_msgs/GPUStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/SingleGPUStatus[] gpu_status_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleGPUStatus~%uint8 gpu_id~%float32 gpu_current_percent~%float32 gpu_average_percent~%float32 gpu_memory_current_percent~%float32 gpu_memory_average_percent~%float32 gpu_temperature~%float32 gpu_power~%string[] top_processes~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPUStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpu_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPUStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GPUStatus
    (cl:cons ':available (available msg))
    (cl:cons ':gpu_status_data (gpu_status_data msg))
))
