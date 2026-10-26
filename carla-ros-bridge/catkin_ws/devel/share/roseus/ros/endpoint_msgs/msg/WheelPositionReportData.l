;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelPositionReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelPositionReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELPOSITIONREPORTDATA")
  (make-package "ENDPOINT_MSGS::WHEELPOSITIONREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude WheelPositionReportData.msg.html


(defclass endpoint_msgs::WheelPositionReportData
  :super ros::object
  :slots (_timestamp_us _front_left _front_right _rear_left _rear_right _valid ))

(defmethod endpoint_msgs::WheelPositionReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:front_left __front_left) 0)
    ((:front_right __front_right) 0)
    ((:rear_left __rear_left) 0)
    ((:rear_right __rear_right) 0)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _front_left (round __front_left))
   (setq _front_right (round __front_right))
   (setq _rear_left (round __rear_left))
   (setq _rear_right (round __rear_right))
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
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; int16 _front_left
    2
    ;; int16 _front_right
    2
    ;; int16 _rear_left
    2
    ;; int16 _rear_right
    2
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
     ;; int16 _front_left
       (write-word _front_left s)
     ;; int16 _front_right
       (write-word _front_right s)
     ;; int16 _rear_left
       (write-word _rear_left s)
     ;; int16 _rear_right
       (write-word _rear_right s)
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
   ;; int16 _front_left
     (setq _front_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _front_right
     (setq _front_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rear_left
     (setq _rear_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rear_right
     (setq _rear_right (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelPositionReportData :md5sum-) "652e477b0b057aa957543f232131d047")
(setf (get endpoint_msgs::WheelPositionReportData :datatype-) "endpoint_msgs/WheelPositionReportData")
(setf (get endpoint_msgs::WheelPositionReportData :definition-)
      "uint64 timestamp_us
int16 front_left
int16 front_right
int16 rear_left
int16 rear_right
bool valid

")



(provide :endpoint_msgs/WheelPositionReportData "652e477b0b057aa957543f232131d047")


