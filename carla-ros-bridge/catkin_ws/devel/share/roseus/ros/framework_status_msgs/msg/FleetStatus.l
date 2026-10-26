;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::FleetStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'FleetStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::FLEETSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::FLEETSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FleetStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass framework_status_msgs::FleetStatus
  :super ros::object
  :slots (_header _fleet_disk_status _export_details _cache_bag_details ))

(defmethod framework_status_msgs::FleetStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fleet_disk_status __fleet_disk_status) (instance framework_status_msgs::FleetDiskStatus :init))
    ((:export_details __export_details) (instance framework_status_msgs::ExportDetails :init))
    ((:cache_bag_details __cache_bag_details) (instance framework_status_msgs::CacheBagDetails :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _fleet_disk_status __fleet_disk_status)
   (setq _export_details __export_details)
   (setq _cache_bag_details __cache_bag_details)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fleet_disk_status
   (&rest __fleet_disk_status)
   (if (keywordp (car __fleet_disk_status))
       (send* _fleet_disk_status __fleet_disk_status)
     (progn
       (if __fleet_disk_status (setq _fleet_disk_status (car __fleet_disk_status)))
       _fleet_disk_status)))
  (:export_details
   (&rest __export_details)
   (if (keywordp (car __export_details))
       (send* _export_details __export_details)
     (progn
       (if __export_details (setq _export_details (car __export_details)))
       _export_details)))
  (:cache_bag_details
   (&rest __cache_bag_details)
   (if (keywordp (car __cache_bag_details))
       (send* _cache_bag_details __cache_bag_details)
     (progn
       (if __cache_bag_details (setq _cache_bag_details (car __cache_bag_details)))
       _cache_bag_details)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; framework_status_msgs/FleetDiskStatus _fleet_disk_status
    (send _fleet_disk_status :serialization-length)
    ;; framework_status_msgs/ExportDetails _export_details
    (send _export_details :serialization-length)
    ;; framework_status_msgs/CacheBagDetails _cache_bag_details
    (send _cache_bag_details :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; framework_status_msgs/FleetDiskStatus _fleet_disk_status
       (send _fleet_disk_status :serialize s)
     ;; framework_status_msgs/ExportDetails _export_details
       (send _export_details :serialize s)
     ;; framework_status_msgs/CacheBagDetails _cache_bag_details
       (send _cache_bag_details :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; framework_status_msgs/FleetDiskStatus _fleet_disk_status
     (send _fleet_disk_status :deserialize buf ptr-) (incf ptr- (send _fleet_disk_status :serialization-length))
   ;; framework_status_msgs/ExportDetails _export_details
     (send _export_details :deserialize buf ptr-) (incf ptr- (send _export_details :serialization-length))
   ;; framework_status_msgs/CacheBagDetails _cache_bag_details
     (send _cache_bag_details :deserialize buf ptr-) (incf ptr- (send _cache_bag_details :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::FleetStatus :md5sum-) "1d50c1407059df10a4dc1e78bb2a7438")
(setf (get framework_status_msgs::FleetStatus :datatype-) "framework_status_msgs/FleetStatus")
(setf (get framework_status_msgs::FleetStatus :definition-)
      "std_msgs/Header header
framework_status_msgs/FleetDiskStatus fleet_disk_status
framework_status_msgs/ExportDetails export_details
framework_status_msgs/CacheBagDetails cache_bag_details

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
MSG: framework_status_msgs/FleetDiskStatus
uint8 FLEET_DISK_STATUS_DATA = 1
uint8 available
framework_status_msgs/FleetDiskStatusData fleet_disk_status_data

================================================================================
MSG: framework_status_msgs/FleetDiskStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
uint64 timestamp_us
framework_status_msgs/SingleDiskStatus[] single_disk_list
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/SingleDiskStatus
string sn
string disk_type
string status
uint64 space_size
uint64 space_used
string driver
string speed
int64 availability
string reserved_info

================================================================================
MSG: framework_status_msgs/ExportDetails
uint8 EXPORT_DETAILS_DATA = 1
uint8 available
framework_status_msgs/ExportDetailsData export_details_data

================================================================================
MSG: framework_status_msgs/ExportDetailsData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
uint64 timestamp_us
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/CacheBagDetails
uint8 CACHE_BAG_DETAILS_DATA = 1
uint8 available
framework_status_msgs/CacheBagDetailsData cache_bag_details_data

================================================================================
MSG: framework_status_msgs/CacheBagDetailsData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
uint64 timestamp_us
string reserved_info
string message

")



(provide :framework_status_msgs/FleetStatus "1d50c1407059df10a4dc1e78bb2a7438")


