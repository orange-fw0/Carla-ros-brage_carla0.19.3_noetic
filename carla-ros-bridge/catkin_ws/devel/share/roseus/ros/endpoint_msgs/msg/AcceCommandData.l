;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AcceCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AcceCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::ACCECOMMANDDATA")
  (make-package "ENDPOINT_MSGS::ACCECOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude AcceCommandData.msg.html


(defclass endpoint_msgs::AcceCommandData
  :super ros::object
  :slots (_timestamp_us _command_value _acce_command_enable ))

(defmethod endpoint_msgs::AcceCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:command_value __command_value) 0.0)
    ((:acce_command_enable __acce_command_enable) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _command_value (float __command_value))
   (setq _acce_command_enable __acce_command_enable)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:command_value
   (&optional __command_value)
   (if __command_value (setq _command_value __command_value)) _command_value)
  (:acce_command_enable
   (&optional (__acce_command_enable :null))
   (if (not (eq __acce_command_enable :null)) (setq _acce_command_enable __acce_command_enable)) _acce_command_enable)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; float32 _command_value
    4
    ;; bool _acce_command_enable
    1
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
     ;; float32 _command_value
       (sys::poke _command_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _acce_command_enable
       (if _acce_command_enable (write-byte -1 s) (write-byte 0 s))
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
   ;; float32 _command_value
     (setq _command_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _acce_command_enable
     (setq _acce_command_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::AcceCommandData :md5sum-) "929517698b792fe3c6915383573116b6")
(setf (get endpoint_msgs::AcceCommandData :datatype-) "endpoint_msgs/AcceCommandData")
(setf (get endpoint_msgs::AcceCommandData :definition-)
      "uint64 timestamp_us
float32 command_value
bool acce_command_enable

")



(provide :endpoint_msgs/AcceCommandData "929517698b792fe3c6915383573116b6")


