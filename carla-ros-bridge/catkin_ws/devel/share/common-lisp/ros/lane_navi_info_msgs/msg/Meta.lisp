; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude Meta.msg.html

(cl:defclass <Meta> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (version
    :reader version
    :initarg :version
    :type cl:string
    :initform "")
   (reserved_data
    :reader reserved_data
    :initarg :reserved_data
    :type cl:string
    :initform "")
   (map_type
    :reader map_type
    :initarg :map_type
    :type lane_navi_info_msgs-msg:MapType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:MapType))
   (administrative_info
    :reader administrative_info
    :initarg :administrative_info
    :type lane_navi_info_msgs-msg:AdministrativeInfo
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:AdministrativeInfo))
   (administrative_wide_driving_rule
    :reader administrative_wide_driving_rule
    :initarg :administrative_wide_driving_rule
    :type lane_navi_info_msgs-msg:AdministrativeWideDrivingRule
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:AdministrativeWideDrivingRule)))
)

(cl:defclass Meta (<Meta>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Meta>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Meta)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<Meta> is deprecated: use lane_navi_info_msgs-msg:Meta instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:source-val is deprecated.  Use lane_navi_info_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'version-val :lambda-list '(m))
(cl:defmethod version-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:version-val is deprecated.  Use lane_navi_info_msgs-msg:version instead.")
  (version m))

(cl:ensure-generic-function 'reserved_data-val :lambda-list '(m))
(cl:defmethod reserved_data-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:reserved_data-val is deprecated.  Use lane_navi_info_msgs-msg:reserved_data instead.")
  (reserved_data m))

(cl:ensure-generic-function 'map_type-val :lambda-list '(m))
(cl:defmethod map_type-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:map_type-val is deprecated.  Use lane_navi_info_msgs-msg:map_type instead.")
  (map_type m))

(cl:ensure-generic-function 'administrative_info-val :lambda-list '(m))
(cl:defmethod administrative_info-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:administrative_info-val is deprecated.  Use lane_navi_info_msgs-msg:administrative_info instead.")
  (administrative_info m))

(cl:ensure-generic-function 'administrative_wide_driving_rule-val :lambda-list '(m))
(cl:defmethod administrative_wide_driving_rule-val ((m <Meta>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:administrative_wide_driving_rule-val is deprecated.  Use lane_navi_info_msgs-msg:administrative_wide_driving_rule instead.")
  (administrative_wide_driving_rule m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Meta>) ostream)
  "Serializes a message object of type '<Meta>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'version))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_data))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'administrative_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'administrative_wide_driving_rule) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Meta>) istream)
  "Deserializes a message object of type '<Meta>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'administrative_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'administrative_wide_driving_rule) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Meta>)))
  "Returns string type for a message object of type '<Meta>"
  "lane_navi_info_msgs/Meta")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Meta)))
  "Returns string type for a message object of type 'Meta"
  "lane_navi_info_msgs/Meta")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Meta>)))
  "Returns md5sum for a message object of type '<Meta>"
  "304013d29f82cbefc689634092a9193b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Meta)))
  "Returns md5sum for a message object of type 'Meta"
  "304013d29f82cbefc689634092a9193b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Meta>)))
  "Returns full string definition for message of type '<Meta>"
  (cl:format cl:nil "string source~%string version~%string reserved_data~%lane_navi_info_msgs/MapType map_type~%lane_navi_info_msgs/AdministrativeInfo administrative_info~%lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule~%~%================================================================================~%MSG: lane_navi_info_msgs/MapType~%uint8 SD_PRO = 0~%uint8 SD_MAP = 1~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/AdministrativeInfo~%uint16 UNKNOWN = 0~%uint16 BELGIEN = 56~%uint16 BULGARIEN = 100~%uint16 DAENEMARK = 208~%uint16 DEUTSCHLAND = 276~%uint16 ESTLAND = 233~%uint16 FINNLAND = 246~%uint16 FRANKREICH = 250~%uint16 GRIECHENLAND = 300~%uint16 GROSSBRITANNIEN = 826~%uint16 IRLAND = 372~%uint16 ISLAND = 352~%uint16 ISRAEL = 376~%uint16 ITALIEN = 380~%uint16 KROATIEN = 191~%uint16 LETTLAND = 428~%uint16 LITAUEN = 440~%uint16 LUXEMBURG = 442~%uint16 MALTA = 470~%uint16 NIEDERLANDE = 528~%uint16 NORWEGEN = 578~%uint16 OESTERREICH = 40~%uint16 POLEN = 616~%uint16 PORTUGAL = 620~%uint16 RUMAENIEN = 642~%uint16 SCHWEDEN = 752~%uint16 SCHWEIZ = 756~%uint16 SLOWAKISCHE_REPUBLIK = 703~%uint16 SLOWENIEN = 705~%uint16 SPANIEN = 724~%uint16 TSCHECHISCHE_REPUBLIK = 203~%uint16 UNGARN = 348~%uint16 ZYPERN_EU_GEBIET = 196~%uint16 HONGKONG = 344~%uint16 MACAO = 446~%uint16 SINGAPUR = 702~%uint16 FRANZ_POLYNES = 258~%uint16 REP_NORDMAZEDONIEN = 807~%uint16 SERBIEN = 688~%uint16 TUERKEI = 792~%uint16 UKRAINE = 804~%uint16 WESTJORDANLAND = 275~%uint16 ZYPERN_NORD = 10001~%uint16 CHINA = 156~%uint16 JAPAN = 392~%uint16 USA = 840~%uint16 OTHERS = 9999~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Meta)))
  "Returns full string definition for message of type 'Meta"
  (cl:format cl:nil "string source~%string version~%string reserved_data~%lane_navi_info_msgs/MapType map_type~%lane_navi_info_msgs/AdministrativeInfo administrative_info~%lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule~%~%================================================================================~%MSG: lane_navi_info_msgs/MapType~%uint8 SD_PRO = 0~%uint8 SD_MAP = 1~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/AdministrativeInfo~%uint16 UNKNOWN = 0~%uint16 BELGIEN = 56~%uint16 BULGARIEN = 100~%uint16 DAENEMARK = 208~%uint16 DEUTSCHLAND = 276~%uint16 ESTLAND = 233~%uint16 FINNLAND = 246~%uint16 FRANKREICH = 250~%uint16 GRIECHENLAND = 300~%uint16 GROSSBRITANNIEN = 826~%uint16 IRLAND = 372~%uint16 ISLAND = 352~%uint16 ISRAEL = 376~%uint16 ITALIEN = 380~%uint16 KROATIEN = 191~%uint16 LETTLAND = 428~%uint16 LITAUEN = 440~%uint16 LUXEMBURG = 442~%uint16 MALTA = 470~%uint16 NIEDERLANDE = 528~%uint16 NORWEGEN = 578~%uint16 OESTERREICH = 40~%uint16 POLEN = 616~%uint16 PORTUGAL = 620~%uint16 RUMAENIEN = 642~%uint16 SCHWEDEN = 752~%uint16 SCHWEIZ = 756~%uint16 SLOWAKISCHE_REPUBLIK = 703~%uint16 SLOWENIEN = 705~%uint16 SPANIEN = 724~%uint16 TSCHECHISCHE_REPUBLIK = 203~%uint16 UNGARN = 348~%uint16 ZYPERN_EU_GEBIET = 196~%uint16 HONGKONG = 344~%uint16 MACAO = 446~%uint16 SINGAPUR = 702~%uint16 FRANZ_POLYNES = 258~%uint16 REP_NORDMAZEDONIEN = 807~%uint16 SERBIEN = 688~%uint16 TUERKEI = 792~%uint16 UKRAINE = 804~%uint16 WESTJORDANLAND = 275~%uint16 ZYPERN_NORD = 10001~%uint16 CHINA = 156~%uint16 JAPAN = 392~%uint16 USA = 840~%uint16 OTHERS = 9999~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Meta>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:length (cl:slot-value msg 'version))
     4 (cl:length (cl:slot-value msg 'reserved_data))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'administrative_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'administrative_wide_driving_rule))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Meta>))
  "Converts a ROS message object to a list"
  (cl:list 'Meta
    (cl:cons ':source (source msg))
    (cl:cons ':version (version msg))
    (cl:cons ':reserved_data (reserved_data msg))
    (cl:cons ':map_type (map_type msg))
    (cl:cons ':administrative_info (administrative_info msg))
    (cl:cons ':administrative_wide_driving_rule (administrative_wide_driving_rule msg))
))
