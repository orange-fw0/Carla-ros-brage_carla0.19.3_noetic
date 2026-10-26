;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::MemoryStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'MemoryStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MemoryStatus.msg.html


(intern "*MEMORY_STATUS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUS"))
(shadow '*MEMORY_STATUS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUS"))
(defconstant framework_status_msgs::MemoryStatus::*MEMORY_STATUS_DATA* 1)

(defun framework_status_msgs::MemoryStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::MemoryStatus::*MEMORY_STATUS_DATA*)
        (t nil)))

(defclass framework_status_msgs::MemoryStatus
  :super ros::object
  :slots (_available _memory_status_data ))

(defmethod framework_status_msgs::MemoryStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:memory_status_data __memory_status_data) (instance framework_status_msgs::MemoryStatusData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _memory_status_data __memory_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:memory_status_data
   (&rest __memory_status_data)
   (if (keywordp (car __memory_status_data))
       (send* _memory_status_data __memory_status_data)
     (progn
       (if __memory_status_data (setq _memory_status_data (car __memory_status_data)))
       _memory_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/MemoryStatusData _memory_status_data
    (send _memory_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/MemoryStatusData _memory_status_data
       (send _memory_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/MemoryStatusData _memory_status_data
     (send _memory_status_data :deserialize buf ptr-) (incf ptr- (send _memory_status_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::MemoryStatus :md5sum-) "45e066a8a863afa81b1c7434ce54f1e5")
(setf (get framework_status_msgs::MemoryStatus :datatype-) "framework_status_msgs/MemoryStatus")
(setf (get framework_status_msgs::MemoryStatus :definition-)
      "uint8 MEMORY_STATUS_DATA = 1
uint8 available
framework_status_msgs/MemoryStatusData memory_status_data

================================================================================
MSG: framework_status_msgs/MemoryStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
float32 virtual_memory
float32 swap_memory
string[] top_processes
string reserved_info
string message

")



(provide :framework_status_msgs/MemoryStatus "45e066a8a863afa81b1c7434ce54f1e5")


