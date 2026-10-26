;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Event)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Event (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::EVENT")
  (make-package "MOMENTA_MSGS::EVENT"))

(in-package "ROS")
;;//! \htmlinclude Event.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::Event
  :super ros::object
  :slots (_header _name _before _after _detail ))

(defmethod momenta_msgs::Event
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:before __before) 0)
    ((:after __after) 0)
    ((:detail __detail) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _before (round __before))
   (setq _after (round __after))
   (setq _detail (string __detail))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:before
   (&optional __before)
   (if __before (setq _before __before)) _before)
  (:after
   (&optional __after)
   (if __after (setq _after __after)) _after)
  (:detail
   (&optional __detail)
   (if __detail (setq _detail __detail)) _detail)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int64 _before
    8
    ;; int64 _after
    8
    ;; string _detail
    4 (length _detail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int64 _before
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _before (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _before) (= (length (_before . bv)) 2)) ;; bignum
              (write-long (ash (elt (_before . bv) 0) 0) s)
              (write-long (ash (elt (_before . bv) 1) -1) s))
             ((and (class _before) (= (length (_before . bv)) 1)) ;; big1
              (write-long (elt (_before . bv) 0) s)
              (write-long (if (>= _before 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _before s)(write-long (if (>= _before 0) 0 #xffffffff) s)))
     ;; int64 _after
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _after (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _after) (= (length (_after . bv)) 2)) ;; bignum
              (write-long (ash (elt (_after . bv) 0) 0) s)
              (write-long (ash (elt (_after . bv) 1) -1) s))
             ((and (class _after) (= (length (_after . bv)) 1)) ;; big1
              (write-long (elt (_after . bv) 0) s)
              (write-long (if (>= _after 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _after s)(write-long (if (>= _after 0) 0 #xffffffff) s)))
     ;; string _detail
       (write-long (length _detail) s) (princ _detail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _before
#+(or :alpha :irix6 :x86_64)
      (setf _before (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _before (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _after
#+(or :alpha :irix6 :x86_64)
      (setf _after (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _after (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _detail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::Event :md5sum-) "3ac716e09a6cde1517d0407ce5927219")
(setf (get momenta_msgs::Event :datatype-) "momenta_msgs/Event")
(setf (get momenta_msgs::Event :definition-)
      "std_msgs/Header header
string name
int64 before
int64 after
string detail

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :momenta_msgs/Event "3ac716e09a6cde1517d0407ce5927219")


