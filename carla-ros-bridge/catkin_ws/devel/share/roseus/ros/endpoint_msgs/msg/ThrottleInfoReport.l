;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ThrottleInfoReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ThrottleInfoReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::THROTTLEINFOREPORT")
  (make-package "ENDPOINT_MSGS::THROTTLEINFOREPORT"))

(in-package "ROS")
;;//! \htmlinclude ThrottleInfoReport.msg.html


(intern "*THROTTLE_INFO_REPORT_DATA*" (find-package "ENDPOINT_MSGS::THROTTLEINFOREPORT"))
(shadow '*THROTTLE_INFO_REPORT_DATA* (find-package "ENDPOINT_MSGS::THROTTLEINFOREPORT"))
(defconstant endpoint_msgs::ThrottleInfoReport::*THROTTLE_INFO_REPORT_DATA* 1)

(defun endpoint_msgs::ThrottleInfoReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::ThrottleInfoReport::*THROTTLE_INFO_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::ThrottleInfoReport
  :super ros::object
  :slots (_available _throttle_info_report_data ))

(defmethod endpoint_msgs::ThrottleInfoReport
  (:init
   (&key
    ((:available __available) 0)
    ((:throttle_info_report_data __throttle_info_report_data) (instance endpoint_msgs::ThrottleInfoReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _throttle_info_report_data __throttle_info_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:throttle_info_report_data
   (&rest __throttle_info_report_data)
   (if (keywordp (car __throttle_info_report_data))
       (send* _throttle_info_report_data __throttle_info_report_data)
     (progn
       (if __throttle_info_report_data (setq _throttle_info_report_data (car __throttle_info_report_data)))
       _throttle_info_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/ThrottleInfoReportData _throttle_info_report_data
    (send _throttle_info_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/ThrottleInfoReportData _throttle_info_report_data
       (send _throttle_info_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/ThrottleInfoReportData _throttle_info_report_data
     (send _throttle_info_report_data :deserialize buf ptr-) (incf ptr- (send _throttle_info_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::ThrottleInfoReport :md5sum-) "27ae743fc9496156b97c8c69dab60cc3")
(setf (get endpoint_msgs::ThrottleInfoReport :datatype-) "endpoint_msgs/ThrottleInfoReport")
(setf (get endpoint_msgs::ThrottleInfoReport :definition-)
      "uint8 THROTTLE_INFO_REPORT_DATA = 1
uint8 available
endpoint_msgs/ThrottleInfoReportData throttle_info_report_data

================================================================================
MSG: endpoint_msgs/ThrottleInfoReportData
uint64 timestamp_us
float32 front_left_mot_rpm
bool front_left_mot_rpm_valid
float32 front_right_mot_rpm
bool front_right_mot_rpm_valid
float32 rear_left_mot_rpm
bool rear_left_mot_rpm_valid
float32 rear_right_mot_rpm
bool rear_right_mot_rpm_valid
float32 throttle_pedal_percent
float32 throttle_pedal_rate
float32 vehicle_speed_average
bool vehicle_speed_average_valid
float32 vehicle_mileage
float32 throttle_torque_delivery
bool throttle_torque_delivery_valid
bool pressure
float32 input_shaft_speed
float32 output_shaft_speed
int8 curr_transmission_gear
float32 curr_gear_ration
bool input_shaft_speed_valid
bool output_shaft_speed_valid
bool curr_transmission_gear_valid
bool curr_gear_ration_valid
float32 reserved1
float32 reserved2

")



(provide :endpoint_msgs/ThrottleInfoReport "27ae743fc9496156b97c8c69dab60cc3")


