; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude TBTGuideInfo.msg.html

(cl:defclass <TBTGuideInfo> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type lane_navi_info_msgs-msg:Cursor
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Cursor))
   (position
    :reader position
    :initarg :position
    :type lane_navi_info_msgs-msg:Point
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:Point))
   (main_action
    :reader main_action
    :initarg :main_action
    :type lane_navi_info_msgs-msg:TBTMainAction
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:TBTMainAction))
   (assist_action
    :reader assist_action
    :initarg :assist_action
    :type lane_navi_info_msgs-msg:TBTAssistAction
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:TBTAssistAction)))
)

(cl:defclass TBTGuideInfo (<TBTGuideInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TBTGuideInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TBTGuideInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<TBTGuideInfo> is deprecated: use lane_navi_info_msgs-msg:TBTGuideInfo instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TBTGuideInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <TBTGuideInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:offset-val is deprecated.  Use lane_navi_info_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TBTGuideInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:position-val is deprecated.  Use lane_navi_info_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'main_action-val :lambda-list '(m))
(cl:defmethod main_action-val ((m <TBTGuideInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:main_action-val is deprecated.  Use lane_navi_info_msgs-msg:main_action instead.")
  (main_action m))

(cl:ensure-generic-function 'assist_action-val :lambda-list '(m))
(cl:defmethod assist_action-val ((m <TBTGuideInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:assist_action-val is deprecated.  Use lane_navi_info_msgs-msg:assist_action instead.")
  (assist_action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TBTGuideInfo>)))
    "Constants for message type '<TBTGuideInfo>"
  '((:OFFSET_VALID . 1)
    (:POSITION_VALID . 2)
    (:MAIN_ACTION_VALID . 4)
    (:ASSIST_ACTION_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TBTGuideInfo)))
    "Constants for message type 'TBTGuideInfo"
  '((:OFFSET_VALID . 1)
    (:POSITION_VALID . 2)
    (:MAIN_ACTION_VALID . 4)
    (:ASSIST_ACTION_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TBTGuideInfo>) ostream)
  "Serializes a message object of type '<TBTGuideInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'main_action) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'assist_action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TBTGuideInfo>) istream)
  "Deserializes a message object of type '<TBTGuideInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'main_action) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'assist_action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TBTGuideInfo>)))
  "Returns string type for a message object of type '<TBTGuideInfo>"
  "lane_navi_info_msgs/TBTGuideInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TBTGuideInfo)))
  "Returns string type for a message object of type 'TBTGuideInfo"
  "lane_navi_info_msgs/TBTGuideInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TBTGuideInfo>)))
  "Returns md5sum for a message object of type '<TBTGuideInfo>"
  "157abfd411b4162fa996c81992036a3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TBTGuideInfo)))
  "Returns md5sum for a message object of type 'TBTGuideInfo"
  "157abfd411b4162fa996c81992036a3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TBTGuideInfo>)))
  "Returns full string definition for message of type '<TBTGuideInfo>"
  (cl:format cl:nil "uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 MAIN_ACTION_VALID = 4~%uint8 ASSIST_ACTION_VALID = 8~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%lane_navi_info_msgs/TBTMainAction main_action~%lane_navi_info_msgs/TBTAssistAction assist_action~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTMainAction~%uint16 MainActionNULL = 0~%uint16 MainActionTurnLeft = 1~%uint16 MainActionTurnRight = 2~%uint16 MainActionSlightLeft = 3~%uint16 MainActionSlightRight = 4~%uint16 MainActionTurnHardLeft = 5~%uint16 MainActionTurnHardRight = 6~%uint16 MainActionUTurn = 7~%uint16 MainActionContinue = 8~%uint16 MainActionMergeLeft = 9~%uint16 MainActionMergeRight = 10~%uint16 MainActionEntryRing = 11~%uint16 MainActionLeaveRing = 12~%uint16 MainActionSlow = 13~%uint16 MainActionPlugContinue = 14~%uint16 MainActionEnterBuilding = 65~%uint16 MainActionLeaveBuilding = 66~%uint16 MainActionByElevator = 67~%uint16 MainActionByStair = 68~%uint16 MainActionByEscalator = 69~%uint16 MainActionCount = 70~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTAssistAction~%uint16 ASSI_ACTION_NULL = 0~%uint16 ASSI_ACTION_ENTRY_MAIN = 1~%uint16 ASSI_ACTION_ENTRY_SIDE_ROAD = 2~%uint16 ASSI_ACTION_ENTRY_FREEWAY = 3~%uint16 ASSI_ACTION_ENTRY_SLIP = 4~%uint16 ASSI_ACTION_ENTRY_TUNNEL = 5~%uint16 ASSI_ACTION_ENTRY_CENTER_BRANCH = 6~%uint16 ASSI_ACTION_ENTRY_RIGHT_BRANCH = 7~%uint16 ASSI_ACTION_ENTRY_LEFT_BRANCH = 8~%uint16 ASSI_ACTION_ENTRY_RIGHT_ROAD = 9~%uint16 ASSI_ACTION_ENTRY_LEFT_ROAD = 10~%uint16 ASSI_ACTION_ENTRY_MERGE_CENTER = 11~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT = 12~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT = 13~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_Sild = 14~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_Sild = 15~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN = 16~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN = 17~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT = 18~%uint16 ASSI_ACTION_ENTRY_FERRY = 19~%uint16 ASSI_ACTION_LEFT_FERRY = 20~%uint16 ASSI_ACTION_ALONG_ROAD = 23~%uint16 ASSI_ACTION_ALONG_SILD = 24~%uint16 ASSI_ACTION_ALONG_MAIN = 25~%uint16 ASSI_ACTION_ARRIVE_EXIT = 32~%uint16 ASSI_ACTION_ARRIVE_SERVICE_AREA = 33~%uint16 ASSI_ACTION_ARRIVE_TOLL_GATE = 34~%uint16 ASSI_ACTION_ARRIVE_WAY = 35~%uint16 ASSI_ACTION_ARRIVE_DESTINATION = 36~%uint16 ASSI_ACTION_ARRIVE_CHARGING_STATION = 37~%uint16 ASSI_ACTION_ENTRY_RING_LEFT_ = 48~%uint16 ASSI_ACTION_ENTRY_RING_RIGHT = 49~%uint16 ASSI_ACTION_ENTRY_RING_CONTINUE = 50~%uint16 ASSI_ACTION_ENTRY_RING_UTURN = 51~%uint16 ASSI_ACTION_SMALL_RING_NOT_COUNT = 52~%uint16 ASSI_ACTION_RIGHT_BRANCH_1 = 64~%uint16 ASSI_ACTION_RIGHT_BRANCH_2 = 65~%uint16 ASSI_ACTION_RIGHT_BRANCH_3 = 66~%uint16 ASSI_ACTION_RIGHT_BRANCH_4 = 67~%uint16 ASSI_ACTION_RIGHT_BRANCH_5 = 68~%uint16 ASSI_ACTION_LEFT_BRANCH_1 = 69~%uint16 ASSI_ACTION_LEFT_BRANCH_2 = 70~%uint16 ASSI_ACTION_LEFT_BRANCH_3 = 71~%uint16 ASSI_ACTION_LEFT_BRANCH_4 = 72~%uint16 ASSI_ACTION_LEFT_BRANCH_5 = 73~%uint16 ASSI_ACTION_ENTER_ULINE = 80~%uint16 ASSI_ACTION_PASS_CROSSWalk = 90~%uint16 ASSI_ACTION_PASS_OVERPASS = 91~%uint16 ASSI_ACTION_PASS_UNDERGROUND = 92~%uint16 ASSI_ACTION_PASS_SQUARE = 93~%uint16 ASSI_ACTION_PASS_PARK = 94~%uint16 ASSI_ACTION_PASS_STAIRCASE = 95~%uint16 ASSI_ACTION_PASS_LIFT = 96~%uint16 ASSI_ACTION_PASS_CABLEWAY = 97~%uint16 ASSI_ACTION_PASS_SKY_CHANNEL = 98~%uint16 ASSI_ACTION_PASS_CHANNEL = 99~%uint16 ASSI_ACTION_PASS_WALKROAD = 100~%uint16 ASSI_ACTION_PASS_BOAT_LINE = 101~%uint16 ASSI_ACTION_PASS_SIGHT_SEEING_LINE = 102~%uint16 ASSI_ACTION_PASS_SKIDWAY = 103~%uint16 ASSI_ACTION_PASS_LADDER = 105~%uint16 ASSI_ACTION_PASS_SLOPE = 106~%uint16 ASSI_ACTION_PASS_BRIDGE = 107~%uint16 ASSI_ACTION_PASS_FERRY = 108~%uint16 ASSI_ACTION_PASS_SUBWAY = 109~%uint16 ASSI_ACTION_SOON_ENTER_Building = 112~%uint16 ASSI_ACTION_SOON_LEAVE_Building = 113~%uint16 ASSI_ACTION_ENTER_ROUNDABOUT = 114~%uint16 ASSI_ACTION_LEAVE_ROUNDABOUT = 115~%uint16 ASSI_ACTION_ENTER_PATH = 116~%uint16 ASSI_ACTION_ENTER_INNER = 117~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_TWO = 118~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_THREE = 119~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO = 120~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE = 121~%uint16 ASSI_ACTION_ENTER_GAS_STATION = 122~%uint16 ASSI_ACTION_ENTER_HOUSING_ESTATE = 123~%uint16 ASSI_ACTION_ENTER_PARK_ROAD = 124~%uint16 ASSI_ACTION_ENTER_OVERHEAD = 125~%uint16 ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD = 126~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD = 127~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD = 128~%uint16 ASSI_ACTION_ALONG_STRAIGHT = 129~%uint16 ASSI_ACTION_DOWN_OVERHEAD = 130~%uint16 ASSI_ACTION_ENTER_LEFT_OVERHEAD = 131~%uint16 ASSI_ACTION_ENTER_RIGHT_OVERHEAD = 132~%uint16 ASSI_ACTION_UP_TO_BRIDGE = 133~%uint16 ASSI_ACTION_ENTER_PARKING = 134~%uint16 ASSI_ACTION_ENTER_OVERPASS = 135~%uint16 ASSI_ACTION_ENTER_BRIDGE = 136~%uint16 ASSI_ACTION_ENTER_UNDERPASS = 137~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TBTGuideInfo)))
  "Returns full string definition for message of type 'TBTGuideInfo"
  (cl:format cl:nil "uint8 OFFSET_VALID = 1~%uint8 POSITION_VALID = 2~%uint8 MAIN_ACTION_VALID = 4~%uint8 ASSIST_ACTION_VALID = 8~%uint8 available~%lane_navi_info_msgs/Cursor offset~%lane_navi_info_msgs/Point position~%lane_navi_info_msgs/TBTMainAction main_action~%lane_navi_info_msgs/TBTAssistAction assist_action~%~%================================================================================~%MSG: lane_navi_info_msgs/Cursor~%landmark_msgs/TrackId road_id~%float32 offset~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/Point~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTMainAction~%uint16 MainActionNULL = 0~%uint16 MainActionTurnLeft = 1~%uint16 MainActionTurnRight = 2~%uint16 MainActionSlightLeft = 3~%uint16 MainActionSlightRight = 4~%uint16 MainActionTurnHardLeft = 5~%uint16 MainActionTurnHardRight = 6~%uint16 MainActionUTurn = 7~%uint16 MainActionContinue = 8~%uint16 MainActionMergeLeft = 9~%uint16 MainActionMergeRight = 10~%uint16 MainActionEntryRing = 11~%uint16 MainActionLeaveRing = 12~%uint16 MainActionSlow = 13~%uint16 MainActionPlugContinue = 14~%uint16 MainActionEnterBuilding = 65~%uint16 MainActionLeaveBuilding = 66~%uint16 MainActionByElevator = 67~%uint16 MainActionByStair = 68~%uint16 MainActionByEscalator = 69~%uint16 MainActionCount = 70~%uint16 value~%~%================================================================================~%MSG: lane_navi_info_msgs/TBTAssistAction~%uint16 ASSI_ACTION_NULL = 0~%uint16 ASSI_ACTION_ENTRY_MAIN = 1~%uint16 ASSI_ACTION_ENTRY_SIDE_ROAD = 2~%uint16 ASSI_ACTION_ENTRY_FREEWAY = 3~%uint16 ASSI_ACTION_ENTRY_SLIP = 4~%uint16 ASSI_ACTION_ENTRY_TUNNEL = 5~%uint16 ASSI_ACTION_ENTRY_CENTER_BRANCH = 6~%uint16 ASSI_ACTION_ENTRY_RIGHT_BRANCH = 7~%uint16 ASSI_ACTION_ENTRY_LEFT_BRANCH = 8~%uint16 ASSI_ACTION_ENTRY_RIGHT_ROAD = 9~%uint16 ASSI_ACTION_ENTRY_LEFT_ROAD = 10~%uint16 ASSI_ACTION_ENTRY_MERGE_CENTER = 11~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT = 12~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT = 13~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_Sild = 14~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_Sild = 15~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN = 16~%uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN = 17~%uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT = 18~%uint16 ASSI_ACTION_ENTRY_FERRY = 19~%uint16 ASSI_ACTION_LEFT_FERRY = 20~%uint16 ASSI_ACTION_ALONG_ROAD = 23~%uint16 ASSI_ACTION_ALONG_SILD = 24~%uint16 ASSI_ACTION_ALONG_MAIN = 25~%uint16 ASSI_ACTION_ARRIVE_EXIT = 32~%uint16 ASSI_ACTION_ARRIVE_SERVICE_AREA = 33~%uint16 ASSI_ACTION_ARRIVE_TOLL_GATE = 34~%uint16 ASSI_ACTION_ARRIVE_WAY = 35~%uint16 ASSI_ACTION_ARRIVE_DESTINATION = 36~%uint16 ASSI_ACTION_ARRIVE_CHARGING_STATION = 37~%uint16 ASSI_ACTION_ENTRY_RING_LEFT_ = 48~%uint16 ASSI_ACTION_ENTRY_RING_RIGHT = 49~%uint16 ASSI_ACTION_ENTRY_RING_CONTINUE = 50~%uint16 ASSI_ACTION_ENTRY_RING_UTURN = 51~%uint16 ASSI_ACTION_SMALL_RING_NOT_COUNT = 52~%uint16 ASSI_ACTION_RIGHT_BRANCH_1 = 64~%uint16 ASSI_ACTION_RIGHT_BRANCH_2 = 65~%uint16 ASSI_ACTION_RIGHT_BRANCH_3 = 66~%uint16 ASSI_ACTION_RIGHT_BRANCH_4 = 67~%uint16 ASSI_ACTION_RIGHT_BRANCH_5 = 68~%uint16 ASSI_ACTION_LEFT_BRANCH_1 = 69~%uint16 ASSI_ACTION_LEFT_BRANCH_2 = 70~%uint16 ASSI_ACTION_LEFT_BRANCH_3 = 71~%uint16 ASSI_ACTION_LEFT_BRANCH_4 = 72~%uint16 ASSI_ACTION_LEFT_BRANCH_5 = 73~%uint16 ASSI_ACTION_ENTER_ULINE = 80~%uint16 ASSI_ACTION_PASS_CROSSWalk = 90~%uint16 ASSI_ACTION_PASS_OVERPASS = 91~%uint16 ASSI_ACTION_PASS_UNDERGROUND = 92~%uint16 ASSI_ACTION_PASS_SQUARE = 93~%uint16 ASSI_ACTION_PASS_PARK = 94~%uint16 ASSI_ACTION_PASS_STAIRCASE = 95~%uint16 ASSI_ACTION_PASS_LIFT = 96~%uint16 ASSI_ACTION_PASS_CABLEWAY = 97~%uint16 ASSI_ACTION_PASS_SKY_CHANNEL = 98~%uint16 ASSI_ACTION_PASS_CHANNEL = 99~%uint16 ASSI_ACTION_PASS_WALKROAD = 100~%uint16 ASSI_ACTION_PASS_BOAT_LINE = 101~%uint16 ASSI_ACTION_PASS_SIGHT_SEEING_LINE = 102~%uint16 ASSI_ACTION_PASS_SKIDWAY = 103~%uint16 ASSI_ACTION_PASS_LADDER = 105~%uint16 ASSI_ACTION_PASS_SLOPE = 106~%uint16 ASSI_ACTION_PASS_BRIDGE = 107~%uint16 ASSI_ACTION_PASS_FERRY = 108~%uint16 ASSI_ACTION_PASS_SUBWAY = 109~%uint16 ASSI_ACTION_SOON_ENTER_Building = 112~%uint16 ASSI_ACTION_SOON_LEAVE_Building = 113~%uint16 ASSI_ACTION_ENTER_ROUNDABOUT = 114~%uint16 ASSI_ACTION_LEAVE_ROUNDABOUT = 115~%uint16 ASSI_ACTION_ENTER_PATH = 116~%uint16 ASSI_ACTION_ENTER_INNER = 117~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_TWO = 118~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_THREE = 119~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO = 120~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE = 121~%uint16 ASSI_ACTION_ENTER_GAS_STATION = 122~%uint16 ASSI_ACTION_ENTER_HOUSING_ESTATE = 123~%uint16 ASSI_ACTION_ENTER_PARK_ROAD = 124~%uint16 ASSI_ACTION_ENTER_OVERHEAD = 125~%uint16 ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD = 126~%uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD = 127~%uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD = 128~%uint16 ASSI_ACTION_ALONG_STRAIGHT = 129~%uint16 ASSI_ACTION_DOWN_OVERHEAD = 130~%uint16 ASSI_ACTION_ENTER_LEFT_OVERHEAD = 131~%uint16 ASSI_ACTION_ENTER_RIGHT_OVERHEAD = 132~%uint16 ASSI_ACTION_UP_TO_BRIDGE = 133~%uint16 ASSI_ACTION_ENTER_PARKING = 134~%uint16 ASSI_ACTION_ENTER_OVERPASS = 135~%uint16 ASSI_ACTION_ENTER_BRIDGE = 136~%uint16 ASSI_ACTION_ENTER_UNDERPASS = 137~%uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TBTGuideInfo>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'main_action))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'assist_action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TBTGuideInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TBTGuideInfo
    (cl:cons ':available (available msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':position (position msg))
    (cl:cons ':main_action (main_action msg))
    (cl:cons ':assist_action (assist_action msg))
))
