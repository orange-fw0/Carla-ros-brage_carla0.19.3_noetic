;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::ProcessStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'ProcessStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ProcessStatus.msg.html


(intern "*PROCESS_STATUS_DATA*" (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUS"))
(shadow '*PROCESS_STATUS_DATA* (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUS"))
(defconstant framework_status_msgs::ProcessStatus::*PROCESS_STATUS_DATA* 1)

(defun framework_status_msgs::ProcessStatus-to-symbol (const)
  (cond
        ((= const 1) 'framework_status_msgs::ProcessStatus::*PROCESS_STATUS_DATA*)
        (t nil)))

(defclass framework_status_msgs::ProcessStatus
  :super ros::object
  :slots (_available _process_status_data ))

(defmethod framework_status_msgs::ProcessStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:process_status_data __process_status_data) (instance framework_status_msgs::ProcessStatusData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _process_status_data __process_status_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:process_status_data
   (&rest __process_status_data)
   (if (keywordp (car __process_status_data))
       (send* _process_status_data __process_status_data)
     (progn
       (if __process_status_data (setq _process_status_data (car __process_status_data)))
       _process_status_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; framework_status_msgs/ProcessStatusData _process_status_data
    (send _process_status_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; framework_status_msgs/ProcessStatusData _process_status_data
       (send _process_status_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; framework_status_msgs/ProcessStatusData _process_status_data
     (send _process_status_data :deserialize buf ptr-) (incf ptr- (send _process_status_data :serialization-length))
   ;;
   self)
  )

(setf (get framework_status_msgs::ProcessStatus :md5sum-) "bb6dd78efc43362c1ab5e180b44fffe2")
(setf (get framework_status_msgs::ProcessStatus :datatype-) "framework_status_msgs/ProcessStatus")
(setf (get framework_status_msgs::ProcessStatus :definition-)
      "uint8 PROCESS_STATUS_DATA = 1
uint8 available
framework_status_msgs/ProcessStatusData process_status_data

================================================================================
MSG: framework_status_msgs/ProcessStatusData
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
framework_status_msgs/SingleProcessStatus[] process_status_list
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/SingleProcessStatus
string process_name
bool is_alive
uint8 num_threads
float32 voluntary_ctxt_switches_rate
float32 nonvoluntary_ctxt_switches_rate
float32 cpu_current_percent
float32 cpu_average_percent
float32 memory_current_percent
float32 memory_average_percent
string reserved_info

")



(provide :framework_status_msgs/ProcessStatus "bb6dd78efc43362c1ab5e180b44fffe2")


