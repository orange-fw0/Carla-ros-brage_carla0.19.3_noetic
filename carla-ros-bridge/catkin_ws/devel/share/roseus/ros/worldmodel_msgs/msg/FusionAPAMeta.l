;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::FusionAPAMeta)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'FusionAPAMeta (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::FUSIONAPAMETA")
  (make-package "WORLDMODEL_MSGS::FUSIONAPAMETA"))

(in-package "ROS")
;;//! \htmlinclude FusionAPAMeta.msg.html


(defclass worldmodel_msgs::FusionAPAMeta
  :super ros::object
  :slots (_timestamp_us _pipeline_start_timestamp_us _pipeline_finish_timestamp_us ))

(defmethod worldmodel_msgs::FusionAPAMeta
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:pipeline_start_timestamp_us __pipeline_start_timestamp_us) 0)
    ((:pipeline_finish_timestamp_us __pipeline_finish_timestamp_us) 0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _pipeline_start_timestamp_us (round __pipeline_start_timestamp_us))
   (setq _pipeline_finish_timestamp_us (round __pipeline_finish_timestamp_us))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:pipeline_start_timestamp_us
   (&optional __pipeline_start_timestamp_us)
   (if __pipeline_start_timestamp_us (setq _pipeline_start_timestamp_us __pipeline_start_timestamp_us)) _pipeline_start_timestamp_us)
  (:pipeline_finish_timestamp_us
   (&optional __pipeline_finish_timestamp_us)
   (if __pipeline_finish_timestamp_us (setq _pipeline_finish_timestamp_us __pipeline_finish_timestamp_us)) _pipeline_finish_timestamp_us)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; uint64 _pipeline_start_timestamp_us
    8
    ;; uint64 _pipeline_finish_timestamp_us
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
   ;;
   self)
  )

(setf (get worldmodel_msgs::FusionAPAMeta :md5sum-) "31c194913ed8a92c5988ed26f06b7127")
(setf (get worldmodel_msgs::FusionAPAMeta :datatype-) "worldmodel_msgs/FusionAPAMeta")
(setf (get worldmodel_msgs::FusionAPAMeta :definition-)
      "uint64 timestamp_us
uint64 pipeline_start_timestamp_us
uint64 pipeline_finish_timestamp_us

")



(provide :worldmodel_msgs/FusionAPAMeta "31c194913ed8a92c5988ed26f06b7127")


