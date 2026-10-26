;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::AsyncCommonInput)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'AsyncCommonInput (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::ASYNCCOMMONINPUT")
  (make-package "MOMENTA_MSGS::ASYNCCOMMONINPUT"))

(in-package "ROS")
;;//! \htmlinclude AsyncCommonInput.msg.html


(defclass momenta_msgs::AsyncCommonInput
  :super ros::object
  :slots (_key_num ))

(defmethod momenta_msgs::AsyncCommonInput
  (:init
   (&key
    ((:key_num __key_num) 0)
    )
   (send-super :init)
   (setq _key_num (round __key_num))
   self)
  (:key_num
   (&optional __key_num)
   (if __key_num (setq _key_num __key_num)) _key_num)
  (:serialization-length
   ()
   (+
    ;; int64 _key_num
    8
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
   ;;
   self)
  )

(setf (get momenta_msgs::AsyncCommonInput :md5sum-) "bbf3b2b49d5e5009ea4db3c4165a3fea")
(setf (get momenta_msgs::AsyncCommonInput :datatype-) "momenta_msgs/AsyncCommonInput")
(setf (get momenta_msgs::AsyncCommonInput :definition-)
      "int64 key_num

")



(provide :momenta_msgs/AsyncCommonInput "bbf3b2b49d5e5009ea4db3c4165a3fea")


