;; Auto-generated. Do not edit!


(when (boundp 'actionlib_msgs::TwoIntsResult)
  (if (not (find-package "ACTIONLIB_MSGS"))
    (make-package "ACTIONLIB_MSGS"))
  (shadow 'TwoIntsResult (find-package "ACTIONLIB_MSGS")))
(unless (find-package "ACTIONLIB_MSGS::TWOINTSRESULT")
  (make-package "ACTIONLIB_MSGS::TWOINTSRESULT"))

(in-package "ROS")
;;//! \htmlinclude TwoIntsResult.msg.html


(defclass actionlib_msgs::TwoIntsResult
  :super ros::object
  :slots (_sum ))

(defmethod actionlib_msgs::TwoIntsResult
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int64 _sum
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sum) (= (length (_sum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sum . bv) 0) 0) s)
              (write-long (ash (elt (_sum . bv) 1) -1) s))
             ((and (class _sum) (= (length (_sum . bv)) 1)) ;; big1
              (write-long (elt (_sum . bv) 0) s)
              (write-long (if (>= _sum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sum s)(write-long (if (>= _sum 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sum
#+(or :alpha :irix6 :x86_64)
      (setf _sum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get actionlib_msgs::TwoIntsResult :md5sum-) "b88405221c77b1878a3cbbfff53428d7")
(setf (get actionlib_msgs::TwoIntsResult :datatype-) "actionlib_msgs/TwoIntsResult")
(setf (get actionlib_msgs::TwoIntsResult :definition-)
      "int64 sum

")



(provide :actionlib_msgs/TwoIntsResult "b88405221c77b1878a3cbbfff53428d7")


