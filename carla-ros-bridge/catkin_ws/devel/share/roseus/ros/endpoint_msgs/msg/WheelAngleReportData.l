;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelAngleReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelAngleReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELANGLEREPORTDATA")
  (make-package "ENDPOINT_MSGS::WHEELANGLEREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude WheelAngleReportData.msg.html


(defclass endpoint_msgs::WheelAngleReportData
  :super ros::object
  :slots (_timestamp_us _rws_state _front_left _front_right _rear_left _rear_right _valid ))

(defmethod endpoint_msgs::WheelAngleReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:rws_state __rws_state) (instance endpoint_msgs::RwsSysStatus :init))
    ((:front_left __front_left) 0.0)
    ((:front_right __front_right) 0.0)
    ((:rear_left __rear_left) 0.0)
    ((:rear_right __rear_right) 0.0)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _rws_state __rws_state)
   (setq _front_left (float __front_left))
   (setq _front_right (float __front_right))
   (setq _rear_left (float __rear_left))
   (setq _rear_right (float __rear_right))
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:rws_state
   (&rest __rws_state)
   (if (keywordp (car __rws_state))
       (send* _rws_state __rws_state)
     (progn
       (if __rws_state (setq _rws_state (car __rws_state)))
       _rws_state)))
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
    ;; endpoint_msgs/RwsSysStatus _rws_state
    (send _rws_state :serialization-length)
    ;; float32 _front_left
    4
    ;; float32 _front_right
    4
    ;; float32 _rear_left
    4
    ;; float32 _rear_right
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
     ;; endpoint_msgs/RwsSysStatus _rws_state
       (send _rws_state :serialize s)
     ;; float32 _front_left
       (sys::poke _front_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_right
       (sys::poke _front_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_left
       (sys::poke _rear_left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_right
       (sys::poke _rear_right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; endpoint_msgs/RwsSysStatus _rws_state
     (send _rws_state :deserialize buf ptr-) (incf ptr- (send _rws_state :serialization-length))
   ;; float32 _front_left
     (setq _front_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_right
     (setq _front_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_left
     (setq _rear_left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_right
     (setq _rear_right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelAngleReportData :md5sum-) "7ff56edd833a9fba9775ee4f950fc088")
(setf (get endpoint_msgs::WheelAngleReportData :datatype-) "endpoint_msgs/WheelAngleReportData")
(setf (get endpoint_msgs::WheelAngleReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/RwsSysStatus rws_state
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

================================================================================
MSG: endpoint_msgs/RwsSysStatus
uint8 STANDARD_MODE = 0
uint8 COMFORTABLE_MODE = 1
uint8 SPORT_MODE = 2
uint8 AD_MODE = 3
uint8 ADLOCK_MODE = 4
uint8 RESERVED = 5
bool valid
uint8 value

")



(provide :endpoint_msgs/WheelAngleReportData "7ff56edd833a9fba9775ee4f950fc088")


