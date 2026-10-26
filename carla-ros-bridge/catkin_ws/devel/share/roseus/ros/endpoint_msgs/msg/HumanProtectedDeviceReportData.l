;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HumanProtectedDeviceReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HumanProtectedDeviceReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICEREPORTDATA")
  (make-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICEREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude HumanProtectedDeviceReportData.msg.html


(defclass endpoint_msgs::HumanProtectedDeviceReportData
  :super ros::object
  :slots (_timestamp_us _enabled_human_protected_device_array _valid ))

(defmethod endpoint_msgs::HumanProtectedDeviceReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:enabled_human_protected_device_array __enabled_human_protected_device_array) ())
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _enabled_human_protected_device_array __enabled_human_protected_device_array)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:enabled_human_protected_device_array
   (&rest __enabled_human_protected_device_array)
   (if (keywordp (car __enabled_human_protected_device_array))
       (send* _enabled_human_protected_device_array __enabled_human_protected_device_array)
     (progn
       (if __enabled_human_protected_device_array (setq _enabled_human_protected_device_array (car __enabled_human_protected_device_array)))
       _enabled_human_protected_device_array)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/HumanProtectedDeviceType[] _enabled_human_protected_device_array
    (apply #'+ (send-all _enabled_human_protected_device_array :serialization-length)) 4
    ;; bool _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; endpoint_msgs/HumanProtectedDeviceType[] _enabled_human_protected_device_array
     (write-long (length _enabled_human_protected_device_array) s)
     (dolist (elem _enabled_human_protected_device_array)
       (send elem :serialize s)
       )
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; endpoint_msgs/HumanProtectedDeviceType[] _enabled_human_protected_device_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _enabled_human_protected_device_array (let (r) (dotimes (i n) (push (instance endpoint_msgs::HumanProtectedDeviceType :init) r)) r))
     (dolist (elem- _enabled_human_protected_device_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::HumanProtectedDeviceReportData :md5sum-) "a0866423dbad9507bb9f69bf05c1caaf")
(setf (get endpoint_msgs::HumanProtectedDeviceReportData :datatype-) "endpoint_msgs/HumanProtectedDeviceReportData")
(setf (get endpoint_msgs::HumanProtectedDeviceReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array
bool valid

================================================================================
MSG: endpoint_msgs/HumanProtectedDeviceType
uint8 DRIVER_SEATBELT = 0
uint8 PASSENGER_SEATBELT = 1
uint8 PASSENGER_DETECT = 2
uint8 PASSENGER_AIRBAG = 3
uint8 SECOND_LEFT_BELT = 4
uint8 SECOND_MID_BELT = 5
uint8 SECOND_RIGHT_BELT = 6
uint8 RESERVED1 = 7
uint8 RESERVED2 = 8
uint8 value

")



(provide :endpoint_msgs/HumanProtectedDeviceReportData "a0866423dbad9507bb9f69bf05c1caaf")


