;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelSpeedReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelSpeedReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELSPEEDREPORTDATA")
  (make-package "ENDPOINT_MSGS::WHEELSPEEDREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeedReportData.msg.html


(defclass endpoint_msgs::WheelSpeedReportData
  :super ros::object
  :slots (_timestamp_us _front_left _front_right _rear_left _rear_right _front_left_mps _front_right_mps _rear_left_mps _rear_right_mps _valid ))

(defmethod endpoint_msgs::WheelSpeedReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:front_left __front_left) 0.0)
    ((:front_right __front_right) 0.0)
    ((:rear_left __rear_left) 0.0)
    ((:rear_right __rear_right) 0.0)
    ((:front_left_mps __front_left_mps) 0.0)
    ((:front_right_mps __front_right_mps) 0.0)
    ((:rear_left_mps __rear_left_mps) 0.0)
    ((:rear_right_mps __rear_right_mps) 0.0)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _front_left (float __front_left))
   (setq _front_right (float __front_right))
   (setq _rear_left (float __rear_left))
   (setq _rear_right (float __rear_right))
   (setq _front_left_mps (float __front_left_mps))
   (setq _front_right_mps (float __front_right_mps))
   (setq _rear_left_mps (float __rear_left_mps))
   (setq _rear_right_mps (float __rear_right_mps))
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:front_left
   (&optional __front_left)
   (if __front_left (setq _front_left __front_left)) _front_left)
  (:front_right
   (&optional __front_right)
   (if __front_right (setq _front_right __front_right)) _front_right)
  (:rear_left
   (&optional __rear_left)
   (if __rear_left (setq _rear_left __rear_left)) _rear_left)
  (:rear_right
   (&optional __rear_right)
   (if __rear_right (setq _rear_right __rear_right)) _rear_right)
  (:front_left_mps
   (&optional __front_left_mps)
   (if __front_left_mps (setq _front_left_mps __front_left_mps)) _front_left_mps)
  (:front_right_mps
   (&optional __front_right_mps)
   (if __front_right_mps (setq _front_right_mps __front_right_mps)) _front_right_mps)
  (:rear_left_mps
   (&optional __rear_left_mps)
   (if __rear_left_mps (setq _rear_left_mps __rear_left_mps)) _rear_left_mps)
  (:rear_right_mps
   (&optional __rear_right_mps)
   (if __rear_right_mps (setq _rear_right_mps __rear_right_mps)) _rear_right_mps)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; float32 _front_left
    4
    ;; float32 _front_right
    4
    ;; float32 _rear_left
    4
    ;; float32 _rear_right
    4
    ;; float32 _front_left_mps
    4
    ;; float32 _front_right_mps
    4
    ;; float32 _rear_left_mps
    4
    ;; float32 _rear_right_mps
    4
    ;; bool _valid
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
     ;; float32 _front_left
       (sys::poke _front_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_right
       (sys::poke _front_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_left
       (sys::poke _rear_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_right
       (sys::poke _rear_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_left_mps
       (sys::poke _front_left_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_right_mps
       (sys::poke _front_right_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_left_mps
       (sys::poke _rear_left_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_right_mps
       (sys::poke _rear_right_mps (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
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
   ;; float32 _front_right
     (setq _front_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_left
     (setq _rear_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_right
     (setq _rear_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_left_mps
     (setq _front_left_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_right_mps
     (setq _front_right_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_left_mps
     (setq _rear_left_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_right_mps
     (setq _rear_right_mps (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelSpeedReportData :md5sum-) "fb7b943b96c5a0abd45961e6803b7885")
(setf (get endpoint_msgs::WheelSpeedReportData :datatype-) "endpoint_msgs/WheelSpeedReportData")
(setf (get endpoint_msgs::WheelSpeedReportData :definition-)
      "uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
float32 front_left_mps
float32 front_right_mps
float32 rear_left_mps
float32 rear_right_mps
bool valid

")



(provide :endpoint_msgs/WheelSpeedReportData "fb7b943b96c5a0abd45961e6803b7885")


