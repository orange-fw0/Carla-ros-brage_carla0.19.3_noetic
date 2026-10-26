;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeInfoReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeInfoReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKEINFOREPORTDATA")
  (make-package "ENDPOINT_MSGS::BRAKEINFOREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude BrakeInfoReportData.msg.html


(defclass endpoint_msgs::BrakeInfoReportData
  :super ros::object
  :slots (_timestamp_us _accleration_on_wheel _lateral_accleration_on_wheel _stationary _abs_active _abs_fault _tcs_active _tcs_fault _msr_active _msr_fault _esp_active _esp_fault _tsr_active _tsr_fault _pressure _brake_torque_delivery _brake_torque_delivery_valid _brake_regen_torque_delivery _brake_regen_torque_delivery_valid _brake_frct_torque_delivery _brake_frct_torque_delivery_valid _master_pressure_delivery _master_pressure_delivery_valid _pedal_brake_torque _pedal_brake_torque_valid _pkg_fastswitch_enable _vehicle_block _esp_status _vdc_active _vdc_fault _reserved ))

(defmethod endpoint_msgs::BrakeInfoReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:accleration_on_wheel __accleration_on_wheel) 0.0)
    ((:lateral_accleration_on_wheel __lateral_accleration_on_wheel) 0.0)
    ((:stationary __stationary) nil)
    ((:abs_active __abs_active) nil)
    ((:abs_fault __abs_fault) nil)
    ((:tcs_active __tcs_active) nil)
    ((:tcs_fault __tcs_fault) nil)
    ((:msr_active __msr_active) nil)
    ((:msr_fault __msr_fault) nil)
    ((:esp_active __esp_active) nil)
    ((:esp_fault __esp_fault) nil)
    ((:tsr_active __tsr_active) nil)
    ((:tsr_fault __tsr_fault) nil)
    ((:pressure __pressure) nil)
    ((:brake_torque_delivery __brake_torque_delivery) 0.0)
    ((:brake_torque_delivery_valid __brake_torque_delivery_valid) nil)
    ((:brake_regen_torque_delivery __brake_regen_torque_delivery) 0.0)
    ((:brake_regen_torque_delivery_valid __brake_regen_torque_delivery_valid) nil)
    ((:brake_frct_torque_delivery __brake_frct_torque_delivery) 0.0)
    ((:brake_frct_torque_delivery_valid __brake_frct_torque_delivery_valid) nil)
    ((:master_pressure_delivery __master_pressure_delivery) 0.0)
    ((:master_pressure_delivery_valid __master_pressure_delivery_valid) nil)
    ((:pedal_brake_torque __pedal_brake_torque) 0.0)
    ((:pedal_brake_torque_valid __pedal_brake_torque_valid) nil)
    ((:pkg_fastswitch_enable __pkg_fastswitch_enable) nil)
    ((:vehicle_block __vehicle_block) nil)
    ((:esp_status __esp_status) (instance endpoint_msgs::VehESPSwitch :init))
    ((:vdc_active __vdc_active) nil)
    ((:vdc_fault __vdc_fault) nil)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _accleration_on_wheel (float __accleration_on_wheel))
   (setq _lateral_accleration_on_wheel (float __lateral_accleration_on_wheel))
   (setq _stationary __stationary)
   (setq _abs_active __abs_active)
   (setq _abs_fault __abs_fault)
   (setq _tcs_active __tcs_active)
   (setq _tcs_fault __tcs_fault)
   (setq _msr_active __msr_active)
   (setq _msr_fault __msr_fault)
   (setq _esp_active __esp_active)
   (setq _esp_fault __esp_fault)
   (setq _tsr_active __tsr_active)
   (setq _tsr_fault __tsr_fault)
   (setq _pressure __pressure)
   (setq _brake_torque_delivery (float __brake_torque_delivery))
   (setq _brake_torque_delivery_valid __brake_torque_delivery_valid)
   (setq _brake_regen_torque_delivery (float __brake_regen_torque_delivery))
   (setq _brake_regen_torque_delivery_valid __brake_regen_torque_delivery_valid)
   (setq _brake_frct_torque_delivery (float __brake_frct_torque_delivery))
   (setq _brake_frct_torque_delivery_valid __brake_frct_torque_delivery_valid)
   (setq _master_pressure_delivery (float __master_pressure_delivery))
   (setq _master_pressure_delivery_valid __master_pressure_delivery_valid)
   (setq _pedal_brake_torque (float __pedal_brake_torque))
   (setq _pedal_brake_torque_valid __pedal_brake_torque_valid)
   (setq _pkg_fastswitch_enable __pkg_fastswitch_enable)
   (setq _vehicle_block __vehicle_block)
   (setq _esp_status __esp_status)
   (setq _vdc_active __vdc_active)
   (setq _vdc_fault __vdc_fault)
   (setq _reserved (round __reserved))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:accleration_on_wheel
   (&optional __accleration_on_wheel)
   (if __accleration_on_wheel (setq _accleration_on_wheel __accleration_on_wheel)) _accleration_on_wheel)
  (:lateral_accleration_on_wheel
   (&optional __lateral_accleration_on_wheel)
   (if __lateral_accleration_on_wheel (setq _lateral_accleration_on_wheel __lateral_accleration_on_wheel)) _lateral_accleration_on_wheel)
  (:stationary
   (&optional (__stationary :null))
   (if (not (eq __stationary :null)) (setq _stationary __stationary)) _stationary)
  (:abs_active
   (&optional (__abs_active :null))
   (if (not (eq __abs_active :null)) (setq _abs_active __abs_active)) _abs_active)
  (:abs_fault
   (&optional (__abs_fault :null))
   (if (not (eq __abs_fault :null)) (setq _abs_fault __abs_fault)) _abs_fault)
  (:tcs_active
   (&optional (__tcs_active :null))
   (if (not (eq __tcs_active :null)) (setq _tcs_active __tcs_active)) _tcs_active)
  (:tcs_fault
   (&optional (__tcs_fault :null))
   (if (not (eq __tcs_fault :null)) (setq _tcs_fault __tcs_fault)) _tcs_fault)
  (:msr_active
   (&optional (__msr_active :null))
   (if (not (eq __msr_active :null)) (setq _msr_active __msr_active)) _msr_active)
  (:msr_fault
   (&optional (__msr_fault :null))
   (if (not (eq __msr_fault :null)) (setq _msr_fault __msr_fault)) _msr_fault)
  (:esp_active
   (&optional (__esp_active :null))
   (if (not (eq __esp_active :null)) (setq _esp_active __esp_active)) _esp_active)
  (:esp_fault
   (&optional (__esp_fault :null))
   (if (not (eq __esp_fault :null)) (setq _esp_fault __esp_fault)) _esp_fault)
  (:tsr_active
   (&optional (__tsr_active :null))
   (if (not (eq __tsr_active :null)) (setq _tsr_active __tsr_active)) _tsr_active)
  (:tsr_fault
   (&optional (__tsr_fault :null))
   (if (not (eq __tsr_fault :null)) (setq _tsr_fault __tsr_fault)) _tsr_fault)
  (:pressure
   (&optional (__pressure :null))
   (if (not (eq __pressure :null)) (setq _pressure __pressure)) _pressure)
  (:brake_torque_delivery
   (&optional __brake_torque_delivery)
   (if __brake_torque_delivery (setq _brake_torque_delivery __brake_torque_delivery)) _brake_torque_delivery)
  (:brake_torque_delivery_valid
   (&optional (__brake_torque_delivery_valid :null))
   (if (not (eq __brake_torque_delivery_valid :null)) (setq _brake_torque_delivery_valid __brake_torque_delivery_valid)) _brake_torque_delivery_valid)
  (:brake_regen_torque_delivery
   (&optional __brake_regen_torque_delivery)
   (if __brake_regen_torque_delivery (setq _brake_regen_torque_delivery __brake_regen_torque_delivery)) _brake_regen_torque_delivery)
  (:brake_regen_torque_delivery_valid
   (&optional (__brake_regen_torque_delivery_valid :null))
   (if (not (eq __brake_regen_torque_delivery_valid :null)) (setq _brake_regen_torque_delivery_valid __brake_regen_torque_delivery_valid)) _brake_regen_torque_delivery_valid)
  (:brake_frct_torque_delivery
   (&optional __brake_frct_torque_delivery)
   (if __brake_frct_torque_delivery (setq _brake_frct_torque_delivery __brake_frct_torque_delivery)) _brake_frct_torque_delivery)
  (:brake_frct_torque_delivery_valid
   (&optional (__brake_frct_torque_delivery_valid :null))
   (if (not (eq __brake_frct_torque_delivery_valid :null)) (setq _brake_frct_torque_delivery_valid __brake_frct_torque_delivery_valid)) _brake_frct_torque_delivery_valid)
  (:master_pressure_delivery
   (&optional __master_pressure_delivery)
   (if __master_pressure_delivery (setq _master_pressure_delivery __master_pressure_delivery)) _master_pressure_delivery)
  (:master_pressure_delivery_valid
   (&optional (__master_pressure_delivery_valid :null))
   (if (not (eq __master_pressure_delivery_valid :null)) (setq _master_pressure_delivery_valid __master_pressure_delivery_valid)) _master_pressure_delivery_valid)
  (:pedal_brake_torque
   (&optional __pedal_brake_torque)
   (if __pedal_brake_torque (setq _pedal_brake_torque __pedal_brake_torque)) _pedal_brake_torque)
  (:pedal_brake_torque_valid
   (&optional (__pedal_brake_torque_valid :null))
   (if (not (eq __pedal_brake_torque_valid :null)) (setq _pedal_brake_torque_valid __pedal_brake_torque_valid)) _pedal_brake_torque_valid)
  (:pkg_fastswitch_enable
   (&optional (__pkg_fastswitch_enable :null))
   (if (not (eq __pkg_fastswitch_enable :null)) (setq _pkg_fastswitch_enable __pkg_fastswitch_enable)) _pkg_fastswitch_enable)
  (:vehicle_block
   (&optional (__vehicle_block :null))
   (if (not (eq __vehicle_block :null)) (setq _vehicle_block __vehicle_block)) _vehicle_block)
  (:esp_status
   (&rest __esp_status)
   (if (keywordp (car __esp_status))
       (send* _esp_status __esp_status)
     (progn
       (if __esp_status (setq _esp_status (car __esp_status)))
       _esp_status)))
  (:vdc_active
   (&optional (__vdc_active :null))
   (if (not (eq __vdc_active :null)) (setq _vdc_active __vdc_active)) _vdc_active)
  (:vdc_fault
   (&optional (__vdc_fault :null))
   (if (not (eq __vdc_fault :null)) (setq _vdc_fault __vdc_fault)) _vdc_fault)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; float32 _accleration_on_wheel
    4
    ;; float32 _lateral_accleration_on_wheel
    4
    ;; bool _stationary
    1
    ;; bool _abs_active
    1
    ;; bool _abs_fault
    1
    ;; bool _tcs_active
    1
    ;; bool _tcs_fault
    1
    ;; bool _msr_active
    1
    ;; bool _msr_fault
    1
    ;; bool _esp_active
    1
    ;; bool _esp_fault
    1
    ;; bool _tsr_active
    1
    ;; bool _tsr_fault
    1
    ;; bool _pressure
    1
    ;; float32 _brake_torque_delivery
    4
    ;; bool _brake_torque_delivery_valid
    1
    ;; float32 _brake_regen_torque_delivery
    4
    ;; bool _brake_regen_torque_delivery_valid
    1
    ;; float32 _brake_frct_torque_delivery
    4
    ;; bool _brake_frct_torque_delivery_valid
    1
    ;; float32 _master_pressure_delivery
    4
    ;; bool _master_pressure_delivery_valid
    1
    ;; float32 _pedal_brake_torque
    4
    ;; bool _pedal_brake_torque_valid
    1
    ;; bool _pkg_fastswitch_enable
    1
    ;; bool _vehicle_block
    1
    ;; endpoint_msgs/VehESPSwitch _esp_status
    (send _esp_status :serialization-length)
    ;; bool _vdc_active
    1
    ;; bool _vdc_fault
    1
    ;; uint8 _reserved
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
     ;; float32 _accleration_on_wheel
       (sys::poke _accleration_on_wheel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _lateral_accleration_on_wheel
       (sys::poke _lateral_accleration_on_wheel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _stationary
       (if _stationary (write-byte -1 s) (write-byte 0 s))
     ;; bool _abs_active
       (if _abs_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _abs_fault
       (if _abs_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _tcs_active
       (if _tcs_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _tcs_fault
       (if _tcs_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _msr_active
       (if _msr_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _msr_fault
       (if _msr_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _esp_active
       (if _esp_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _esp_fault
       (if _esp_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _tsr_active
       (if _tsr_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _tsr_fault
       (if _tsr_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _pressure
       (if _pressure (write-byte -1 s) (write-byte 0 s))
     ;; float32 _brake_torque_delivery
       (sys::poke _brake_torque_delivery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _brake_torque_delivery_valid
       (if _brake_torque_delivery_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _brake_regen_torque_delivery
       (sys::poke _brake_regen_torque_delivery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _brake_regen_torque_delivery_valid
       (if _brake_regen_torque_delivery_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _brake_frct_torque_delivery
       (sys::poke _brake_frct_torque_delivery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _brake_frct_torque_delivery_valid
       (if _brake_frct_torque_delivery_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _master_pressure_delivery
       (sys::poke _master_pressure_delivery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _master_pressure_delivery_valid
       (if _master_pressure_delivery_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _pedal_brake_torque
       (sys::poke _pedal_brake_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _pedal_brake_torque_valid
       (if _pedal_brake_torque_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _pkg_fastswitch_enable
       (if _pkg_fastswitch_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_block
       (if _vehicle_block (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/VehESPSwitch _esp_status
       (send _esp_status :serialize s)
     ;; bool _vdc_active
       (if _vdc_active (write-byte -1 s) (write-byte 0 s))
     ;; bool _vdc_fault
       (if _vdc_fault (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _reserved
       (write-byte _reserved s)
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
   ;; float32 _accleration_on_wheel
     (setq _accleration_on_wheel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _lateral_accleration_on_wheel
     (setq _lateral_accleration_on_wheel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _stationary
     (setq _stationary (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _abs_active
     (setq _abs_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _abs_fault
     (setq _abs_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tcs_active
     (setq _tcs_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tcs_fault
     (setq _tcs_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _msr_active
     (setq _msr_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _msr_fault
     (setq _msr_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _esp_active
     (setq _esp_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _esp_fault
     (setq _esp_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tsr_active
     (setq _tsr_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tsr_fault
     (setq _tsr_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pressure
     (setq _pressure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _brake_torque_delivery
     (setq _brake_torque_delivery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _brake_torque_delivery_valid
     (setq _brake_torque_delivery_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _brake_regen_torque_delivery
     (setq _brake_regen_torque_delivery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _brake_regen_torque_delivery_valid
     (setq _brake_regen_torque_delivery_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _brake_frct_torque_delivery
     (setq _brake_frct_torque_delivery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _brake_frct_torque_delivery_valid
     (setq _brake_frct_torque_delivery_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _master_pressure_delivery
     (setq _master_pressure_delivery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _master_pressure_delivery_valid
     (setq _master_pressure_delivery_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _pedal_brake_torque
     (setq _pedal_brake_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _pedal_brake_torque_valid
     (setq _pedal_brake_torque_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pkg_fastswitch_enable
     (setq _pkg_fastswitch_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_block
     (setq _vehicle_block (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/VehESPSwitch _esp_status
     (send _esp_status :deserialize buf ptr-) (incf ptr- (send _esp_status :serialization-length))
   ;; bool _vdc_active
     (setq _vdc_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vdc_fault
     (setq _vdc_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _reserved
     (setq _reserved (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::BrakeInfoReportData :md5sum-) "8ca52bf3a77488f03bf8723c06136c01")
(setf (get endpoint_msgs::BrakeInfoReportData :datatype-) "endpoint_msgs/BrakeInfoReportData")
(setf (get endpoint_msgs::BrakeInfoReportData :definition-)
      "uint64 timestamp_us
float32 accleration_on_wheel
float32 lateral_accleration_on_wheel
bool stationary
bool abs_active
bool abs_fault
bool tcs_active
bool tcs_fault
bool msr_active
bool msr_fault
bool esp_active
bool esp_fault
bool tsr_active
bool tsr_fault
bool pressure
float32 brake_torque_delivery
bool brake_torque_delivery_valid
float32 brake_regen_torque_delivery
bool brake_regen_torque_delivery_valid
float32 brake_frct_torque_delivery
bool brake_frct_torque_delivery_valid
float32 master_pressure_delivery
bool master_pressure_delivery_valid
float32 pedal_brake_torque
bool pedal_brake_torque_valid
bool pkg_fastswitch_enable
bool vehicle_block
endpoint_msgs/VehESPSwitch esp_status
bool vdc_active
bool vdc_fault
uint8 reserved

================================================================================
MSG: endpoint_msgs/VehESPSwitch
uint8 NONE = 0
uint8 ON = 1
uint8 OFF = 2
uint8 RESVERD = 3
uint8 INVALID = 255
uint8 value

")



(provide :endpoint_msgs/BrakeInfoReportData "8ca52bf3a77488f03bf8723c06136c01")


