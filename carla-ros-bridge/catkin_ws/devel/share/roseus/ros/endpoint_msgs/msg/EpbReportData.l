;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::EpbReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'EpbReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::EPBREPORTDATA")
  (make-package "ENDPOINT_MSGS::EPBREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude EpbReportData.msg.html


(defclass endpoint_msgs::EpbReportData
  :super ros::object
  :slots (_timestamp_us _driver_work_type _epb_report _auto_hold_state _vehicle_hold_active _overide _valid ))

(defmethod endpoint_msgs::EpbReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:driver_work_type __driver_work_type) (instance endpoint_msgs::WorkType :init))
    ((:epb_report __epb_report) (instance endpoint_msgs::EpbStatus :init))
    ((:auto_hold_state __auto_hold_state) (instance endpoint_msgs::AutoHoldStatus :init))
    ((:vehicle_hold_active __vehicle_hold_active) nil)
    ((:overide __overide) nil)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _driver_work_type __driver_work_type)
   (setq _epb_report __epb_report)
   (setq _auto_hold_state __auto_hold_state)
   (setq _vehicle_hold_active __vehicle_hold_active)
   (setq _overide __overide)
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
  (:epb_report
   (&rest __epb_report)
   (if (keywordp (car __epb_report))
       (send* _epb_report __epb_report)
     (progn
       (if __epb_report (setq _epb_report (car __epb_report)))
       _epb_report)))
  (:auto_hold_state
   (&rest __auto_hold_state)
   (if (keywordp (car __auto_hold_state))
       (send* _auto_hold_state __auto_hold_state)
     (progn
       (if __auto_hold_state (setq _auto_hold_state (car __auto_hold_state)))
       _auto_hold_state)))
  (:vehicle_hold_active
   (&optional (__vehicle_hold_active :null))
   (if (not (eq __vehicle_hold_active :null)) (setq _vehicle_hold_active __vehicle_hold_active)) _vehicle_hold_active)
  (:overide
   (&optional (__overide :null))
   (if (not (eq __overide :null)) (setq _overide __overide)) _overide)
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
    ;; endpoint_msgs/EpbStatus _epb_report
    (send _epb_report :serialization-length)
    ;; endpoint_msgs/AutoHoldStatus _auto_hold_state
    (send _auto_hold_state :serialization-length)
    ;; bool _vehicle_hold_active
    1
    ;; bool _overide
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
     ;; endpoint_msgs/EpbStatus _epb_report
       (send _epb_report :serialize s)
     ;; endpoint_msgs/AutoHoldStatus _auto_hold_state
       (send _auto_hold_state :serialize s)
     ;; bool _vehicle_hold_active
       (if _vehicle_hold_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _overide
       (if _overide (write-byte -1 s) (write-byte 0 s))
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
   ;; endpoint_msgs/EpbStatus _epb_report
     (send _epb_report :deserialize buf ptr-) (incf ptr- (send _epb_report :serialization-length))
   ;; endpoint_msgs/AutoHoldStatus _auto_hold_state
     (send _auto_hold_state :deserialize buf ptr-) (incf ptr- (send _auto_hold_state :serialization-length))
   ;; bool _vehicle_hold_active
     (setq _vehicle_hold_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overide
     (setq _overide (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::EpbReportData :md5sum-) "ce462684a53c617db505f9faac2ca167")
(setf (get endpoint_msgs::EpbReportData :datatype-) "endpoint_msgs/EpbReportData")
(setf (get endpoint_msgs::EpbReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/EpbStatus epb_report
endpoint_msgs/AutoHoldStatus auto_hold_state
bool vehicle_hold_active
bool overide
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
MSG: endpoint_msgs/EpbStatus
uint8 RELEASE = 0
uint8 PULLING = 1
uint8 PULL = 2
uint8 RELEASING = 3
uint8 RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AutoHoldStatus
uint8 SYS_OFF = 0
uint8 SYS_INTERVENTION = 1
uint8 SYS_STANDBY = 2
uint8 SYS_ERR = 3
uint8 RESERVED = 4
uint8 value

")



(provide :endpoint_msgs/EpbReportData "ce462684a53c617db505f9faac2ca167")


