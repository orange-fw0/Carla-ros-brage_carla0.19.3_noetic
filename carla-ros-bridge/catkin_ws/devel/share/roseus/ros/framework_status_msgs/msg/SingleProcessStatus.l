;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::SingleProcessStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'SingleProcessStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::SINGLEPROCESSSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::SINGLEPROCESSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SingleProcessStatus.msg.html


(defclass framework_status_msgs::SingleProcessStatus
  :super ros::object
  :slots (_process_name _is_alive _num_threads _voluntary_ctxt_switches_rate _nonvoluntary_ctxt_switches_rate _cpu_current_percent _cpu_average_percent _memory_current_percent _memory_average_percent _reserved_info ))

(defmethod framework_status_msgs::SingleProcessStatus
  (:init
   (&key
    ((:process_name __process_name) "")
    ((:is_alive __is_alive) nil)
    ((:num_threads __num_threads) 0)
    ((:voluntary_ctxt_switches_rate __voluntary_ctxt_switches_rate) 0.0)
    ((:nonvoluntary_ctxt_switches_rate __nonvoluntary_ctxt_switches_rate) 0.0)
    ((:cpu_current_percent __cpu_current_percent) 0.0)
    ((:cpu_average_percent __cpu_average_percent) 0.0)
    ((:memory_current_percent __memory_current_percent) 0.0)
    ((:memory_average_percent __memory_average_percent) 0.0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _process_name (string __process_name))
   (setq _is_alive __is_alive)
   (setq _num_threads (round __num_threads))
   (setq _voluntary_ctxt_switches_rate (float __voluntary_ctxt_switches_rate))
   (setq _nonvoluntary_ctxt_switches_rate (float __nonvoluntary_ctxt_switches_rate))
   (setq _cpu_current_percent (float __cpu_current_percent))
   (setq _cpu_average_percent (float __cpu_average_percent))
   (setq _memory_current_percent (float __memory_current_percent))
   (setq _memory_average_percent (float __memory_average_percent))
   (setq _reserved_info (string __reserved_info))
   self)
  (:process_name
   (&optional __process_name)
   (if __process_name (setq _process_name __process_name)) _process_name)
  (:is_alive
   (&optional (__is_alive :null))
   (if (not (eq __is_alive :null)) (setq _is_alive __is_alive)) _is_alive)
  (:num_threads
   (&optional __num_threads)
   (if __num_threads (setq _num_threads __num_threads)) _num_threads)
  (:voluntary_ctxt_switches_rate
   (&optional __voluntary_ctxt_switches_rate)
   (if __voluntary_ctxt_switches_rate (setq _voluntary_ctxt_switches_rate __voluntary_ctxt_switches_rate)) _voluntary_ctxt_switches_rate)
  (:nonvoluntary_ctxt_switches_rate
   (&optional __nonvoluntary_ctxt_switches_rate)
   (if __nonvoluntary_ctxt_switches_rate (setq _nonvoluntary_ctxt_switches_rate __nonvoluntary_ctxt_switches_rate)) _nonvoluntary_ctxt_switches_rate)
  (:cpu_current_percent
   (&optional __cpu_current_percent)
   (if __cpu_current_percent (setq _cpu_current_percent __cpu_current_percent)) _cpu_current_percent)
  (:cpu_average_percent
   (&optional __cpu_average_percent)
   (if __cpu_average_percent (setq _cpu_average_percent __cpu_average_percent)) _cpu_average_percent)
  (:memory_current_percent
   (&optional __memory_current_percent)
   (if __memory_current_percent (setq _memory_current_percent __memory_current_percent)) _memory_current_percent)
  (:memory_average_percent
   (&optional __memory_average_percent)
   (if __memory_average_percent (setq _memory_average_percent __memory_average_percent)) _memory_average_percent)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; string _process_name
    4 (length _process_name)
    ;; bool _is_alive
    1
    ;; uint8 _num_threads
    1
    ;; float32 _voluntary_ctxt_switches_rate
    4
    ;; float32 _nonvoluntary_ctxt_switches_rate
    4
    ;; float32 _cpu_current_percent
    4
    ;; float32 _cpu_average_percent
    4
    ;; float32 _memory_current_percent
    4
    ;; float32 _memory_average_percent
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _process_name
       (write-long (length _process_name) s) (princ _process_name s)
     ;; bool _is_alive
       (if _is_alive (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _num_threads
       (write-byte _num_threads s)
     ;; float32 _voluntary_ctxt_switches_rate
       (sys::poke _voluntary_ctxt_switches_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _nonvoluntary_ctxt_switches_rate
       (sys::poke _nonvoluntary_ctxt_switches_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_current_percent
       (sys::poke _cpu_current_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_average_percent
       (sys::poke _cpu_average_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _memory_current_percent
       (sys::poke _memory_current_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _memory_average_percent
       (sys::poke _memory_average_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _process_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _is_alive
     (setq _is_alive (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _num_threads
     (setq _num_threads (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _voluntary_ctxt_switches_rate
     (setq _voluntary_ctxt_switches_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _nonvoluntary_ctxt_switches_rate
     (setq _nonvoluntary_ctxt_switches_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_current_percent
     (setq _cpu_current_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_average_percent
     (setq _cpu_average_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _memory_current_percent
     (setq _memory_current_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _memory_average_percent
     (setq _memory_average_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::SingleProcessStatus :md5sum-) "b1133ed95563b8c6784551432d03b60d")
(setf (get framework_status_msgs::SingleProcessStatus :datatype-) "framework_status_msgs/SingleProcessStatus")
(setf (get framework_status_msgs::SingleProcessStatus :definition-)
      "string process_name
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



(provide :framework_status_msgs/SingleProcessStatus "b1133ed95563b8c6784551432d03b60d")


