;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PlanMeta)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PlanMeta (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PLANMETA")
  (make-package "PLANNING_MSGS::PLANMETA"))

(in-package "ROS")
;;//! \htmlinclude PlanMeta.msg.html


(defclass planning_msgs::PlanMeta
  :super ros::object
  :slots (_timestamp_us _plan_timestamp_us _plan_strategy_name ))

(defmethod planning_msgs::PlanMeta
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:plan_timestamp_us __plan_timestamp_us) 0)
    ((:plan_strategy_name __plan_strategy_name) "")
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _plan_timestamp_us (round __plan_timestamp_us))
   (setq _plan_strategy_name (string __plan_strategy_name))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:plan_timestamp_us
   (&optional __plan_timestamp_us)
   (if __plan_timestamp_us (setq _plan_timestamp_us __plan_timestamp_us)) _plan_timestamp_us)
  (:plan_strategy_name
   (&optional __plan_strategy_name)
   (if __plan_strategy_name (setq _plan_strategy_name __plan_strategy_name)) _plan_strategy_name)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; uint64 _plan_timestamp_us
    8
    ;; string _plan_strategy_name
    4 (length _plan_strategy_name)
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
     ;; uint64 _plan_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _plan_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _plan_timestamp_us) (= (length (_plan_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_plan_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_plan_timestamp_us . bv) 1) -1) s))
             ((and (class _plan_timestamp_us) (= (length (_plan_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_plan_timestamp_us . bv) 0) s)
              (write-long (if (>= _plan_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _plan_timestamp_us s)(write-long (if (>= _plan_timestamp_us 0) 0 #xffffffff) s)))
     ;; string _plan_strategy_name
       (write-long (length _plan_strategy_name) s) (princ _plan_strategy_name s)
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
   ;; uint64 _plan_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _plan_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _plan_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _plan_strategy_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _plan_strategy_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::PlanMeta :md5sum-) "7a5c353efb2eb58dc573049b30eebe57")
(setf (get planning_msgs::PlanMeta :datatype-) "planning_msgs/PlanMeta")
(setf (get planning_msgs::PlanMeta :definition-)
      "uint64 timestamp_us
uint64 plan_timestamp_us
string plan_strategy_name

")



(provide :planning_msgs/PlanMeta "7a5c353efb2eb58dc573049b30eebe57")


