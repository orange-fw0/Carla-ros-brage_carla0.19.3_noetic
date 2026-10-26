;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WireControlTypeCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WireControlTypeCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIRECONTROLTYPECOMMANDDATA")
  (make-package "ENDPOINT_MSGS::WIRECONTROLTYPECOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude WireControlTypeCommandData.msg.html


(defclass endpoint_msgs::WireControlTypeCommandData
  :super ros::object
  :slots (_timestamp_us _wire_type ))

(defmethod endpoint_msgs::WireControlTypeCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:wire_type __wire_type) (instance endpoint_msgs::WireControlType :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _wire_type __wire_type)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:wire_type
   (&rest __wire_type)
   (if (keywordp (car __wire_type))
       (send* _wire_type __wire_type)
     (progn
       (if __wire_type (setq _wire_type (car __wire_type)))
       _wire_type)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/WireControlType _wire_type
    (send _wire_type :serialization-length)
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
     ;; endpoint_msgs/WireControlType _wire_type
       (send _wire_type :serialize s)
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
   ;; endpoint_msgs/WireControlType _wire_type
     (send _wire_type :deserialize buf ptr-) (incf ptr- (send _wire_type :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WireControlTypeCommandData :md5sum-) "c6a28884676b53e9cfe8c617659e54a4")
(setf (get endpoint_msgs::WireControlTypeCommandData :datatype-) "endpoint_msgs/WireControlTypeCommandData")
(setf (get endpoint_msgs::WireControlTypeCommandData :definition-)
      "uint64 timestamp_us
endpoint_msgs/WireControlType wire_type

================================================================================
MSG: endpoint_msgs/WireControlType
uint8 SYETEM_REQ_NONE = 0
uint8 SYSTEM_REQ_PILOT = 1
uint8 SYSTEM_REQ_APA = 2
uint8 SYSTEM_REQ_ACC = 3
uint8 SYSTEM_REQ_AVP = 4
uint8 SYSTEM_REQ_LVP = 5
uint8 SYSTEM_REQ_MRC = 6
uint8 RESERVED = 7
uint8 wire_control_type

")



(provide :endpoint_msgs/WireControlTypeCommandData "c6a28884676b53e9cfe8c617659e54a4")


