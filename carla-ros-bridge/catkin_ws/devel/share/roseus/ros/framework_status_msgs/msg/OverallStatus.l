;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::OverallStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'OverallStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OverallStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STOP*" (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(shadow '*STOP* (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(defconstant framework_status_msgs::OverallStatus::*STOP* 0)
(intern "*SAFTY_RUNNING*" (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(shadow '*SAFTY_RUNNING* (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(defconstant framework_status_msgs::OverallStatus::*SAFTY_RUNNING* 1)
(intern "*NORMAL_RUNNING*" (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(shadow '*NORMAL_RUNNING* (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(defconstant framework_status_msgs::OverallStatus::*NORMAL_RUNNING* 2)
(intern "*TAKEOVER*" (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(shadow '*TAKEOVER* (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(defconstant framework_status_msgs::OverallStatus::*TAKEOVER* 3)
(intern "*NONE*" (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(shadow '*NONE* (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(defconstant framework_status_msgs::OverallStatus::*NONE* 0)
(intern "*SAFTY_RUNNING_WAIT_TAKEOVER*" (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(shadow '*SAFTY_RUNNING_WAIT_TAKEOVER* (find-package "FRAMEWORK_STATUS_MSGS::OVERALLSTATUS"))
(defconstant framework_status_msgs::OverallStatus::*SAFTY_RUNNING_WAIT_TAKEOVER* 1)

(defun framework_status_msgs::OverallStatus-to-symbol (const)
  (cond
        ((= const 0) 'framework_status_msgs::OverallStatus::*STOP*)
        ((= const 1) 'framework_status_msgs::OverallStatus::*SAFTY_RUNNING*)
        ((= const 2) 'framework_status_msgs::OverallStatus::*NORMAL_RUNNING*)
        ((= const 3) 'framework_status_msgs::OverallStatus::*TAKEOVER*)
        ((= const 0) 'framework_status_msgs::OverallStatus::*NONE*)
        ((= const 1) 'framework_status_msgs::OverallStatus::*SAFTY_RUNNING_WAIT_TAKEOVER*)
        (t nil)))

(defclass framework_status_msgs::OverallStatus
  :super ros::object
  :slots (_header _timestamp_us _status _detail_status _message ))

(defmethod framework_status_msgs::OverallStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp_us __timestamp_us) 0)
    ((:status __status) 0)
    ((:detail_status __detail_status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp_us (round __timestamp_us))
   (setq _status (round __status))
   (setq _detail_status (round __detail_status))
   (setq _message (string __message))
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
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:detail_status
   (&optional __detail_status)
   (if __detail_status (setq _detail_status __detail_status)) _detail_status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _timestamp_us
    8
    ;; uint8 _status
    1
    ;; uint8 _detail_status
    1
    ;; string _message
    4 (length _message)
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
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _detail_status
       (write-byte _detail_status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
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
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _detail_status
     (setq _detail_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::OverallStatus :md5sum-) "da53c828915078e6f234d3394552812d")
(setf (get framework_status_msgs::OverallStatus :datatype-) "framework_status_msgs/OverallStatus")
(setf (get framework_status_msgs::OverallStatus :definition-)
      "uint8 STOP = 0
uint8 SAFTY_RUNNING = 1
uint8 NORMAL_RUNNING = 2
uint8 TAKEOVER = 3
uint8 NONE = 0
uint8 SAFTY_RUNNING_WAIT_TAKEOVER = 1
std_msgs/Header header
uint64 timestamp_us
uint8 status
uint8 detail_status
string message

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



(provide :framework_status_msgs/OverallStatus "da53c828915078e6f234d3394552812d")


