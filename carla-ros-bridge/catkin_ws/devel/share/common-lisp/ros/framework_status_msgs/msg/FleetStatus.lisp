; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude FleetStatus.msg.html

(cl:defclass <FleetStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fleet_disk_status
    :reader fleet_disk_status
    :initarg :fleet_disk_status
    :type framework_status_msgs-msg:FleetDiskStatus
    :initform (cl:make-instance 'framework_status_msgs-msg:FleetDiskStatus))
   (export_details
    :reader export_details
    :initarg :export_details
    :type framework_status_msgs-msg:ExportDetails
    :initform (cl:make-instance 'framework_status_msgs-msg:ExportDetails))
   (cache_bag_details
    :reader cache_bag_details
    :initarg :cache_bag_details
    :type framework_status_msgs-msg:CacheBagDetails
    :initform (cl:make-instance 'framework_status_msgs-msg:CacheBagDetails)))
)

(cl:defclass FleetStatus (<FleetStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FleetStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FleetStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<FleetStatus> is deprecated: use framework_status_msgs-msg:FleetStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FleetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:header-val is deprecated.  Use framework_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fleet_disk_status-val :lambda-list '(m))
(cl:defmethod fleet_disk_status-val ((m <FleetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:fleet_disk_status-val is deprecated.  Use framework_status_msgs-msg:fleet_disk_status instead.")
  (fleet_disk_status m))

(cl:ensure-generic-function 'export_details-val :lambda-list '(m))
(cl:defmethod export_details-val ((m <FleetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:export_details-val is deprecated.  Use framework_status_msgs-msg:export_details instead.")
  (export_details m))

(cl:ensure-generic-function 'cache_bag_details-val :lambda-list '(m))
(cl:defmethod cache_bag_details-val ((m <FleetStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:cache_bag_details-val is deprecated.  Use framework_status_msgs-msg:cache_bag_details instead.")
  (cache_bag_details m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FleetStatus>) ostream)
  "Serializes a message object of type '<FleetStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fleet_disk_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'export_details) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cache_bag_details) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FleetStatus>) istream)
  "Deserializes a message object of type '<FleetStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fleet_disk_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'export_details) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cache_bag_details) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FleetStatus>)))
  "Returns string type for a message object of type '<FleetStatus>"
  "framework_status_msgs/FleetStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FleetStatus)))
  "Returns string type for a message object of type 'FleetStatus"
  "framework_status_msgs/FleetStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FleetStatus>)))
  "Returns md5sum for a message object of type '<FleetStatus>"
  "1d50c1407059df10a4dc1e78bb2a7438")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FleetStatus)))
  "Returns md5sum for a message object of type 'FleetStatus"
  "1d50c1407059df10a4dc1e78bb2a7438")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FleetStatus>)))
  "Returns full string definition for message of type '<FleetStatus>"
  (cl:format cl:nil "std_msgs/Header header~%framework_status_msgs/FleetDiskStatus fleet_disk_status~%framework_status_msgs/ExportDetails export_details~%framework_status_msgs/CacheBagDetails cache_bag_details~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/FleetDiskStatus~%uint8 FLEET_DISK_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/FleetDiskStatusData fleet_disk_status_data~%~%================================================================================~%MSG: framework_status_msgs/FleetDiskStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%framework_status_msgs/SingleDiskStatus[] single_disk_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleDiskStatus~%string sn~%string disk_type~%string status~%uint64 space_size~%uint64 space_used~%string driver~%string speed~%int64 availability~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/ExportDetails~%uint8 EXPORT_DETAILS_DATA = 1~%uint8 available~%framework_status_msgs/ExportDetailsData export_details_data~%~%================================================================================~%MSG: framework_status_msgs/ExportDetailsData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/CacheBagDetails~%uint8 CACHE_BAG_DETAILS_DATA = 1~%uint8 available~%framework_status_msgs/CacheBagDetailsData cache_bag_details_data~%~%================================================================================~%MSG: framework_status_msgs/CacheBagDetailsData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FleetStatus)))
  "Returns full string definition for message of type 'FleetStatus"
  (cl:format cl:nil "std_msgs/Header header~%framework_status_msgs/FleetDiskStatus fleet_disk_status~%framework_status_msgs/ExportDetails export_details~%framework_status_msgs/CacheBagDetails cache_bag_details~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: framework_status_msgs/FleetDiskStatus~%uint8 FLEET_DISK_STATUS_DATA = 1~%uint8 available~%framework_status_msgs/FleetDiskStatusData fleet_disk_status_data~%~%================================================================================~%MSG: framework_status_msgs/FleetDiskStatusData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%framework_status_msgs/SingleDiskStatus[] single_disk_list~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/SingleDiskStatus~%string sn~%string disk_type~%string status~%uint64 space_size~%uint64 space_used~%string driver~%string speed~%int64 availability~%string reserved_info~%~%================================================================================~%MSG: framework_status_msgs/ExportDetails~%uint8 EXPORT_DETAILS_DATA = 1~%uint8 available~%framework_status_msgs/ExportDetailsData export_details_data~%~%================================================================================~%MSG: framework_status_msgs/ExportDetailsData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%================================================================================~%MSG: framework_status_msgs/CacheBagDetails~%uint8 CACHE_BAG_DETAILS_DATA = 1~%uint8 available~%framework_status_msgs/CacheBagDetailsData cache_bag_details_data~%~%================================================================================~%MSG: framework_status_msgs/CacheBagDetailsData~%uint8 NORM = 0~%uint8 WARNING = 1~%uint8 ERROR = 2~%uint8 health_status~%uint64 timestamp_us~%string reserved_info~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FleetStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fleet_disk_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'export_details))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cache_bag_details))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FleetStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FleetStatus
    (cl:cons ':header (header msg))
    (cl:cons ':fleet_disk_status (fleet_disk_status msg))
    (cl:cons ':export_details (export_details msg))
    (cl:cons ':cache_bag_details (cache_bag_details msg))
))
