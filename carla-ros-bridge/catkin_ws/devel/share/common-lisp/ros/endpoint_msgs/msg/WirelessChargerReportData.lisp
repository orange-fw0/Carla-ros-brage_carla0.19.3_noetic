; Auto-generated. Do not edit!


(cl:in-package endpoint_msgs-msg)


;//! \htmlinclude WirelessChargerReportData.msg.html

(cl:defclass <WirelessChargerReportData> (roslisp-msg-protocol:ros-message)
  ((timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (link_state
    :reader link_state
    :initarg :link_state
    :type endpoint_msgs-msg:WrlsChrgWifiSts
    :initform (cl:make-instance 'endpoint_msgs-msg:WrlsChrgWifiSts))
   (detected_state
    :reader detected_state
    :initarg :detected_state
    :type endpoint_msgs-msg:WrlsChrgDetResult
    :initform (cl:make-instance 'endpoint_msgs-msg:WrlsChrgDetResult))
   (is_offset_x_vaild
    :reader is_offset_x_vaild
    :initarg :is_offset_x_vaild
    :type cl:boolean
    :initform cl:nil)
   (is_offset_y_vaild
    :reader is_offset_y_vaild
    :initarg :is_offset_y_vaild
    :type cl:boolean
    :initform cl:nil)
   (is_yaw_valid
    :reader is_yaw_valid
    :initarg :is_yaw_valid
    :type cl:boolean
    :initform cl:nil)
   (offset_x
    :reader offset_x
    :initarg :offset_x
    :type cl:integer
    :initform 0)
   (offset_y
    :reader offset_y
    :initarg :offset_y
    :type cl:integer
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (rltv_pos_of_charge_board_x
    :reader rltv_pos_of_charge_board_x
    :initarg :rltv_pos_of_charge_board_x
    :type cl:integer
    :initform 0)
   (rltv_pos_of_charge_board_y
    :reader rltv_pos_of_charge_board_y
    :initarg :rltv_pos_of_charge_board_y
    :type cl:integer
    :initform 0)
   (charge_board_size_x
    :reader charge_board_size_x
    :initarg :charge_board_size_x
    :type cl:integer
    :initform 0)
   (charge_board_size_y
    :reader charge_board_size_y
    :initarg :charge_board_size_y
    :type cl:integer
    :initform 0)
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass WirelessChargerReportData (<WirelessChargerReportData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WirelessChargerReportData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WirelessChargerReportData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name endpoint_msgs-msg:<WirelessChargerReportData> is deprecated: use endpoint_msgs-msg:WirelessChargerReportData instead.")))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:timestamp_us-val is deprecated.  Use endpoint_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'link_state-val :lambda-list '(m))
(cl:defmethod link_state-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:link_state-val is deprecated.  Use endpoint_msgs-msg:link_state instead.")
  (link_state m))

(cl:ensure-generic-function 'detected_state-val :lambda-list '(m))
(cl:defmethod detected_state-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:detected_state-val is deprecated.  Use endpoint_msgs-msg:detected_state instead.")
  (detected_state m))

(cl:ensure-generic-function 'is_offset_x_vaild-val :lambda-list '(m))
(cl:defmethod is_offset_x_vaild-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:is_offset_x_vaild-val is deprecated.  Use endpoint_msgs-msg:is_offset_x_vaild instead.")
  (is_offset_x_vaild m))

(cl:ensure-generic-function 'is_offset_y_vaild-val :lambda-list '(m))
(cl:defmethod is_offset_y_vaild-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:is_offset_y_vaild-val is deprecated.  Use endpoint_msgs-msg:is_offset_y_vaild instead.")
  (is_offset_y_vaild m))

(cl:ensure-generic-function 'is_yaw_valid-val :lambda-list '(m))
(cl:defmethod is_yaw_valid-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:is_yaw_valid-val is deprecated.  Use endpoint_msgs-msg:is_yaw_valid instead.")
  (is_yaw_valid m))

(cl:ensure-generic-function 'offset_x-val :lambda-list '(m))
(cl:defmethod offset_x-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:offset_x-val is deprecated.  Use endpoint_msgs-msg:offset_x instead.")
  (offset_x m))

(cl:ensure-generic-function 'offset_y-val :lambda-list '(m))
(cl:defmethod offset_y-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:offset_y-val is deprecated.  Use endpoint_msgs-msg:offset_y instead.")
  (offset_y m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:yaw-val is deprecated.  Use endpoint_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'rltv_pos_of_charge_board_x-val :lambda-list '(m))
(cl:defmethod rltv_pos_of_charge_board_x-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rltv_pos_of_charge_board_x-val is deprecated.  Use endpoint_msgs-msg:rltv_pos_of_charge_board_x instead.")
  (rltv_pos_of_charge_board_x m))

(cl:ensure-generic-function 'rltv_pos_of_charge_board_y-val :lambda-list '(m))
(cl:defmethod rltv_pos_of_charge_board_y-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:rltv_pos_of_charge_board_y-val is deprecated.  Use endpoint_msgs-msg:rltv_pos_of_charge_board_y instead.")
  (rltv_pos_of_charge_board_y m))

(cl:ensure-generic-function 'charge_board_size_x-val :lambda-list '(m))
(cl:defmethod charge_board_size_x-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:charge_board_size_x-val is deprecated.  Use endpoint_msgs-msg:charge_board_size_x instead.")
  (charge_board_size_x m))

(cl:ensure-generic-function 'charge_board_size_y-val :lambda-list '(m))
(cl:defmethod charge_board_size_y-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:charge_board_size_y-val is deprecated.  Use endpoint_msgs-msg:charge_board_size_y instead.")
  (charge_board_size_y m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <WirelessChargerReportData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader endpoint_msgs-msg:reserved-val is deprecated.  Use endpoint_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WirelessChargerReportData>) ostream)
  "Serializes a message object of type '<WirelessChargerReportData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'link_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detected_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_offset_x_vaild) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_offset_y_vaild) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_yaw_valid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'offset_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'offset_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'rltv_pos_of_charge_board_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rltv_pos_of_charge_board_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'charge_board_size_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'charge_board_size_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WirelessChargerReportData>) istream)
  "Deserializes a message object of type '<WirelessChargerReportData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'link_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detected_state) istream)
    (cl:setf (cl:slot-value msg 'is_offset_x_vaild) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_offset_y_vaild) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_yaw_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'offset_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'offset_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rltv_pos_of_charge_board_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rltv_pos_of_charge_board_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_board_size_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'charge_board_size_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WirelessChargerReportData>)))
  "Returns string type for a message object of type '<WirelessChargerReportData>"
  "endpoint_msgs/WirelessChargerReportData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WirelessChargerReportData)))
  "Returns string type for a message object of type 'WirelessChargerReportData"
  "endpoint_msgs/WirelessChargerReportData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WirelessChargerReportData>)))
  "Returns md5sum for a message object of type '<WirelessChargerReportData>"
  "a8dbebe4cb8ec743a217e9c33001c217")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WirelessChargerReportData)))
  "Returns md5sum for a message object of type 'WirelessChargerReportData"
  "a8dbebe4cb8ec743a217e9c33001c217")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WirelessChargerReportData>)))
  "Returns full string definition for message of type '<WirelessChargerReportData>"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WrlsChrgWifiSts link_state~%endpoint_msgs/WrlsChrgDetResult detected_state~%bool is_offset_x_vaild~%bool is_offset_y_vaild~%bool is_yaw_valid~%int32 offset_x~%int32 offset_y~%float32 yaw~%int32 rltv_pos_of_charge_board_x~%int32 rltv_pos_of_charge_board_y~%int32 charge_board_size_x~%int32 charge_board_size_y~%string reserved~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgWifiSts~%uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0~%uint8 WIRELESS_CHARGER_WIFI_ON = 1~%uint8 WIRELESS_CHARGER_WIFI_OFF = 2~%uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3~%uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgDetResult~%uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5~%uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7~%uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WirelessChargerReportData)))
  "Returns full string definition for message of type 'WirelessChargerReportData"
  (cl:format cl:nil "uint64 timestamp_us~%endpoint_msgs/WrlsChrgWifiSts link_state~%endpoint_msgs/WrlsChrgDetResult detected_state~%bool is_offset_x_vaild~%bool is_offset_y_vaild~%bool is_yaw_valid~%int32 offset_x~%int32 offset_y~%float32 yaw~%int32 rltv_pos_of_charge_board_x~%int32 rltv_pos_of_charge_board_y~%int32 charge_board_size_x~%int32 charge_board_size_y~%string reserved~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgWifiSts~%uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0~%uint8 WIRELESS_CHARGER_WIFI_ON = 1~%uint8 WIRELESS_CHARGER_WIFI_OFF = 2~%uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3~%uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4~%uint8 value~%~%================================================================================~%MSG: endpoint_msgs/WrlsChrgDetResult~%uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3~%uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5~%uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6~%uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7~%uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WirelessChargerReportData>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'link_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detected_state))
     1
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WirelessChargerReportData>))
  "Converts a ROS message object to a list"
  (cl:list 'WirelessChargerReportData
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':link_state (link_state msg))
    (cl:cons ':detected_state (detected_state msg))
    (cl:cons ':is_offset_x_vaild (is_offset_x_vaild msg))
    (cl:cons ':is_offset_y_vaild (is_offset_y_vaild msg))
    (cl:cons ':is_yaw_valid (is_yaw_valid msg))
    (cl:cons ':offset_x (offset_x msg))
    (cl:cons ':offset_y (offset_y msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':rltv_pos_of_charge_board_x (rltv_pos_of_charge_board_x msg))
    (cl:cons ':rltv_pos_of_charge_board_y (rltv_pos_of_charge_board_y msg))
    (cl:cons ':charge_board_size_x (charge_board_size_x msg))
    (cl:cons ':charge_board_size_y (charge_board_size_y msg))
    (cl:cons ':reserved (reserved msg))
))
