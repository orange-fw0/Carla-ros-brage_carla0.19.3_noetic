; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude ProcessStatus.msg.html

(cl:defclass <ProcessStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (process_status_data
    :reader process_status_data
    :initarg :process_status_data
    :type framework_status_msgs-msg:ProcessStatusData
    :initform (cl:make-instance 'framework_status_msgs-msg:ProcessStatusData)))
)

(cl:defclass ProcessStatus (<ProcessStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProcessStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProcessStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<ProcessStatus> is deprecated: use framework_status_msgs-msg:ProcessStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'process_status_data-val :lambda-list '(m))
(cl:defmethod process_status_data-val ((m <ProcessStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:process_status_data-val is deprecated.  Use framework_status_msgs-msg:process_status_data instead.")
  (process_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ProcessStatus>)))
    "Constants for message type '<ProcessStatus>"
  '((:PROCESS_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ProcessStatus)))
    "Constants for message type 'ProcessStatus"
  '((:PROCESS_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProcessStatus>) ostream)
  "Serializes a message object of type '<ProcessStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'process_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProcessStatus>) istream)
  "Deserializes a message object of type '<ProcessStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'process_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProcessStatus>)))
  "Returns string type for a message object of type '<ProcessStatus>"
  "framework_status_msgs/ProcessStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProcessStatus)))
  "Returns string type for a message object of type 'ProcessStatus"
  "framework_status_msgs/ProcessStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProcessStatus>)))
  "Returns md5sum for a message object of type '<ProcessStatus>"
  "bb6dd78efc43362c1ab5e180b44fffe2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProcessStatus)))
  "Returns md5sum for a message object of type 'ProcessStatus"
  "bb6dd78efc43362c1ab5e180b44fffe2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProcessStatus>)))
  "Returns full string definition for message of type '<ProcessStatus>"
  (cl:format cl:nil "uint8 PROCESS_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/ProcessStatusData process_status_data~%~%================================================================================~%MSG: framework_status_msgs/ProcessStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/SingleProcessStatus[] process_status_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleProcessStatus~%string process_name~%bool is_alive~%uint8 num_threads~%float32 voluntary_ctxt_switches_rate~%float32 nonvoluntary_ctxt_switches_rate~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32 memory_current_percent~%float32 memory_average_percent~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProcessStatus)))
  "Returns full string definition for message of type 'ProcessStatus"
  (cl:format cl:nil "uint8 PROCESS_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/ProcessStatusData process_status_data~%~%================================================================================~%MSG: framework_status_msgs/ProcessStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%framework_status_msgs/SingleProcessStatus[] process_status_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleProcessStatus~%string process_name~%bool is_alive~%uint8 num_threads~%float32 voluntary_ctxt_switches_rate~%float32 nonvoluntary_ctxt_switches_rate~%float32 cpu_current_percent~%float32 cpu_average_percent~%float32 memory_current_percent~%float32 memory_average_percent~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProcessStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'process_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProcessStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ProcessStatus
    (cl:cons ':available (available msg))
    (cl:cons ':process_status_data (process_status_data msg))
))
