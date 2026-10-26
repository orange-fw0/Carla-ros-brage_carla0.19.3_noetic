;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncDiskTypeInput)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncDiskTypeInput (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCDISKTYPEINPUT")
  (make-package "MOMENTA_MSGS::ASYNCDISKTYPEINPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncDiskTypeInput.msg.html


(defclass momenta_msgs::AsyncDiskTypeInput
  :super ros::object
  :slots (_key_num _sn _disk_type ))

(defmethod momenta_msgs::AsyncDiskTypeInput
  (:init
   (&key
    ((:key_num __key_num) 0)
    ((:sn __sn) "")
    ((:disk_type __disk_type) "")
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   (setq _sn (string __sn))
   (setq _disk_type (string __disk_type))
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:disk_type
   (&optional __disk_type)
   (if __disk_type (setq _disk_type __disk_type)) _disk_type)
  (:serialization-length
   ()
   (+
    ;; int64 _key_num
    8
    ;; string _sn
    4 (length _sn)
    ;; string _disk_type
    4 (length _disk_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _key_num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _key_num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _key_num) (= (length (_key_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_key_num . bv) 0) 0) s)
              (write-long (ash (elt (_key_num . bv) 1) -1) s))
             ((and (class _key_num) (= (length (_key_num . bv)) 1)) ;; big1
              (write-long (elt (_key_num . bv) 0) s)
              (write-long (if (>= _key_num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _key_num s)(write-long (if (>= _key_num 0) 0 #xffffffff) s)))
     ;; string _sn
       (write-long (length _sn) s) (princ _sn s)
     ;; string _disk_type
       (write-long (length _disk_type) s) (princ _disk_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _key_num
#+(or :alpha :irix6 :x86_64)
      (setf _key_num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _key_num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _sn
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sn (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _disk_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _disk_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::AsyncDiskTypeInput :md5sum-) "d591a01ce847215c5b9840334f679c97")
(setf (get momenta_msgs::AsyncDiskTypeInput :datatype-) "momenta_msgs/AsyncDiskTypeInput")
(setf (get momenta_msgs::AsyncDiskTypeInput :definition-)
      "int64 key_num
string sn
string disk_type

")



(provide :momenta_msgs/AsyncDiskTypeInput "d591a01ce847215c5b9840334f679c97")


