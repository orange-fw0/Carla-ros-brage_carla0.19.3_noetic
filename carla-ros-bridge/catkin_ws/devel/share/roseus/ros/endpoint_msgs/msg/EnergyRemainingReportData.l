;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::EnergyRemainingReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'EnergyRemainingReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::ENERGYREMAININGREPORTDATA")
  (make-package "ENDPOINT_MSGS::ENERGYREMAININGREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude EnergyRemainingReportData.msg.html


(defclass endpoint_msgs::EnergyRemainingReportData
  :super ros::object
  :slots (_timestamp_us _level _remaining_mileage _valid ))

(defmethod endpoint_msgs::EnergyRemainingReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:level __level) 0.0)
    ((:remaining_mileage __remaining_mileage) 0.0)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _level (float __level))
   (setq _remaining_mileage (float __remaining_mileage))
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:remaining_mileage
   (&optional __remaining_mileage)
   (if __remaining_mileage (setq _remaining_mileage __remaining_mileage)) _remaining_mileage)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; float32 _level
    4
    ;; float32 _remaining_mileage
    4
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
     ;; float32 _level
       (sys::poke _level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _remaining_mileage
       (sys::poke _remaining_mileage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _level
     (setq _level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _remaining_mileage
     (setq _remaining_mileage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::EnergyRemainingReportData :md5sum-) "8683e6ff02624686444d4b903f73087f")
(setf (get endpoint_msgs::EnergyRemainingReportData :datatype-) "endpoint_msgs/EnergyRemainingReportData")
(setf (get endpoint_msgs::EnergyRemainingReportData :definition-)
      "uint64 timestamp_us
float32 level
float32 remaining_mileage
bool valid

")



(provide :endpoint_msgs/EnergyRemainingReportData "8683e6ff02624686444d4b903f73087f")


