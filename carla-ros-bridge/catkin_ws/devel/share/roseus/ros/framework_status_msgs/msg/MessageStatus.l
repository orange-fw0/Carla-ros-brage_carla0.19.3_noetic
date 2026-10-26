;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::MessageStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'MessageStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::MESSAGESTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::MESSAGESTATUS"))

(in-package "ROS")
;;//! \htmlinclude MessageStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass framework_status_msgs::MessageStatus
  :super ros::object
  :slots (_header _timestamp_us _message_status_list ))

(defmethod framework_status_msgs::MessageStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp_us __timestamp_us) 0)
    ((:message_status_list __message_status_list) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp_us (round __timestamp_us))
   (setq _message_status_list __message_status_list)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:message_status_list
   (&rest __message_status_list)
   (if (keywordp (car __message_status_list))
       (send* _message_status_list __message_status_list)
     (progn
       (if __message_status_list (setq _message_status_list (car __message_status_list)))
       _message_status_list)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timestamp_us
    8
    ;; framework_status_msgs/SingleMessageStatus[] _message_status_list
    (apply #'+ (send-all _message_status_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
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
     ;; framework_status_msgs/SingleMessageStatus[] _message_status_list
     (write-long (length _message_status_list) s)
     (dolist (elem _message_status_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
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
   ;; framework_status_msgs/SingleMessageStatus[] _message_status_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _message_status_list (let (r) (dotimes (i n) (push (instance framework_status_msgs::SingleMessageStatus :init) r)) r))
     (dolist (elem- _message_status_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get framework_status_msgs::MessageStatus :md5sum-) "c33039895927ea8c4f54a135adcf66f3")
(setf (get framework_status_msgs::MessageStatus :datatype-) "framework_status_msgs/MessageStatus")
(setf (get framework_status_msgs::MessageStatus :definition-)
      "std_msgs/Header header
uint64 timestamp_us
framework_status_msgs/SingleMessageStatus[] message_status_list

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

================================================================================
MSG: framework_status_msgs/SingleMessageStatus
uint8 NORM = 0
uint8 WARNING = 1
uint8 ERROR = 2
uint8 health_status
string name
uint64 start_timestamp_us
uint64 end_timestamp_us
float32 frame_rate
float32 standard_frame_rate
framework_status_msgs/StatisticValue interval_ms
framework_status_msgs/StatisticValue header_delay_ms
uint32 current_loss_frame_count
uint32 total_loss_frame_count
bool in_order
string reserved_info
string message

================================================================================
MSG: framework_status_msgs/StatisticValue
float32 average
float32 standard_deviation
float32 max_value
float32 min_value
string reserved_info

")



(provide :framework_status_msgs/MessageStatus "c33039895927ea8c4f54a135adcf66f3")


