;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::CacheBagDetailsData)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'CacheBagDetailsData (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILSDATA")
  (make-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILSDATA"))

(in-package "ROS")
;;//! \htmlinclude CacheBagDetailsData.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILSDATA"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILSDATA"))
(defconstant framework_status_msgs::CacheBagDetailsData::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILSDATA"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILSDATA"))
(defconstant framework_status_msgs::CacheBagDetailsData::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILSDATA"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::CACHEBAGDETAILSDATA"))
(defconstant framework_status_msgs::CacheBagDetailsData::*ERROR* 2)

(defun framework_status_msgs::CacheBagDetailsData-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::CacheBagDetailsData::*NORM*)
        ((= const 1) 'framework_status_msgs::CacheBagDetailsData::*WARNING*)
        ((= const 2) 'framework_status_msgs::CacheBagDetailsData::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::CacheBagDetailsData
  :super ros::object
  :slots (_health_status _timestamp_us _reserved_info _message ))

(defmethod framework_status_msgs::CacheBagDetailsData
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:timestamp_us __timestamp_us) 0)
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _timestamp_us (round __timestamp_us))
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
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
    ;; uint64 _timestamp_us
    8
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
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::CacheBagDetailsData :md5sum-) "82127779dce0adfe6a4f31f52ad6c8ba")
(setf (get framework_status_msgs::CacheBagDetailsData :datatype-) "framework_status_msgs/CacheBagDetailsData")
(setf (get framework_status_msgs::CacheBagDetailsData :definition-)
      "uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
uint64 timestamp_us
string reserved_info
string message

")



(provide :framework_status_msgs/CacheBagDetailsData "82127779dce0adfe6a4f31f52ad6c8ba")


