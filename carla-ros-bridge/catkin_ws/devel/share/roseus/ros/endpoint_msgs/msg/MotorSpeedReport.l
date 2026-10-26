;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::MotorSpeedReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'MotorSpeedReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::MOTORSPEEDREPORT")
  (make-package "ENDPOINT_MSGS::MOTORSPEEDREPORT"))

(in-package "ROS")
;;//! \htmlinclude MotorSpeedReport.msg.html


(intern "*MOTOR_SPEED_REPORT_DATA*" (find-package "ENDPOINT_MSGS::MOTORSPEEDREPORT"))
(shadow '*MOTOR_SPEED_REPORT_DATA* (find-package "ENDPOINT_MSGS::MOTORSPEEDREPORT"))
(defconstant endpoint_msgs::MotorSpeedReport::*MOTOR_SPEED_REPORT_DATA* 1)

(defun endpoint_msgs::MotorSpeedReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::MotorSpeedReport::*MOTOR_SPEED_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::MotorSpeedReport
  :super ros::object
  :slots (_available _motor_speed_report_data_fl _motor_speed_report_data_fr _motor_speed_report_data_rl _motor_speed_report_data_rr ))

(defmethod endpoint_msgs::MotorSpeedReport
  (:init
   (&key
    ((:available __available) 0)
    ((:motor_speed_report_data_fl __motor_speed_report_data_fl) (instance endpoint_msgs::MotorSpeedReportData :init))
    ((:motor_speed_report_data_fr __motor_speed_report_data_fr) (instance endpoint_msgs::MotorSpeedReportData :init))
    ((:motor_speed_report_data_rl __motor_speed_report_data_rl) (instance endpoint_msgs::MotorSpeedReportData :init))
    ((:motor_speed_report_data_rr __motor_speed_report_data_rr) (instance endpoint_msgs::MotorSpeedReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _motor_speed_report_data_fl __motor_speed_report_data_fl)
   (setq _motor_speed_report_data_fr __motor_speed_report_data_fr)
   (setq _motor_speed_report_data_rl __motor_speed_report_data_rl)
   (setq _motor_speed_report_data_rr __motor_speed_report_data_rr)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:motor_speed_report_data_fl
   (&rest __motor_speed_report_data_fl)
   (if (keywordp (car __motor_speed_report_data_fl))
       (send* _motor_speed_report_data_fl __motor_speed_report_data_fl)
     (progn
       (if __motor_speed_report_data_fl (setq _motor_speed_report_data_fl (car __motor_speed_report_data_fl)))
       _motor_speed_report_data_fl)))
  (:motor_speed_report_data_fr
   (&rest __motor_speed_report_data_fr)
   (if (keywordp (car __motor_speed_report_data_fr))
       (send* _motor_speed_report_data_fr __motor_speed_report_data_fr)
     (progn
       (if __motor_speed_report_data_fr (setq _motor_speed_report_data_fr (car __motor_speed_report_data_fr)))
       _motor_speed_report_data_fr)))
  (:motor_speed_report_data_rl
   (&rest __motor_speed_report_data_rl)
   (if (keywordp (car __motor_speed_report_data_rl))
       (send* _motor_speed_report_data_rl __motor_speed_report_data_rl)
     (progn
       (if __motor_speed_report_data_rl (setq _motor_speed_report_data_rl (car __motor_speed_report_data_rl)))
       _motor_speed_report_data_rl)))
  (:motor_speed_report_data_rr
   (&rest __motor_speed_report_data_rr)
   (if (keywordp (car __motor_speed_report_data_rr))
       (send* _motor_speed_report_data_rr __motor_speed_report_data_rr)
     (progn
       (if __motor_speed_report_data_rr (setq _motor_speed_report_data_rr (car __motor_speed_report_data_rr)))
       _motor_speed_report_data_rr)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_fl
    (send _motor_speed_report_data_fl :serialization-length)
    ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_fr
    (send _motor_speed_report_data_fr :serialization-length)
    ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_rl
    (send _motor_speed_report_data_rl :serialization-length)
    ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_rr
    (send _motor_speed_report_data_rr :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_fl
       (send _motor_speed_report_data_fl :serialize s)
     ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_fr
       (send _motor_speed_report_data_fr :serialize s)
     ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_rl
       (send _motor_speed_report_data_rl :serialize s)
     ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_rr
       (send _motor_speed_report_data_rr :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_fl
     (send _motor_speed_report_data_fl :deserialize buf ptr-) (incf ptr- (send _motor_speed_report_data_fl :serialization-length))
   ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_fr
     (send _motor_speed_report_data_fr :deserialize buf ptr-) (incf ptr- (send _motor_speed_report_data_fr :serialization-length))
   ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_rl
     (send _motor_speed_report_data_rl :deserialize buf ptr-) (incf ptr- (send _motor_speed_report_data_rl :serialization-length))
   ;; endpoint_msgs/MotorSpeedReportData _motor_speed_report_data_rr
     (send _motor_speed_report_data_rr :deserialize buf ptr-) (incf ptr- (send _motor_speed_report_data_rr :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::MotorSpeedReport :md5sum-) "bc949b95d6d8dc86d0bb61e9b2e01c07")
(setf (get endpoint_msgs::MotorSpeedReport :datatype-) "endpoint_msgs/MotorSpeedReport")
(setf (get endpoint_msgs::MotorSpeedReport :definition-)
      "uint8 MOTOR_SPEED_REPORT_DATA = 1
uint8 available
endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fl
endpoint_msgs/MotorSpeedReportData motor_speed_report_data_fr
endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rl
endpoint_msgs/MotorSpeedReportData motor_speed_report_data_rr

================================================================================
MSG: endpoint_msgs/MotorSpeedReportData
endpoint_msgs/MotorSpeedControlStatus motor_speed_control_status
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



(provide :endpoint_msgs/MotorSpeedReport "bc949b95d6d8dc86d0bb61e9b2e01c07")


