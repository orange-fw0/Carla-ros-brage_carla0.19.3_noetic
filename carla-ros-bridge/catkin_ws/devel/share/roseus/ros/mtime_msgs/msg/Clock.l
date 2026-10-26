;; Auto-generated. Do not edit!


(when (boundp 'mtime_msgs::Clock)
  (if (not (find-package "MTIME_MSGS"))
    (make-package "MTIME_MSGS"))
  (shadow 'Clock (find-package "MTIME_MSGS")))
(unless (find-package "MTIME_MSGS::CLOCK")
  (make-package "MTIME_MSGS::CLOCK"))

(in-package "ROS")
;;//! \htmlinclude Clock.msg.html


(defclass mtime_msgs::Clock
  :super ros::object
  :slots (_clock ))

(defmethod mtime_msgs::Clock
  (:init
   (&key
    ((:clock __clock) 0)
    )
   (send-super :init)
   (setq _clock (round __clock))
   self)
  (:clock
   (&optional __clock)
   (if __clock (setq _clock __clock)) _clock)
  (:serialization-length
   ()
   (+
    ;; uint64 _clock
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _clock
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _clock (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _clock) (= (length (_clock . bv)) 2)) ;; bignum
              (write-long (ash (elt (_clock . bv) 0) 0) s)
              (write-long (ash (elt (_clock . bv) 1) -1) s))
             ((and (class _clock) (= (length (_clock . bv)) 1)) ;; big1
              (write-long (elt (_clock . bv) 0) s)
              (write-long (if (>= _clock 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _clock s)(write-long (if (>= _clock 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _clock
     
#+(or :alpha :irix6 :x86_64)
      (setf _clock (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _clock (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get mtime_msgs::Clock :md5sum-) "89b5fa56644cb06ad9ca849c85532e41")
(setf (get mtime_msgs::Clock :datatype-) "mtime_msgs/Clock")
(setf (get mtime_msgs::Clock :definition-)
      "uint64 clock

")



(provide :mtime_msgs/Clock "89b5fa56644cb06ad9ca849c85532e41")


