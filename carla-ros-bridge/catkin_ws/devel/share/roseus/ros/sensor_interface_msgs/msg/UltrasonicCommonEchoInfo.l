;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicCommonEchoInfo)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicCommonEchoInfo (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICCOMMONECHOINFO")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICCOMMONECHOINFO"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicCommonEchoInfo.msg.html


(defclass sensor_interface_msgs::UltrasonicCommonEchoInfo
  :super ros::object
  :slots (_uss_echo_data _uss_echo_status _reserved ))

(defmethod sensor_interface_msgs::UltrasonicCommonEchoInfo
  (:init
   (&key
    ((:uss_echo_data __uss_echo_data) ())
    ((:uss_echo_status __uss_echo_status) (instance sensor_interface_msgs::UltrasonicEchoStatus :init))
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _uss_echo_data __uss_echo_data)
   (setq _uss_echo_status __uss_echo_status)
   (setq _reserved (round __reserved))
   self)
  (:uss_echo_data
   (&rest __uss_echo_data)
   (if (keywordp (car __uss_echo_data))
       (send* _uss_echo_data __uss_echo_data)
     (progn
       (if __uss_echo_data (setq _uss_echo_data (car __uss_echo_data)))
       _uss_echo_data)))
  (:uss_echo_status
   (&rest __uss_echo_status)
   (if (keywordp (car __uss_echo_status))
       (send* _uss_echo_status __uss_echo_status)
     (progn
       (if __uss_echo_status (setq _uss_echo_status (car __uss_echo_status)))
       _uss_echo_status)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/CommonUssEhcoData[] _uss_echo_data
    (apply #'+ (send-all _uss_echo_data :serialization-length)) 4
    ;; sensor_interface_msgs/UltrasonicEchoStatus _uss_echo_status
    (send _uss_echo_status :serialization-length)
    ;; uint64 _reserved
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/CommonUssEhcoData[] _uss_echo_data
     (write-long (length _uss_echo_data) s)
     (dolist (elem _uss_echo_data)
       (send elem :serialize s)
       )
     ;; sensor_interface_msgs/UltrasonicEchoStatus _uss_echo_status
       (send _uss_echo_status :serialize s)
     ;; uint64 _reserved
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reserved (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reserved) (= (length (_reserved . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reserved . bv) 0) 0) s)
              (write-long (ash (elt (_reserved . bv) 1) -1) s))
             ((and (class _reserved) (= (length (_reserved . bv)) 1)) ;; big1
              (write-long (elt (_reserved . bv) 0) s)
              (write-long (if (>= _reserved 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reserved s)(write-long (if (>= _reserved 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/CommonUssEhcoData[] _uss_echo_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_echo_data (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::CommonUssEhcoData :init) r)) r))
     (dolist (elem- _uss_echo_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_interface_msgs/UltrasonicEchoStatus _uss_echo_status
     (send _uss_echo_status :deserialize buf ptr-) (incf ptr- (send _uss_echo_status :serialization-length))
   ;; uint64 _reserved
     
#+(or :alpha :irix6 :x86_64)
      (setf _reserved (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reserved (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicCommonEchoInfo :md5sum-) "53b64009fde5f7b2c7aaa395fdcc7b1c")
(setf (get sensor_interface_msgs::UltrasonicCommonEchoInfo :datatype-) "sensor_interface_msgs/UltrasonicCommonEchoInfo")
(setf (get sensor_interface_msgs::UltrasonicCommonEchoInfo :definition-)
      "sensor_interface_msgs/CommonUssEhcoData[] uss_echo_data
sensor_interface_msgs/UltrasonicEchoStatus uss_echo_status
uint64 reserved

================================================================================
MSG: sensor_interface_msgs/CommonUssEhcoData
uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
float32 uss_echo_distance
float32 uss_echo_prob
uint64 uss_echo_width
uint16 first_echo_amplitude
uint16 uss_rt_width
uint16 uss_echo_quality
uint16 echo_send_id
uint64 reserved

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

================================================================================
MSG: sensor_interface_msgs/UltrasonicEchoStatus
uint8 uss_status
int16 uss_temperature
uint64 reserved

")



(provide :sensor_interface_msgs/UltrasonicCommonEchoInfo "53b64009fde5f7b2c7aaa395fdcc7b1c")


