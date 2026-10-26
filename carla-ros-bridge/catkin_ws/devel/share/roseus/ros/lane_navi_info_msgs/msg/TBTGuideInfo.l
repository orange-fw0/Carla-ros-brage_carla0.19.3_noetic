;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TBTGuideInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TBTGuideInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO")
  (make-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))

(in-package "ROS")
;;//! \htmlinclude TBTGuideInfo.msg.html


(intern "*OFFSET_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))
(shadow '*OFFSET_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))
(defconstant lane_navi_info_msgs::TBTGuideInfo::*OFFSET_VALID* 1)
(intern "*POSITION_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))
(shadow '*POSITION_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))
(defconstant lane_navi_info_msgs::TBTGuideInfo::*POSITION_VALID* 2)
(intern "*MAIN_ACTION_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))
(shadow '*MAIN_ACTION_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))
(defconstant lane_navi_info_msgs::TBTGuideInfo::*MAIN_ACTION_VALID* 4)
(intern "*ASSIST_ACTION_VALID*" (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))
(shadow '*ASSIST_ACTION_VALID* (find-package "LANE_NAVI_INFO_MSGS::TBTGUIDEINFO"))
(defconstant lane_navi_info_msgs::TBTGuideInfo::*ASSIST_ACTION_VALID* 8)

(defun lane_navi_info_msgs::TBTGuideInfo-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::TBTGuideInfo::*OFFSET_VALID*)
        ((= const 2) 'lane_navi_info_msgs::TBTGuideInfo::*POSITION_VALID*)
        ((= const 4) 'lane_navi_info_msgs::TBTGuideInfo::*MAIN_ACTION_VALID*)
        ((= const 8) 'lane_navi_info_msgs::TBTGuideInfo::*ASSIST_ACTION_VALID*)
        (t nil)))

(defclass lane_navi_info_msgs::TBTGuideInfo
  :super ros::object
  :slots (_available _offset _position _main_action _assist_action ))

(defmethod lane_navi_info_msgs::TBTGuideInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:offset __offset) (instance lane_navi_info_msgs::Cursor :init))
    ((:position __position) (instance lane_navi_info_msgs::Point :init))
    ((:main_action __main_action) (instance lane_navi_info_msgs::TBTMainAction :init))
    ((:assist_action __assist_action) (instance lane_navi_info_msgs::TBTAssistAction :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _offset __offset)
   (setq _position __position)
   (setq _main_action __main_action)
   (setq _assist_action __assist_action)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:main_action
   (&rest __main_action)
   (if (keywordp (car __main_action))
       (send* _main_action __main_action)
     (progn
       (if __main_action (setq _main_action (car __main_action)))
       _main_action)))
  (:assist_action
   (&rest __assist_action)
   (if (keywordp (car __assist_action))
       (send* _assist_action __assist_action)
     (progn
       (if __assist_action (setq _assist_action (car __assist_action)))
       _assist_action)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; lane_navi_info_msgs/Cursor _offset
    (send _offset :serialization-length)
    ;; lane_navi_info_msgs/Point _position
    (send _position :serialization-length)
    ;; lane_navi_info_msgs/TBTMainAction _main_action
    (send _main_action :serialization-length)
    ;; lane_navi_info_msgs/TBTAssistAction _assist_action
    (send _assist_action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; lane_navi_info_msgs/Cursor _offset
       (send _offset :serialize s)
     ;; lane_navi_info_msgs/Point _position
       (send _position :serialize s)
     ;; lane_navi_info_msgs/TBTMainAction _main_action
       (send _main_action :serialize s)
     ;; lane_navi_info_msgs/TBTAssistAction _assist_action
       (send _assist_action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; lane_navi_info_msgs/Cursor _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;; lane_navi_info_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; lane_navi_info_msgs/TBTMainAction _main_action
     (send _main_action :deserialize buf ptr-) (incf ptr- (send _main_action :serialization-length))
   ;; lane_navi_info_msgs/TBTAssistAction _assist_action
     (send _assist_action :deserialize buf ptr-) (incf ptr- (send _assist_action :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TBTGuideInfo :md5sum-) "157abfd411b4162fa996c81992036a3e")
(setf (get lane_navi_info_msgs::TBTGuideInfo :datatype-) "lane_navi_info_msgs/TBTGuideInfo")
(setf (get lane_navi_info_msgs::TBTGuideInfo :definition-)
      "uint8 OFFSET_VALID = 1
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

")



(provide :lane_navi_info_msgs/TBTGuideInfo "157abfd411b4162fa996c81992036a3e")


