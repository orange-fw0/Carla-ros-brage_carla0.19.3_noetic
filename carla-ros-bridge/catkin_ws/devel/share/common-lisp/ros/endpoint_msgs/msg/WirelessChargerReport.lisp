; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WirelessChargerReport.msg.html

(cl:defclass <WirelessChargerReport> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (wireless_charger_report_data
    :reader wireless_charger_report_data
    :initarg :wireless_charger_report_data
    :type endpoint_msgs-msg:WirelessChargerReportData
    :initform (cl:make-instance 'endpoint_msgs-msg:WirelessChargerReportData)))
)

(cl:defclass WirelessChargerReport (<WirelessChargerReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WirelessChargerReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WirelessChargerReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WirelessChargerReport> is deprecated: use endpoint_msgs-msg:WirelessChargerReport instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <WirelessChargerReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:available-val is deprecated.  Use endpoint_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'wireless_charger_report_data-val :lambda-list '(m))
(cl:defmethod wireless_charger_report_data-val ((m <WirelessChargerReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:wireless_charger_report_data-val is deprecated.  Use endpoint_msgs-msg:wireless_charger_report_data instead.")
  (wireless_charger_report_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WirelessChargerReport>)))
    "Constants for message type '<WirelessChargerReport>"
  '((:WIRELESS_CHARGER_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WirelessChargerReport)))
    "Constants for message type 'WirelessChargerReport"
  '((:WIRELESS_CHARGER_REPORT_DATA . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WirelessChargerReport>) ostream)
  "Serializes a message object of type '<WirelessChargerReport>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wireless_charger_report_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WirelessChargerReport>) istream)
  "Deserializes a message object of type '<WirelessChargerReport>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wireless_charger_report_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WirelessChargerReport>)))
  "Returns string type for a message object of type '<WirelessChargerReport>"
  "endpoint_msgs/WirelessChargerReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WirelessChargerReport)))
  "Returns string type for a message object of type 'WirelessChargerReport"
  "endpoint_msgs/WirelessChargerReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WirelessChargerReport>)))
  "Returns md5sum for a message object of type '<WirelessChargerReport>"
  "6fbf0f4864be339be147d278f9483fd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WirelessChargerReport)))
  "Returns md5sum for a message object of type 'WirelessChargerReport"
  "6fbf0f4864be339be147d278f9483fd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WirelessChargerReport>)))
  "Returns full string definition for message of type '<WirelessChargerReport>"
  (cl:format cl:nil "uint8 WIRELESS_CHARGER_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WirelessChargerReportData wireless_charger_report_data~%~%================================================================================~%MSG: endpoint_msgs/WirelessChargerReportData~%uint64 timestamp_us~%endpoint_msgs/WrlsChrgWifiSts link_state~%endpoint_msgs/WrlsChrgDetResult detected_state~%bool is_offset_x_vaild~%bool is_offset_y_vaild~%bool is_yaw_valid~%int32 offset_x~%int32 offset_y~%float32 yaw~%int32 rltv_pos_of_charge_board_x~%int32 rltv_pos_of_charge_board_y~%int32 charge_board_size_x~%int32 charge_board_size_y~%string reserved~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgWifiSts~%uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0~%uint8 WIRELESS_CHARGER_WIFI_ON = 1~%uint8 WIRELESS_CHARGER_WIFI_OFF = 2~%uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3~%uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgDetResult~%uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5~%uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7~%uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WirelessChargerReport)))
  "Returns full string definition for message of type 'WirelessChargerReport"
  (cl:format cl:nil "uint8 WIRELESS_CHARGER_REPORT_DATA = 1~%uint8 available~%endpoint_msgs/WirelessChargerReportData wireless_charger_report_data~%~%================================================================================~%MSG: endpoint_msgs/WirelessChargerReportData~%uint64 timestamp_us~%endpoint_msgs/WrlsChrgWifiSts link_state~%endpoint_msgs/WrlsChrgDetResult detected_state~%bool is_offset_x_vaild~%bool is_offset_y_vaild~%bool is_yaw_valid~%int32 offset_x~%int32 offset_y~%float32 yaw~%int32 rltv_pos_of_charge_board_x~%int32 rltv_pos_of_charge_board_y~%int32 charge_board_size_x~%int32 charge_board_size_y~%string reserved~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgWifiSts~%uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0~%uint8 WIRELESS_CHARGER_WIFI_ON = 1~%uint8 WIRELESS_CHARGER_WIFI_OFF = 2~%uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3~%uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgDetResult~%uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5~%uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7~%uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WirelessChargerReport>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wireless_charger_report_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WirelessChargerReport>))
  "Converts a ROS message object to a list"
  (cl:list 'WirelessChargerReport
    (cl:cons ':available (available msg))
    (cl:cons ':wireless_charger_report_data (wireless_charger_report_data msg))
))
