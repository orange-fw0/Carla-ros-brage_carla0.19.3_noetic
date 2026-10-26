; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WirelessChargeReport.msg.html

(cl:defclass <WirelessChargeReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (meta
    :reader meta
    :initarg :meta
    :type endpoint_msgs-msg:StateReportMeta
    :initform (cl:make-instance 'endpoint_msgs-msg:StateReportMeta))
   (wireless_charger_report
    :reader wireless_charger_report
    :initarg :wireless_charger_report
    :type endpoint_msgs-msg:WirelessChargerReport
    :initform (cl:make-instance 'endpoint_msgs-msg:WirelessChargerReport)))
)

(cl:defclass WirelessChargeReport (<WirelessChargeReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WirelessChargeReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WirelessChargeReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WirelessChargeReport> is deprecated: use endpoint_msgs-msg:WirelessChargeReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WirelessChargeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:header-val is deprecated.  Use endpoint_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <WirelessChargeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:meta-val is deprecated.  Use endpoint_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'wireless_charger_report-val :lambda-list '(m))
(cl:defmethod wireless_charger_report-val ((m <WirelessChargeReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wireless_charger_report-val is deprecated.  Use endpoint_msgs-msg:wireless_charger_report instead.")
  (wireless_charger_report m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WirelessChargeReport>) ostream)
  "Serializes a message object of type '<WirelessChargeReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wireless_charger_report) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WirelessChargeReport>) istream)
  "Deserializes a message object of type '<WirelessChargeReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wireless_charger_report) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WirelessChargeReport>)))
  "Returns string type for a message object of type '<WirelessChargeReport>"
  "endpoint_msgs/WirelessChargeReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WirelessChargeReport)))
  "Returns string type for a message object of type 'WirelessChargeReport"
  "endpoint_msgs/WirelessChargeReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WirelessChargeReport>)))
  "Returns md5sum for a message object of type '<WirelessChargeReport>"
  "75487bab2d139a12659d9f3fa45cf258")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WirelessChargeReport)))
  "Returns md5sum for a message object of type 'WirelessChargeReport"
  "75487bab2d139a12659d9f3fa45cf258")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WirelessChargeReport>)))
  "Returns full string definition for message of type '<WirelessChargeReport>"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/StateReportMeta meta~%endpoint_msgs/WirelessChargerReport wireless_charger_report~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/StateReportMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: endpoint_msgs/WirelessChargerReport~%uint8 WIRELESS_CHARGER_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WirelessChargerReportData wireless_charger_report_data~%~%================================================================================~%MSG: endpoint_msgs/WirelessChargerReportData~%uint64 timestamp_us~%endpoint_msgs/WrlsChrgWifiSts link_state~%endpoint_msgs/WrlsChrgDetResult detected_state~%bool is_offset_x_vaild~%bool is_offset_y_vaild~%bool is_yaw_valid~%int32 offset_x~%int32 offset_y~%float32 yaw~%int32 rltv_pos_of_charge_board_x~%int32 rltv_pos_of_charge_board_y~%int32 charge_board_size_x~%int32 charge_board_size_y~%string reserved~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgWifiSts~%uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0~%uint8 WIRELESS_CHARGER_WIFI_ON = 1~%uint8 WIRELESS_CHARGER_WIFI_OFF = 2~%uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3~%uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgDetResult~%uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5~%uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7~%uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WirelessChargeReport)))
  "Returns full string definition for message of type 'WirelessChargeReport"
  (cl:format cl:nil "std_msgs/Header header~%endpoint_msgs/StateReportMeta meta~%endpoint_msgs/WirelessChargerReport wireless_charger_report~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: endpoint_msgs/StateReportMeta~%uint64 timestamp_us~%~%================================================================================~%MSG: endpoint_msgs/WirelessChargerReport~%uint8 WIRELESS_CHARGER_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WirelessChargerReportData wireless_charger_report_data~%~%================================================================================~%MSG: endpoint_msgs/WirelessChargerReportData~%uint64 timestamp_us~%endpoint_msgs/WrlsChrgWifiSts link_state~%endpoint_msgs/WrlsChrgDetResult detected_state~%bool is_offset_x_vaild~%bool is_offset_y_vaild~%bool is_yaw_valid~%int32 offset_x~%int32 offset_y~%float32 yaw~%int32 rltv_pos_of_charge_board_x~%int32 rltv_pos_of_charge_board_y~%int32 charge_board_size_x~%int32 charge_board_size_y~%string reserved~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgWifiSts~%uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0~%uint8 WIRELESS_CHARGER_WIFI_ON = 1~%uint8 WIRELESS_CHARGER_WIFI_OFF = 2~%uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3~%uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgDetResult~%uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5~%uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7~%uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WirelessChargeReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wireless_charger_report))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WirelessChargeReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WirelessChargeReport
    (cl:cons ':header (header msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':wireless_charger_report (wireless_charger_report msg))
))
