; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude SimplifiedLaneNaviInfo.msg.html

(cl:defclass <SimplifiedLaneNaviInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (path_road_ids
    :reader path_road_ids
    :initarg :path_road_ids
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (roads
    :reader roads
    :initarg :roads
    :type (cl:vector lane_navi_info_msgs-msg:SimplifiedRoad)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:SimplifiedRoad :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:SimplifiedRoad)))
   (meta
    :reader meta
    :initarg :meta
    :type lane_navi_info_msgs-msg:Meta
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Meta))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass SimplifiedLaneNaviInfo (<SimplifiedLaneNaviInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimplifiedLaneNaviInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimplifiedLaneNaviInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<SimplifiedLaneNaviInfo> is deprecated: use lane_navi_info_msgs-msg:SimplifiedLaneNaviInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SimplifiedLaneNaviInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:header-val is deprecated.  Use lane_navi_info_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'path_road_ids-val :lambda-list '(m))
(cl:defmethod path_road_ids-val ((m <SimplifiedLaneNaviInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:path_road_ids-val is deprecated.  Use lane_navi_info_msgs-msg:path_road_ids instead.")
  (path_road_ids m))

(cl:ensure-generic-function 'roads-val :lambda-list '(m))
(cl:defmethod roads-val ((m <SimplifiedLaneNaviInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:roads-val is deprecated.  Use lane_navi_info_msgs-msg:roads instead.")
  (roads m))

(cl:ensure-generic-function 'meta-val :lambda-list '(m))
(cl:defmethod meta-val ((m <SimplifiedLaneNaviInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:meta-val is deprecated.  Use lane_navi_info_msgs-msg:meta instead.")
  (meta m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <SimplifiedLaneNaviInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:reserved-val is deprecated.  Use lane_navi_info_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimplifiedLaneNaviInfo>) ostream)
  "Serializes a message object of type '<SimplifiedLaneNaviInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'path_road_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'path_road_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roads))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'roads))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'meta) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimplifiedLaneNaviInfo>) istream)
  "Deserializes a message object of type '<SimplifiedLaneNaviInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'path_road_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'path_road_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roads) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roads)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:SimplifiedRoad))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'meta) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimplifiedLaneNaviInfo>)))
  "Returns string type for a message object of type '<SimplifiedLaneNaviInfo>"
  "lane_navi_info_msgs/SimplifiedLaneNaviInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimplifiedLaneNaviInfo)))
  "Returns string type for a message object of type 'SimplifiedLaneNaviInfo"
  "lane_navi_info_msgs/SimplifiedLaneNaviInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimplifiedLaneNaviInfo>)))
  "Returns md5sum for a message object of type '<SimplifiedLaneNaviInfo>"
  "b22ecc10ca9f8d08af284a87babe91a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimplifiedLaneNaviInfo)))
  "Returns md5sum for a message object of type 'SimplifiedLaneNaviInfo"
  "b22ecc10ca9f8d08af284a87babe91a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimplifiedLaneNaviInfo>)))
  "Returns full string definition for message of type '<SimplifiedLaneNaviInfo>"
  (cl:format cl:nil "std_msgs/Header header~%landmark_msgs/TrackId[] path_road_ids~%lane_navi_info_msgs/SimplifiedRoad[] roads~%lane_navi_info_msgs/Meta meta~%string reserved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SimplifiedRoad~%landmark_msgs/TrackId road_id~%float32 length~%lane_navi_info_msgs/SpeedLimit[] speed_limits~%lane_navi_info_msgs/Curvature[] curvatures~%lane_navi_info_msgs/Slope[] slopes~%landmark_msgs/RoadNodeRoadClassEnum road_class~%landmark_msgs/RoadNodeFormwayEnum[] formways~%landmark_msgs/TrackId[] prev_roads~%landmark_msgs/TrackId[] next_roads~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/Curvature~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/Slope~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: landmark_msgs/RoadNodeRoadClassEnum~%uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeFormwayEnum~%uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Meta~%string source~%string version~%string reserved_data~%lane_navi_info_msgs/MapType map_type~%lane_navi_info_msgs/AdministrativeInfo administrative_info~%lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule~%~%================================================================================~%MSG: lane_navi_info_msgs/MapType~%uint8 SD_PRO = 0~%uint8 SD_MAP = 1~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/AdministrativeInfo~%uint16 UNKNOWN = 0~%uint16 BELGIEN = 56~%uint16 BULGARIEN = 100~%uint16 DAENEMARK = 208~%uint16 DEUTSCHLAND = 276~%uint16 ESTLAND = 233~%uint16 FINNLAND = 246~%uint16 FRANKREICH = 250~%uint16 GRIECHENLAND = 300~%uint16 GROSSBRITANNIEN = 826~%uint16 IRLAND = 372~%uint16 ISLAND = 352~%uint16 ISRAEL = 376~%uint16 ITALIEN = 380~%uint16 KROATIEN = 191~%uint16 LETTLAND = 428~%uint16 LITAUEN = 440~%uint16 LUXEMBURG = 442~%uint16 MALTA = 470~%uint16 NIEDERLANDE = 528~%uint16 NORWEGEN = 578~%uint16 OESTERREICH = 40~%uint16 POLEN = 616~%uint16 PORTUGAL = 620~%uint16 RUMAENIEN = 642~%uint16 SCHWEDEN = 752~%uint16 SCHWEIZ = 756~%uint16 SLOWAKISCHE_REPUBLIK = 703~%uint16 SLOWENIEN = 705~%uint16 SPANIEN = 724~%uint16 TSCHECHISCHE_REPUBLIK = 203~%uint16 UNGARN = 348~%uint16 ZYPERN_EU_GEBIET = 196~%uint16 HONGKONG = 344~%uint16 MACAO = 446~%uint16 SINGAPUR = 702~%uint16 FRANZ_POLYNES = 258~%uint16 REP_NORDMAZEDONIEN = 807~%uint16 SERBIEN = 688~%uint16 TUERKEI = 792~%uint16 UKRAINE = 804~%uint16 WESTJORDANLAND = 275~%uint16 ZYPERN_NORD = 10001~%uint16 CHINA = 156~%uint16 JAPAN = 392~%uint16 USA = 840~%uint16 OTHERS = 9999~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimplifiedLaneNaviInfo)))
  "Returns full string definition for message of type 'SimplifiedLaneNaviInfo"
  (cl:format cl:nil "std_msgs/Header header~%landmark_msgs/TrackId[] path_road_ids~%lane_navi_info_msgs/SimplifiedRoad[] roads~%lane_navi_info_msgs/Meta meta~%string reserved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SimplifiedRoad~%landmark_msgs/TrackId road_id~%float32 length~%lane_navi_info_msgs/SpeedLimit[] speed_limits~%lane_navi_info_msgs/Curvature[] curvatures~%lane_navi_info_msgs/Slope[] slopes~%landmark_msgs/RoadNodeRoadClassEnum road_class~%landmark_msgs/RoadNodeFormwayEnum[] formways~%landmark_msgs/TrackId[] prev_roads~%landmark_msgs/TrackId[] next_roads~%~%================================================================================~%MSG: lane_navi_info_msgs/SpeedLimit~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/InterpolationType~%uint8 UNKNOWN = 0~%uint8 STEP = 1~%uint8 LINEAR = 2~%uint8 GENERAL = 3~%uint8 OHTERS = 255~%uint8 type~%float32[] addition_values~%float32[] params~%~%================================================================================~%MSG: lane_navi_info_msgs/Curvature~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: lane_navi_info_msgs/Slope~%float32 value~%float32 start_offset~%float32 end_offset~%lane_navi_info_msgs/InterpolationType interpolation_type~%~%================================================================================~%MSG: landmark_msgs/RoadNodeRoadClassEnum~%uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeFormwayEnum~%uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/Meta~%string source~%string version~%string reserved_data~%lane_navi_info_msgs/MapType map_type~%lane_navi_info_msgs/AdministrativeInfo administrative_info~%lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule~%~%================================================================================~%MSG: lane_navi_info_msgs/MapType~%uint8 SD_PRO = 0~%uint8 SD_MAP = 1~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/AdministrativeInfo~%uint16 UNKNOWN = 0~%uint16 BELGIEN = 56~%uint16 BULGARIEN = 100~%uint16 DAENEMARK = 208~%uint16 DEUTSCHLAND = 276~%uint16 ESTLAND = 233~%uint16 FINNLAND = 246~%uint16 FRANKREICH = 250~%uint16 GRIECHENLAND = 300~%uint16 GROSSBRITANNIEN = 826~%uint16 IRLAND = 372~%uint16 ISLAND = 352~%uint16 ISRAEL = 376~%uint16 ITALIEN = 380~%uint16 KROATIEN = 191~%uint16 LETTLAND = 428~%uint16 LITAUEN = 440~%uint16 LUXEMBURG = 442~%uint16 MALTA = 470~%uint16 NIEDERLANDE = 528~%uint16 NORWEGEN = 578~%uint16 OESTERREICH = 40~%uint16 POLEN = 616~%uint16 PORTUGAL = 620~%uint16 RUMAENIEN = 642~%uint16 SCHWEDEN = 752~%uint16 SCHWEIZ = 756~%uint16 SLOWAKISCHE_REPUBLIK = 703~%uint16 SLOWENIEN = 705~%uint16 SPANIEN = 724~%uint16 TSCHECHISCHE_REPUBLIK = 203~%uint16 UNGARN = 348~%uint16 ZYPERN_EU_GEBIET = 196~%uint16 HONGKONG = 344~%uint16 MACAO = 446~%uint16 SINGAPUR = 702~%uint16 FRANZ_POLYNES = 258~%uint16 REP_NORDMAZEDONIEN = 807~%uint16 SERBIEN = 688~%uint16 TUERKEI = 792~%uint16 UKRAINE = 804~%uint16 WESTJORDANLAND = 275~%uint16 ZYPERN_NORD = 10001~%uint16 CHINA = 156~%uint16 JAPAN = 392~%uint16 USA = 840~%uint16 OTHERS = 9999~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule~%uint8 UNKNOWN = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimplifiedLaneNaviInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'path_road_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'meta))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimplifiedLaneNaviInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SimplifiedLaneNaviInfo
    (cl:cons ':header (header msg))
    (cl:cons ':path_road_ids (path_road_ids msg))
    (cl:cons ':roads (roads msg))
    (cl:cons ':meta (meta msg))
    (cl:cons ':reserved (reserved msg))
))
