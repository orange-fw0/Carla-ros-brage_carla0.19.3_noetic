;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncDiskEjectInput)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncDiskEjectInput (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCDISKEJECTINPUT")
  (make-package "MOMENTA_MSGS::ASYNCDISKEJECTINPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncDiskEjectInput.msg.html


(defclass momenta_msgs::AsyncDiskEjectInput
  :super ros::object
  :slots (_key_num _sn ))

(defmethod momenta_msgs::AsyncDiskEjectInput
  (:init
   (&key
    ((:key_num __key_num) 0)
    ((:sn __sn) "")
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   (setq _sn (string __sn))
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:sn
   (&optional __sn)
   (if __sn (setq _sn __sn)) _sn)
  (:serialization-length
   ()
   (+
    ;; int64 _key_num
    8
    ;; string _sn
    4 (length _sn)
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
   ;;
   self)
  )

(setf (get momenta_msgs::AsyncDiskEjectInput :md5sum-) "b4027ec79aa98a56b7fb480679fd2759")
(setf (get momenta_msgs::AsyncDiskEjectInput :datatype-) "momenta_msgs/AsyncDiskEjectInput")
(setf (get momenta_msgs::AsyncDiskEjectInput :definition-)
      "int64 key_num
string sn

")



(provide :momenta_msgs/AsyncDiskEjectInput "b4027ec79aa98a56b7fb480679fd2759")


