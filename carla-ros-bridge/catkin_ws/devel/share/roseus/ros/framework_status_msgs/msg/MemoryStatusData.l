;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::MemoryStatusData)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'MemoryStatusData (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUSDATA")
  (make-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude MemoryStatusData.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUSDATA"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUSDATA"))
(defconstant framework_status_msgs::MemoryStatusData::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUSDATA"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUSDATA"))
(defconstant framework_status_msgs::MemoryStatusData::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUSDATA"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::MEMORYSTATUSDATA"))
(defconstant framework_status_msgs::MemoryStatusData::*ERROR* 2)

(defun framework_status_msgs::MemoryStatusData-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::MemoryStatusData::*NORM*)
        ((= const 1) 'framework_status_msgs::MemoryStatusData::*WARNING*)
        ((= const 2) 'framework_status_msgs::MemoryStatusData::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::MemoryStatusData
  :super ros::object
  :slots (_health_status _virtual_memory _swap_memory _top_processes _reserved_info _message ))

(defmethod framework_status_msgs::MemoryStatusData
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:virtual_memory __virtual_memory) 0.0)
    ((:swap_memory __swap_memory) 0.0)
    ((:top_processes __top_processes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _virtual_memory (float __virtual_memory))
   (setq _swap_memory (float __swap_memory))
   (setq _top_processes __top_processes)
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:virtual_memory
   (&optional __virtual_memory)
   (if __virtual_memory (setq _virtual_memory __virtual_memory)) _virtual_memory)
  (:swap_memory
   (&optional __swap_memory)
   (if __swap_memory (setq _swap_memory __swap_memory)) _swap_memory)
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
    ;; float32 _virtual_memory
    4
    ;; float32 _swap_memory
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
     ;; float32 _virtual_memory
       (sys::poke _virtual_memory (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _swap_memory
       (sys::poke _swap_memory (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _virtual_memory
     (setq _virtual_memory (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _swap_memory
     (setq _swap_memory (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get framework_status_msgs::MemoryStatusData :md5sum-) "a38d78d3061e0881fd31c71772eea419")
(setf (get framework_status_msgs::MemoryStatusData :datatype-) "framework_status_msgs/MemoryStatusData")
(setf (get framework_status_msgs::MemoryStatusData :definition-)
      "uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
float32 virtual_memory
float32 swap_memory
string[] top_processes
string reserved_info
string message

")



(provide :framework_status_msgs/MemoryStatusData "a38d78d3061e0881fd31c71772eea419")


