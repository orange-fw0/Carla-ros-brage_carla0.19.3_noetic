;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleAlarmReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleAlarmReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLEALARMREPORTDATA")
  (make-package "ENDPOINT_MSGS::VEHICLEALARMREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude VehicleAlarmReportData.msg.html


(defclass endpoint_msgs::VehicleAlarmReportData
  :super ros::object
  :slots (_timestamp_us _seat_belt_alarm _seat_belt_tightening _steering_wheel_alarm _buzzer_alarm _steering_handoff _feet_off _pkg_fastswitch_enable _tire_alarm _vehicle_crash_status _valid ))

(defmethod endpoint_msgs::VehicleAlarmReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:seat_belt_alarm __seat_belt_alarm) nil)
    ((:seat_belt_tightening __seat_belt_tightening) nil)
    ((:steering_wheel_alarm __steering_wheel_alarm) nil)
    ((:buzzer_alarm __buzzer_alarm) nil)
    ((:steering_handoff __steering_handoff) (instance endpoint_msgs::HandOffStatus :init))
    ((:feet_off __feet_off) (instance endpoint_msgs::FeetOffStatus :init))
    ((:pkg_fastswitch_enable __pkg_fastswitch_enable) nil)
    ((:tire_alarm __tire_alarm) nil)
    ((:vehicle_crash_status __vehicle_crash_status) (instance endpoint_msgs::VehicleCrashStatus :init))
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _seat_belt_alarm __seat_belt_alarm)
   (setq _seat_belt_tightening __seat_belt_tightening)
   (setq _steering_wheel_alarm __steering_wheel_alarm)
   (setq _buzzer_alarm __buzzer_alarm)
   (setq _steering_handoff __steering_handoff)
   (setq _feet_off __feet_off)
   (setq _pkg_fastswitch_enable __pkg_fastswitch_enable)
   (setq _tire_alarm __tire_alarm)
   (setq _vehicle_crash_status __vehicle_crash_status)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:seat_belt_alarm
   (&optional (__seat_belt_alarm :null))
   (if (not (eq __seat_belt_alarm :null)) (setq _seat_belt_alarm __seat_belt_alarm)) _seat_belt_alarm)
  (:seat_belt_tightening
   (&optional (__seat_belt_tightening :null))
   (if (not (eq __seat_belt_tightening :null)) (setq _seat_belt_tightening __seat_belt_tightening)) _seat_belt_tightening)
  (:steering_wheel_alarm
   (&optional (__steering_wheel_alarm :null))
   (if (not (eq __steering_wheel_alarm :null)) (setq _steering_wheel_alarm __steering_wheel_alarm)) _steering_wheel_alarm)
  (:buzzer_alarm
   (&optional (__buzzer_alarm :null))
   (if (not (eq __buzzer_alarm :null)) (setq _buzzer_alarm __buzzer_alarm)) _buzzer_alarm)
  (:steering_handoff
   (&rest __steering_handoff)
   (if (keywordp (car __steering_handoff))
       (send* _steering_handoff __steering_handoff)
     (progn
       (if __steering_handoff (setq _steering_handoff (car __steering_handoff)))
       _steering_handoff)))
  (:feet_off
   (&rest __feet_off)
   (if (keywordp (car __feet_off))
       (send* _feet_off __feet_off)
     (progn
       (if __feet_off (setq _feet_off (car __feet_off)))
       _feet_off)))
  (:pkg_fastswitch_enable
   (&optional (__pkg_fastswitch_enable :null))
   (if (not (eq __pkg_fastswitch_enable :null)) (setq _pkg_fastswitch_enable __pkg_fastswitch_enable)) _pkg_fastswitch_enable)
  (:tire_alarm
   (&optional (__tire_alarm :null))
   (if (not (eq __tire_alarm :null)) (setq _tire_alarm __tire_alarm)) _tire_alarm)
  (:vehicle_crash_status
   (&rest __vehicle_crash_status)
   (if (keywordp (car __vehicle_crash_status))
       (send* _vehicle_crash_status __vehicle_crash_status)
     (progn
       (if __vehicle_crash_status (setq _vehicle_crash_status (car __vehicle_crash_status)))
       _vehicle_crash_status)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _seat_belt_alarm
    1
    ;; bool _seat_belt_tightening
    1
    ;; bool _steering_wheel_alarm
    1
    ;; bool _buzzer_alarm
    1
    ;; endpoint_msgs/HandOffStatus _steering_handoff
    (send _steering_handoff :serialization-length)
    ;; endpoint_msgs/FeetOffStatus _feet_off
    (send _feet_off :serialization-length)
    ;; bool _pkg_fastswitch_enable
    1
    ;; bool _tire_alarm
    1
    ;; endpoint_msgs/VehicleCrashStatus _vehicle_crash_status
    (send _vehicle_crash_status :serialization-length)
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
     ;; bool _seat_belt_alarm
       (if _seat_belt_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _seat_belt_tightening
       (if _seat_belt_tightening (write-byte -1 s) (write-byte 0 s))
     ;; bool _steering_wheel_alarm
       (if _steering_wheel_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _buzzer_alarm
       (if _buzzer_alarm (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/HandOffStatus _steering_handoff
       (send _steering_handoff :serialize s)
     ;; endpoint_msgs/FeetOffStatus _feet_off
       (send _feet_off :serialize s)
     ;; bool _pkg_fastswitch_enable
       (if _pkg_fastswitch_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _tire_alarm
       (if _tire_alarm (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/VehicleCrashStatus _vehicle_crash_status
       (send _vehicle_crash_status :serialize s)
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
   ;; bool _seat_belt_alarm
     (setq _seat_belt_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _seat_belt_tightening
     (setq _seat_belt_tightening (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _steering_wheel_alarm
     (setq _steering_wheel_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _buzzer_alarm
     (setq _buzzer_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/HandOffStatus _steering_handoff
     (send _steering_handoff :deserialize buf ptr-) (incf ptr- (send _steering_handoff :serialization-length))
   ;; endpoint_msgs/FeetOffStatus _feet_off
     (send _feet_off :deserialize buf ptr-) (incf ptr- (send _feet_off :serialization-length))
   ;; bool _pkg_fastswitch_enable
     (setq _pkg_fastswitch_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tire_alarm
     (setq _tire_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/VehicleCrashStatus _vehicle_crash_status
     (send _vehicle_crash_status :deserialize buf ptr-) (incf ptr- (send _vehicle_crash_status :serialization-length))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleAlarmReportData :md5sum-) "77614ad3f82aa7f64ccfd6a72883ce41")
(setf (get endpoint_msgs::VehicleAlarmReportData :datatype-) "endpoint_msgs/VehicleAlarmReportData")
(setf (get endpoint_msgs::VehicleAlarmReportData :definition-)
      "uint64 timestamp_us
bool seat_belt_alarm
bool seat_belt_tightening
bool steering_wheel_alarm
bool buzzer_alarm
endpoint_msgs/HandOffStatus steering_handoff
endpoint_msgs/FeetOffStatus feet_off
bool pkg_fastswitch_enable
bool tire_alarm
endpoint_msgs/VehicleCrashStatus vehicle_crash_status
bool valid

================================================================================
MSG: endpoint_msgs/HandOffStatus
uint8 HAND_OFF_STATUS_NONE = 0
uint8 HAND_OFF_STATUS_TRUE = 1
uint8 HAND_OFF_STATUS_FALSE = 2
uint8 HAND_OFF_STATUS_INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/FeetOffStatus
uint8 FEET_OFF_STATUS_NONE = 0
uint8 FEET_OFF_STATUS_TRUE = 1
uint8 FEET_OFF_STATUS_FALSE = 2
uint8 FEET_OFF_STATUS_INVALUD = 255
uint8 value

================================================================================
MSG: endpoint_msgs/VehicleCrashStatus
uint8 NONE = 0
uint8 NO_CRASH = 1
uint8 CRASH = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/VehicleAlarmReportData "77614ad3f82aa7f64ccfd6a72883ce41")


