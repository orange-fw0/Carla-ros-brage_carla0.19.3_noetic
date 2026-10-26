;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::StateReportMeta)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'StateReportMeta (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::STATEREPORTMETA")
  (make-package "ENDPOINT_MSGS::STATEREPORTMETA"))

(in-package "ROS")
;;//! \htmlinclude StateReportMeta.msg.html


(defclass endpoint_msgs::StateReportMeta
  :super ros::object
  :slots (_timestamp_us ))

(defmethod endpoint_msgs::StateReportMeta
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
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
   ;;
   self)
  )

(setf (get endpoint_msgs::StateReportMeta :md5sum-) "cc14aafec8faef764879b1e3e0cd0bb8")
(setf (get endpoint_msgs::StateReportMeta :datatype-) "endpoint_msgs/StateReportMeta")
(setf (get endpoint_msgs::StateReportMeta :definition-)
      "uint64 timestamp_us

")



(provide :endpoint_msgs/StateReportMeta "cc14aafec8faef764879b1e3e0cd0bb8")


