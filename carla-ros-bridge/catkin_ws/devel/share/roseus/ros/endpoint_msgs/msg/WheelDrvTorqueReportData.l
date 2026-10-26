;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelDrvTorqueReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelDrvTorqueReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELDRVTORQUEREPORTDATA")
  (make-package "ENDPOINT_MSGS::WHEELDRVTORQUEREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude WheelDrvTorqueReportData.msg.html


(defclass endpoint_msgs::WheelDrvTorqueReportData
  :super ros::object
  :slots (_timestamp_us _front_left _front_left_valid _front_right _front_right_valid _rear_left _rear_left_valid _rear_right _rear_right_valid ))

(defmethod endpoint_msgs::WheelDrvTorqueReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:front_left __front_left) 0.0)
    ((:front_left_valid __front_left_valid) nil)
    ((:front_right __front_right) 0.0)
    ((:front_right_valid __front_right_valid) 0.0)
    ((:rear_left __rear_left) 0.0)
    ((:rear_left_valid __rear_left_valid) 0.0)
    ((:rear_right __rear_right) 0.0)
    ((:rear_right_valid __rear_right_valid) 0.0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _front_left (float __front_left))
   (setq _front_left_valid __front_left_valid)
   (setq _front_right (float __front_right))
   (setq _front_right_valid (float __front_right_valid))
   (setq _rear_left (float __rear_left))
   (setq _rear_left_valid (float __rear_left_valid))
   (setq _rear_right (float __rear_right))
   (setq _rear_right_valid (float __rear_right_valid))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:front_left_valid
   (&optional (__front_left_valid :null))
   (if (not (eq __front_left_valid :null)) (setq _front_left_valid __front_left_valid)) _front_left_valid)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:front_right_valid
   (&optional __front_right_valid)
   (if __front_right_valid (setq _front_right_valid __front_right_valid)) _front_right_valid)
  (:rear_left
   (&optional __rear_left)
   (if __rear_left (setq _rear_left __rear_left)) _rear_left)
  (:rear_left_valid
   (&optional __rear_left_valid)
   (if __rear_left_valid (setq _rear_left_valid __rear_left_valid)) _rear_left_valid)
  (:rear_right
   (&optional __rear_right)
   (if __rear_right (setq _rear_right __rear_right)) _rear_right)
  (:rear_right_valid
   (&optional __rear_right_valid)
   (if __rear_right_valid (setq _rear_right_valid __rear_right_valid)) _rear_right_valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; float32 _front_left
    4
    ;; bool _front_left_valid
    1
    ;; float32 _front_right
    4
    ;; float32 _front_right_valid
    4
    ;; float32 _rear_left
    4
    ;; float32 _rear_left_valid
    4
    ;; float32 _rear_right
    4
    ;; float32 _rear_right_valid
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
     ;; float32 _front_left
       (sys::poke _front_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _front_left_valid
       (if _front_left_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _front_right
       (sys::poke _front_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_right_valid
       (sys::poke _front_right_valid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_left
       (sys::poke _rear_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_left_valid
       (sys::poke _rear_left_valid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_right
       (sys::poke _rear_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_right_valid
       (sys::poke _rear_right_valid (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _front_left
     (setq _front_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _front_left_valid
     (setq _front_left_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _front_right
     (setq _front_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_right_valid
     (setq _front_right_valid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_left
     (setq _rear_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_left_valid
     (setq _rear_left_valid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_right
     (setq _rear_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_right_valid
     (setq _rear_right_valid (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelDrvTorqueReportData :md5sum-) "786665c319fc9b0287acddb36e019078")
(setf (get endpoint_msgs::WheelDrvTorqueReportData :datatype-) "endpoint_msgs/WheelDrvTorqueReportData")
(setf (get endpoint_msgs::WheelDrvTorqueReportData :definition-)
      "uint64 timestamp_us
float32 front_left
bool front_left_valid
float32 front_right
float32 front_right_valid
float32 rear_left
float32 rear_left_valid
float32 rear_right
float32 rear_right_valid

")



(provide :endpoint_msgs/WheelDrvTorqueReportData "786665c319fc9b0287acddb36e019078")


