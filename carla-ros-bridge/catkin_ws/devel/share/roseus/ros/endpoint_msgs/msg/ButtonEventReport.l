;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ButtonEventReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ButtonEventReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BUTTONEVENTREPORT")
  (make-package "ENDPOINT_MSGS::BUTTONEVENTREPORT"))

(in-package "ROS")
;;//! \htmlinclude ButtonEventReport.msg.html


(intern "*BUTTON_EVENT_REPORT_DATA*" (find-package "ENDPOINT_MSGS::BUTTONEVENTREPORT"))
(shadow '*BUTTON_EVENT_REPORT_DATA* (find-package "ENDPOINT_MSGS::BUTTONEVENTREPORT"))
(defconstant endpoint_msgs::ButtonEventReport::*BUTTON_EVENT_REPORT_DATA* 1)

(defun endpoint_msgs::ButtonEventReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::ButtonEventReport::*BUTTON_EVENT_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::ButtonEventReport
  :super ros::object
  :slots (_available _button_event_report_data _roller_steps_L _roller_steps_R ))

(defmethod endpoint_msgs::ButtonEventReport
  (:init
   (&key
    ((:available __available) 0)
    ((:button_event_report_data __button_event_report_data) (instance endpoint_msgs::ButtonEventReportData :init))
    ((:roller_steps_L __roller_steps_L) 0)
    ((:roller_steps_R __roller_steps_R) 0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _button_event_report_data __button_event_report_data)
   (setq _roller_steps_L (round __roller_steps_L))
   (setq _roller_steps_R (round __roller_steps_R))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:button_event_report_data
   (&rest __button_event_report_data)
   (if (keywordp (car __button_event_report_data))
       (send* _button_event_report_data __button_event_report_data)
     (progn
       (if __button_event_report_data (setq _button_event_report_data (car __button_event_report_data)))
       _button_event_report_data)))
  (:roller_steps_L
   (&optional __roller_steps_L)
   (if __roller_steps_L (setq _roller_steps_L __roller_steps_L)) _roller_steps_L)
  (:roller_steps_R
   (&optional __roller_steps_R)
   (if __roller_steps_R (setq _roller_steps_R __roller_steps_R)) _roller_steps_R)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/ButtonEventReportData _button_event_report_data
    (send _button_event_report_data :serialization-length)
    ;; int16 _roller_steps_L
    2
    ;; int16 _roller_steps_R
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/ButtonEventReportData _button_event_report_data
       (send _button_event_report_data :serialize s)
     ;; int16 _roller_steps_L
       (write-word _roller_steps_L s)
     ;; int16 _roller_steps_R
       (write-word _roller_steps_R s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/ButtonEventReportData _button_event_report_data
     (send _button_event_report_data :deserialize buf ptr-) (incf ptr- (send _button_event_report_data :serialization-length))
   ;; int16 _roller_steps_L
     (setq _roller_steps_L (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _roller_steps_R
     (setq _roller_steps_R (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get endpoint_msgs::ButtonEventReport :md5sum-) "cef4de0ccb7d5e400a71459300b32f3c")
(setf (get endpoint_msgs::ButtonEventReport :datatype-) "endpoint_msgs/ButtonEventReport")
(setf (get endpoint_msgs::ButtonEventReport :definition-)
      "uint8 BUTTON_EVENT_REPORT_DATA = 1
uint8 available
endpoint_msgs/ButtonEventReportData button_event_report_data
int16 roller_steps_L
int16 roller_steps_R

================================================================================
MSG: endpoint_msgs/ButtonEventReportData
uint64 timestamp_us
endpoint_msgs/ButtonEvent[] button_event_array
bool valid

================================================================================
MSG: endpoint_msgs/ButtonEvent
uint8 BUTTON1 = 0
uint8 BUTTON2 = 1
uint8 BUTTON3 = 2
uint8 BUTTON4 = 3
uint8 BUTTON5 = 4
uint8 BUTTON6 = 5
uint8 BUTTON7 = 6
uint8 BUTTON8 = 7
uint8 BUTTON9 = 8
uint8 BUTTON10 = 9
uint8 BUTTON11 = 10
uint8 BUTTON12 = 11
uint8 BUTTON13 = 12
uint8 BUTTON14 = 13
uint8 BUTTON15 = 14
uint8 BUTTON16 = 15
uint8 BUTTON17 = 16
uint8 BUTTON18 = 17
uint8 BUTTON19 = 18
uint8 BUTTON20 = 19
uint8 value

")



(provide :endpoint_msgs/ButtonEventReport "cef4de0ccb7d5e400a71459300b32f3c")


