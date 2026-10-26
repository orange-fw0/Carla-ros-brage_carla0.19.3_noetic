;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPResultMeta)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPResultMeta (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPRESULTMETA")
  (make-package "E2E_PLANNING_MSGS::DLPRESULTMETA"))

(in-package "ROS")
;;//! \htmlinclude DLPResultMeta.msg.html


(defclass e2e_planning_msgs::DLPResultMeta
  :super ros::object
  :slots (_timestamp_us ))

(defmethod e2e_planning_msgs::DLPResultMeta
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

(setf (get e2e_planning_msgs::DLPResultMeta :md5sum-) "cc14aafec8faef764879b1e3e0cd0bb8")
(setf (get e2e_planning_msgs::DLPResultMeta :datatype-) "e2e_planning_msgs/DLPResultMeta")
(setf (get e2e_planning_msgs::DLPResultMeta :definition-)
      "uint64 timestamp_us

")



(provide :e2e_planning_msgs/DLPResultMeta "cc14aafec8faef764879b1e3e0cd0bb8")


