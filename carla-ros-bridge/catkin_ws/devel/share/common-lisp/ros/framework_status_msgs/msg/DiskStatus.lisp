; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude DiskStatus.msg.html

(cl:defclass <DiskStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (disk_status_data
    :reader disk_status_data
    :initarg :disk_status_data
    :type framework_status_msgs-msg:DiskStatusData
    :initform (cl:make-instance 'framework_status_msgs-msg:DiskStatusData)))
)

(cl:defclass DiskStatus (<DiskStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiskStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiskStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<DiskStatus> is deprecated: use framework_status_msgs-msg:DiskStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DiskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'disk_status_data-val :lambda-list '(m))
(cl:defmethod disk_status_data-val ((m <DiskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:disk_status_data-val is deprecated.  Use framework_status_msgs-msg:disk_status_data instead.")
  (disk_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DiskStatus>)))
    "Constants for message type '<DiskStatus>"
  '((:DISK_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DiskStatus)))
    "Constants for message type 'DiskStatus"
  '((:DISK_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiskStatus>) ostream)
  "Serializes a message object of type '<DiskStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'disk_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiskStatus>) istream)
  "Deserializes a message object of type '<DiskStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'disk_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiskStatus>)))
  "Returns string type for a message object of type '<DiskStatus>"
  "framework_status_msgs/DiskStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiskStatus)))
  "Returns string type for a message object of type 'DiskStatus"
  "framework_status_msgs/DiskStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiskStatus>)))
  "Returns md5sum for a message object of type '<DiskStatus>"
  "e2f0c0136545a80d0f4a61bb427a8865")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiskStatus)))
  "Returns md5sum for a message object of type 'DiskStatus"
  "e2f0c0136545a80d0f4a61bb427a8865")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiskStatus>)))
  "Returns full string definition for message of type '<DiskStatus>"
  (cl:format cl:nil "uint8 DISK_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/DiskStatusData disk_status_data~%~%================================================================================~%MSG: framework_status_msgs/DiskStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 disk_usage~%string disk_io_counters~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiskStatus)))
  "Returns full string definition for message of type 'DiskStatus"
  (cl:format cl:nil "uint8 DISK_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/DiskStatusData disk_status_data~%~%================================================================================~%MSG: framework_status_msgs/DiskStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%float32 disk_usage~%string disk_io_counters~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiskStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'disk_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiskStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DiskStatus
    (cl:cons ':available (available msg))
    (cl:cons ':disk_status_data (disk_status_data msg))
))
