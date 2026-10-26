;; Auto-generated. Do not edit!


(when (boundp 'can_bridge_msgs::Meta)
  (if (not (find-package "CAN_BRIDGE_MSGS"))
    (make-package "CAN_BRIDGE_MSGS"))
  (shadow 'Meta (find-package "CAN_BRIDGE_MSGS")))
(unless (find-package "CAN_BRIDGE_MSGS::META")
  (make-package "CAN_BRIDGE_MSGS::META"))

(in-package "ROS")
;;//! \htmlinclude Meta.msg.html


(defclass can_bridge_msgs::Meta
  :super ros::object
  :slots (_sensor_timestamp_us _seq ))

(defmethod can_bridge_msgs::Meta
  (:init
   (&key
    ((:sensor_timestamp_us __sensor_timestamp_us) 0)
    ((:seq __seq) 0)
    )
   (send-super :init)
   (setq _sensor_timestamp_us (round __sensor_timestamp_us))
   (setq _seq (round __seq))
   self)
  (:sensor_timestamp_us
   (&optional __sensor_timestamp_us)
   (if __sensor_timestamp_us (setq _sensor_timestamp_us __sensor_timestamp_us)) _sensor_timestamp_us)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:serialization-length
   ()
   (+
    ;; uint64 _sensor_timestamp_us
    8
    ;; uint64 _seq
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _sensor_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sensor_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sensor_timestamp_us) (= (length (_sensor_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sensor_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_sensor_timestamp_us . bv) 1) -1) s))
             ((and (class _sensor_timestamp_us) (= (length (_sensor_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_sensor_timestamp_us . bv) 0) s)
              (write-long (if (>= _sensor_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sensor_timestamp_us s)(write-long (if (>= _sensor_timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _seq
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _seq (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _seq) (= (length (_seq . bv)) 2)) ;; bignum
              (write-long (ash (elt (_seq . bv) 0) 0) s)
              (write-long (ash (elt (_seq . bv) 1) -1) s))
             ((and (class _seq) (= (length (_seq . bv)) 1)) ;; big1
              (write-long (elt (_seq . bv) 0) s)
              (write-long (if (>= _seq 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _seq s)(write-long (if (>= _seq 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _sensor_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _sensor_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sensor_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _seq
     
#+(or :alpha :irix6 :x86_64)
      (setf _seq (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _seq (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get can_bridge_msgs::Meta :md5sum-) "c0eb55b92cd5803d752d1235058646ad")
(setf (get can_bridge_msgs::Meta :datatype-) "can_bridge_msgs/Meta")
(setf (get can_bridge_msgs::Meta :definition-)
      "uint64 sensor_timestamp_us
uint64 seq

")



(provide :can_bridge_msgs/Meta "c0eb55b92cd5803d752d1235058646ad")


