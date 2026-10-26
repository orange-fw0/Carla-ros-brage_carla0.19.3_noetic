;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::SingleGPUStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'SingleGPUStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::SINGLEGPUSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::SINGLEGPUSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SingleGPUStatus.msg.html


(defclass framework_status_msgs::SingleGPUStatus
  :super ros::object
  :slots (_gpu_id _gpu_current_percent _gpu_average_percent _gpu_memory_current_percent _gpu_memory_average_percent _gpu_temperature _gpu_power _top_processes _reserved_info ))

(defmethod framework_status_msgs::SingleGPUStatus
  (:init
   (&key
    ((:gpu_id __gpu_id) 0)
    ((:gpu_current_percent __gpu_current_percent) 0.0)
    ((:gpu_average_percent __gpu_average_percent) 0.0)
    ((:gpu_memory_current_percent __gpu_memory_current_percent) 0.0)
    ((:gpu_memory_average_percent __gpu_memory_average_percent) 0.0)
    ((:gpu_temperature __gpu_temperature) 0.0)
    ((:gpu_power __gpu_power) 0.0)
    ((:top_processes __top_processes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _gpu_id (round __gpu_id))
   (setq _gpu_current_percent (float __gpu_current_percent))
   (setq _gpu_average_percent (float __gpu_average_percent))
   (setq _gpu_memory_current_percent (float __gpu_memory_current_percent))
   (setq _gpu_memory_average_percent (float __gpu_memory_average_percent))
   (setq _gpu_temperature (float __gpu_temperature))
   (setq _gpu_power (float __gpu_power))
   (setq _top_processes __top_processes)
   (setq _reserved_info (string __reserved_info))
   self)
  (:gpu_id
   (&optional __gpu_id)
   (if __gpu_id (setq _gpu_id __gpu_id)) _gpu_id)
  (:gpu_current_percent
   (&optional __gpu_current_percent)
   (if __gpu_current_percent (setq _gpu_current_percent __gpu_current_percent)) _gpu_current_percent)
  (:gpu_average_percent
   (&optional __gpu_average_percent)
   (if __gpu_average_percent (setq _gpu_average_percent __gpu_average_percent)) _gpu_average_percent)
  (:gpu_memory_current_percent
   (&optional __gpu_memory_current_percent)
   (if __gpu_memory_current_percent (setq _gpu_memory_current_percent __gpu_memory_current_percent)) _gpu_memory_current_percent)
  (:gpu_memory_average_percent
   (&optional __gpu_memory_average_percent)
   (if __gpu_memory_average_percent (setq _gpu_memory_average_percent __gpu_memory_average_percent)) _gpu_memory_average_percent)
  (:gpu_temperature
   (&optional __gpu_temperature)
   (if __gpu_temperature (setq _gpu_temperature __gpu_temperature)) _gpu_temperature)
  (:gpu_power
   (&optional __gpu_power)
   (if __gpu_power (setq _gpu_power __gpu_power)) _gpu_power)
  (:top_processes
   (&optional __top_processes)
   (if __top_processes (setq _top_processes __top_processes)) _top_processes)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _gpu_id
    1
    ;; float32 _gpu_current_percent
    4
    ;; float32 _gpu_average_percent
    4
    ;; float32 _gpu_memory_current_percent
    4
    ;; float32 _gpu_memory_average_percent
    4
    ;; float32 _gpu_temperature
    4
    ;; float32 _gpu_power
    4
    ;; string[] _top_processes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _top_processes)) 4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gpu_id
       (write-byte _gpu_id s)
     ;; float32 _gpu_current_percent
       (sys::poke _gpu_current_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gpu_average_percent
       (sys::poke _gpu_average_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gpu_memory_current_percent
       (sys::poke _gpu_memory_current_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gpu_memory_average_percent
       (sys::poke _gpu_memory_average_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gpu_temperature
       (sys::poke _gpu_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gpu_power
       (sys::poke _gpu_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string[] _top_processes
     (write-long (length _top_processes) s)
     (dolist (elem _top_processes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gpu_id
     (setq _gpu_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _gpu_current_percent
     (setq _gpu_current_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gpu_average_percent
     (setq _gpu_average_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gpu_memory_current_percent
     (setq _gpu_memory_current_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gpu_memory_average_percent
     (setq _gpu_memory_average_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gpu_temperature
     (setq _gpu_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gpu_power
     (setq _gpu_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string[] _top_processes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _top_processes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _top_processes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::SingleGPUStatus :md5sum-) "567b4e51516174e672db45262160a686")
(setf (get framework_status_msgs::SingleGPUStatus :datatype-) "framework_status_msgs/SingleGPUStatus")
(setf (get framework_status_msgs::SingleGPUStatus :definition-)
      "uint8 gpu_id
float32 gpu_current_percent
float32 gpu_average_percent
float32 gpu_memory_current_percent
float32 gpu_memory_average_percent
float32 gpu_temperature
float32 gpu_power
string[] top_processes
string reserved_info

")



(provide :framework_status_msgs/SingleGPUStatus "567b4e51516174e672db45262160a686")


