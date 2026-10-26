; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude CPUStatus.msg.html

(cl:defclass <CPUStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (cpu_status_data
    :reader cpu_status_data
    :initarg :cpu_status_data
    :type framework_status_msgs-msg:CPUStatusData
    :initform (cl:make-instance 'framework_status_msgs-msg:CPUStatusData)))
)

(cl:defclass CPUStatus (<CPUStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CPUStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CPUStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<CPUStatus> is deprecated: use framework_status_msgs-msg:CPUStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <CPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'cpu_status_data-val :lambda-list '(m))
(cl:defmethod cpu_status_data-val ((m <CPUStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cpu_status_data-val is deprecated.  Use framework_status_msgs-msg:cpu_status_data instead.")
  (cpu_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CPUStatus>)))
    "Constants for message type '<CPUStatus>"
  '((:CPU_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CPUStatus)))
    "Constants for message type 'CPUStatus"
  '((:CPU_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CPUStatus>) ostream)
  "Serializes a message object of type '<CPUStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cpu_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CPUStatus>) istream)
  "Deserializes a message object of type '<CPUStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cpu_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CPUStatus>)))
  "Returns string type for a message object of type '<CPUStatus>"
  "framework_status_msgs/CPUStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CPUStatus)))
  "Returns string type for a message object of type 'CPUStatus"
  "framework_status_msgs/CPUStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CPUStatus>)))
  "Returns md5sum for a message object of type '<CPUStatus>"
  "a498217ac00641e425ea7e9cbed2faf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CPUStatus)))
  "Returns md5sum for a message object of type 'CPUStatus"
  "a498217ac00641e425ea7e9cbed2faf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CPUStatus>)))
  "Returns full string definition for message of type '<CPUStatus>"
  (cl:format cl:nil "uint8 CPU_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/CPUStatusData cpu_status_data~%~%================================================================================~%MSG: framework_status_msgs/CPUStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint8 cpu_count~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32[] cpu_average_load~%float32 cpu_average_temperature~%float32 cpu_average_frequency~%string[] top_processes~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CPUStatus)))
  "Returns full string definition for message of type 'CPUStatus"
  (cl:format cl:nil "uint8 CPU_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/CPUStatusData cpu_status_data~%~%================================================================================~%MSG: framework_status_msgs/CPUStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint8 cpu_count~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32[] cpu_average_load~%float32 cpu_average_temperature~%float32 cpu_average_frequency~%string[] top_processes~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CPUStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cpu_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CPUStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CPUStatus
    (cl:cons ':available (available msg))
    (cl:cons ':cpu_status_data (cpu_status_data msg))
))
