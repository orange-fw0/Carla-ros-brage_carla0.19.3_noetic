;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelCylinderPressReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelCylinderPressReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELCYLINDERPRESSREPORT")
  (make-package "ENDPOINT_MSGS::WHEELCYLINDERPRESSREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelCylinderPressReport.msg.html


(intern "*WHEEL_CYLINDER_PRESS_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WHEELCYLINDERPRESSREPORT"))
(shadow '*WHEEL_CYLINDER_PRESS_REPORT_DATA* (find-package "ENDPOINT_MSGS::WHEELCYLINDERPRESSREPORT"))
(defconstant endpoint_msgs::WheelCylinderPressReport::*WHEEL_CYLINDER_PRESS_REPORT_DATA* 1)

(defun endpoint_msgs::WheelCylinderPressReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WheelCylinderPressReport::*WHEEL_CYLINDER_PRESS_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WheelCylinderPressReport
  :super ros::object
  :slots (_available _wheel_cylinder_press_report_data ))

(defmethod endpoint_msgs::WheelCylinderPressReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wheel_cylinder_press_report_data __wheel_cylinder_press_report_data) (instance endpoint_msgs::WheelCylinderPressReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wheel_cylinder_press_report_data __wheel_cylinder_press_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wheel_cylinder_press_report_data
   (&rest __wheel_cylinder_press_report_data)
   (if (keywordp (car __wheel_cylinder_press_report_data))
       (send* _wheel_cylinder_press_report_data __wheel_cylinder_press_report_data)
     (progn
       (if __wheel_cylinder_press_report_data (setq _wheel_cylinder_press_report_data (car __wheel_cylinder_press_report_data)))
       _wheel_cylinder_press_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WheelCylinderPressReportData _wheel_cylinder_press_report_data
    (send _wheel_cylinder_press_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WheelCylinderPressReportData _wheel_cylinder_press_report_data
       (send _wheel_cylinder_press_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WheelCylinderPressReportData _wheel_cylinder_press_report_data
     (send _wheel_cylinder_press_report_data :deserialize buf ptr-) (incf ptr- (send _wheel_cylinder_press_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelCylinderPressReport :md5sum-) "4d51347d2d1ff717fe5efbd77c6a005a")
(setf (get endpoint_msgs::WheelCylinderPressReport :datatype-) "endpoint_msgs/WheelCylinderPressReport")
(setf (get endpoint_msgs::WheelCylinderPressReport :definition-)
      "uint8 WHEEL_CYLINDER_PRESS_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelCylinderPressReportData wheel_cylinder_press_report_data

================================================================================
MSG: endpoint_msgs/WheelCylinderPressReportData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

")



(provide :endpoint_msgs/WheelCylinderPressReport "4d51347d2d1ff717fe5efbd77c6a005a")


