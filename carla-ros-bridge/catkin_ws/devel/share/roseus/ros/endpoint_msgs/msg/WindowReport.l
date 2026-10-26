;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WindowReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WindowReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WINDOWREPORT")
  (make-package "ENDPOINT_MSGS::WINDOWREPORT"))

(in-package "ROS")
;;//! \htmlinclude WindowReport.msg.html


(intern "*WINDOW_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WINDOWREPORT"))
(shadow '*WINDOW_REPORT_DATA* (find-package "ENDPOINT_MSGS::WINDOWREPORT"))
(defconstant endpoint_msgs::WindowReport::*WINDOW_REPORT_DATA* 1)

(defun endpoint_msgs::WindowReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WindowReport::*WINDOW_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WindowReport
  :super ros::object
  :slots (_available _window_report_data ))

(defmethod endpoint_msgs::WindowReport
  (:init
   (&key
    ((:available __available) 0)
    ((:window_report_data __window_report_data) (instance endpoint_msgs::WindowReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _window_report_data __window_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:window_report_data
   (&rest __window_report_data)
   (if (keywordp (car __window_report_data))
       (send* _window_report_data __window_report_data)
     (progn
       (if __window_report_data (setq _window_report_data (car __window_report_data)))
       _window_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WindowReportData _window_report_data
    (send _window_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WindowReportData _window_report_data
       (send _window_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WindowReportData _window_report_data
     (send _window_report_data :deserialize buf ptr-) (incf ptr- (send _window_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WindowReport :md5sum-) "b329f38f5df393116359dbace4ca35c4")
(setf (get endpoint_msgs::WindowReport :datatype-) "endpoint_msgs/WindowReport")
(setf (get endpoint_msgs::WindowReport :definition-)
      "uint8 WINDOW_REPORT_DATA = 1
uint8 available
endpoint_msgs/WindowReportData window_report_data

================================================================================
MSG: endpoint_msgs/WindowReportData
uint64 timestamp_us
bool window_lock
endpoint_msgs/WindowState window_state_left_front
endpoint_msgs/WindowState window_state_right_front
endpoint_msgs/WindowState window_state_left_rear
endpoint_msgs/WindowState window_state_right_rear
endpoint_msgs/WindowState window_state_top
bool valid

================================================================================
MSG: endpoint_msgs/WindowState
uint8 WINDOW_CLOSED = 0
uint8 WINDOW_OPENED = 1
uint8 WINDOW_MIDDLE = 2
uint8 value

")



(provide :endpoint_msgs/WindowReport "b329f38f5df393116359dbace4ca35c4")


