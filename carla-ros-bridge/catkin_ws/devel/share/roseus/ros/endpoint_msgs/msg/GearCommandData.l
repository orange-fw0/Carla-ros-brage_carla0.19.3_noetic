;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::GearCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'GearCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::GEARCOMMANDDATA")
  (make-package "ENDPOINT_MSGS::GEARCOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude GearCommandData.msg.html


(defclass endpoint_msgs::GearCommandData
  :super ros::object
  :slots (_timestamp_us _gear_enable _gear_type ))

(defmethod endpoint_msgs::GearCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:gear_enable __gear_enable) nil)
    ((:gear_type __gear_type) (instance endpoint_msgs::Gear :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _gear_enable __gear_enable)
   (setq _gear_type __gear_type)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:gear_enable
   (&optional (__gear_enable :null))
   (if (not (eq __gear_enable :null)) (setq _gear_enable __gear_enable)) _gear_enable)
  (:gear_type
   (&rest __gear_type)
   (if (keywordp (car __gear_type))
       (send* _gear_type __gear_type)
     (progn
       (if __gear_type (setq _gear_type (car __gear_type)))
       _gear_type)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _gear_enable
    1
    ;; endpoint_msgs/Gear _gear_type
    (send _gear_type :serialization-length)
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
     ;; bool _gear_enable
       (if _gear_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/Gear _gear_type
       (send _gear_type :serialize s)
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
   ;; bool _gear_enable
     (setq _gear_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/Gear _gear_type
     (send _gear_type :deserialize buf ptr-) (incf ptr- (send _gear_type :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::GearCommandData :md5sum-) "86c7880c669a37780aba2223a30bda18")
(setf (get endpoint_msgs::GearCommandData :datatype-) "endpoint_msgs/GearCommandData")
(setf (get endpoint_msgs::GearCommandData :definition-)
      "uint64 timestamp_us
bool gear_enable
endpoint_msgs/Gear gear_type

================================================================================
MSG: endpoint_msgs/Gear
uint8 NONE = 0
uint8 PARK = 1
uint8 REVERSE = 2
uint8 NEUTRAL = 3
uint8 DRIVE = 4
uint8 LOW = 5
uint8 value

")



(provide :endpoint_msgs/GearCommandData "86c7880c669a37780aba2223a30bda18")


