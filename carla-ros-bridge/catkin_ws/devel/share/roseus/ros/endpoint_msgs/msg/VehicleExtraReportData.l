;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleExtraReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleExtraReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLEEXTRAREPORTDATA")
  (make-package "ENDPOINT_MSGS::VEHICLEEXTRAREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude VehicleExtraReportData.msg.html


(defclass endpoint_msgs::VehicleExtraReportData
  :super ros::object
  :slots (_timestamp_us _cta_lf _cta_rf _cta_lr _cta_rr _cta_valid _dlp_state _dlp_valid _hdc_state _hdc_valid _ldp_status_left_lane _ldp_status_right_lane _ldp_valid _ldw_status _ldw_valid _srs_collosion _extra ))

(defmethod endpoint_msgs::VehicleExtraReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:cta_lf __cta_lf) (instance endpoint_msgs::CtaState :init))
    ((:cta_rf __cta_rf) (instance endpoint_msgs::CtaState :init))
    ((:cta_lr __cta_lr) (instance endpoint_msgs::CtaState :init))
    ((:cta_rr __cta_rr) (instance endpoint_msgs::CtaState :init))
    ((:cta_valid __cta_valid) nil)
    ((:dlp_state __dlp_state) (instance endpoint_msgs::DlpStatus :init))
    ((:dlp_valid __dlp_valid) nil)
    ((:hdc_state __hdc_state) (instance endpoint_msgs::HdcState :init))
    ((:hdc_valid __hdc_valid) nil)
    ((:ldp_status_left_lane __ldp_status_left_lane) (instance endpoint_msgs::LdpStatus :init))
    ((:ldp_status_right_lane __ldp_status_right_lane) (instance endpoint_msgs::LdpStatus :init))
    ((:ldp_valid __ldp_valid) nil)
    ((:ldw_status __ldw_status) (instance endpoint_msgs::LdwStatus :init))
    ((:ldw_valid __ldw_valid) nil)
    ((:srs_collosion __srs_collosion) (instance endpoint_msgs::SrsCollosion :init))
    ((:extra __extra) (instance endpoint_msgs::ExtraReport :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _cta_lf __cta_lf)
   (setq _cta_rf __cta_rf)
   (setq _cta_lr __cta_lr)
   (setq _cta_rr __cta_rr)
   (setq _cta_valid __cta_valid)
   (setq _dlp_state __dlp_state)
   (setq _dlp_valid __dlp_valid)
   (setq _hdc_state __hdc_state)
   (setq _hdc_valid __hdc_valid)
   (setq _ldp_status_left_lane __ldp_status_left_lane)
   (setq _ldp_status_right_lane __ldp_status_right_lane)
   (setq _ldp_valid __ldp_valid)
   (setq _ldw_status __ldw_status)
   (setq _ldw_valid __ldw_valid)
   (setq _srs_collosion __srs_collosion)
   (setq _extra __extra)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:cta_lf
   (&rest __cta_lf)
   (if (keywordp (car __cta_lf))
       (send* _cta_lf __cta_lf)
     (progn
       (if __cta_lf (setq _cta_lf (car __cta_lf)))
       _cta_lf)))
  (:cta_rf
   (&rest __cta_rf)
   (if (keywordp (car __cta_rf))
       (send* _cta_rf __cta_rf)
     (progn
       (if __cta_rf (setq _cta_rf (car __cta_rf)))
       _cta_rf)))
  (:cta_lr
   (&rest __cta_lr)
   (if (keywordp (car __cta_lr))
       (send* _cta_lr __cta_lr)
     (progn
       (if __cta_lr (setq _cta_lr (car __cta_lr)))
       _cta_lr)))
  (:cta_rr
   (&rest __cta_rr)
   (if (keywordp (car __cta_rr))
       (send* _cta_rr __cta_rr)
     (progn
       (if __cta_rr (setq _cta_rr (car __cta_rr)))
       _cta_rr)))
  (:cta_valid
   (&optional (__cta_valid :null))
   (if (not (eq __cta_valid :null)) (setq _cta_valid __cta_valid)) _cta_valid)
  (:dlp_state
   (&rest __dlp_state)
   (if (keywordp (car __dlp_state))
       (send* _dlp_state __dlp_state)
     (progn
       (if __dlp_state (setq _dlp_state (car __dlp_state)))
       _dlp_state)))
  (:dlp_valid
   (&optional (__dlp_valid :null))
   (if (not (eq __dlp_valid :null)) (setq _dlp_valid __dlp_valid)) _dlp_valid)
  (:hdc_state
   (&rest __hdc_state)
   (if (keywordp (car __hdc_state))
       (send* _hdc_state __hdc_state)
     (progn
       (if __hdc_state (setq _hdc_state (car __hdc_state)))
       _hdc_state)))
  (:hdc_valid
   (&optional (__hdc_valid :null))
   (if (not (eq __hdc_valid :null)) (setq _hdc_valid __hdc_valid)) _hdc_valid)
  (:ldp_status_left_lane
   (&rest __ldp_status_left_lane)
   (if (keywordp (car __ldp_status_left_lane))
       (send* _ldp_status_left_lane __ldp_status_left_lane)
     (progn
       (if __ldp_status_left_lane (setq _ldp_status_left_lane (car __ldp_status_left_lane)))
       _ldp_status_left_lane)))
  (:ldp_status_right_lane
   (&rest __ldp_status_right_lane)
   (if (keywordp (car __ldp_status_right_lane))
       (send* _ldp_status_right_lane __ldp_status_right_lane)
     (progn
       (if __ldp_status_right_lane (setq _ldp_status_right_lane (car __ldp_status_right_lane)))
       _ldp_status_right_lane)))
  (:ldp_valid
   (&optional (__ldp_valid :null))
   (if (not (eq __ldp_valid :null)) (setq _ldp_valid __ldp_valid)) _ldp_valid)
  (:ldw_status
   (&rest __ldw_status)
   (if (keywordp (car __ldw_status))
       (send* _ldw_status __ldw_status)
     (progn
       (if __ldw_status (setq _ldw_status (car __ldw_status)))
       _ldw_status)))
  (:ldw_valid
   (&optional (__ldw_valid :null))
   (if (not (eq __ldw_valid :null)) (setq _ldw_valid __ldw_valid)) _ldw_valid)
  (:srs_collosion
   (&rest __srs_collosion)
   (if (keywordp (car __srs_collosion))
       (send* _srs_collosion __srs_collosion)
     (progn
       (if __srs_collosion (setq _srs_collosion (car __srs_collosion)))
       _srs_collosion)))
  (:extra
   (&rest __extra)
   (if (keywordp (car __extra))
       (send* _extra __extra)
     (progn
       (if __extra (setq _extra (car __extra)))
       _extra)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/CtaState _cta_lf
    (send _cta_lf :serialization-length)
    ;; endpoint_msgs/CtaState _cta_rf
    (send _cta_rf :serialization-length)
    ;; endpoint_msgs/CtaState _cta_lr
    (send _cta_lr :serialization-length)
    ;; endpoint_msgs/CtaState _cta_rr
    (send _cta_rr :serialization-length)
    ;; bool _cta_valid
    1
    ;; endpoint_msgs/DlpStatus _dlp_state
    (send _dlp_state :serialization-length)
    ;; bool _dlp_valid
    1
    ;; endpoint_msgs/HdcState _hdc_state
    (send _hdc_state :serialization-length)
    ;; bool _hdc_valid
    1
    ;; endpoint_msgs/LdpStatus _ldp_status_left_lane
    (send _ldp_status_left_lane :serialization-length)
    ;; endpoint_msgs/LdpStatus _ldp_status_right_lane
    (send _ldp_status_right_lane :serialization-length)
    ;; bool _ldp_valid
    1
    ;; endpoint_msgs/LdwStatus _ldw_status
    (send _ldw_status :serialization-length)
    ;; bool _ldw_valid
    1
    ;; endpoint_msgs/SrsCollosion _srs_collosion
    (send _srs_collosion :serialization-length)
    ;; endpoint_msgs/ExtraReport _extra
    (send _extra :serialization-length)
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
     ;; endpoint_msgs/CtaState _cta_lf
       (send _cta_lf :serialize s)
     ;; endpoint_msgs/CtaState _cta_rf
       (send _cta_rf :serialize s)
     ;; endpoint_msgs/CtaState _cta_lr
       (send _cta_lr :serialize s)
     ;; endpoint_msgs/CtaState _cta_rr
       (send _cta_rr :serialize s)
     ;; bool _cta_valid
       (if _cta_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/DlpStatus _dlp_state
       (send _dlp_state :serialize s)
     ;; bool _dlp_valid
       (if _dlp_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/HdcState _hdc_state
       (send _hdc_state :serialize s)
     ;; bool _hdc_valid
       (if _hdc_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/LdpStatus _ldp_status_left_lane
       (send _ldp_status_left_lane :serialize s)
     ;; endpoint_msgs/LdpStatus _ldp_status_right_lane
       (send _ldp_status_right_lane :serialize s)
     ;; bool _ldp_valid
       (if _ldp_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/LdwStatus _ldw_status
       (send _ldw_status :serialize s)
     ;; bool _ldw_valid
       (if _ldw_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/SrsCollosion _srs_collosion
       (send _srs_collosion :serialize s)
     ;; endpoint_msgs/ExtraReport _extra
       (send _extra :serialize s)
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
   ;; endpoint_msgs/CtaState _cta_lf
     (send _cta_lf :deserialize buf ptr-) (incf ptr- (send _cta_lf :serialization-length))
   ;; endpoint_msgs/CtaState _cta_rf
     (send _cta_rf :deserialize buf ptr-) (incf ptr- (send _cta_rf :serialization-length))
   ;; endpoint_msgs/CtaState _cta_lr
     (send _cta_lr :deserialize buf ptr-) (incf ptr- (send _cta_lr :serialization-length))
   ;; endpoint_msgs/CtaState _cta_rr
     (send _cta_rr :deserialize buf ptr-) (incf ptr- (send _cta_rr :serialization-length))
   ;; bool _cta_valid
     (setq _cta_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/DlpStatus _dlp_state
     (send _dlp_state :deserialize buf ptr-) (incf ptr- (send _dlp_state :serialization-length))
   ;; bool _dlp_valid
     (setq _dlp_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/HdcState _hdc_state
     (send _hdc_state :deserialize buf ptr-) (incf ptr- (send _hdc_state :serialization-length))
   ;; bool _hdc_valid
     (setq _hdc_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/LdpStatus _ldp_status_left_lane
     (send _ldp_status_left_lane :deserialize buf ptr-) (incf ptr- (send _ldp_status_left_lane :serialization-length))
   ;; endpoint_msgs/LdpStatus _ldp_status_right_lane
     (send _ldp_status_right_lane :deserialize buf ptr-) (incf ptr- (send _ldp_status_right_lane :serialization-length))
   ;; bool _ldp_valid
     (setq _ldp_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/LdwStatus _ldw_status
     (send _ldw_status :deserialize buf ptr-) (incf ptr- (send _ldw_status :serialization-length))
   ;; bool _ldw_valid
     (setq _ldw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/SrsCollosion _srs_collosion
     (send _srs_collosion :deserialize buf ptr-) (incf ptr- (send _srs_collosion :serialization-length))
   ;; endpoint_msgs/ExtraReport _extra
     (send _extra :deserialize buf ptr-) (incf ptr- (send _extra :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleExtraReportData :md5sum-) "240b37eb7464abfe670438de392535fd")
(setf (get endpoint_msgs::VehicleExtraReportData :datatype-) "endpoint_msgs/VehicleExtraReportData")
(setf (get endpoint_msgs::VehicleExtraReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/CtaState cta_lf
endpoint_msgs/CtaState cta_rf
endpoint_msgs/CtaState cta_lr
endpoint_msgs/CtaState cta_rr
bool cta_valid
endpoint_msgs/DlpStatus dlp_state
bool dlp_valid
endpoint_msgs/HdcState hdc_state
bool hdc_valid
endpoint_msgs/LdpStatus ldp_status_left_lane
endpoint_msgs/LdpStatus ldp_status_right_lane
bool ldp_valid
endpoint_msgs/LdwStatus ldw_status
bool ldw_valid
endpoint_msgs/SrsCollosion srs_collosion
endpoint_msgs/ExtraReport extra

================================================================================
MSG: endpoint_msgs/CtaState
uint8 NO_WARNING = 0
uint8 WARNING_LEVE_1 = 1
uint8 WARNING_LEVE_2 = 2
uint8 value

================================================================================
MSG: endpoint_msgs/DlpStatus
uint8 NO_WARNING = 0
uint8 WARNING_LEVEL1 = 1
uint8 WARNING_LEVEL2 = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/HdcState
uint8 NORMAL = 0
uint8 ENABLED = 1
uint8 ACTIVED = 2
uint8 FAILED = 3
uint8 TEMPORARILY_INHIBITED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/LdpStatus
uint8 LDP_STATUS_OFF = 0
uint8 LDP_STATUS_STANDBY = 1
uint8 LDP_STATUS_ACTIVE = 2
uint8 LDP_STATUS_RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/LdwStatus
uint8 LDW_STATUS_OFF = 0
uint8 LDW_STATUS_STANDBY = 1
uint8 LDW_STATUS_DISABLED = 2
uint8 LDW_STATUS_OVERIDE = 3
uint8 LDW_STATUS_ACTIVE = 4
uint8 LDW_STATUS_RESERVED1 = 5
uint8 LDW_STATUS_RESERVED2 = 6
uint8 LDW_STATUS_RESERVED3 = 7
uint8 value

================================================================================
MSG: endpoint_msgs/SrsCollosion
uint8 NONE = 0
uint8 NOT_COLLOSION = 1
uint8 COLLOSION = 2
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/ExtraReport
uint8 available
string json

")



(provide :endpoint_msgs/VehicleExtraReportData "240b37eb7464abfe670438de392535fd")


