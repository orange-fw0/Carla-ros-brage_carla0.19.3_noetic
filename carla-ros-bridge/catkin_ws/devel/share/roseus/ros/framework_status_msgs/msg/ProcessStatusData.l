;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::ProcessStatusData)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'ProcessStatusData (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUSDATA")
  (make-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude ProcessStatusData.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUSDATA"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUSDATA"))
(defconstant framework_status_msgs::ProcessStatusData::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUSDATA"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUSDATA"))
(defconstant framework_status_msgs::ProcessStatusData::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUSDATA"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::PROCESSSTATUSDATA"))
(defconstant framework_status_msgs::ProcessStatusData::*ERROR* 2)

(defun framework_status_msgs::ProcessStatusData-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::ProcessStatusData::*NORM*)
        ((= const 1) 'framework_status_msgs::ProcessStatusData::*WARNING*)
        ((= const 2) 'framework_status_msgs::ProcessStatusData::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::ProcessStatusData
  :super ros::object
  :slots (_health_status _process_status_list _reserved_info _message ))

(defmethod framework_status_msgs::ProcessStatusData
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:process_status_list __process_status_list) ())
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _process_status_list __process_status_list)
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:process_status_list
   (&rest __process_status_list)
   (if (keywordp (car __process_status_list))
       (send* _process_status_list __process_status_list)
     (progn
       (if __process_status_list (setq _process_status_list (car __process_status_list)))
       _process_status_list)))
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
    ;; framework_status_msgs/SingleProcessStatus[] _process_status_list
    (apply #'+ (send-all _process_status_list :serialization-length)) 4
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
     ;; framework_status_msgs/SingleProcessStatus[] _process_status_list
     (write-long (length _process_status_list) s)
     (dolist (elem _process_status_list)
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
   ;; framework_status_msgs/SingleProcessStatus[] _process_status_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _process_status_list (let (r) (dotimes (i n) (push (instance framework_status_msgs::SingleProcessStatus :init) r)) r))
     (dolist (elem- _process_status_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::ProcessStatusData :md5sum-) "e6167524a80e73c4cdebc17b03657ec7")
(setf (get framework_status_msgs::ProcessStatusData :datatype-) "framework_status_msgs/ProcessStatusData")
(setf (get framework_status_msgs::ProcessStatusData :definition-)
      "uint8 NORM = 0
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



(provide :framework_status_msgs/ProcessStatusData "e6167524a80e73c4cdebc17b03657ec7")


