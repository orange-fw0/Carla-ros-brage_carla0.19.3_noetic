;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::CPUStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'CPUStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::CPUSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CPUStatus.msg.html


(intern "*CPU_STATUS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUS"))
(shadow '*CPU_STATUS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUS"))
(defconstant framework_status_msgs::CPUStatus::*CPU_STATUS_DATA* 1)

(defun framework_status_msgs::CPUStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::CPUStatus::*CPU_STATUS_DATA*)
        (t nil)))

(defclass framework_status_msgs::CPUStatus
  :super ros::object
  :slots (_available _cpu_status_data ))

(defmethod framework_status_msgs::CPUStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:cpu_status_data __cpu_status_data) (instance framework_status_msgs::CPUStatusData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _cpu_status_data __cpu_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:cpu_status_data
   (&rest __cpu_status_data)
   (if (keywordp (car __cpu_status_data))
       (send* _cpu_status_data __cpu_status_data)
     (progn
       (if __cpu_status_data (setq _cpu_status_data (car __cpu_status_data)))
       _cpu_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/CPUStatusData _cpu_status_data
    (send _cpu_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/CPUStatusData _cpu_status_data
       (send _cpu_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/CPUStatusData _cpu_status_data
     (send _cpu_status_data :deserialize buf ptr-) (incf ptr- (send _cpu_status_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::CPUStatus :md5sum-) "a498217ac00641e425ea7e9cbed2faf5")
(setf (get framework_status_msgs::CPUStatus :datatype-) "framework_status_msgs/CPUStatus")
(setf (get framework_status_msgs::CPUStatus :definition-)
      "uint8 CPU_STATUS_DATA = 1
uint8 available
framework_status_msgs/CPUStatusData cpu_status_data

================================================================================
MSG: framework_status_msgs/CPUStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
uint8 cpu_count
float32 cpu_current_percent
float32 cpu_average_percent
float32[] cpu_average_load
float32 cpu_average_temperature
float32 cpu_average_frequency
string[] top_processes
string reserved_info
string message

")



(provide :framework_status_msgs/CPUStatus "a498217ac00641e425ea7e9cbed2faf5")


