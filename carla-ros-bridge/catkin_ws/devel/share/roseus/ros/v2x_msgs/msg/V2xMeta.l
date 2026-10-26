;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xMeta)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xMeta (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XMETA")
  (make-package "V2X_MSGS::V2XMETA"))

(in-package "ROS")
;;//! \htmlinclude V2xMeta.msg.html


(defclass v2x_msgs::V2xMeta
  :super ros::object
  :slots (_timestamp_us _frame_id ))

(defmethod v2x_msgs::V2xMeta
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:frame_id __frame_id) "")
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _frame_id (string __frame_id))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:frame_id
   (&optional __frame_id)
   (if __frame_id (setq _frame_id __frame_id)) _frame_id)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; string _frame_id
    4 (length _frame_id)
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
     ;; string _frame_id
       (write-long (length _frame_id) s) (princ _frame_id s)
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
   ;; string _frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xMeta :md5sum-) "8e3b9bcadb593c66e7fb11886f9f639f")
(setf (get v2x_msgs::V2xMeta :datatype-) "v2x_msgs/V2xMeta")
(setf (get v2x_msgs::V2xMeta :definition-)
      "uint64 timestamp_us
string frame_id

")



(provide :v2x_msgs/V2xMeta "8e3b9bcadb593c66e7fb11886f9f639f")


