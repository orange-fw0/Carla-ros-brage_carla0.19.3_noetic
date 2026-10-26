;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TBTInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TBTInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TBTINFO")
  (make-package "LANE_NAVI_INFO_MSGS::TBTINFO"))

(in-package "ROS")
;;//! \htmlinclude TBTInfo.msg.html


(defclass lane_navi_info_msgs::TBTInfo
  :super ros::object
  :slots (_guide_info_list _lane_info_list _traffic_light_list _long_solid_line_list _reserved ))

(defmethod lane_navi_info_msgs::TBTInfo
  (:init
   (&key
    ((:guide_info_list __guide_info_list) ())
    ((:lane_info_list __lane_info_list) ())
    ((:traffic_light_list __traffic_light_list) ())
    ((:long_solid_line_list __long_solid_line_list) ())
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _guide_info_list __guide_info_list)
   (setq _lane_info_list __lane_info_list)
   (setq _traffic_light_list __traffic_light_list)
   (setq _long_solid_line_list __long_solid_line_list)
   (setq _reserved (string __reserved))
   self)
  (:guide_info_list
   (&rest __guide_info_list)
   (if (keywordp (car __guide_info_list))
       (send* _guide_info_list __guide_info_list)
     (progn
       (if __guide_info_list (setq _guide_info_list (car __guide_info_list)))
       _guide_info_list)))
  (:lane_info_list
   (&rest __lane_info_list)
   (if (keywordp (car __lane_info_list))
       (send* _lane_info_list __lane_info_list)
     (progn
       (if __lane_info_list (setq _lane_info_list (car __lane_info_list)))
       _lane_info_list)))
  (:traffic_light_list
   (&rest __traffic_light_list)
   (if (keywordp (car __traffic_light_list))
       (send* _traffic_light_list __traffic_light_list)
     (progn
       (if __traffic_light_list (setq _traffic_light_list (car __traffic_light_list)))
       _traffic_light_list)))
  (:long_solid_line_list
   (&rest __long_solid_line_list)
   (if (keywordp (car __long_solid_line_list))
       (send* _long_solid_line_list __long_solid_line_list)
     (progn
       (if __long_solid_line_list (setq _long_solid_line_list (car __long_solid_line_list)))
       _long_solid_line_list)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/TBTGuideInfo[] _guide_info_list
    (apply #'+ (send-all _guide_info_list :serialization-length)) 4
    ;; lane_navi_info_msgs/TBTLaneInfo[] _lane_info_list
    (apply #'+ (send-all _lane_info_list :serialization-length)) 4
    ;; lane_navi_info_msgs/TBTTrafficLight[] _traffic_light_list
    (apply #'+ (send-all _traffic_light_list :serialization-length)) 4
    ;; lane_navi_info_msgs/TBTLongSolidLine[] _long_solid_line_list
    (apply #'+ (send-all _long_solid_line_list :serialization-length)) 4
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/TBTGuideInfo[] _guide_info_list
     (write-long (length _guide_info_list) s)
     (dolist (elem _guide_info_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/TBTLaneInfo[] _lane_info_list
     (write-long (length _lane_info_list) s)
     (dolist (elem _lane_info_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/TBTTrafficLight[] _traffic_light_list
     (write-long (length _traffic_light_list) s)
     (dolist (elem _traffic_light_list)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/TBTLongSolidLine[] _long_solid_line_list
     (write-long (length _long_solid_line_list) s)
     (dolist (elem _long_solid_line_list)
       (send elem :serialize s)
       )
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/TBTGuideInfo[] _guide_info_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _guide_info_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TBTGuideInfo :init) r)) r))
     (dolist (elem- _guide_info_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/TBTLaneInfo[] _lane_info_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_info_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TBTLaneInfo :init) r)) r))
     (dolist (elem- _lane_info_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/TBTTrafficLight[] _traffic_light_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TBTTrafficLight :init) r)) r))
     (dolist (elem- _traffic_light_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/TBTLongSolidLine[] _long_solid_line_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _long_solid_line_list (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::TBTLongSolidLine :init) r)) r))
     (dolist (elem- _long_solid_line_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TBTInfo :md5sum-) "b4123d80d2c63bcac356928b06279342")
(setf (get lane_navi_info_msgs::TBTInfo :datatype-) "lane_navi_info_msgs/TBTInfo")
(setf (get lane_navi_info_msgs::TBTInfo :definition-)
      "lane_navi_info_msgs/TBTGuideInfo[] guide_info_list
lane_navi_info_msgs/TBTLaneInfo[] lane_info_list
lane_navi_info_msgs/TBTTrafficLight[] traffic_light_list
lane_navi_info_msgs/TBTLongSolidLine[] long_solid_line_list
string reserved

================================================================================
MSG: lane_navi_info_msgs/TBTGuideInfo
uint8 OFFSET_VALID = 1
uint8 POSITION_VALID = 2
uint8 MAIN_ACTION_VALID = 4
uint8 ASSIST_ACTION_VALID = 8
uint8 available
lane_navi_info_msgs/Cursor offset
lane_navi_info_msgs/Point position
lane_navi_info_msgs/TBTMainAction main_action
lane_navi_info_msgs/TBTAssistAction assist_action

================================================================================
MSG: lane_navi_info_msgs/Cursor
landmark_msgs/TrackId road_id
float32 offset

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

================================================================================
MSG: lane_navi_info_msgs/TBTMainAction
uint16 MainActionNULL = 0
uint16 MainActionTurnLeft = 1
uint16 MainActionTurnRight = 2
uint16 MainActionSlightLeft = 3
uint16 MainActionSlightRight = 4
uint16 MainActionTurnHardLeft = 5
uint16 MainActionTurnHardRight = 6
uint16 MainActionUTurn = 7
uint16 MainActionContinue = 8
uint16 MainActionMergeLeft = 9
uint16 MainActionMergeRight = 10
uint16 MainActionEntryRing = 11
uint16 MainActionLeaveRing = 12
uint16 MainActionSlow = 13
uint16 MainActionPlugContinue = 14
uint16 MainActionEnterBuilding = 65
uint16 MainActionLeaveBuilding = 66
uint16 MainActionByElevator = 67
uint16 MainActionByStair = 68
uint16 MainActionByEscalator = 69
uint16 MainActionCount = 70
uint16 value

================================================================================
MSG: lane_navi_info_msgs/TBTAssistAction
uint16 ASSI_ACTION_NULL = 0
uint16 ASSI_ACTION_ENTRY_MAIN = 1
uint16 ASSI_ACTION_ENTRY_SIDE_ROAD = 2
uint16 ASSI_ACTION_ENTRY_FREEWAY = 3
uint16 ASSI_ACTION_ENTRY_SLIP = 4
uint16 ASSI_ACTION_ENTRY_TUNNEL = 5
uint16 ASSI_ACTION_ENTRY_CENTER_BRANCH = 6
uint16 ASSI_ACTION_ENTRY_RIGHT_BRANCH = 7
uint16 ASSI_ACTION_ENTRY_LEFT_BRANCH = 8
uint16 ASSI_ACTION_ENTRY_RIGHT_ROAD = 9
uint16 ASSI_ACTION_ENTRY_LEFT_ROAD = 10
uint16 ASSI_ACTION_ENTRY_MERGE_CENTER = 11
uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT = 12
uint16 ASSI_ACTION_ENTRY_MERGE_LEFT = 13
uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_Sild = 14
uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_Sild = 15
uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN = 16
uint16 ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN = 17
uint16 ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT = 18
uint16 ASSI_ACTION_ENTRY_FERRY = 19
uint16 ASSI_ACTION_LEFT_FERRY = 20
uint16 ASSI_ACTION_ALONG_ROAD = 23
uint16 ASSI_ACTION_ALONG_SILD = 24
uint16 ASSI_ACTION_ALONG_MAIN = 25
uint16 ASSI_ACTION_ARRIVE_EXIT = 32
uint16 ASSI_ACTION_ARRIVE_SERVICE_AREA = 33
uint16 ASSI_ACTION_ARRIVE_TOLL_GATE = 34
uint16 ASSI_ACTION_ARRIVE_WAY = 35
uint16 ASSI_ACTION_ARRIVE_DESTINATION = 36
uint16 ASSI_ACTION_ARRIVE_CHARGING_STATION = 37
uint16 ASSI_ACTION_ENTRY_RING_LEFT_ = 48
uint16 ASSI_ACTION_ENTRY_RING_RIGHT = 49
uint16 ASSI_ACTION_ENTRY_RING_CONTINUE = 50
uint16 ASSI_ACTION_ENTRY_RING_UTURN = 51
uint16 ASSI_ACTION_SMALL_RING_NOT_COUNT = 52
uint16 ASSI_ACTION_RIGHT_BRANCH_1 = 64
uint16 ASSI_ACTION_RIGHT_BRANCH_2 = 65
uint16 ASSI_ACTION_RIGHT_BRANCH_3 = 66
uint16 ASSI_ACTION_RIGHT_BRANCH_4 = 67
uint16 ASSI_ACTION_RIGHT_BRANCH_5 = 68
uint16 ASSI_ACTION_LEFT_BRANCH_1 = 69
uint16 ASSI_ACTION_LEFT_BRANCH_2 = 70
uint16 ASSI_ACTION_LEFT_BRANCH_3 = 71
uint16 ASSI_ACTION_LEFT_BRANCH_4 = 72
uint16 ASSI_ACTION_LEFT_BRANCH_5 = 73
uint16 ASSI_ACTION_ENTER_ULINE = 80
uint16 ASSI_ACTION_PASS_CROSSWalk = 90
uint16 ASSI_ACTION_PASS_OVERPASS = 91
uint16 ASSI_ACTION_PASS_UNDERGROUND = 92
uint16 ASSI_ACTION_PASS_SQUARE = 93
uint16 ASSI_ACTION_PASS_PARK = 94
uint16 ASSI_ACTION_PASS_STAIRCASE = 95
uint16 ASSI_ACTION_PASS_LIFT = 96
uint16 ASSI_ACTION_PASS_CABLEWAY = 97
uint16 ASSI_ACTION_PASS_SKY_CHANNEL = 98
uint16 ASSI_ACTION_PASS_CHANNEL = 99
uint16 ASSI_ACTION_PASS_WALKROAD = 100
uint16 ASSI_ACTION_PASS_BOAT_LINE = 101
uint16 ASSI_ACTION_PASS_SIGHT_SEEING_LINE = 102
uint16 ASSI_ACTION_PASS_SKIDWAY = 103
uint16 ASSI_ACTION_PASS_LADDER = 105
uint16 ASSI_ACTION_PASS_SLOPE = 106
uint16 ASSI_ACTION_PASS_BRIDGE = 107
uint16 ASSI_ACTION_PASS_FERRY = 108
uint16 ASSI_ACTION_PASS_SUBWAY = 109
uint16 ASSI_ACTION_SOON_ENTER_Building = 112
uint16 ASSI_ACTION_SOON_LEAVE_Building = 113
uint16 ASSI_ACTION_ENTER_ROUNDABOUT = 114
uint16 ASSI_ACTION_LEAVE_ROUNDABOUT = 115
uint16 ASSI_ACTION_ENTER_PATH = 116
uint16 ASSI_ACTION_ENTER_INNER = 117
uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_TWO = 118
uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_THREE = 119
uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO = 120
uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE = 121
uint16 ASSI_ACTION_ENTER_GAS_STATION = 122
uint16 ASSI_ACTION_ENTER_HOUSING_ESTATE = 123
uint16 ASSI_ACTION_ENTER_PARK_ROAD = 124
uint16 ASSI_ACTION_ENTER_OVERHEAD = 125
uint16 ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD = 126
uint16 ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD = 127
uint16 ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD = 128
uint16 ASSI_ACTION_ALONG_STRAIGHT = 129
uint16 ASSI_ACTION_DOWN_OVERHEAD = 130
uint16 ASSI_ACTION_ENTER_LEFT_OVERHEAD = 131
uint16 ASSI_ACTION_ENTER_RIGHT_OVERHEAD = 132
uint16 ASSI_ACTION_UP_TO_BRIDGE = 133
uint16 ASSI_ACTION_ENTER_PARKING = 134
uint16 ASSI_ACTION_ENTER_OVERPASS = 135
uint16 ASSI_ACTION_ENTER_BRIDGE = 136
uint16 ASSI_ACTION_ENTER_UNDERPASS = 137
uint16 value

================================================================================
MSG: lane_navi_info_msgs/TBTLaneInfo
uint8 OFFSET_VALID = 1
uint8 POSITION_VALID = 2
uint8 LANE_GUIDANCE_LIST_VALID = 4
uint8 HIGHLIGHT_LANE_GUIDANCE_LIST_VALID = 8
uint8 HIGHLIGHT_LANE_LIST_VALID = 16
uint8 RECOMMEND_LANE_LIST_VALID = 32
uint8 available
lane_navi_info_msgs/Cursor offset
lane_navi_info_msgs/Point position
lane_navi_info_msgs/TBTLaneAction[] lane_guidance_list
lane_navi_info_msgs/TBTLaneAction[] highlight_lane_guidance_list
uint8[] highlight_lane_list
uint8[] recommend_lane_list

================================================================================
MSG: lane_navi_info_msgs/TBTLaneAction
uint8 LANE_ACTION_AHEAD = 0
uint8 LANE_ACTION_LEFT = 1
uint8 LANE_ACTION_AHEAD_LEFT = 2
uint8 LANE_ACTION_RIGHT = 3
uint8 LANE_ACTION_AHEAD_RIGHT = 4
uint8 LANE_ACTION_LU_TURN = 5
uint8 LANE_ACTION_LEFT_RIGHT = 6
uint8 LANE_ACTION_AHEAD_LEFT_RIGHT = 7
uint8 LANE_ACTION_RU_TURN = 8
uint8 LANE_ACTION_AHEAD_LU_TURN = 9
uint8 LANE_ACTION_AHEAD_RU_TURN = 10
uint8 LANE_ACTION_LEFT_LU_TURN = 11
uint8 LANE_ACTION_RIGHT_RU_TURN = 12
uint8 LANE_ACTION_LEFT_IN_AHEAD = 13
uint8 LANE_ACTION_LEFT_LU_TURN_EX = 14
uint8 LANE_ACTION_RESERVED = 15
uint8 LANE_ACTION_AHEAD_LEFT_LU_TURN = 16
uint8 LANE_ACTION_RIGHT_LU_TURN = 17
uint8 LANE_ACTION_LEFT_RIGHT_LU_TURN = 18
uint8 LANE_ACTION_AHEAD_RIGHT_LU_TURN = 19
uint8 LANE_ACTION_LEFT_RU_TURN = 20
uint8 LANE_ACTION_BUS = 21
uint8 LANE_ACTION_EMPTY = 22
uint8 LANE_ACTION_VARIABLE = 23
uint8 LANE_ACTION_DEDICATED = 24
uint8 LANE_ACTION_TIDAL = 25
uint8 LANE_ACTION_NULL = 255
uint8 value

================================================================================
MSG: lane_navi_info_msgs/TBTTrafficLight
uint8 OFFSET_VALID = 1
uint8 POSITION_VALID = 2
uint8 available
lane_navi_info_msgs/Cursor offset
lane_navi_info_msgs/Point position

================================================================================
MSG: lane_navi_info_msgs/TBTLongSolidLine
uint8 START_OFFSET_VALID = 1
uint8 END_OFFSET_VALID = 2
uint8 LENGTH_VALID = 4
uint8 LANE_INDEX_VALID = 8
uint8 available
float32 start_offset
float32 end_offset
float32 length
uint8 lane_index

")



(provide :lane_navi_info_msgs/TBTInfo "b4123d80d2c63bcac356928b06279342")


