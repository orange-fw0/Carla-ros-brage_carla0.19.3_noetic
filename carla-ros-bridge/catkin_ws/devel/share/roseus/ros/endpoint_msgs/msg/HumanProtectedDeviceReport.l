;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::HumanProtectedDeviceReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'HumanProtectedDeviceReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICEREPORT")
  (make-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICEREPORT"))

(in-package "ROS")
;;//! \htmlinclude HumanProtectedDeviceReport.msg.html


(intern "*HUMAN_PROTECTED_DEVICE_REPORT_DATA*" (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICEREPORT"))
(shadow '*HUMAN_PROTECTED_DEVICE_REPORT_DATA* (find-package "ENDPOINT_MSGS::HUMANPROTECTEDDEVICEREPORT"))
(defconstant endpoint_msgs::HumanProtectedDeviceReport::*HUMAN_PROTECTED_DEVICE_REPORT_DATA* 1)

(defun endpoint_msgs::HumanProtectedDeviceReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::HumanProtectedDeviceReport::*HUMAN_PROTECTED_DEVICE_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::HumanProtectedDeviceReport
  :super ros::object
  :slots (_available _human_protected_device_report_data _seat_sensor_status_report_data ))

(defmethod endpoint_msgs::HumanProtectedDeviceReport
  (:init
   (&key
    ((:available __available) 0)
    ((:human_protected_device_report_data __human_protected_device_report_data) (instance endpoint_msgs::HumanProtectedDeviceReportData :init))
    ((:seat_sensor_status_report_data __seat_sensor_status_report_data) (instance endpoint_msgs::SeatSensorStatusReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _human_protected_device_report_data __human_protected_device_report_data)
   (setq _seat_sensor_status_report_data __seat_sensor_status_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:human_protected_device_report_data
   (&rest __human_protected_device_report_data)
   (if (keywordp (car __human_protected_device_report_data))
       (send* _human_protected_device_report_data __human_protected_device_report_data)
     (progn
       (if __human_protected_device_report_data (setq _human_protected_device_report_data (car __human_protected_device_report_data)))
       _human_protected_device_report_data)))
  (:seat_sensor_status_report_data
   (&rest __seat_sensor_status_report_data)
   (if (keywordp (car __seat_sensor_status_report_data))
       (send* _seat_sensor_status_report_data __seat_sensor_status_report_data)
     (progn
       (if __seat_sensor_status_report_data (setq _seat_sensor_status_report_data (car __seat_sensor_status_report_data)))
       _seat_sensor_status_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/HumanProtectedDeviceReportData _human_protected_device_report_data
    (send _human_protected_device_report_data :serialization-length)
    ;; endpoint_msgs/SeatSensorStatusReportData _seat_sensor_status_report_data
    (send _seat_sensor_status_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/HumanProtectedDeviceReportData _human_protected_device_report_data
       (send _human_protected_device_report_data :serialize s)
     ;; endpoint_msgs/SeatSensorStatusReportData _seat_sensor_status_report_data
       (send _seat_sensor_status_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/HumanProtectedDeviceReportData _human_protected_device_report_data
     (send _human_protected_device_report_data :deserialize buf ptr-) (incf ptr- (send _human_protected_device_report_data :serialization-length))
   ;; endpoint_msgs/SeatSensorStatusReportData _seat_sensor_status_report_data
     (send _seat_sensor_status_report_data :deserialize buf ptr-) (incf ptr- (send _seat_sensor_status_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::HumanProtectedDeviceReport :md5sum-) "99aabe4955f5e9e44655eb8177d146dc")
(setf (get endpoint_msgs::HumanProtectedDeviceReport :datatype-) "endpoint_msgs/HumanProtectedDeviceReport")
(setf (get endpoint_msgs::HumanProtectedDeviceReport :definition-)
      "uint8 HUMAN_PROTECTED_DEVICE_REPORT_DATA = 1
uint8 available
endpoint_msgs/HumanProtectedDeviceReportData human_protected_device_report_data
endpoint_msgs/SeatSensorStatusReportData seat_sensor_status_report_data

================================================================================
MSG: endpoint_msgs/HumanProtectedDeviceReportData
uint64 timestamp_us
endpoint_msgs/HumanProtectedDeviceType[] enabled_human_protected_device_array
bool valid

================================================================================
MSG: endpoint_msgs/HumanProtectedDeviceType
uint8 DRIVER_SEATBELT = 0
uint8 PASSENGER_SEATBELT = 1
uint8 PASSENGER_DETECT = 2
uint8 PASSENGER_AIRBAG = 3
uint8 SECOND_LEFT_BELT = 4
uint8 SECOND_MID_BELT = 5
uint8 SECOND_RIGHT_BELT = 6
uint8 RESERVED1 = 7
uint8 RESERVED2 = 8
uint8 value

================================================================================
MSG: endpoint_msgs/SeatSensorStatusReportData
uint64 timestamp_us
endpoint_msgs/SeatSensorStatusType[] enabled_seat_sensor_status_array
bool valid

================================================================================
MSG: endpoint_msgs/SeatSensorStatusType
uint8 DRIVER_SEAT_STATUS = 0
uint8 PASSENGER_SEAT_STATUS = 1
uint8 SECOND_LEFT_SEAT_STATUS = 2
uint8 SECOND_MID_SEAT_STATUS = 3
uint8 SECOND_RIGHT_SEAT_STATUS = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 value

")



(provide :endpoint_msgs/HumanProtectedDeviceReport "99aabe4955f5e9e44655eb8177d146dc")


