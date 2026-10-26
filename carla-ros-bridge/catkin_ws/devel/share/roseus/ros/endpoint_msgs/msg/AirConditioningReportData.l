;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AirConditioningReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AirConditioningReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AIRCONDITIONINGREPORTDATA")
  (make-package "ENDPOINT_MSGS::AIRCONDITIONINGREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude AirConditioningReportData.msg.html


(defclass endpoint_msgs::AirConditioningReportData
  :super ros::object
  :slots (_timestamp_us _air_outlet_mode_array _air_outlet_mode_array_valid _air_temp_mode_array _air_temp_mode_array_valid _air_defrost_mode_array _air_defrost_mode_array_valid _air_work_status ))

(defmethod endpoint_msgs::AirConditioningReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:air_outlet_mode_array __air_outlet_mode_array) ())
    ((:air_outlet_mode_array_valid __air_outlet_mode_array_valid) nil)
    ((:air_temp_mode_array __air_temp_mode_array) ())
    ((:air_temp_mode_array_valid __air_temp_mode_array_valid) nil)
    ((:air_defrost_mode_array __air_defrost_mode_array) ())
    ((:air_defrost_mode_array_valid __air_defrost_mode_array_valid) nil)
    ((:air_work_status __air_work_status) (instance endpoint_msgs::AirWorkStatus :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _air_outlet_mode_array __air_outlet_mode_array)
   (setq _air_outlet_mode_array_valid __air_outlet_mode_array_valid)
   (setq _air_temp_mode_array __air_temp_mode_array)
   (setq _air_temp_mode_array_valid __air_temp_mode_array_valid)
   (setq _air_defrost_mode_array __air_defrost_mode_array)
   (setq _air_defrost_mode_array_valid __air_defrost_mode_array_valid)
   (setq _air_work_status __air_work_status)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:air_outlet_mode_array
   (&rest __air_outlet_mode_array)
   (if (keywordp (car __air_outlet_mode_array))
       (send* _air_outlet_mode_array __air_outlet_mode_array)
     (progn
       (if __air_outlet_mode_array (setq _air_outlet_mode_array (car __air_outlet_mode_array)))
       _air_outlet_mode_array)))
  (:air_outlet_mode_array_valid
   (&optional (__air_outlet_mode_array_valid :null))
   (if (not (eq __air_outlet_mode_array_valid :null)) (setq _air_outlet_mode_array_valid __air_outlet_mode_array_valid)) _air_outlet_mode_array_valid)
  (:air_temp_mode_array
   (&rest __air_temp_mode_array)
   (if (keywordp (car __air_temp_mode_array))
       (send* _air_temp_mode_array __air_temp_mode_array)
     (progn
       (if __air_temp_mode_array (setq _air_temp_mode_array (car __air_temp_mode_array)))
       _air_temp_mode_array)))
  (:air_temp_mode_array_valid
   (&optional (__air_temp_mode_array_valid :null))
   (if (not (eq __air_temp_mode_array_valid :null)) (setq _air_temp_mode_array_valid __air_temp_mode_array_valid)) _air_temp_mode_array_valid)
  (:air_defrost_mode_array
   (&rest __air_defrost_mode_array)
   (if (keywordp (car __air_defrost_mode_array))
       (send* _air_defrost_mode_array __air_defrost_mode_array)
     (progn
       (if __air_defrost_mode_array (setq _air_defrost_mode_array (car __air_defrost_mode_array)))
       _air_defrost_mode_array)))
  (:air_defrost_mode_array_valid
   (&optional (__air_defrost_mode_array_valid :null))
   (if (not (eq __air_defrost_mode_array_valid :null)) (setq _air_defrost_mode_array_valid __air_defrost_mode_array_valid)) _air_defrost_mode_array_valid)
  (:air_work_status
   (&rest __air_work_status)
   (if (keywordp (car __air_work_status))
       (send* _air_work_status __air_work_status)
     (progn
       (if __air_work_status (setq _air_work_status (car __air_work_status)))
       _air_work_status)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/AirOutletMode[] _air_outlet_mode_array
    (apply #'+ (send-all _air_outlet_mode_array :serialization-length)) 4
    ;; bool _air_outlet_mode_array_valid
    1
    ;; endpoint_msgs/AirTempMode[] _air_temp_mode_array
    (apply #'+ (send-all _air_temp_mode_array :serialization-length)) 4
    ;; bool _air_temp_mode_array_valid
    1
    ;; endpoint_msgs/AirDefrostMode[] _air_defrost_mode_array
    (apply #'+ (send-all _air_defrost_mode_array :serialization-length)) 4
    ;; bool _air_defrost_mode_array_valid
    1
    ;; endpoint_msgs/AirWorkStatus _air_work_status
    (send _air_work_status :serialization-length)
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
     ;; endpoint_msgs/AirOutletMode[] _air_outlet_mode_array
     (write-long (length _air_outlet_mode_array) s)
     (dolist (elem _air_outlet_mode_array)
       (send elem :serialize s)
       )
     ;; bool _air_outlet_mode_array_valid
       (if _air_outlet_mode_array_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/AirTempMode[] _air_temp_mode_array
     (write-long (length _air_temp_mode_array) s)
     (dolist (elem _air_temp_mode_array)
       (send elem :serialize s)
       )
     ;; bool _air_temp_mode_array_valid
       (if _air_temp_mode_array_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/AirDefrostMode[] _air_defrost_mode_array
     (write-long (length _air_defrost_mode_array) s)
     (dolist (elem _air_defrost_mode_array)
       (send elem :serialize s)
       )
     ;; bool _air_defrost_mode_array_valid
       (if _air_defrost_mode_array_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/AirWorkStatus _air_work_status
       (send _air_work_status :serialize s)
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
   ;; endpoint_msgs/AirOutletMode[] _air_outlet_mode_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _air_outlet_mode_array (let (r) (dotimes (i n) (push (instance endpoint_msgs::AirOutletMode :init) r)) r))
     (dolist (elem- _air_outlet_mode_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _air_outlet_mode_array_valid
     (setq _air_outlet_mode_array_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/AirTempMode[] _air_temp_mode_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _air_temp_mode_array (let (r) (dotimes (i n) (push (instance endpoint_msgs::AirTempMode :init) r)) r))
     (dolist (elem- _air_temp_mode_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _air_temp_mode_array_valid
     (setq _air_temp_mode_array_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/AirDefrostMode[] _air_defrost_mode_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _air_defrost_mode_array (let (r) (dotimes (i n) (push (instance endpoint_msgs::AirDefrostMode :init) r)) r))
     (dolist (elem- _air_defrost_mode_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _air_defrost_mode_array_valid
     (setq _air_defrost_mode_array_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/AirWorkStatus _air_work_status
     (send _air_work_status :deserialize buf ptr-) (incf ptr- (send _air_work_status :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::AirConditioningReportData :md5sum-) "6cfae2aa89eb0aebe1c9c7535829c196")
(setf (get endpoint_msgs::AirConditioningReportData :datatype-) "endpoint_msgs/AirConditioningReportData")
(setf (get endpoint_msgs::AirConditioningReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/AirOutletMode[] air_outlet_mode_array
bool air_outlet_mode_array_valid
endpoint_msgs/AirTempMode[] air_temp_mode_array
bool air_temp_mode_array_valid
endpoint_msgs/AirDefrostMode[] air_defrost_mode_array
bool air_defrost_mode_array_valid
endpoint_msgs/AirWorkStatus air_work_status

================================================================================
MSG: endpoint_msgs/AirOutletMode
uint8 AIR_OUTLET_MODE_FACE = 0
uint8 AIR_OUTLET_MODE_FOOT = 1
uint8 AIR_OUTLET_MODE_BODY = 2
uint8 AIR_OUTLET_MODE_KNEE = 3
uint8 AIR_OUTLET_MODE_AUTO = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AirTempMode
uint8 AIR_TEMP_MODE_NORMAL = 0
uint8 AIR_TEMP_MODE_COLD = 1
uint8 AIR_TEMP_MODE_HOT = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AirDefrostMode
uint8 AIR_DEFROS_MODE_OFF = 0
uint8 AIR_DEFROS_MODE_FONT = 1
uint8 AIR_DEFROS_MODE_REAR = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AirWorkStatus
uint8 AIR_WORK_STATUS_NONE = 0
uint8 AIR_WORK_STATUS_CLOSE = 1
uint8 AIR_WORK_STATUS_OPEN = 2
uint8 AIR_WORK_STATUS_INVALID = 255
uint8 value

")



(provide :endpoint_msgs/AirConditioningReportData "6cfae2aa89eb0aebe1c9c7535829c196")


