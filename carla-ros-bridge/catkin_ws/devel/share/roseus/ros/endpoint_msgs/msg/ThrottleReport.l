;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ThrottleReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ThrottleReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::THROTTLEREPORT")
  (make-package "ENDPOINT_MSGS::THROTTLEREPORT"))

(in-package "ROS")
;;//! \htmlinclude ThrottleReport.msg.html


(intern "*THROTTLE_REPORT_DATA*" (find-package "ENDPOINT_MSGS::THROTTLEREPORT"))
(shadow '*THROTTLE_REPORT_DATA* (find-package "ENDPOINT_MSGS::THROTTLEREPORT"))
(defconstant endpoint_msgs::ThrottleReport::*THROTTLE_REPORT_DATA* 1)

(defun endpoint_msgs::ThrottleReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::ThrottleReport::*THROTTLE_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::ThrottleReport
  :super ros::object
  :slots (_available _throttle_report_data ))

(defmethod endpoint_msgs::ThrottleReport
  (:init
   (&key
    ((:available __available) 0)
    ((:throttle_report_data __throttle_report_data) (instance endpoint_msgs::ThrottleReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _throttle_report_data __throttle_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:throttle_report_data
   (&rest __throttle_report_data)
   (if (keywordp (car __throttle_report_data))
       (send* _throttle_report_data __throttle_report_data)
     (progn
       (if __throttle_report_data (setq _throttle_report_data (car __throttle_report_data)))
       _throttle_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/ThrottleReportData _throttle_report_data
    (send _throttle_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/ThrottleReportData _throttle_report_data
       (send _throttle_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/ThrottleReportData _throttle_report_data
     (send _throttle_report_data :deserialize buf ptr-) (incf ptr- (send _throttle_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::ThrottleReport :md5sum-) "a48388cf1431a355752b5ba78a20f789")
(setf (get endpoint_msgs::ThrottleReport :datatype-) "endpoint_msgs/ThrottleReport")
(setf (get endpoint_msgs::ThrottleReport :definition-)
      "uint8 THROTTLE_REPORT_DATA = 1
uint8 available
endpoint_msgs/ThrottleReportData throttle_report_data

================================================================================
MSG: endpoint_msgs/ThrottleReportData
uint64 timestamp_us
endpoint_msgs/ThrottleType type
endpoint_msgs/WorkType driver_work_type
float32 pedal_input
float32 command
float32 throttle_output
bool override
float32 vcu_max_neg_torque
float32 vcu_max_pos_torque
bool vcu_max_neg_torque_valid
bool vcu_max_pos_torque_valid
float32 vcu_exec_throttle_torque
bool vcu_exec_throttle_torque_valid
bool ready
bool valid

================================================================================
MSG: endpoint_msgs/ThrottleType
uint8 PEDAL = 0
uint8 THROTTLE = 1
uint8 TORQUE = 2
uint8 ACCELERATION = 3
uint8 SPEED = 4
uint8 SV = 5
uint8 RESERVED = 6
uint8 value

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

")



(provide :endpoint_msgs/ThrottleReport "a48388cf1431a355752b5ba78a20f789")


