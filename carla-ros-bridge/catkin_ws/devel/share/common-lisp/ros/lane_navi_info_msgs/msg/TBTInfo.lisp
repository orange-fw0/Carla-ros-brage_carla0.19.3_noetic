; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TBTInfo.msg.html

(cl:defclass <TBTInfo> (roslisp-msg-protocol:ros-message)
  ((guide_info_list
    :reader guide_info_list
    :initarg :guide_info_list
    :type (cl:vector lane_navi_info_msgs-msg:TBTGuideInfo)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TBTGuideInfo :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TBTGuideInfo)))
   (lane_info_list
    :reader lane_info_list
    :initarg :lane_info_list
    :type (cl:vector lane_navi_info_msgs-msg:TBTLaneInfo)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TBTLaneInfo :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TBTLaneInfo)))
   (traffic_light_list
    :reader traffic_light_list
    :initarg :traffic_light_list
    :type (cl:vector lane_navi_info_msgs-msg:TBTTrafficLight)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TBTTrafficLight :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TBTTrafficLight)))
   (long_solid_line_list
    :reader long_solid_line_list
    :initarg :long_solid_line_list
    :type (cl:vector lane_navi_info_msgs-msg:TBTLongSolidLine)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:TBTLongSolidLine :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:TBTLongSolidLine)))
   (reserved
    :reader reserved
    :initarg :reserved
    :type cl:string
    :initform ""))
)

(cl:defclass TBTInfo (<TBTInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TBTInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TBTInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TBTInfo> is deprecated: use lane_navi_info_msgs-msg:TBTInfo instead.")))

(cl:ensure-generic-function 'guide_info_list-val :lambda-list '(m))
(cl:defmethod guide_info_list-val ((m <TBTInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:guide_info_list-val is deprecated.  Use lane_navi_info_msgs-msg:guide_info_list instead.")
  (guide_info_list m))

(cl:ensure-generic-function 'lane_info_list-val :lambda-list '(m))
(cl:defmethod lane_info_list-val ((m <TBTInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_info_list-val is deprecated.  Use lane_navi_info_msgs-msg:lane_info_list instead.")
  (lane_info_list m))

(cl:ensure-generic-function 'traffic_light_list-val :lambda-list '(m))
(cl:defmethod traffic_light_list-val ((m <TBTInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:traffic_light_list-val is deprecated.  Use lane_navi_info_msgs-msg:traffic_light_list instead.")
  (traffic_light_list m))

(cl:ensure-generic-function 'long_solid_line_list-val :lambda-list '(m))
(cl:defmethod long_solid_line_list-val ((m <TBTInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:long_solid_line_list-val is deprecated.  Use lane_navi_info_msgs-msg:long_solid_line_list instead.")
  (long_solid_line_list m))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <TBTInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:reserved-val is deprecated.  Use lane_navi_info_msgs-msg:reserved instead.")
  (reserved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TBTInfo>) ostream)
  "Serializes a message object of type '<TBTInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'guide_info_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'guide_info_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_info_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_info_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_list))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'long_solid_line_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'long_solid_line_list))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TBTInfo>) istream)
  "Deserializes a message object of type '<TBTInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'guide_info_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'guide_info_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TBTGuideInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_info_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_info_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TBTLaneInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TBTTrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'long_solid_line_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'long_solid_line_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:TBTLongSolidLine))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TBTInfo>)))
  "Returns string type for a message object of type '<TBTInfo>"
  "lane_navi_info_msgs/TBTInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TBTInfo)))
  "Returns string type for a message object of type 'TBTInfo"
  "lane_navi_info_msgs/TBTInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TBTInfo>)))
  "Returns md5sum for a message object of type '<TBTInfo>"
  "b4123d80d2c63bcac356928b06279342")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TBTInfo)))
  "Returns md5sum for a message object of type 'TBTInfo"
  "b4123d80d2c63bcac356928b06279342")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TBTInfo>)))
  "Returns full string definition for message of type '<TBTInfo>"
  (cl:format cl:nil "lane_navi_info_msgs/TBTGuideInfo[] guide_info_list~%lane_navi_info_msgs/TBTLaneInfo[] lane_info_list~%lane_navi_info_msgs/TBTTrafficLight[] traffic_light_list~%lane_navi_info_msgs/TBTLongSolidLine[] long_solid_line_list~%string reserved~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTGuideInfo~%uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 MAIN_ACTION_VALID = 4~%uint8 ASSIST_ACTION_VALID = 8~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%lane_navi_info_msgs/TBTMainAction main_action~%lane_navi_info_msgs/TBTAssistAction assist_action~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTMainAction~%uint16 MainActionNULL = 0~%uint16 MainActionTurnLeft = 1~%uint16 MainActionTurnRight = 2~%uint16 MainActionSlightLeft = 3~%uint16 MainActionSlightRight = 4~%uint16 MainActionTurnHardLeft = 5~%uint16 MainActionTurnHardRight = 6~%uint16 MainActionUTurn = 7~%uint16 MainActionContinue = 8~%uint16 MainActionMergeLeft = 9~%uint16 MainActionMergeRight = 10~%uint16 MainActionEntryRing = 11~%uint16 MainActionLeaveRing = 12~%uint16 MainActionSlow = 13~%uint16 MainActionPlugContinue = 14~%uint16 MainActionEnterBuilding = 65~%uint16 MainActionLeaveBuilding = 66~%uint16 MainActionByElevator = 67~%uint16 MainActionByStair = 68~%uint16 MainActionByEscalator = 69~%uint16 MainActionCount = 70~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTAssistAction~%uint16 ASSI_ACTION_NULL = 0~%uint16 ASSI_ACTION_ENTRY_MAIN = 1~%uint16 ASSI_ACTION_ENTRY_SIDE_ROAD = 2~%uint16 ASSI_ACTION_ENTRY_FREEWAY = 3~%uint16 ASSI_ACTION_ENTRY_SLIP = 4~%uint16 ASSI_ACTION_ENTRY_TUNNEL = 5~%uint16 ASSI_ACTION_ENTRY_CENTER_BRANCH = 6~%uint16 ASSI_ACTION_ENTRY_RIGHT_BRANCH = 7~%uint16 ASSI_ACTION_ENTRY_LEFT_BRANCH = 8~%uint16 ASSI_ACTION_ENTRY_RIGHT_ROAD = 9~%uint16 ASSI_ACTION_ENTRY_LEFT_ROAD = 10~%uint16 ASSI_ACTION_ENTRY_MERGE_CENTER = 11~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT = 12~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT = 13~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_Sild = 14~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_Sild = 15~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN = 16~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN = 17~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT = 18~%uint16 ASSI_ACTION_ENTRY_FERRY = 19~%uint16 ASSI_ACTION_LEFT_FERRY = 20~%uint16 ASSI_ACTION_ALONG_ROAD = 23~%uint16 ASSI_ACTION_ALONG_SILD = 24~%uint16 ASSI_ACTION_ALONG_MAIN = 25~%uint16 ASSI_ACTION_ARRIVE_EXIT = 32~%uint16 ASSI_ACTION_ARRIVE_SERVICE_AREA = 33~%uint16 ASSI_ACTION_ARRIVE_TOLL_GATE = 34~%uint16 ASSI_ACTION_ARRIVE_WAY = 35~%uint16 ASSI_ACTION_ARRIVE_DESTINATION = 36~%uint16 ASSI_ACTION_ARRIVE_CHARGING_STATION = 37~%uint16 ASSI_ACTION_ENTRY_RING_LEFT_ = 48~%uint16 ASSI_ACTION_ENTRY_RING_RIGHT = 49~%uint16 ASSI_ACTION_ENTRY_RING_CONTINUE = 50~%uint16 ASSI_ACTION_ENTRY_RING_UTURN = 51~%uint16 ASSI_ACTION_SMALL_RING_NOT_COUNT = 52~%uint16 ASSI_ACTION_RIGHT_BRANCH_1 = 64~%uint16 ASSI_ACTION_RIGHT_BRANCH_2 = 65~%uint16 ASSI_ACTION_RIGHT_BRANCH_3 = 66~%uint16 ASSI_ACTION_RIGHT_BRANCH_4 = 67~%uint16 ASSI_ACTION_RIGHT_BRANCH_5 = 68~%uint16 ASSI_ACTION_LEFT_BRANCH_1 = 69~%uint16 ASSI_ACTION_LEFT_BRANCH_2 = 70~%uint16 ASSI_ACTION_LEFT_BRANCH_3 = 71~%uint16 ASSI_ACTION_LEFT_BRANCH_4 = 72~%uint16 ASSI_ACTION_LEFT_BRANCH_5 = 73~%uint16 ASSI_ACTION_ENTER_ULINE = 80~%uint16 ASSI_ACTION_PASS_CROSSWalk = 90~%uint16 ASSI_ACTION_PASS_OVERPASS = 91~%uint16 ASSI_ACTION_PASS_UNDERGROUND = 92~%uint16 ASSI_ACTION_PASS_SQUARE = 93~%uint16 ASSI_ACTION_PASS_PARK = 94~%uint16 ASSI_ACTION_PASS_STAIRCASE = 95~%uint16 ASSI_ACTION_PASS_LIFT = 96~%uint16 ASSI_ACTION_PASS_CABLEWAY = 97~%uint16 ASSI_ACTION_PASS_SKY_CHANNEL = 98~%uint16 ASSI_ACTION_PASS_CHANNEL = 99~%uint16 ASSI_ACTION_PASS_WALKROAD = 100~%uint16 ASSI_ACTION_PASS_BOAT_LINE = 101~%uint16 ASSI_ACTION_PASS_SIGHT_SEEING_LINE = 102~%uint16 ASSI_ACTION_PASS_SKIDWAY = 103~%uint16 ASSI_ACTION_PASS_LADDER = 105~%uint16 ASSI_ACTION_PASS_SLOPE = 106~%uint16 ASSI_ACTION_PASS_BRIDGE = 107~%uint16 ASSI_ACTION_PASS_FERRY = 108~%uint16 ASSI_ACTION_PASS_SUBWAY = 109~%uint16 ASSI_ACTION_SOON_ENTER_Building = 112~%uint16 ASSI_ACTION_SOON_LEAVE_Building = 113~%uint16 ASSI_ACTION_ENTER_ROUNDABOUT = 114~%uint16 ASSI_ACTION_LEAVE_ROUNDABOUT = 115~%uint16 ASSI_ACTION_ENTER_PATH = 116~%uint16 ASSI_ACTION_ENTER_INNER = 117~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_TWO = 118~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_THREE = 119~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO = 120~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE = 121~%uint16 ASSI_ACTION_ENTER_GAS_STATION = 122~%uint16 ASSI_ACTION_ENTER_HOUSING_ESTATE = 123~%uint16 ASSI_ACTION_ENTER_PARK_ROAD = 124~%uint16 ASSI_ACTION_ENTER_OVERHEAD = 125~%uint16 ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD = 126~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD = 127~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD = 128~%uint16 ASSI_ACTION_ALONG_STRAIGHT = 129~%uint16 ASSI_ACTION_DOWN_OVERHEAD = 130~%uint16 ASSI_ACTION_ENTER_LEFT_OVERHEAD = 131~%uint16 ASSI_ACTION_ENTER_RIGHT_OVERHEAD = 132~%uint16 ASSI_ACTION_UP_TO_BRIDGE = 133~%uint16 ASSI_ACTION_ENTER_PARKING = 134~%uint16 ASSI_ACTION_ENTER_OVERPASS = 135~%uint16 ASSI_ACTION_ENTER_BRIDGE = 136~%uint16 ASSI_ACTION_ENTER_UNDERPASS = 137~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTLaneInfo~%uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 LANE_GUIDANCE_LIST_VALID = 4~%uint8 HIGHLIGHT_LANE_GUIDANCE_LIST_VALID = 8~%uint8 HIGHLIGHT_LANE_LIST_VALID = 16~%uint8 RECOMMEND_LANE_LIST_VALID = 32~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%lane_navi_info_msgs/TBTLaneAction[] lane_guidance_list~%lane_navi_info_msgs/TBTLaneAction[] highlight_lane_guidance_list~%uint8[] highlight_lane_list~%uint8[] recommend_lane_list~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTLaneAction~%uint8 LANE_ACTION_AHEAD = 0~%uint8 LANE_ACTION_LEFT = 1~%uint8 LANE_ACTION_AHEAD_LEFT = 2~%uint8 LANE_ACTION_RIGHT = 3~%uint8 LANE_ACTION_AHEAD_RIGHT = 4~%uint8 LANE_ACTION_LU_TURN = 5~%uint8 LANE_ACTION_LEFT_RIGHT = 6~%uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7~%uint8 LANE_ACTION_RU_TURN = 8~%uint8 LANE_ACTION_AHEAD_LU_TURN = 9~%uint8 LANE_ACTION_AHEAD_RU_TURN = 10~%uint8 LANE_ACTION_LEFT_LU_TURN = 11~%uint8 LANE_ACTION_RIGHT_RU_TURN = 12~%uint8 LANE_ACTION_LEFT_IN_AHEAD = 13~%uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14~%uint8 LANE_ACTION_RESERVED = 15~%uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16~%uint8 LANE_ACTION_RIGHT_LU_TURN = 17~%uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18~%uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19~%uint8 LANE_ACTION_LEFT_RU_TURN = 20~%uint8 LANE_ACTION_BUS = 21~%uint8 LANE_ACTION_EMPTY = 22~%uint8 LANE_ACTION_VARIABLE = 23~%uint8 LANE_ACTION_DEDICATED = 24~%uint8 LANE_ACTION_TIDAL = 25~%uint8 LANE_ACTION_NULL = 255~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTTrafficLight~%uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTLongSolidLine~%uint8 START_OFFSET_VALID = 1~%uint8 END_OFFSET_VALID = 2~%uint8 LENGTH_VALID = 4~%uint8 LANE_INDEX_VALID = 8~%uint8 available~%float32 start_offset~%float32 end_offset~%float32 length~%uint8 lane_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TBTInfo)))
  "Returns full string definition for message of type 'TBTInfo"
  (cl:format cl:nil "lane_navi_info_msgs/TBTGuideInfo[] guide_info_list~%lane_navi_info_msgs/TBTLaneInfo[] lane_info_list~%lane_navi_info_msgs/TBTTrafficLight[] traffic_light_list~%lane_navi_info_msgs/TBTLongSolidLine[] long_solid_line_list~%string reserved~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTGuideInfo~%uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 MAIN_ACTION_VALID = 4~%uint8 ASSIST_ACTION_VALID = 8~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%lane_navi_info_msgs/TBTMainAction main_action~%lane_navi_info_msgs/TBTAssistAction assist_action~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTMainAction~%uint16 MainActionNULL = 0~%uint16 MainActionTurnLeft = 1~%uint16 MainActionTurnRight = 2~%uint16 MainActionSlightLeft = 3~%uint16 MainActionSlightRight = 4~%uint16 MainActionTurnHardLeft = 5~%uint16 MainActionTurnHardRight = 6~%uint16 MainActionUTurn = 7~%uint16 MainActionContinue = 8~%uint16 MainActionMergeLeft = 9~%uint16 MainActionMergeRight = 10~%uint16 MainActionEntryRing = 11~%uint16 MainActionLeaveRing = 12~%uint16 MainActionSlow = 13~%uint16 MainActionPlugContinue = 14~%uint16 MainActionEnterBuilding = 65~%uint16 MainActionLeaveBuilding = 66~%uint16 MainActionByElevator = 67~%uint16 MainActionByStair = 68~%uint16 MainActionByEscalator = 69~%uint16 MainActionCount = 70~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTAssistAction~%uint16 ASSI_ACTION_NULL = 0~%uint16 ASSI_ACTION_ENTRY_MAIN = 1~%uint16 ASSI_ACTION_ENTRY_SIDE_ROAD = 2~%uint16 ASSI_ACTION_ENTRY_FREEWAY = 3~%uint16 ASSI_ACTION_ENTRY_SLIP = 4~%uint16 ASSI_ACTION_ENTRY_TUNNEL = 5~%uint16 ASSI_ACTION_ENTRY_CENTER_BRANCH = 6~%uint16 ASSI_ACTION_ENTRY_RIGHT_BRANCH = 7~%uint16 ASSI_ACTION_ENTRY_LEFT_BRANCH = 8~%uint16 ASSI_ACTION_ENTRY_RIGHT_ROAD = 9~%uint16 ASSI_ACTION_ENTRY_LEFT_ROAD = 10~%uint16 ASSI_ACTION_ENTRY_MERGE_CENTER = 11~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT = 12~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT = 13~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_Sild = 14~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_Sild = 15~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN = 16~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN = 17~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT = 18~%uint16 ASSI_ACTION_ENTRY_FERRY = 19~%uint16 ASSI_ACTION_LEFT_FERRY = 20~%uint16 ASSI_ACTION_ALONG_ROAD = 23~%uint16 ASSI_ACTION_ALONG_SILD = 24~%uint16 ASSI_ACTION_ALONG_MAIN = 25~%uint16 ASSI_ACTION_ARRIVE_EXIT = 32~%uint16 ASSI_ACTION_ARRIVE_SERVICE_AREA = 33~%uint16 ASSI_ACTION_ARRIVE_TOLL_GATE = 34~%uint16 ASSI_ACTION_ARRIVE_WAY = 35~%uint16 ASSI_ACTION_ARRIVE_DESTINATION = 36~%uint16 ASSI_ACTION_ARRIVE_CHARGING_STATION = 37~%uint16 ASSI_ACTION_ENTRY_RING_LEFT_ = 48~%uint16 ASSI_ACTION_ENTRY_RING_RIGHT = 49~%uint16 ASSI_ACTION_ENTRY_RING_CONTINUE = 50~%uint16 ASSI_ACTION_ENTRY_RING_UTURN = 51~%uint16 ASSI_ACTION_SMALL_RING_NOT_COUNT = 52~%uint16 ASSI_ACTION_RIGHT_BRANCH_1 = 64~%uint16 ASSI_ACTION_RIGHT_BRANCH_2 = 65~%uint16 ASSI_ACTION_RIGHT_BRANCH_3 = 66~%uint16 ASSI_ACTION_RIGHT_BRANCH_4 = 67~%uint16 ASSI_ACTION_RIGHT_BRANCH_5 = 68~%uint16 ASSI_ACTION_LEFT_BRANCH_1 = 69~%uint16 ASSI_ACTION_LEFT_BRANCH_2 = 70~%uint16 ASSI_ACTION_LEFT_BRANCH_3 = 71~%uint16 ASSI_ACTION_LEFT_BRANCH_4 = 72~%uint16 ASSI_ACTION_LEFT_BRANCH_5 = 73~%uint16 ASSI_ACTION_ENTER_ULINE = 80~%uint16 ASSI_ACTION_PASS_CROSSWalk = 90~%uint16 ASSI_ACTION_PASS_OVERPASS = 91~%uint16 ASSI_ACTION_PASS_UNDERGROUND = 92~%uint16 ASSI_ACTION_PASS_SQUARE = 93~%uint16 ASSI_ACTION_PASS_PARK = 94~%uint16 ASSI_ACTION_PASS_STAIRCASE = 95~%uint16 ASSI_ACTION_PASS_LIFT = 96~%uint16 ASSI_ACTION_PASS_CABLEWAY = 97~%uint16 ASSI_ACTION_PASS_SKY_CHANNEL = 98~%uint16 ASSI_ACTION_PASS_CHANNEL = 99~%uint16 ASSI_ACTION_PASS_WALKROAD = 100~%uint16 ASSI_ACTION_PASS_BOAT_LINE = 101~%uint16 ASSI_ACTION_PASS_SIGHT_SEEING_LINE = 102~%uint16 ASSI_ACTION_PASS_SKIDWAY = 103~%uint16 ASSI_ACTION_PASS_LADDER = 105~%uint16 ASSI_ACTION_PASS_SLOPE = 106~%uint16 ASSI_ACTION_PASS_BRIDGE = 107~%uint16 ASSI_ACTION_PASS_FERRY = 108~%uint16 ASSI_ACTION_PASS_SUBWAY = 109~%uint16 ASSI_ACTION_SOON_ENTER_Building = 112~%uint16 ASSI_ACTION_SOON_LEAVE_Building = 113~%uint16 ASSI_ACTION_ENTER_ROUNDABOUT = 114~%uint16 ASSI_ACTION_LEAVE_ROUNDABOUT = 115~%uint16 ASSI_ACTION_ENTER_PATH = 116~%uint16 ASSI_ACTION_ENTER_INNER = 117~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_TWO = 118~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_THREE = 119~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO = 120~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE = 121~%uint16 ASSI_ACTION_ENTER_GAS_STATION = 122~%uint16 ASSI_ACTION_ENTER_HOUSING_ESTATE = 123~%uint16 ASSI_ACTION_ENTER_PARK_ROAD = 124~%uint16 ASSI_ACTION_ENTER_OVERHEAD = 125~%uint16 ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD = 126~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD = 127~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD = 128~%uint16 ASSI_ACTION_ALONG_STRAIGHT = 129~%uint16 ASSI_ACTION_DOWN_OVERHEAD = 130~%uint16 ASSI_ACTION_ENTER_LEFT_OVERHEAD = 131~%uint16 ASSI_ACTION_ENTER_RIGHT_OVERHEAD = 132~%uint16 ASSI_ACTION_UP_TO_BRIDGE = 133~%uint16 ASSI_ACTION_ENTER_PARKING = 134~%uint16 ASSI_ACTION_ENTER_OVERPASS = 135~%uint16 ASSI_ACTION_ENTER_BRIDGE = 136~%uint16 ASSI_ACTION_ENTER_UNDERPASS = 137~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTLaneInfo~%uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 LANE_GUIDANCE_LIST_VALID = 4~%uint8 HIGHLIGHT_LANE_GUIDANCE_LIST_VALID = 8~%uint8 HIGHLIGHT_LANE_LIST_VALID = 16~%uint8 RECOMMEND_LANE_LIST_VALID = 32~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%lane_navi_info_msgs/TBTLaneAction[] lane_guidance_list~%lane_navi_info_msgs/TBTLaneAction[] highlight_lane_guidance_list~%uint8[] highlight_lane_list~%uint8[] recommend_lane_list~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTLaneAction~%uint8 LANE_ACTION_AHEAD = 0~%uint8 LANE_ACTION_LEFT = 1~%uint8 LANE_ACTION_AHEAD_LEFT = 2~%uint8 LANE_ACTION_RIGHT = 3~%uint8 LANE_ACTION_AHEAD_RIGHT = 4~%uint8 LANE_ACTION_LU_TURN = 5~%uint8 LANE_ACTION_LEFT_RIGHT = 6~%uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7~%uint8 LANE_ACTION_RU_TURN = 8~%uint8 LANE_ACTION_AHEAD_LU_TURN = 9~%uint8 LANE_ACTION_AHEAD_RU_TURN = 10~%uint8 LANE_ACTION_LEFT_LU_TURN = 11~%uint8 LANE_ACTION_RIGHT_RU_TURN = 12~%uint8 LANE_ACTION_LEFT_IN_AHEAD = 13~%uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14~%uint8 LANE_ACTION_RESERVED = 15~%uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16~%uint8 LANE_ACTION_RIGHT_LU_TURN = 17~%uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18~%uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19~%uint8 LANE_ACTION_LEFT_RU_TURN = 20~%uint8 LANE_ACTION_BUS = 21~%uint8 LANE_ACTION_EMPTY = 22~%uint8 LANE_ACTION_VARIABLE = 23~%uint8 LANE_ACTION_DEDICATED = 24~%uint8 LANE_ACTION_TIDAL = 25~%uint8 LANE_ACTION_NULL = 255~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTTrafficLight~%uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTLongSolidLine~%uint8 START_OFFSET_VALID = 1~%uint8 END_OFFSET_VALID = 2~%uint8 LENGTH_VALID = 4~%uint8 LANE_INDEX_VALID = 8~%uint8 available~%float32 start_offset~%float32 end_offset~%float32 length~%uint8 lane_index~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TBTInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'guide_info_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_info_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'long_solid_line_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TBTInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TBTInfo
    (cl:cons ':guide_info_list (guide_info_list msg))
    (cl:cons ':lane_info_list (lane_info_list msg))
    (cl:cons ':traffic_light_list (traffic_light_list msg))
    (cl:cons ':long_solid_line_list (long_solid_line_list msg))
    (cl:cons ':reserved (reserved msg))
))
