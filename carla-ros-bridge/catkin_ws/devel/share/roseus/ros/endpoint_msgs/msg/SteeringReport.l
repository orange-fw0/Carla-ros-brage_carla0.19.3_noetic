;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SteeringReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SteeringReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::STEERINGREPORT")
  (make-package "ENDPOINT_MSGS::STEERINGREPORT"))

(in-package "ROS")
;;//! \htmlinclude SteeringReport.msg.html


(intern "*STEERING_REPORT_DATA*" (find-package "ENDPOINT_MSGS::STEERINGREPORT"))
(shadow '*STEERING_REPORT_DATA* (find-package "ENDPOINT_MSGS::STEERINGREPORT"))
(defconstant endpoint_msgs::SteeringReport::*STEERING_REPORT_DATA* 1)

(defun endpoint_msgs::SteeringReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::SteeringReport::*STEERING_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::SteeringReport
  :super ros::object
  :slots (_available _steering_report_data ))

(defmethod endpoint_msgs::SteeringReport
  (:init
   (&key
    ((:available __available) 0)
    ((:steering_report_data __steering_report_data) (instance endpoint_msgs::SteeringReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _steering_report_data __steering_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:steering_report_data
   (&rest __steering_report_data)
   (if (keywordp (car __steering_report_data))
       (send* _steering_report_data __steering_report_data)
     (progn
       (if __steering_report_data (setq _steering_report_data (car __steering_report_data)))
       _steering_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/SteeringReportData _steering_report_data
    (send _steering_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/SteeringReportData _steering_report_data
       (send _steering_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/SteeringReportData _steering_report_data
     (send _steering_report_data :deserialize buf ptr-) (incf ptr- (send _steering_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::SteeringReport :md5sum-) "62f7d27892bd0045d37d17394bb908a2")
(setf (get endpoint_msgs::SteeringReport :datatype-) "endpoint_msgs/SteeringReport")
(setf (get endpoint_msgs::SteeringReport :definition-)
      "uint8 STEERING_REPORT_DATA = 1
uint8 available
endpoint_msgs/SteeringReportData steering_report_data

================================================================================
MSG: endpoint_msgs/SteeringReportData
uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/SteeringType steering_type
float32 steering_cmd
float32 steering_report
float32 steering_wheel_angle_report
float32 steering_wheel_torque_report
float32 steering_follow_rate
endpoint_msgs/RWhSteerModType rws_mode_report
float32 rws_angle
bool override
float32 steering_elc_assist_torque
bool steering_elc_assist_torque_valid
float32 steering_total_torque
bool steering_total_torque_valid
endpoint_msgs/CalibrationType eps_calibration_state
endpoint_msgs/RWhSteerDirection rws_direction_report
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
MSG: endpoint_msgs/SteeringType
uint8 STEERING_ANGLE = 1
uint8 FRONT_WHEEL_ANGLE = 2
uint8 YAW_RATE = 3
uint8 TORQUE = 4
uint8 ANGLE_SPEED = 5
uint8 CURVATURE = 6
uint8 RESERVED = 7
uint8 value

================================================================================
MSG: endpoint_msgs/RWhSteerModType
uint8 NO_REQUEST = 0
uint8 CONTROL_REQUEST = 1
uint8 LOCK_REQUEST = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/CalibrationType
uint8 NONE = 0
uint8 CALIBRATION = 1
uint8 NOT_CALIBRATION = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/RWhSteerDirection
uint8 NONE = 0
uint8 SAME_DIRECTION = 1
uint8 OPPOSITE_DIRECTION = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

")



(provide :endpoint_msgs/SteeringReport "62f7d27892bd0045d37d17394bb908a2")


