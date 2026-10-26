;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::NodeStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'NodeStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::NODESTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::NODESTATUS"))

(in-package "ROS")
;;//! \htmlinclude NodeStatus.msg.html


(defclass framework_status_msgs::NodeStatus
  :super ros::object
  :slots (_timestamp_us _node_type _task_type _status _detail_status _detail_value _reserved_info _message ))

(defmethod framework_status_msgs::NodeStatus
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:node_type __node_type) 0)
    ((:task_type __task_type) 0)
    ((:status __status) 0)
    ((:detail_status __detail_status) 0)
    ((:detail_value __detail_value) 0.0)
    ((:reserved_info __reserved_info) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _node_type (round __node_type))
   (setq _task_type (round __task_type))
   (setq _status (round __status))
   (setq _detail_status (round __detail_status))
   (setq _detail_value (float __detail_value))
   (setq _reserved_info (string __reserved_info))
   (setq _message (string __message))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:node_type
   (&optional __node_type)
   (if __node_type (setq _node_type __node_type)) _node_type)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:detail_status
   (&optional __detail_status)
   (if __detail_status (setq _detail_status __detail_status)) _detail_status)
  (:detail_value
   (&optional __detail_value)
   (if __detail_value (setq _detail_value __detail_value)) _detail_value)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; uint16 _node_type
    2
    ;; uint16 _task_type
    2
    ;; uint16 _status
    2
    ;; uint16 _detail_status
    2
    ;; float32 _detail_value
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;; uint16 _node_type
       (write-word _node_type s)
     ;; uint16 _task_type
       (write-word _task_type s)
     ;; uint16 _status
       (write-word _status s)
     ;; uint16 _detail_status
       (write-word _detail_status s)
     ;; float32 _detail_value
       (sys::poke _detail_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; uint16 _node_type
     (setq _node_type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _task_type
     (setq _task_type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _detail_status
     (setq _detail_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _detail_value
     (setq _detail_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::NodeStatus :md5sum-) "580ffc7c921cc1df477098522067b6c2")
(setf (get framework_status_msgs::NodeStatus :datatype-) "framework_status_msgs/NodeStatus")
(setf (get framework_status_msgs::NodeStatus :definition-)
      "uint64 timestamp_us
uint16 node_type
uint16 task_type
uint16 status
uint16 detail_status
float32 detail_value
string reserved_info
string message

")



(provide :framework_status_msgs/NodeStatus "580ffc7c921cc1df477098522067b6c2")


