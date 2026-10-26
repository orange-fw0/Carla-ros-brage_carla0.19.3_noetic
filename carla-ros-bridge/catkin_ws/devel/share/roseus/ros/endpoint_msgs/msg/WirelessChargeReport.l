;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WirelessChargeReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WirelessChargeReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIRELESSCHARGEREPORT")
  (make-package "ENDPOINT_MSGS::WIRELESSCHARGEREPORT"))

(in-package "ROS")
;;//! \htmlinclude WirelessChargeReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass endpoint_msgs::WirelessChargeReport
  :super ros::object
  :slots (_header _meta _wireless_charger_report ))

(defmethod endpoint_msgs::WirelessChargeReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance endpoint_msgs::StateReportMeta :init))
    ((:wireless_charger_report __wireless_charger_report) (instance endpoint_msgs::WirelessChargerReport :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _wireless_charger_report __wireless_charger_report)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:wireless_charger_report
   (&rest __wireless_charger_report)
   (if (keywordp (car __wireless_charger_report))
       (send* _wireless_charger_report __wireless_charger_report)
     (progn
       (if __wireless_charger_report (setq _wireless_charger_report (car __wireless_charger_report)))
       _wireless_charger_report)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; endpoint_msgs/StateReportMeta _meta
    (send _meta :serialization-length)
    ;; endpoint_msgs/WirelessChargerReport _wireless_charger_report
    (send _wireless_charger_report :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; endpoint_msgs/StateReportMeta _meta
       (send _meta :serialize s)
     ;; endpoint_msgs/WirelessChargerReport _wireless_charger_report
       (send _wireless_charger_report :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; endpoint_msgs/StateReportMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; endpoint_msgs/WirelessChargerReport _wireless_charger_report
     (send _wireless_charger_report :deserialize buf ptr-) (incf ptr- (send _wireless_charger_report :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WirelessChargeReport :md5sum-) "75487bab2d139a12659d9f3fa45cf258")
(setf (get endpoint_msgs::WirelessChargeReport :datatype-) "endpoint_msgs/WirelessChargeReport")
(setf (get endpoint_msgs::WirelessChargeReport :definition-)
      "std_msgs/Header header
endpoint_msgs/StateReportMeta meta
endpoint_msgs/WirelessChargerReport wireless_charger_report

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: endpoint_msgs/StateReportMeta
uint64 timestamp_us

================================================================================
MSG: endpoint_msgs/WirelessChargerReport
uint8 WIRELESS_CHARGER_REPORT_DATA = 1
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



(provide :endpoint_msgs/WirelessChargeReport "75487bab2d139a12659d9f3fa45cf258")


