;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::SingleMessageStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'SingleMessageStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::SINGLEMESSAGESTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::SINGLEMESSAGESTATUS"))

(in-package "ROS")
;;//! \htmlinclude SingleMessageStatus.msg.html


(intern "*NORM*" (find-package "FRAMEWORK_STATUS_MSGS::SINGLEMESSAGESTATUS"))
(shadow '*NORM* (find-package "FRAMEWORK_STATUS_MSGS::SINGLEMESSAGESTATUS"))
(defconstant framework_status_msgs::SingleMessageStatus::*NORM* 0)
(intern "*WARNING*" (find-package "FRAMEWORK_STATUS_MSGS::SINGLEMESSAGESTATUS"))
(shadow '*WARNING* (find-package "FRAMEWORK_STATUS_MSGS::SINGLEMESSAGESTATUS"))
(defconstant framework_status_msgs::SingleMessageStatus::*WARNING* 1)
(intern "*ERROR*" (find-package "FRAMEWORK_STATUS_MSGS::SINGLEMESSAGESTATUS"))
(shadow '*ERROR* (find-package "FRAMEWORK_STATUS_MSGS::SINGLEMESSAGESTATUS"))
(defconstant framework_status_msgs::SingleMessageStatus::*ERROR* 2)

(defun framework_status_msgs::SingleMessageStatus-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::SingleMessageStatus::*NORM*)
        ((= const 1) 'framework_status_msgs::SingleMessageStatus::*WARNING*)
        ((= const 2) 'framework_status_msgs::SingleMessageStatus::*ERROR*)
        (t nil)))

(defclass framework_status_msgs::SingleMessageStatus
  :super ros::object
  :slots (_health_status _name _start_timestamp_us _end_timestamp_us _frame_rate _standard_frame_rate _interval_ms _header_delay_ms _current_loss_frame_count _total_loss_frame_count _in_order _reserved_info _message ))

(defmethod framework_status_msgs::SingleMessageStatus
  (:init
   (&key
    ((:health_status __health_status) 0)
    ((:name __name) "")
    ((:start_timestamp_us __start_timestamp_us) 0)
    ((:end_timestamp_us __end_timestamp_us) 0)
    ((:frame_rate __frame_rate) 0.0)
    ((:standard_frame_rate __standard_frame_rate) 0.0)
    ((:interval_ms __interval_ms) (instance framework_status_msgs::StatisticValue :init))
    ((:header_delay_ms __header_delay_ms) (instance framework_status_msgs::StatisticValue :init))
    ((:current_loss_frame_count __current_loss_frame_count) 0)
    ((:total_loss_frame_count __total_loss_frame_count) 0)
    ((:in_order __in_order) nil)
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _health_status (round __health_status))
   (setq _name (string __name))
   (setq _start_timestamp_us (round __start_timestamp_us))
   (setq _end_timestamp_us (round __end_timestamp_us))
   (setq _frame_rate (float __frame_rate))
   (setq _standard_frame_rate (float __standard_frame_rate))
   (setq _interval_ms __interval_ms)
   (setq _header_delay_ms __header_delay_ms)
   (setq _current_loss_frame_count (round __current_loss_frame_count))
   (setq _total_loss_frame_count (round __total_loss_frame_count))
   (setq _in_order __in_order)
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:health_status
   (&optional __health_status)
   (if __health_status (setq _health_status __health_status)) _health_status)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:start_timestamp_us
   (&optional __start_timestamp_us)
   (if __start_timestamp_us (setq _start_timestamp_us __start_timestamp_us)) _start_timestamp_us)
  (:end_timestamp_us
   (&optional __end_timestamp_us)
   (if __end_timestamp_us (setq _end_timestamp_us __end_timestamp_us)) _end_timestamp_us)
  (:frame_rate
   (&optional __frame_rate)
   (if __frame_rate (setq _frame_rate __frame_rate)) _frame_rate)
  (:standard_frame_rate
   (&optional __standard_frame_rate)
   (if __standard_frame_rate (setq _standard_frame_rate __standard_frame_rate)) _standard_frame_rate)
  (:interval_ms
   (&rest __interval_ms)
   (if (keywordp (car __interval_ms))
       (send* _interval_ms __interval_ms)
     (progn
       (if __interval_ms (setq _interval_ms (car __interval_ms)))
       _interval_ms)))
  (:header_delay_ms
   (&rest __header_delay_ms)
   (if (keywordp (car __header_delay_ms))
       (send* _header_delay_ms __header_delay_ms)
     (progn
       (if __header_delay_ms (setq _header_delay_ms (car __header_delay_ms)))
       _header_delay_ms)))
  (:current_loss_frame_count
   (&optional __current_loss_frame_count)
   (if __current_loss_frame_count (setq _current_loss_frame_count __current_loss_frame_count)) _current_loss_frame_count)
  (:total_loss_frame_count
   (&optional __total_loss_frame_count)
   (if __total_loss_frame_count (setq _total_loss_frame_count __total_loss_frame_count)) _total_loss_frame_count)
  (:in_order
   (&optional (__in_order :null))
   (if (not (eq __in_order :null)) (setq _in_order __in_order)) _in_order)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint8 _health_status
    1
    ;; string _name
    4 (length _name)
    ;; uint64 _start_timestamp_us
    8
    ;; uint64 _end_timestamp_us
    8
    ;; float32 _frame_rate
    4
    ;; float32 _standard_frame_rate
    4
    ;; framework_status_msgs/StatisticValue _interval_ms
    (send _interval_ms :serialization-length)
    ;; framework_status_msgs/StatisticValue _header_delay_ms
    (send _header_delay_ms :serialization-length)
    ;; uint32 _current_loss_frame_count
    4
    ;; uint32 _total_loss_frame_count
    4
    ;; bool _in_order
    1
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _health_status
       (write-byte _health_status s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint64 _start_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _start_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _start_timestamp_us) (= (length (_start_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_start_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_start_timestamp_us . bv) 1) -1) s))
             ((and (class _start_timestamp_us) (= (length (_start_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_start_timestamp_us . bv) 0) s)
              (write-long (if (>= _start_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _start_timestamp_us s)(write-long (if (>= _start_timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _end_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _end_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _end_timestamp_us) (= (length (_end_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_end_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_end_timestamp_us . bv) 1) -1) s))
             ((and (class _end_timestamp_us) (= (length (_end_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_end_timestamp_us . bv) 0) s)
              (write-long (if (>= _end_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _end_timestamp_us s)(write-long (if (>= _end_timestamp_us 0) 0 #xffffffff) s)))
     ;; float32 _frame_rate
       (sys::poke _frame_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_frame_rate
       (sys::poke _standard_frame_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; framework_status_msgs/StatisticValue _interval_ms
       (send _interval_ms :serialize s)
     ;; framework_status_msgs/StatisticValue _header_delay_ms
       (send _header_delay_ms :serialize s)
     ;; uint32 _current_loss_frame_count
       (write-long _current_loss_frame_count s)
     ;; uint32 _total_loss_frame_count
       (write-long _total_loss_frame_count s)
     ;; bool _in_order
       (if _in_order (write-byte -1 s) (write-byte 0 s))
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _health_status
     (setq _health_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _start_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _start_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _start_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _end_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _end_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _end_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _frame_rate
     (setq _frame_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_frame_rate
     (setq _standard_frame_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; framework_status_msgs/StatisticValue _interval_ms
     (send _interval_ms :deserialize buf ptr-) (incf ptr- (send _interval_ms :serialization-length))
   ;; framework_status_msgs/StatisticValue _header_delay_ms
     (send _header_delay_ms :deserialize buf ptr-) (incf ptr- (send _header_delay_ms :serialization-length))
   ;; uint32 _current_loss_frame_count
     (setq _current_loss_frame_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _total_loss_frame_count
     (setq _total_loss_frame_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _in_order
     (setq _in_order (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::SingleMessageStatus :md5sum-) "b58f7eccb3c47ab12531866eb61deccf")
(setf (get framework_status_msgs::SingleMessageStatus :datatype-) "framework_status_msgs/SingleMessageStatus")
(setf (get framework_status_msgs::SingleMessageStatus :definition-)
      "uint8 NORM = 0
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



(provide :framework_status_msgs/SingleMessageStatus "b58f7eccb3c47ab12531866eb61deccf")


