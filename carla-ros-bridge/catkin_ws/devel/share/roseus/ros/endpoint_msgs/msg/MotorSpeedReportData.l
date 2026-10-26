;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::MotorSpeedReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'MotorSpeedReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MOTORSPEEDREPORTDATA")
  (make-package "ENDPOINT_MSGS::MOTORSPEEDREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude MotorSpeedReportData.msg.html


(defclass endpoint_msgs::MotorSpeedReportData
  :super ros::object
  :slots (_motor_speed_control_status _motor_speed _motor_raw_speed _motor_raw_speed_valid _mcu_stuck_status _mcu_standstill_status _spdctl_fault_mode _spdctl_valid _spdctl_rollingback_status _mcu_req_torque _mcu_req_torque_valid _motor_actual_toruqe _motor_actual_toruqe_valid _motor_wheel_regen_torque _motor_wheel_regen_torque_valid _valid ))

(defmethod endpoint_msgs::MotorSpeedReportData
  (:init
   (&key
    ((:motor_speed_control_status __motor_speed_control_status) (instance endpoint_msgs::MotorSpeedControlStatus :init))
    ((:motor_speed __motor_speed) 0.0)
    ((:motor_raw_speed __motor_raw_speed) 0.0)
    ((:motor_raw_speed_valid __motor_raw_speed_valid) nil)
    ((:mcu_stuck_status __mcu_stuck_status) (instance endpoint_msgs::McuStuckStatus :init))
    ((:mcu_standstill_status __mcu_standstill_status) (instance endpoint_msgs::McuStandstillStatus :init))
    ((:spdctl_fault_mode __spdctl_fault_mode) (instance endpoint_msgs::SpdctlFaultMode :init))
    ((:spdctl_valid __spdctl_valid) nil)
    ((:spdctl_rollingback_status __spdctl_rollingback_status) (instance endpoint_msgs::SpdctlRollingbackStatus :init))
    ((:mcu_req_torque __mcu_req_torque) 0.0)
    ((:mcu_req_torque_valid __mcu_req_torque_valid) nil)
    ((:motor_actual_toruqe __motor_actual_toruqe) 0.0)
    ((:motor_actual_toruqe_valid __motor_actual_toruqe_valid) nil)
    ((:motor_wheel_regen_torque __motor_wheel_regen_torque) 0.0)
    ((:motor_wheel_regen_torque_valid __motor_wheel_regen_torque_valid) nil)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _motor_speed_control_status __motor_speed_control_status)
   (setq _motor_speed (float __motor_speed))
   (setq _motor_raw_speed (float __motor_raw_speed))
   (setq _motor_raw_speed_valid __motor_raw_speed_valid)
   (setq _mcu_stuck_status __mcu_stuck_status)
   (setq _mcu_standstill_status __mcu_standstill_status)
   (setq _spdctl_fault_mode __spdctl_fault_mode)
   (setq _spdctl_valid __spdctl_valid)
   (setq _spdctl_rollingback_status __spdctl_rollingback_status)
   (setq _mcu_req_torque (float __mcu_req_torque))
   (setq _mcu_req_torque_valid __mcu_req_torque_valid)
   (setq _motor_actual_toruqe (float __motor_actual_toruqe))
   (setq _motor_actual_toruqe_valid __motor_actual_toruqe_valid)
   (setq _motor_wheel_regen_torque (float __motor_wheel_regen_torque))
   (setq _motor_wheel_regen_torque_valid __motor_wheel_regen_torque_valid)
   (setq _valid __valid)
   self)
  (:motor_speed_control_status
   (&rest __motor_speed_control_status)
   (if (keywordp (car __motor_speed_control_status))
       (send* _motor_speed_control_status __motor_speed_control_status)
     (progn
       (if __motor_speed_control_status (setq _motor_speed_control_status (car __motor_speed_control_status)))
       _motor_speed_control_status)))
  (:motor_speed
   (&optional __motor_speed)
   (if __motor_speed (setq _motor_speed __motor_speed)) _motor_speed)
  (:motor_raw_speed
   (&optional __motor_raw_speed)
   (if __motor_raw_speed (setq _motor_raw_speed __motor_raw_speed)) _motor_raw_speed)
  (:motor_raw_speed_valid
   (&optional (__motor_raw_speed_valid :null))
   (if (not (eq __motor_raw_speed_valid :null)) (setq _motor_raw_speed_valid __motor_raw_speed_valid)) _motor_raw_speed_valid)
  (:mcu_stuck_status
   (&rest __mcu_stuck_status)
   (if (keywordp (car __mcu_stuck_status))
       (send* _mcu_stuck_status __mcu_stuck_status)
     (progn
       (if __mcu_stuck_status (setq _mcu_stuck_status (car __mcu_stuck_status)))
       _mcu_stuck_status)))
  (:mcu_standstill_status
   (&rest __mcu_standstill_status)
   (if (keywordp (car __mcu_standstill_status))
       (send* _mcu_standstill_status __mcu_standstill_status)
     (progn
       (if __mcu_standstill_status (setq _mcu_standstill_status (car __mcu_standstill_status)))
       _mcu_standstill_status)))
  (:spdctl_fault_mode
   (&rest __spdctl_fault_mode)
   (if (keywordp (car __spdctl_fault_mode))
       (send* _spdctl_fault_mode __spdctl_fault_mode)
     (progn
       (if __spdctl_fault_mode (setq _spdctl_fault_mode (car __spdctl_fault_mode)))
       _spdctl_fault_mode)))
  (:spdctl_valid
   (&optional (__spdctl_valid :null))
   (if (not (eq __spdctl_valid :null)) (setq _spdctl_valid __spdctl_valid)) _spdctl_valid)
  (:spdctl_rollingback_status
   (&rest __spdctl_rollingback_status)
   (if (keywordp (car __spdctl_rollingback_status))
       (send* _spdctl_rollingback_status __spdctl_rollingback_status)
     (progn
       (if __spdctl_rollingback_status (setq _spdctl_rollingback_status (car __spdctl_rollingback_status)))
       _spdctl_rollingback_status)))
  (:mcu_req_torque
   (&optional __mcu_req_torque)
   (if __mcu_req_torque (setq _mcu_req_torque __mcu_req_torque)) _mcu_req_torque)
  (:mcu_req_torque_valid
   (&optional (__mcu_req_torque_valid :null))
   (if (not (eq __mcu_req_torque_valid :null)) (setq _mcu_req_torque_valid __mcu_req_torque_valid)) _mcu_req_torque_valid)
  (:motor_actual_toruqe
   (&optional __motor_actual_toruqe)
   (if __motor_actual_toruqe (setq _motor_actual_toruqe __motor_actual_toruqe)) _motor_actual_toruqe)
  (:motor_actual_toruqe_valid
   (&optional (__motor_actual_toruqe_valid :null))
   (if (not (eq __motor_actual_toruqe_valid :null)) (setq _motor_actual_toruqe_valid __motor_actual_toruqe_valid)) _motor_actual_toruqe_valid)
  (:motor_wheel_regen_torque
   (&optional __motor_wheel_regen_torque)
   (if __motor_wheel_regen_torque (setq _motor_wheel_regen_torque __motor_wheel_regen_torque)) _motor_wheel_regen_torque)
  (:motor_wheel_regen_torque_valid
   (&optional (__motor_wheel_regen_torque_valid :null))
   (if (not (eq __motor_wheel_regen_torque_valid :null)) (setq _motor_wheel_regen_torque_valid __motor_wheel_regen_torque_valid)) _motor_wheel_regen_torque_valid)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; endpoint_msgs/MotorSpeedControlStatus _motor_speed_control_status
    (send _motor_speed_control_status :serialization-length)
    ;; float32 _motor_speed
    4
    ;; float32 _motor_raw_speed
    4
    ;; bool _motor_raw_speed_valid
    1
    ;; endpoint_msgs/McuStuckStatus _mcu_stuck_status
    (send _mcu_stuck_status :serialization-length)
    ;; endpoint_msgs/McuStandstillStatus _mcu_standstill_status
    (send _mcu_standstill_status :serialization-length)
    ;; endpoint_msgs/SpdctlFaultMode _spdctl_fault_mode
    (send _spdctl_fault_mode :serialization-length)
    ;; bool _spdctl_valid
    1
    ;; endpoint_msgs/SpdctlRollingbackStatus _spdctl_rollingback_status
    (send _spdctl_rollingback_status :serialization-length)
    ;; float32 _mcu_req_torque
    4
    ;; bool _mcu_req_torque_valid
    1
    ;; float32 _motor_actual_toruqe
    4
    ;; bool _motor_actual_toruqe_valid
    1
    ;; float32 _motor_wheel_regen_torque
    4
    ;; bool _motor_wheel_regen_torque_valid
    1
    ;; bool _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; endpoint_msgs/MotorSpeedControlStatus _motor_speed_control_status
       (send _motor_speed_control_status :serialize s)
     ;; float32 _motor_speed
       (sys::poke _motor_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motor_raw_speed
       (sys::poke _motor_raw_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _motor_raw_speed_valid
       (if _motor_raw_speed_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/McuStuckStatus _mcu_stuck_status
       (send _mcu_stuck_status :serialize s)
     ;; endpoint_msgs/McuStandstillStatus _mcu_standstill_status
       (send _mcu_standstill_status :serialize s)
     ;; endpoint_msgs/SpdctlFaultMode _spdctl_fault_mode
       (send _spdctl_fault_mode :serialize s)
     ;; bool _spdctl_valid
       (if _spdctl_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/SpdctlRollingbackStatus _spdctl_rollingback_status
       (send _spdctl_rollingback_status :serialize s)
     ;; float32 _mcu_req_torque
       (sys::poke _mcu_req_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _mcu_req_torque_valid
       (if _mcu_req_torque_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _motor_actual_toruqe
       (sys::poke _motor_actual_toruqe (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _motor_actual_toruqe_valid
       (if _motor_actual_toruqe_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _motor_wheel_regen_torque
       (sys::poke _motor_wheel_regen_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _motor_wheel_regen_torque_valid
       (if _motor_wheel_regen_torque_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; endpoint_msgs/MotorSpeedControlStatus _motor_speed_control_status
     (send _motor_speed_control_status :deserialize buf ptr-) (incf ptr- (send _motor_speed_control_status :serialization-length))
   ;; float32 _motor_speed
     (setq _motor_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motor_raw_speed
     (setq _motor_raw_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _motor_raw_speed_valid
     (setq _motor_raw_speed_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/McuStuckStatus _mcu_stuck_status
     (send _mcu_stuck_status :deserialize buf ptr-) (incf ptr- (send _mcu_stuck_status :serialization-length))
   ;; endpoint_msgs/McuStandstillStatus _mcu_standstill_status
     (send _mcu_standstill_status :deserialize buf ptr-) (incf ptr- (send _mcu_standstill_status :serialization-length))
   ;; endpoint_msgs/SpdctlFaultMode _spdctl_fault_mode
     (send _spdctl_fault_mode :deserialize buf ptr-) (incf ptr- (send _spdctl_fault_mode :serialization-length))
   ;; bool _spdctl_valid
     (setq _spdctl_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/SpdctlRollingbackStatus _spdctl_rollingback_status
     (send _spdctl_rollingback_status :deserialize buf ptr-) (incf ptr- (send _spdctl_rollingback_status :serialization-length))
   ;; float32 _mcu_req_torque
     (setq _mcu_req_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _mcu_req_torque_valid
     (setq _mcu_req_torque_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _motor_actual_toruqe
     (setq _motor_actual_toruqe (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _motor_actual_toruqe_valid
     (setq _motor_actual_toruqe_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _motor_wheel_regen_torque
     (setq _motor_wheel_regen_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _motor_wheel_regen_torque_valid
     (setq _motor_wheel_regen_torque_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::MotorSpeedReportData :md5sum-) "78d9de3bca84bb959c33e02d23d6c824")
(setf (get endpoint_msgs::MotorSpeedReportData :datatype-) "endpoint_msgs/MotorSpeedReportData")
(setf (get endpoint_msgs::MotorSpeedReportData :definition-)
      "endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status
float32 motor_speed
float32 motor_raw_speed
bool motor_raw_speed_valid
endpoint_msgs/McuStuckStatus mcu_stuck_status
endpoint_msgs/McuStandstillStatus mcu_standstill_status
endpoint_msgs/SpdctlFaultMode spdctl_fault_mode
bool spdctl_valid
endpoint_msgs/SpdctlRollingbackStatus spdctl_rollingback_status
float32 mcu_req_torque
bool mcu_req_torque_valid
float32 motor_actual_toruqe
bool motor_actual_toruqe_valid
float32 motor_wheel_regen_torque
bool motor_wheel_regen_torque_valid
bool valid

================================================================================
MSG: endpoint_msgs/MotorSpeedControlStatus
uint8 NONE = 0
uint8 NO_ACTIVE = 1
uint8 ACTIVE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/McuStuckStatus
uint8 NONE = 0
uint8 NO_STUCK = 1
uint8 STUCK = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/McuStandstillStatus
uint8 NONE = 0
uint8 NO_STANDSTILL = 1
uint8 STANDSTILL = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/SpdctlFaultMode
uint8 NONE = 0
uint8 NO_FAULT = 1
uint8 FAULT1 = 2
uint8 FAULT2 = 3
uint8 RESERVED1 = 4
uint8 RESERVED2 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/SpdctlRollingbackStatus
uint8 NONE = 0
uint8 NO_SILDE = 1
uint8 SILDE = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

")



(provide :endpoint_msgs/MotorSpeedReportData "78d9de3bca84bb959c33e02d23d6c824")


