;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::DiskStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'DiskStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::DISKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DiskStatus.msg.html


(intern "*DISK_STATUS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUS"))
(shadow '*DISK_STATUS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUS"))
(defconstant framework_status_msgs::DiskStatus::*DISK_STATUS_DATA* 1)

(defun framework_status_msgs::DiskStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::DiskStatus::*DISK_STATUS_DATA*)
        (t nil)))

(defclass framework_status_msgs::DiskStatus
  :super ros::object
  :slots (_available _disk_status_data ))

(defmethod framework_status_msgs::DiskStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:disk_status_data __disk_status_data) (instance framework_status_msgs::DiskStatusData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _disk_status_data __disk_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:disk_status_data
   (&rest __disk_status_data)
   (if (keywordp (car __disk_status_data))
       (send* _disk_status_data __disk_status_data)
     (progn
       (if __disk_status_data (setq _disk_status_data (car __disk_status_data)))
       _disk_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/DiskStatusData _disk_status_data
    (send _disk_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/DiskStatusData _disk_status_data
       (send _disk_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/DiskStatusData _disk_status_data
     (send _disk_status_data :deserialize buf ptr-) (incf ptr- (send _disk_status_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::DiskStatus :md5sum-) "e2f0c0136545a80d0f4a61bb427a8865")
(setf (get framework_status_msgs::DiskStatus :datatype-) "framework_status_msgs/DiskStatus")
(setf (get framework_status_msgs::DiskStatus :definition-)
      "uint8 DISK_STATUS_DATA = 1
uint8 available
framework_status_msgs/DiskStatusData disk_status_data

================================================================================
MSG: framework_status_msgs/DiskStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
float32 disk_usage
string disk_io_counters
string reserved_info
string message

")



(provide :framework_status_msgs/DiskStatus "e2f0c0136545a80d0f4a61bb427a8865")


