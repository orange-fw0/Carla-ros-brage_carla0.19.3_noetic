;; Auto-generated. Do not edit!


(when (boundp 'timedomain_interface_msgs::timedomain_msg)
  (if (not (find-package "TIMEDOMAIN_INTERFACE_MSGS"))
    (make-package "TIMEDOMAIN_INTERFACE_MSGS"))
  (shadow 'timedomain_msg (find-package "TIMEDOMAIN_INTERFACE_MSGS")))
(unless (find-package "TIMEDOMAIN_INTERFACE_MSGS::TIMEDOMAIN_MSG")
  (make-package "TIMEDOMAIN_INTERFACE_MSGS::TIMEDOMAIN_MSG"))

(in-package "ROS")
;;//! \htmlinclude timedomain_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass timedomain_interface_msgs::timedomain_msg
  :super ros::object
  :slots (_header _local_time _gps_time _state ))

(defmethod timedomain_interface_msgs::timedomain_msg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:local_time __local_time) 0)
    ((:gps_time __gps_time) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _local_time (round __local_time))
   (setq _gps_time (round __gps_time))
   (setq _state (round __state))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:local_time
   (&optional __local_time)
   (if __local_time (setq _local_time __local_time)) _local_time)
  (:gps_time
   (&optional __gps_time)
   (if __gps_time (setq _gps_time __gps_time)) _gps_time)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _local_time
    8
    ;; uint64 _gps_time
    8
    ;; int32 _state
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _local_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _local_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _local_time) (= (length (_local_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_local_time . bv) 0) 0) s)
              (write-long (ash (elt (_local_time . bv) 1) -1) s))
             ((and (class _local_time) (= (length (_local_time . bv)) 1)) ;; big1
              (write-long (elt (_local_time . bv) 0) s)
              (write-long (if (>= _local_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _local_time s)(write-long (if (>= _local_time 0) 0 #xffffffff) s)))
     ;; uint64 _gps_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _gps_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _gps_time) (= (length (_gps_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_gps_time . bv) 0) 0) s)
              (write-long (ash (elt (_gps_time . bv) 1) -1) s))
             ((and (class _gps_time) (= (length (_gps_time . bv)) 1)) ;; big1
              (write-long (elt (_gps_time . bv) 0) s)
              (write-long (if (>= _gps_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _gps_time s)(write-long (if (>= _gps_time 0) 0 #xffffffff) s)))
     ;; int32 _state
       (write-long _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _local_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _local_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _local_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _gps_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _gps_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _gps_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get timedomain_interface_msgs::timedomain_msg :md5sum-) "55624a00177d7264c16ecdcff80366a6")
(setf (get timedomain_interface_msgs::timedomain_msg :datatype-) "timedomain_interface_msgs/timedomain_msg")
(setf (get timedomain_interface_msgs::timedomain_msg :definition-)
      "std_msgs/Header header
uint64 local_time
uint64 gps_time
int32 state

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



(provide :timedomain_interface_msgs/timedomain_msg "55624a00177d7264c16ecdcff80366a6")


