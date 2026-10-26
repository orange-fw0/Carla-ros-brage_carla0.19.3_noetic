;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::DiskStatusData)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'DiskStatusData (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUSDATA")
  (make-package "FRAMEWORK_STATUS_MSGS::DISKSTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude DiskStatusData.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUSDATA"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUSDATA"))
(defconstant framework_status_msgs::DiskStatusData::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUSDATA"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUSDATA"))
(defconstant framework_status_msgs::DiskStatusData::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUSDATA"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::DISKSTATUSDATA"))
(defconstant framework_status_msgs::DiskStatusData::*ERROR* 2)

(defun framework_status_msgs::DiskStatusData-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::DiskStatusData::*NORM*)
        ((= const 1) 'framework_status_msgs::DiskStatusData::*WARNING*)
        ((= const 2) 'framework_status_msgs::DiskStatusData::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::DiskStatusData
  :super ros::object
  :slots (_health_status _disk_usage _disk_io_counters _reserved_info _message ))

(defmethod framework_status_msgs::DiskStatusData
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:disk_usage __disk_usage) 0.0)
    ((:disk_io_counters __disk_io_counters) "")
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _disk_usage (float __disk_usage))
   (setq _disk_io_counters (string __disk_io_counters))
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:disk_usage
   (&optional __disk_usage)
   (if __disk_usage (setq _disk_usage __disk_usage)) _disk_usage)
  (:disk_io_counters
   (&optional __disk_io_counters)
   (if __disk_io_counters (setq _disk_io_counters __disk_io_counters)) _disk_io_counters)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _health_status
    1
    ;; float32 _disk_usage
    4
    ;; string _disk_io_counters
    4 (length _disk_io_counters)
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _health_status
       (write-byte _health_status s)
     ;; float32 _disk_usage
       (sys::poke _disk_usage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _disk_io_counters
       (write-long (length _disk_io_counters) s) (princ _disk_io_counters s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _health_status
     (setq _health_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _disk_usage
     (setq _disk_usage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _disk_io_counters
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _disk_io_counters (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::DiskStatusData :md5sum-) "14019c2aefc6eeb1fa69fe53226bbcfb")
(setf (get framework_status_msgs::DiskStatusData :datatype-) "framework_status_msgs/DiskStatusData")
(setf (get framework_status_msgs::DiskStatusData :definition-)
      "uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
float32 disk_usage
string disk_io_counters
string reserved_info
string message

")



(provide :framework_status_msgs/DiskStatusData "14019c2aefc6eeb1fa69fe53226bbcfb")


