;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::FleetDiskStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'FleetDiskStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::FLEETDISKSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::FLEETDISKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FleetDiskStatus.msg.html


(intern "*FLEET_DISK_STATUS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::FLEETDISKSTATUS"))
(shadow '*FLEET_DISK_STATUS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::FLEETDISKSTATUS"))
(defconstant framework_status_msgs::FleetDiskStatus::*FLEET_DISK_STATUS_DATA* 1)

(defun framework_status_msgs::FleetDiskStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::FleetDiskStatus::*FLEET_DISK_STATUS_DATA*)
        (t nil)))

(defclass framework_status_msgs::FleetDiskStatus
  :super ros::object
  :slots (_available _fleet_disk_status_data ))

(defmethod framework_status_msgs::FleetDiskStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:fleet_disk_status_data __fleet_disk_status_data) (instance framework_status_msgs::FleetDiskStatusData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _fleet_disk_status_data __fleet_disk_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:fleet_disk_status_data
   (&rest __fleet_disk_status_data)
   (if (keywordp (car __fleet_disk_status_data))
       (send* _fleet_disk_status_data __fleet_disk_status_data)
     (progn
       (if __fleet_disk_status_data (setq _fleet_disk_status_data (car __fleet_disk_status_data)))
       _fleet_disk_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/FleetDiskStatusData _fleet_disk_status_data
    (send _fleet_disk_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/FleetDiskStatusData _fleet_disk_status_data
       (send _fleet_disk_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/FleetDiskStatusData _fleet_disk_status_data
     (send _fleet_disk_status_data :deserialize buf ptr-) (incf ptr- (send _fleet_disk_status_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::FleetDiskStatus :md5sum-) "a458147320c67acd8cff34daf7970047")
(setf (get framework_status_msgs::FleetDiskStatus :datatype-) "framework_status_msgs/FleetDiskStatus")
(setf (get framework_status_msgs::FleetDiskStatus :definition-)
      "uint8 FLEET_DISK_STATUS_DATA = 1
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

")



(provide :framework_status_msgs/FleetDiskStatus "a458147320c67acd8cff34daf7970047")


