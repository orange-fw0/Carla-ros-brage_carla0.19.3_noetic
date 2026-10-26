;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::CPUStatusData)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'CPUStatusData (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUSDATA")
  (make-package "FRAMEWORK_STATUS_MSGS::CPUSTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude CPUStatusData.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUSDATA"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUSDATA"))
(defconstant framework_status_msgs::CPUStatusData::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUSDATA"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUSDATA"))
(defconstant framework_status_msgs::CPUStatusData::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUSDATA"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::CPUSTATUSDATA"))
(defconstant framework_status_msgs::CPUStatusData::*ERROR* 2)

(defun framework_status_msgs::CPUStatusData-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::CPUStatusData::*NORM*)
        ((= const 1) 'framework_status_msgs::CPUStatusData::*WARNING*)
        ((= const 2) 'framework_status_msgs::CPUStatusData::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::CPUStatusData
  :super ros::object
  :slots (_health_status _cpu_count _cpu_current_percent _cpu_average_percent _cpu_average_load _cpu_average_temperature _cpu_average_frequency _top_processes _reserved_info _message ))

(defmethod framework_status_msgs::CPUStatusData
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:cpu_count __cpu_count) 0)
    ((:cpu_current_percent __cpu_current_percent) 0.0)
    ((:cpu_average_percent __cpu_average_percent) 0.0)
    ((:cpu_average_load __cpu_average_load) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:cpu_average_temperature __cpu_average_temperature) 0.0)
    ((:cpu_average_frequency __cpu_average_frequency) 0.0)
    ((:top_processes __top_processes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _cpu_count (round __cpu_count))
   (setq _cpu_current_percent (float __cpu_current_percent))
   (setq _cpu_average_percent (float __cpu_average_percent))
   (setq _cpu_average_load __cpu_average_load)
   (setq _cpu_average_temperature (float __cpu_average_temperature))
   (setq _cpu_average_frequency (float __cpu_average_frequency))
   (setq _top_processes __top_processes)
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:cpu_count
   (&optional __cpu_count)
   (if __cpu_count (setq _cpu_count __cpu_count)) _cpu_count)
  (:cpu_current_percent
   (&optional __cpu_current_percent)
   (if __cpu_current_percent (setq _cpu_current_percent __cpu_current_percent)) _cpu_current_percent)
  (:cpu_average_percent
   (&optional __cpu_average_percent)
   (if __cpu_average_percent (setq _cpu_average_percent __cpu_average_percent)) _cpu_average_percent)
  (:cpu_average_load
   (&optional __cpu_average_load)
   (if __cpu_average_load (setq _cpu_average_load __cpu_average_load)) _cpu_average_load)
  (:cpu_average_temperature
   (&optional __cpu_average_temperature)
   (if __cpu_average_temperature (setq _cpu_average_temperature __cpu_average_temperature)) _cpu_average_temperature)
  (:cpu_average_frequency
   (&optional __cpu_average_frequency)
   (if __cpu_average_frequency (setq _cpu_average_frequency __cpu_average_frequency)) _cpu_average_frequency)
  (:top_processes
   (&optional __top_processes)
   (if __top_processes (setq _top_processes __top_processes)) _top_processes)
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
    ;; uint8 _cpu_count
    1
    ;; float32 _cpu_current_percent
    4
    ;; float32 _cpu_average_percent
    4
    ;; float32[] _cpu_average_load
    (* 4    (length _cpu_average_load)) 4
    ;; float32 _cpu_average_temperature
    4
    ;; float32 _cpu_average_frequency
    4
    ;; string[] _top_processes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _top_processes)) 4
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
     ;; uint8 _cpu_count
       (write-byte _cpu_count s)
     ;; float32 _cpu_current_percent
       (sys::poke _cpu_current_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_average_percent
       (sys::poke _cpu_average_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _cpu_average_load
     (write-long (length _cpu_average_load) s)
     (dotimes (i (length _cpu_average_load))
       (sys::poke (elt _cpu_average_load i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _cpu_average_temperature
       (sys::poke _cpu_average_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_average_frequency
       (sys::poke _cpu_average_frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string[] _top_processes
     (write-long (length _top_processes) s)
     (dolist (elem _top_processes)
       (write-long (length elem) s) (princ elem s)
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
   ;; uint8 _cpu_count
     (setq _cpu_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _cpu_current_percent
     (setq _cpu_current_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_average_percent
     (setq _cpu_average_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _cpu_average_load
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cpu_average_load (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cpu_average_load i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _cpu_average_temperature
     (setq _cpu_average_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_average_frequency
     (setq _cpu_average_frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string[] _top_processes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _top_processes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _top_processes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::CPUStatusData :md5sum-) "2e030de42174fd101198e334ed90191c")
(setf (get framework_status_msgs::CPUStatusData :datatype-) "framework_status_msgs/CPUStatusData")
(setf (get framework_status_msgs::CPUStatusData :definition-)
      "uint8 NORM = 0
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



(provide :framework_status_msgs/CPUStatusData "2e030de42174fd101198e334ed90191c")


