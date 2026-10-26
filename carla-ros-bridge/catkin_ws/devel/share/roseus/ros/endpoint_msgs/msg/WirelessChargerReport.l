;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WirelessChargerReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WirelessChargerReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIRELESSCHARGERREPORT")
  (make-package "ENDPOINT_MSGS::WIRELESSCHARGERREPORT"))

(in-package "ROS")
;;//! \htmlinclude WirelessChargerReport.msg.html


(intern "*WIRELESS_CHARGER_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WIRELESSCHARGERREPORT"))
(shadow '*WIRELESS_CHARGER_REPORT_DATA* (find-package "ENDPOINT_MSGS::WIRELESSCHARGERREPORT"))
(defconstant endpoint_msgs::WirelessChargerReport::*WIRELESS_CHARGER_REPORT_DATA* 1)

(defun endpoint_msgs::WirelessChargerReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WirelessChargerReport::*WIRELESS_CHARGER_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WirelessChargerReport
  :super ros::object
  :slots (_available _wireless_charger_report_data ))

(defmethod endpoint_msgs::WirelessChargerReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wireless_charger_report_data __wireless_charger_report_data) (instance endpoint_msgs::WirelessChargerReportData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wireless_charger_report_data __wireless_charger_report_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wireless_charger_report_data
   (&rest __wireless_charger_report_data)
   (if (keywordp (car __wireless_charger_report_data))
       (send* _wireless_charger_report_data __wireless_charger_report_data)
     (progn
       (if __wireless_charger_report_data (setq _wireless_charger_report_data (car __wireless_charger_report_data)))
       _wireless_charger_report_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WirelessChargerReportData _wireless_charger_report_data
    (send _wireless_charger_report_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WirelessChargerReportData _wireless_charger_report_data
       (send _wireless_charger_report_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WirelessChargerReportData _wireless_charger_report_data
     (send _wireless_charger_report_data :deserialize buf ptr-) (incf ptr- (send _wireless_charger_report_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WirelessChargerReport :md5sum-) "6fbf0f4864be339be147d278f9483fd7")
(setf (get endpoint_msgs::WirelessChargerReport :datatype-) "endpoint_msgs/WirelessChargerReport")
(setf (get endpoint_msgs::WirelessChargerReport :definition-)
      "uint8 WIRELESS_CHARGER_REPORT_DATA = 1
uint8 available
endpoint_msgs/WirelessChargerReportData wireless_charger_report_data

================================================================================
MSG: endpoint_msgs/WirelessChargerReportData
uint64 timestamp_us
endpoint_msgs/WrlsChrgWifiSts link_state
endpoint_msgs/WrlsChrgDetResult detected_state
bool is_offset_x_vaild
bool is_offset_y_vaild
bool is_yaw_valid
int32 offset_x
int32 offset_y
float32 yaw
int32 rltv_pos_of_charge_board_x
int32 rltv_pos_of_charge_board_y
int32 charge_board_size_x
int32 charge_board_size_y
string reserved

================================================================================
MSG: endpoint_msgs/WrlsChrgWifiSts
uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0
uint8 WIRELESS_CHARGER_WIFI_ON = 1
uint8 WIRELESS_CHARGER_WIFI_OFF = 2
uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3
uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4
uint8 value

================================================================================
MSG: endpoint_msgs/WrlsChrgDetResult
uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0
uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4
uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5
uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6
uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7
uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8
uint8 value

")



(provide :endpoint_msgs/WirelessChargerReport "6fbf0f4864be339be147d278f9483fd7")


