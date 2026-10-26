;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::GPUStatusData)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'GPUStatusData (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUSDATA")
  (make-package "FRAMEWORK_STATUS_MSGS::GPUSTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude GPUStatusData.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUSDATA"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUSDATA"))
(defconstant framework_status_msgs::GPUStatusData::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUSDATA"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUSDATA"))
(defconstant framework_status_msgs::GPUStatusData::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUSDATA"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUSDATA"))
(defconstant framework_status_msgs::GPUStatusData::*ERROR* 2)

(defun framework_status_msgs::GPUStatusData-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::GPUStatusData::*NORM*)
        ((= const 1) 'framework_status_msgs::GPUStatusData::*WARNING*)
        ((= const 2) 'framework_status_msgs::GPUStatusData::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::GPUStatusData
  :super ros::object
  :slots (_health_status _gpu_status_list _reserved_info _message ))

(defmethod framework_status_msgs::GPUStatusData
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:gpu_status_list __gpu_status_list) ())
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _gpu_status_list __gpu_status_list)
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:gpu_status_list
   (&rest __gpu_status_list)
   (if (keywordp (car __gpu_status_list))
       (send* _gpu_status_list __gpu_status_list)
     (progn
       (if __gpu_status_list (setq _gpu_status_list (car __gpu_status_list)))
       _gpu_status_list)))
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
    ;; framework_status_msgs/SingleGPUStatus[] _gpu_status_list
    (apply #'+ (send-all _gpu_status_list :serialization-length)) 4
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
     ;; framework_status_msgs/SingleGPUStatus[] _gpu_status_list
     (write-long (length _gpu_status_list) s)
     (dolist (elem _gpu_status_list)
       (send elem :serialize s)
       )
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
   ;; framework_status_msgs/SingleGPUStatus[] _gpu_status_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gpu_status_list (let (r) (dotimes (i n) (push (instance framework_status_msgs::SingleGPUStatus :init) r)) r))
     (dolist (elem- _gpu_status_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::GPUStatusData :md5sum-) "bf39116c8faf2b497aaedefc4d8abb33")
(setf (get framework_status_msgs::GPUStatusData :datatype-) "framework_status_msgs/GPUStatusData")
(setf (get framework_status_msgs::GPUStatusData :definition-)
      "uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
framework_status_msgs/SingleGPUStatus[] gpu_status_list
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/SingleGPUStatus
uint8 gpu_id
float32 gpu_current_percent
float32 gpu_average_percent
float32 gpu_memory_current_percent
float32 gpu_memory_average_percent
float32 gpu_temperature
float32 gpu_power
string[] top_processes
string reserved_info

")



(provide :framework_status_msgs/GPUStatusData "bf39116c8faf2b497aaedefc4d8abb33")


