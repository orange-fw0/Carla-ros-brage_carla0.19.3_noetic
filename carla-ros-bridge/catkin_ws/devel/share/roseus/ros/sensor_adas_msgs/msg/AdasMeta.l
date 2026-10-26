;; Auto-generated. Do not edit!


(when (boundp 'sensor_adas_msgs::AdasMeta)
  (if (not (find-package "SENSOR_ADAS_MSGS"))
    (make-package "SENSOR_ADAS_MSGS"))
  (shadow 'AdasMeta (find-package "SENSOR_ADAS_MSGS")))
(unless (find-package "SENSOR_ADAS_MSGS::ADASMETA")
  (make-package "SENSOR_ADAS_MSGS::ADASMETA"))

(in-package "ROS")
;;//! \htmlinclude AdasMeta.msg.html


(defclass sensor_adas_msgs::AdasMeta
  :super ros::object
  :slots (_sensor_timestamp_us _pipeline_start_timestamp_us _pipeline_finish_timestamp_us _seq ))

(defmethod sensor_adas_msgs::AdasMeta
  (:init
   (&key
    ((:sensor_timestamp_us __sensor_timestamp_us) 0)
    ((:pipeline_start_timestamp_us __pipeline_start_timestamp_us) 0)
    ((:pipeline_finish_timestamp_us __pipeline_finish_timestamp_us) 0)
    ((:seq __seq) 0)
    )
   (send-super :init)
   (setq _sensor_timestamp_us (round __sensor_timestamp_us))
   (setq _pipeline_start_timestamp_us (round __pipeline_start_timestamp_us))
   (setq _pipeline_finish_timestamp_us (round __pipeline_finish_timestamp_us))
   (setq _seq (round __seq))
   self)
  (:sensor_timestamp_us
   (&optional __sensor_timestamp_us)
   (if __sensor_timestamp_us (setq _sensor_timestamp_us __sensor_timestamp_us)) _sensor_timestamp_us)
  (:pipeline_start_timestamp_us
   (&optional __pipeline_start_timestamp_us)
   (if __pipeline_start_timestamp_us (setq _pipeline_start_timestamp_us __pipeline_start_timestamp_us)) _pipeline_start_timestamp_us)
  (:pipeline_finish_timestamp_us
   (&optional __pipeline_finish_timestamp_us)
   (if __pipeline_finish_timestamp_us (setq _pipeline_finish_timestamp_us __pipeline_finish_timestamp_us)) _pipeline_finish_timestamp_us)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:serialization-length
   ()
   (+
    ;; uint64 _sensor_timestamp_us
    8
    ;; uint64 _pipeline_start_timestamp_us
    8
    ;; uint64 _pipeline_finish_timestamp_us
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
     ;; uint64 _pipeline_start_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pipeline_start_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pipeline_start_timestamp_us) (= (length (_pipeline_start_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pipeline_start_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_pipeline_start_timestamp_us . bv) 1) -1) s))
             ((and (class _pipeline_start_timestamp_us) (= (length (_pipeline_start_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_pipeline_start_timestamp_us . bv) 0) s)
              (write-long (if (>= _pipeline_start_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pipeline_start_timestamp_us s)(write-long (if (>= _pipeline_start_timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _pipeline_finish_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _pipeline_finish_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _pipeline_finish_timestamp_us) (= (length (_pipeline_finish_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_pipeline_finish_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_pipeline_finish_timestamp_us . bv) 1) -1) s))
             ((and (class _pipeline_finish_timestamp_us) (= (length (_pipeline_finish_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_pipeline_finish_timestamp_us . bv) 0) s)
              (write-long (if (>= _pipeline_finish_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _pipeline_finish_timestamp_us s)(write-long (if (>= _pipeline_finish_timestamp_us 0) 0 #xffffffff) s)))
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
   ;; uint64 _pipeline_start_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _pipeline_start_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pipeline_start_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _pipeline_finish_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _pipeline_finish_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _pipeline_finish_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get sensor_adas_msgs::AdasMeta :md5sum-) "90ac8b382a8b0741e8ef56a3e4d296a3")
(setf (get sensor_adas_msgs::AdasMeta :datatype-) "sensor_adas_msgs/AdasMeta")
(setf (get sensor_adas_msgs::AdasMeta :definition-)
      "uint64 sensor_timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us
uint64 seq

")



(provide :sensor_adas_msgs/AdasMeta "90ac8b382a8b0741e8ef56a3e4d296a3")


