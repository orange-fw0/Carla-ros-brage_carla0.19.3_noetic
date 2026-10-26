;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::GPUStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'GPUStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::GPUSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GPUStatus.msg.html


(intern "*GPU_STATUS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUS"))
(shadow '*GPU_STATUS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::GPUSTATUS"))
(defconstant framework_status_msgs::GPUStatus::*GPU_STATUS_DATA* 1)

(defun framework_status_msgs::GPUStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::GPUStatus::*GPU_STATUS_DATA*)
        (t nil)))

(defclass framework_status_msgs::GPUStatus
  :super ros::object
  :slots (_available _gpu_status_data ))

(defmethod framework_status_msgs::GPUStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:gpu_status_data __gpu_status_data) (instance framework_status_msgs::GPUStatusData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _gpu_status_data __gpu_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:gpu_status_data
   (&rest __gpu_status_data)
   (if (keywordp (car __gpu_status_data))
       (send* _gpu_status_data __gpu_status_data)
     (progn
       (if __gpu_status_data (setq _gpu_status_data (car __gpu_status_data)))
       _gpu_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/GPUStatusData _gpu_status_data
    (send _gpu_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/GPUStatusData _gpu_status_data
       (send _gpu_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/GPUStatusData _gpu_status_data
     (send _gpu_status_data :deserialize buf ptr-) (incf ptr- (send _gpu_status_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::GPUStatus :md5sum-) "fcca9a1f41861458b2ecf3b1187a3f15")
(setf (get framework_status_msgs::GPUStatus :datatype-) "framework_status_msgs/GPUStatus")
(setf (get framework_status_msgs::GPUStatus :definition-)
      "uint8 GPU_STATUS_DATA = 1
uint8 available
framework_status_msgs/GPUStatusData gpu_status_data

================================================================================
MSG: framework_status_msgs/GPUStatusData
uint8 NORM = 0
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



(provide :framework_status_msgs/GPUStatus "fcca9a1f41861458b2ecf3b1187a3f15")


