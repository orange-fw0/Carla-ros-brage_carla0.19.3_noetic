;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ThrottleCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ThrottleCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::THROTTLECOMMANDDATA")
  (make-package "ENDPOINT_MSGS::THROTTLECOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude ThrottleCommandData.msg.html


(defclass endpoint_msgs::ThrottleCommandData
  :super ros::object
  :slots (_timestamp_us _throttle_enable _throttle_type _throttle_command ))

(defmethod endpoint_msgs::ThrottleCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:throttle_enable __throttle_enable) nil)
    ((:throttle_type __throttle_type) (instance endpoint_msgs::ThrottleType :init))
    ((:throttle_command __throttle_command) 0.0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _throttle_enable __throttle_enable)
   (setq _throttle_type __throttle_type)
   (setq _throttle_command (float __throttle_command))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:throttle_enable
   (&optional (__throttle_enable :null))
   (if (not (eq __throttle_enable :null)) (setq _throttle_enable __throttle_enable)) _throttle_enable)
  (:throttle_type
   (&rest __throttle_type)
   (if (keywordp (car __throttle_type))
       (send* _throttle_type __throttle_type)
     (progn
       (if __throttle_type (setq _throttle_type (car __throttle_type)))
       _throttle_type)))
  (:throttle_command
   (&optional __throttle_command)
   (if __throttle_command (setq _throttle_command __throttle_command)) _throttle_command)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _throttle_enable
    1
    ;; endpoint_msgs/ThrottleType _throttle_type
    (send _throttle_type :serialization-length)
    ;; float32 _throttle_command
    4
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
     ;; bool _throttle_enable
       (if _throttle_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/ThrottleType _throttle_type
       (send _throttle_type :serialize s)
     ;; float32 _throttle_command
       (sys::poke _throttle_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; bool _throttle_enable
     (setq _throttle_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/ThrottleType _throttle_type
     (send _throttle_type :deserialize buf ptr-) (incf ptr- (send _throttle_type :serialization-length))
   ;; float32 _throttle_command
     (setq _throttle_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get endpoint_msgs::ThrottleCommandData :md5sum-) "5fac3cfd380ece3f6d32ce8bb7b2795d")
(setf (get endpoint_msgs::ThrottleCommandData :datatype-) "endpoint_msgs/ThrottleCommandData")
(setf (get endpoint_msgs::ThrottleCommandData :definition-)
      "uint64 timestamp_us
bool throttle_enable
endpoint_msgs/ThrottleType throttle_type
float32 throttle_command

================================================================================
MSG: endpoint_msgs/ThrottleType
uint8 PEDAL = 0
uint8 THROTTLE = 1
uint8 TORQUE = 2
uint8 ACCELERATION = 3
uint8 SPEED = 4
uint8 SV = 5
uint8 RESERVED = 6
uint8 value

")



(provide :endpoint_msgs/ThrottleCommandData "5fac3cfd380ece3f6d32ce8bb7b2795d")


