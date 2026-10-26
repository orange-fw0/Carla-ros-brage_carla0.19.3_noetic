; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude FleetDiskStatus.msg.html

(cl:defclass <FleetDiskStatus> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (fleet_disk_status_data
    :reader fleet_disk_status_data
    :initarg :fleet_disk_status_data
    :type framework_status_msgs-msg:FleetDiskStatusData
    :initform (cl:make-instance 'framework_status_msgs-msg:FleetDiskStatusData)))
)

(cl:defclass FleetDiskStatus (<FleetDiskStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FleetDiskStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FleetDiskStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<FleetDiskStatus> is deprecated: use framework_status_msgs-msg:FleetDiskStatus instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <FleetDiskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:available-val is deprecated.  Use framework_status_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'fleet_disk_status_data-val :lambda-list '(m))
(cl:defmethod fleet_disk_status_data-val ((m <FleetDiskStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:fleet_disk_status_data-val is deprecated.  Use framework_status_msgs-msg:fleet_disk_status_data instead.")
  (fleet_disk_status_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FleetDiskStatus>)))
    "Constants for message type '<FleetDiskStatus>"
  '((:FLEET_DISK_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FleetDiskStatus)))
    "Constants for message type 'FleetDiskStatus"
  '((:FLEET_DISK_STATUS_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FleetDiskStatus>) ostream)
  "Serializes a message object of type '<FleetDiskStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fleet_disk_status_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FleetDiskStatus>) istream)
  "Deserializes a message object of type '<FleetDiskStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fleet_disk_status_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FleetDiskStatus>)))
  "Returns string type for a message object of type '<FleetDiskStatus>"
  "framework_status_msgs/FleetDiskStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FleetDiskStatus)))
  "Returns string type for a message object of type 'FleetDiskStatus"
  "framework_status_msgs/FleetDiskStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FleetDiskStatus>)))
  "Returns md5sum for a message object of type '<FleetDiskStatus>"
  "a458147320c67acd8cff34daf7970047")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FleetDiskStatus)))
  "Returns md5sum for a message object of type 'FleetDiskStatus"
  "a458147320c67acd8cff34daf7970047")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FleetDiskStatus>)))
  "Returns full string definition for message of type '<FleetDiskStatus>"
  (cl:format cl:nil "uint8 FLEET_DISK_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/FleetDiskStatusData fleet_disk_status_data~%~%================================================================================~%MSG: framework_status_msgs/FleetDiskStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%framework_status_msgs/SingleDiskStatus[] single_disk_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleDiskStatus~%string sn~%string disk_type~%string status~%uint64 space_size~%uint64 space_used~%string driver~%string speed~%int64 availability~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FleetDiskStatus)))
  "Returns full string definition for message of type 'FleetDiskStatus"
  (cl:format cl:nil "uint8 FLEET_DISK_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/FleetDiskStatusData fleet_disk_status_data~%~%================================================================================~%MSG: framework_status_msgs/FleetDiskStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%framework_status_msgs/SingleDiskStatus[] single_disk_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleDiskStatus~%string sn~%string disk_type~%string status~%uint64 space_size~%uint64 space_used~%string driver~%string speed~%int64 availability~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FleetDiskStatus>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fleet_disk_status_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FleetDiskStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FleetDiskStatus
    (cl:cons ':available (available msg))
    (cl:cons ':fleet_disk_status_data (fleet_disk_status_data msg))
))
