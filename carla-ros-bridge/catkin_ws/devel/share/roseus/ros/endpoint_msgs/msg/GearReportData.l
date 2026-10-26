;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::GearReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'GearReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::GEARREPORTDATA")
  (make-package "ENDPOINT_MSGS::GEARREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude GearReportData.msg.html


(defclass endpoint_msgs::GearReportData
  :super ros::object
  :slots (_timestamp_us _driver_work_type _command _current_state _reject _override _ready _valid ))

(defmethod endpoint_msgs::GearReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:driver_work_type __driver_work_type) (instance endpoint_msgs::WorkType :init))
    ((:command __command) (instance endpoint_msgs::Gear :init))
    ((:current_state __current_state) (instance endpoint_msgs::Gear :init))
    ((:reject __reject) (instance endpoint_msgs::GearReject :init))
    ((:override __override) nil)
    ((:ready __ready) nil)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _driver_work_type __driver_work_type)
   (setq _command __command)
   (setq _current_state __current_state)
   (setq _reject __reject)
   (setq _override __override)
   (setq _ready __ready)
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
  (:command
   (&rest __command)
   (if (keywordp (car __command))
       (send* _command __command)
     (progn
       (if __command (setq _command (car __command)))
       _command)))
  (:current_state
   (&rest __current_state)
   (if (keywordp (car __current_state))
       (send* _current_state __current_state)
     (progn
       (if __current_state (setq _current_state (car __current_state)))
       _current_state)))
  (:reject
   (&rest __reject)
   (if (keywordp (car __reject))
       (send* _reject __reject)
     (progn
       (if __reject (setq _reject (car __reject)))
       _reject)))
  (:override
   (&optional (__override :null))
   (if (not (eq __override :null)) (setq _override __override)) _override)
  (:ready
   (&optional (__ready :null))
   (if (not (eq __ready :null)) (setq _ready __ready)) _ready)
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
    ;; endpoint_msgs/Gear _command
    (send _command :serialization-length)
    ;; endpoint_msgs/Gear _current_state
    (send _current_state :serialization-length)
    ;; endpoint_msgs/GearReject _reject
    (send _reject :serialization-length)
    ;; bool _override
    1
    ;; bool _ready
    1
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
     ;; endpoint_msgs/Gear _command
       (send _command :serialize s)
     ;; endpoint_msgs/Gear _current_state
       (send _current_state :serialize s)
     ;; endpoint_msgs/GearReject _reject
       (send _reject :serialize s)
     ;; bool _override
       (if _override (write-byte -1 s) (write-byte 0 s))
     ;; bool _ready
       (if _ready (write-byte -1 s) (write-byte 0 s))
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
   ;; endpoint_msgs/Gear _command
     (send _command :deserialize buf ptr-) (incf ptr- (send _command :serialization-length))
   ;; endpoint_msgs/Gear _current_state
     (send _current_state :deserialize buf ptr-) (incf ptr- (send _current_state :serialization-length))
   ;; endpoint_msgs/GearReject _reject
     (send _reject :deserialize buf ptr-) (incf ptr- (send _reject :serialization-length))
   ;; bool _override
     (setq _override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ready
     (setq _ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::GearReportData :md5sum-) "5cc81e97017d51ec84b6f8c273bed9fb")
(setf (get endpoint_msgs::GearReportData :datatype-) "endpoint_msgs/GearReportData")
(setf (get endpoint_msgs::GearReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/Gear command
endpoint_msgs/Gear current_state
endpoint_msgs/GearReject reject
bool override
bool ready
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
MSG: endpoint_msgs/Gear
uint8 NONE = 0
uint8 PARK = 1
uint8 REVERSE = 2
uint8 NEUTRAL = 3
uint8 DRIVE = 4
uint8 LOW = 5
uint8 value

================================================================================
MSG: endpoint_msgs/GearReject
uint8 NONE = 0
uint8 SHIFT_IN_PROGRESS = 1
uint8 OVERRIDE = 2
uint8 ROTARY_LOW = 3
uint8 ROTARY_PARK = 4
uint8 VEHICLE = 5
uint8 value

")



(provide :endpoint_msgs/GearReportData "5cc81e97017d51ec84b6f8c273bed9fb")


