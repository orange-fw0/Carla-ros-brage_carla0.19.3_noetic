;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicBaseInfo)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicBaseInfo (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICBASEINFO")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICBASEINFO"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicBaseInfo.msg.html


(defclass sensor_interface_msgs::UltrasonicBaseInfo
  :super ros::object
  :slots (_uss_echo_info _first_echo_amplitude _uss_temperature _timestamp_us _burst_mode _uss_rt_width _uss_config_status _reserved ))

(defmethod sensor_interface_msgs::UltrasonicBaseInfo
  (:init
   (&key
    ((:uss_echo_info __uss_echo_info) ())
    ((:first_echo_amplitude __first_echo_amplitude) 0)
    ((:uss_temperature __uss_temperature) 0)
    ((:timestamp_us __timestamp_us) 0)
    ((:burst_mode __burst_mode) 0)
    ((:uss_rt_width __uss_rt_width) 0)
    ((:uss_config_status __uss_config_status) 0)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _uss_echo_info __uss_echo_info)
   (setq _first_echo_amplitude (round __first_echo_amplitude))
   (setq _uss_temperature (round __uss_temperature))
   (setq _timestamp_us (round __timestamp_us))
   (setq _burst_mode (round __burst_mode))
   (setq _uss_rt_width (round __uss_rt_width))
   (setq _uss_config_status (round __uss_config_status))
   (setq _reserved (string __reserved))
   self)
  (:uss_echo_info
   (&rest __uss_echo_info)
   (if (keywordp (car __uss_echo_info))
       (send* _uss_echo_info __uss_echo_info)
     (progn
       (if __uss_echo_info (setq _uss_echo_info (car __uss_echo_info)))
       _uss_echo_info)))
  (:first_echo_amplitude
   (&optional __first_echo_amplitude)
   (if __first_echo_amplitude (setq _first_echo_amplitude __first_echo_amplitude)) _first_echo_amplitude)
  (:uss_temperature
   (&optional __uss_temperature)
   (if __uss_temperature (setq _uss_temperature __uss_temperature)) _uss_temperature)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:burst_mode
   (&optional __burst_mode)
   (if __burst_mode (setq _burst_mode __burst_mode)) _burst_mode)
  (:uss_rt_width
   (&optional __uss_rt_width)
   (if __uss_rt_width (setq _uss_rt_width __uss_rt_width)) _uss_rt_width)
  (:uss_config_status
   (&optional __uss_config_status)
   (if __uss_config_status (setq _uss_config_status __uss_config_status)) _uss_config_status)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UltrasonicEhcoInfo[] _uss_echo_info
    (apply #'+ (send-all _uss_echo_info :serialization-length)) 4
    ;; uint16 _first_echo_amplitude
    2
    ;; int16 _uss_temperature
    2
    ;; uint64 _timestamp_us
    8
    ;; uint8 _burst_mode
    1
    ;; uint8 _uss_rt_width
    1
    ;; uint8 _uss_config_status
    1
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UltrasonicEhcoInfo[] _uss_echo_info
     (write-long (length _uss_echo_info) s)
     (dolist (elem _uss_echo_info)
       (send elem :serialize s)
       )
     ;; uint16 _first_echo_amplitude
       (write-word _first_echo_amplitude s)
     ;; int16 _uss_temperature
       (write-word _uss_temperature s)
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; uint8 _burst_mode
       (write-byte _burst_mode s)
     ;; uint8 _uss_rt_width
       (write-byte _uss_rt_width s)
     ;; uint8 _uss_config_status
       (write-byte _uss_config_status s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UltrasonicEhcoInfo[] _uss_echo_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_echo_info (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::UltrasonicEhcoInfo :init) r)) r))
     (dolist (elem- _uss_echo_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint16 _first_echo_amplitude
     (setq _first_echo_amplitude (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _uss_temperature
     (setq _uss_temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _burst_mode
     (setq _burst_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _uss_rt_width
     (setq _uss_rt_width (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _uss_config_status
     (setq _uss_config_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicBaseInfo :md5sum-) "2701173ac338dcb95699265577b91028")
(setf (get sensor_interface_msgs::UltrasonicBaseInfo :datatype-) "sensor_interface_msgs/UltrasonicBaseInfo")
(setf (get sensor_interface_msgs::UltrasonicBaseInfo :definition-)
      "sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info
uint16 first_echo_amplitude
int16 uss_temperature
uint64 timestamp_us
uint8 burst_mode
uint8 uss_rt_width
uint8 uss_config_status
string reserved

================================================================================
MSG: sensor_interface_msgs/UltrasonicEhcoInfo
float32 uss_echo_distance
uint64 uss_echo_width

")



(provide :sensor_interface_msgs/UltrasonicBaseInfo "2701173ac338dcb95699265577b91028")


