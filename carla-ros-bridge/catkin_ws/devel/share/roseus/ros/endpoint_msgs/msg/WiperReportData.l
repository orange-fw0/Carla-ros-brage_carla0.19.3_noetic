;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WiperReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WiperReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIPERREPORTDATA")
  (make-package "ENDPOINT_MSGS::WIPERREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude WiperReportData.msg.html


(defclass endpoint_msgs::WiperReportData
  :super ros::object
  :slots (_timestamp_us _driver_work_type _front_wiper_state _rear_wiper_state _valid ))

(defmethod endpoint_msgs::WiperReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:driver_work_type __driver_work_type) (instance endpoint_msgs::WorkType :init))
    ((:front_wiper_state __front_wiper_state) (instance endpoint_msgs::WiperStateType :init))
    ((:rear_wiper_state __rear_wiper_state) (instance endpoint_msgs::WiperStateType :init))
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _driver_work_type __driver_work_type)
   (setq _front_wiper_state __front_wiper_state)
   (setq _rear_wiper_state __rear_wiper_state)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:driver_work_type
   (&rest __driver_work_type)
   (if (keywordp (car __driver_work_type))
       (send* _driver_work_type __driver_work_type)
     (progn
       (if __driver_work_type (setq _driver_work_type (car __driver_work_type)))
       _driver_work_type)))
  (:front_wiper_state
   (&rest __front_wiper_state)
   (if (keywordp (car __front_wiper_state))
       (send* _front_wiper_state __front_wiper_state)
     (progn
       (if __front_wiper_state (setq _front_wiper_state (car __front_wiper_state)))
       _front_wiper_state)))
  (:rear_wiper_state
   (&rest __rear_wiper_state)
   (if (keywordp (car __rear_wiper_state))
       (send* _rear_wiper_state __rear_wiper_state)
     (progn
       (if __rear_wiper_state (setq _rear_wiper_state (car __rear_wiper_state)))
       _rear_wiper_state)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/WorkType _driver_work_type
    (send _driver_work_type :serialization-length)
    ;; endpoint_msgs/WiperStateType _front_wiper_state
    (send _front_wiper_state :serialization-length)
    ;; endpoint_msgs/WiperStateType _rear_wiper_state
    (send _rear_wiper_state :serialization-length)
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
     ;; endpoint_msgs/WorkType _driver_work_type
       (send _driver_work_type :serialize s)
     ;; endpoint_msgs/WiperStateType _front_wiper_state
       (send _front_wiper_state :serialize s)
     ;; endpoint_msgs/WiperStateType _rear_wiper_state
       (send _rear_wiper_state :serialize s)
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
   ;; endpoint_msgs/WorkType _driver_work_type
     (send _driver_work_type :deserialize buf ptr-) (incf ptr- (send _driver_work_type :serialization-length))
   ;; endpoint_msgs/WiperStateType _front_wiper_state
     (send _front_wiper_state :deserialize buf ptr-) (incf ptr- (send _front_wiper_state :serialization-length))
   ;; endpoint_msgs/WiperStateType _rear_wiper_state
     (send _rear_wiper_state :deserialize buf ptr-) (incf ptr- (send _rear_wiper_state :serialization-length))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::WiperReportData :md5sum-) "2b255574b7ee336319b134fbb022bab7")
(setf (get endpoint_msgs::WiperReportData :datatype-) "endpoint_msgs/WiperReportData")
(setf (get endpoint_msgs::WiperReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/WiperStateType front_wiper_state
endpoint_msgs/WiperStateType rear_wiper_state
bool valid

================================================================================
MSG: endpoint_msgs/WorkType
uint8 MANUALPILOT = 0
uint8 AUTOPILOT_PILOT = 1
uint8 AUTOPILOT_APA = 2
uint8 AUTOPILOT_ACC = 3
uint8 AUTOPILOT_RESERVED1 = 4
uint8 AUTOPILOT_RESERVED2 = 5
uint8 AUTOPILOT_RESERVED3 = 6
uint8 AUTOPILOT_RESERVED4 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/WiperStateType
uint8 OFF = 0
uint8 AUTO_OFF = 1
uint8 AUTO_MOVING = 2
uint8 MANUAL_OFF = 3
uint8 MANUAL_ON = 4
uint8 MANUAL_LOW = 5
uint8 MANUAL_HIGH = 6
uint8 MIST_FLICK = 7
uint8 WASH = 8
uint8 AUTO_LOW = 9
uint8 AUTO_HIGH = 10
uint8 COURTESY_WIPE = 11
uint8 AUTO_ADJUST = 12
uint8 RESERVED = 13
uint8 STALLED = 14
uint8 NONE = 15
uint8 value

")



(provide :endpoint_msgs/WiperReportData "2b255574b7ee336319b134fbb022bab7")


