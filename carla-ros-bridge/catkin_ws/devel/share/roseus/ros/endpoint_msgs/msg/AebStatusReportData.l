;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebStatusReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebStatusReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBSTATUSREPORTDATA")
  (make-package "ENDPOINT_MSGS::AEBSTATUSREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude AebStatusReportData.msg.html


(defclass endpoint_msgs::AebStatusReportData
  :super ros::object
  :slots (_timestamp_us _aeb_system_status _aeb_system_fault_status _awb_status _dcl_status _hba_status _prfl_status _aeb_valid _fcw_status _fcw_valid _vse_state _vse_valid _swc_status _swc_valid ))

(defmethod endpoint_msgs::AebStatusReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:aeb_system_status __aeb_system_status) (instance endpoint_msgs::AebSysStatus :init))
    ((:aeb_system_fault_status __aeb_system_fault_status) (instance endpoint_msgs::AebSysFaultStatus :init))
    ((:awb_status __awb_status) (instance endpoint_msgs::AebBrkJerkResp :init))
    ((:dcl_status __dcl_status) (instance endpoint_msgs::AebDclResp :init))
    ((:hba_status __hba_status) (instance endpoint_msgs::HbaStatus :init))
    ((:prfl_status __prfl_status) (instance endpoint_msgs::AebPrflResp :init))
    ((:aeb_valid __aeb_valid) nil)
    ((:fcw_status __fcw_status) (instance endpoint_msgs::FcwStatus :init))
    ((:fcw_valid __fcw_valid) nil)
    ((:vse_state __vse_state) (instance endpoint_msgs::VseSysState :init))
    ((:vse_valid __vse_valid) nil)
    ((:swc_status __swc_status) (instance endpoint_msgs::SwcStatus :init))
    ((:swc_valid __swc_valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _aeb_system_status __aeb_system_status)
   (setq _aeb_system_fault_status __aeb_system_fault_status)
   (setq _awb_status __awb_status)
   (setq _dcl_status __dcl_status)
   (setq _hba_status __hba_status)
   (setq _prfl_status __prfl_status)
   (setq _aeb_valid __aeb_valid)
   (setq _fcw_status __fcw_status)
   (setq _fcw_valid __fcw_valid)
   (setq _vse_state __vse_state)
   (setq _vse_valid __vse_valid)
   (setq _swc_status __swc_status)
   (setq _swc_valid __swc_valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:aeb_system_status
   (&rest __aeb_system_status)
   (if (keywordp (car __aeb_system_status))
       (send* _aeb_system_status __aeb_system_status)
     (progn
       (if __aeb_system_status (setq _aeb_system_status (car __aeb_system_status)))
       _aeb_system_status)))
  (:aeb_system_fault_status
   (&rest __aeb_system_fault_status)
   (if (keywordp (car __aeb_system_fault_status))
       (send* _aeb_system_fault_status __aeb_system_fault_status)
     (progn
       (if __aeb_system_fault_status (setq _aeb_system_fault_status (car __aeb_system_fault_status)))
       _aeb_system_fault_status)))
  (:awb_status
   (&rest __awb_status)
   (if (keywordp (car __awb_status))
       (send* _awb_status __awb_status)
     (progn
       (if __awb_status (setq _awb_status (car __awb_status)))
       _awb_status)))
  (:dcl_status
   (&rest __dcl_status)
   (if (keywordp (car __dcl_status))
       (send* _dcl_status __dcl_status)
     (progn
       (if __dcl_status (setq _dcl_status (car __dcl_status)))
       _dcl_status)))
  (:hba_status
   (&rest __hba_status)
   (if (keywordp (car __hba_status))
       (send* _hba_status __hba_status)
     (progn
       (if __hba_status (setq _hba_status (car __hba_status)))
       _hba_status)))
  (:prfl_status
   (&rest __prfl_status)
   (if (keywordp (car __prfl_status))
       (send* _prfl_status __prfl_status)
     (progn
       (if __prfl_status (setq _prfl_status (car __prfl_status)))
       _prfl_status)))
  (:aeb_valid
   (&optional (__aeb_valid :null))
   (if (not (eq __aeb_valid :null)) (setq _aeb_valid __aeb_valid)) _aeb_valid)
  (:fcw_status
   (&rest __fcw_status)
   (if (keywordp (car __fcw_status))
       (send* _fcw_status __fcw_status)
     (progn
       (if __fcw_status (setq _fcw_status (car __fcw_status)))
       _fcw_status)))
  (:fcw_valid
   (&optional (__fcw_valid :null))
   (if (not (eq __fcw_valid :null)) (setq _fcw_valid __fcw_valid)) _fcw_valid)
  (:vse_state
   (&rest __vse_state)
   (if (keywordp (car __vse_state))
       (send* _vse_state __vse_state)
     (progn
       (if __vse_state (setq _vse_state (car __vse_state)))
       _vse_state)))
  (:vse_valid
   (&optional (__vse_valid :null))
   (if (not (eq __vse_valid :null)) (setq _vse_valid __vse_valid)) _vse_valid)
  (:swc_status
   (&rest __swc_status)
   (if (keywordp (car __swc_status))
       (send* _swc_status __swc_status)
     (progn
       (if __swc_status (setq _swc_status (car __swc_status)))
       _swc_status)))
  (:swc_valid
   (&optional (__swc_valid :null))
   (if (not (eq __swc_valid :null)) (setq _swc_valid __swc_valid)) _swc_valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/AebSysStatus _aeb_system_status
    (send _aeb_system_status :serialization-length)
    ;; endpoint_msgs/AebSysFaultStatus _aeb_system_fault_status
    (send _aeb_system_fault_status :serialization-length)
    ;; endpoint_msgs/AebBrkJerkResp _awb_status
    (send _awb_status :serialization-length)
    ;; endpoint_msgs/AebDclResp _dcl_status
    (send _dcl_status :serialization-length)
    ;; endpoint_msgs/HbaStatus _hba_status
    (send _hba_status :serialization-length)
    ;; endpoint_msgs/AebPrflResp _prfl_status
    (send _prfl_status :serialization-length)
    ;; bool _aeb_valid
    1
    ;; endpoint_msgs/FcwStatus _fcw_status
    (send _fcw_status :serialization-length)
    ;; bool _fcw_valid
    1
    ;; endpoint_msgs/VseSysState _vse_state
    (send _vse_state :serialization-length)
    ;; bool _vse_valid
    1
    ;; endpoint_msgs/SwcStatus _swc_status
    (send _swc_status :serialization-length)
    ;; bool _swc_valid
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
     ;; endpoint_msgs/AebSysStatus _aeb_system_status
       (send _aeb_system_status :serialize s)
     ;; endpoint_msgs/AebSysFaultStatus _aeb_system_fault_status
       (send _aeb_system_fault_status :serialize s)
     ;; endpoint_msgs/AebBrkJerkResp _awb_status
       (send _awb_status :serialize s)
     ;; endpoint_msgs/AebDclResp _dcl_status
       (send _dcl_status :serialize s)
     ;; endpoint_msgs/HbaStatus _hba_status
       (send _hba_status :serialize s)
     ;; endpoint_msgs/AebPrflResp _prfl_status
       (send _prfl_status :serialize s)
     ;; bool _aeb_valid
       (if _aeb_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/FcwStatus _fcw_status
       (send _fcw_status :serialize s)
     ;; bool _fcw_valid
       (if _fcw_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/VseSysState _vse_state
       (send _vse_state :serialize s)
     ;; bool _vse_valid
       (if _vse_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/SwcStatus _swc_status
       (send _swc_status :serialize s)
     ;; bool _swc_valid
       (if _swc_valid (write-byte -1 s) (write-byte 0 s))
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
   ;; endpoint_msgs/AebSysStatus _aeb_system_status
     (send _aeb_system_status :deserialize buf ptr-) (incf ptr- (send _aeb_system_status :serialization-length))
   ;; endpoint_msgs/AebSysFaultStatus _aeb_system_fault_status
     (send _aeb_system_fault_status :deserialize buf ptr-) (incf ptr- (send _aeb_system_fault_status :serialization-length))
   ;; endpoint_msgs/AebBrkJerkResp _awb_status
     (send _awb_status :deserialize buf ptr-) (incf ptr- (send _awb_status :serialization-length))
   ;; endpoint_msgs/AebDclResp _dcl_status
     (send _dcl_status :deserialize buf ptr-) (incf ptr- (send _dcl_status :serialization-length))
   ;; endpoint_msgs/HbaStatus _hba_status
     (send _hba_status :deserialize buf ptr-) (incf ptr- (send _hba_status :serialization-length))
   ;; endpoint_msgs/AebPrflResp _prfl_status
     (send _prfl_status :deserialize buf ptr-) (incf ptr- (send _prfl_status :serialization-length))
   ;; bool _aeb_valid
     (setq _aeb_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/FcwStatus _fcw_status
     (send _fcw_status :deserialize buf ptr-) (incf ptr- (send _fcw_status :serialization-length))
   ;; bool _fcw_valid
     (setq _fcw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/VseSysState _vse_state
     (send _vse_state :deserialize buf ptr-) (incf ptr- (send _vse_state :serialization-length))
   ;; bool _vse_valid
     (setq _vse_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/SwcStatus _swc_status
     (send _swc_status :deserialize buf ptr-) (incf ptr- (send _swc_status :serialization-length))
   ;; bool _swc_valid
     (setq _swc_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::AebStatusReportData :md5sum-) "1e42c12d20e48f5461d66160ba2f1653")
(setf (get endpoint_msgs::AebStatusReportData :datatype-) "endpoint_msgs/AebStatusReportData")
(setf (get endpoint_msgs::AebStatusReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/AebSysStatus aeb_system_status
endpoint_msgs/AebSysFaultStatus aeb_system_fault_status
endpoint_msgs/AebBrkJerkResp awb_status
endpoint_msgs/AebDclResp dcl_status
endpoint_msgs/HbaStatus hba_status
endpoint_msgs/AebPrflResp prfl_status
bool aeb_valid
endpoint_msgs/FcwStatus fcw_status
bool fcw_valid
endpoint_msgs/VseSysState vse_state
bool vse_valid
endpoint_msgs/SwcStatus swc_status
bool swc_valid

================================================================================
MSG: endpoint_msgs/AebSysStatus
uint8 OFF = 0
uint8 STANDBY = 1
uint8 DISABLE = 2
uint8 OVERRIDE = 3
uint8 ACTIVED = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/AebSysFaultStatus
uint8 AEB_SYS_FALULT_NO_ERROR = 0
uint8 AEB_SYS_FALULT_PERFORMANCE_DEGRADATION = 1
uint8 AEB_SYS_FALULT_SYSTEM_TEMPORARY_UNCAILABLE = 2
uint8 AEB_SYS_FALULT_SERVICE_REQUIRED = 3
uint8 AEB_SYS_FALULT_RESERVED1 = 4
uint8 AEB_SYS_FALULT_RESERVED2 = 5
uint8 AEB_SYS_FALULT_RESERVED3 = 6
uint8 AEB_SYS_FALULT_RESERVED4 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/AebBrkJerkResp
uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
uint8 AEB_BRAKE_JERK_REQUEST_HONORED = 1
uint8 AEB_BRAKE_JERK_LOST_ARBITRATION = 2
uint8 AEB_BRAKE_JERK_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_BRAKE_JERK_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_BRAKE_JERK_RESERVED = 5
uint8 value

================================================================================
MSG: endpoint_msgs/AebDclResp
uint8 AEB_DCL_NO_REQUEST = 0
uint8 AEB_DCL_REQUEST_HONORED = 1
uint8 AEB_DCL_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_DCL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_DCL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_DCL_REQUEST_RESERVED1 = 5
uint8 AEB_DCL_REQUEST_RESERVED2 = 6
uint8 AEB_DCL_REQUEST_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/HbaStatus
uint8 AEB_HBA_NO_REQUEST = 0
uint8 AEB_HBA_REQUEST_HONORED = 1
uint8 AEB_HBA_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_HBA_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_HBA_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_HBA_REQUEST_RESERVED1 = 5
uint8 AEB_HBA_REQUEST_RESERVED2 = 6
uint8 AEB_HBA_REQUEST_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/AebPrflResp
uint8 AEB_PRFL_NO_REQUEST = 0
uint8 AEB_PRFL_REQUEST_HONORED = 1
uint8 AEB_PRFL_REQUEST_LOST_ARBITRATION = 2
uint8 AEB_PRFL_REQUEST_CONTROL_NOT_ALLOWED_ERROR = 3
uint8 AEB_PRFL_REQUEST_PRE_CONDITION_NOT_SATISFIED = 4
uint8 AEB_PRFL_REQUEST_RESERVED1 = 5
uint8 AEB_PRFL_REQUEST_RESERVED2 = 6
uint8 AEB_PRFL_REQUEST_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/FcwStatus
uint8 OFF = 0
uint8 STANDBY = 1
uint8 DISABLE = 2
uint8 OVERRIDE = 3
uint8 ACTIVED = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/VseSysState
uint8 INAVTIVE = 0
uint8 ACTIVE = 1
uint8 FAULT = 2
uint8 WARMING_UP = 3
uint8 NOT_READY = 4
uint8 value

================================================================================
MSG: endpoint_msgs/SwcStatus
uint8 SWC_STATUS_NOT_ACTIVE = 0
uint8 SWC_STATUS_NORMAL = 1
uint8 SWC_STATUS_ERROR = 2
uint8 value

")



(provide :endpoint_msgs/AebStatusReportData "1e42c12d20e48f5461d66160ba2f1653")


