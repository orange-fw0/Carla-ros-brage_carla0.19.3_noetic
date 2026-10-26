;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::TBTAssistAction)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'TBTAssistAction (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION")
  (make-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))

(in-package "ROS")
;;//! \htmlinclude TBTAssistAction.msg.html


(intern "*ASSI_ACTION_NULL*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_NULL* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_NULL* 0)
(intern "*ASSI_ACTION_ENTRY_MAIN*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MAIN* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MAIN* 1)
(intern "*ASSI_ACTION_ENTRY_SIDE_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_SIDE_ROAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_SIDE_ROAD* 2)
(intern "*ASSI_ACTION_ENTRY_FREEWAY*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_FREEWAY* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_FREEWAY* 3)
(intern "*ASSI_ACTION_ENTRY_SLIP*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_SLIP* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_SLIP* 4)
(intern "*ASSI_ACTION_ENTRY_TUNNEL*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_TUNNEL* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_TUNNEL* 5)
(intern "*ASSI_ACTION_ENTRY_CENTER_BRANCH*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_CENTER_BRANCH* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_CENTER_BRANCH* 6)
(intern "*ASSI_ACTION_ENTRY_RIGHT_BRANCH*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_RIGHT_BRANCH* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RIGHT_BRANCH* 7)
(intern "*ASSI_ACTION_ENTRY_LEFT_BRANCH*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_LEFT_BRANCH* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_LEFT_BRANCH* 8)
(intern "*ASSI_ACTION_ENTRY_RIGHT_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_RIGHT_ROAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RIGHT_ROAD* 9)
(intern "*ASSI_ACTION_ENTRY_LEFT_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_LEFT_ROAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_LEFT_ROAD* 10)
(intern "*ASSI_ACTION_ENTRY_MERGE_CENTER*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MERGE_CENTER* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_CENTER* 11)
(intern "*ASSI_ACTION_ENTRY_MERGE_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MERGE_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_RIGHT* 12)
(intern "*ASSI_ACTION_ENTRY_MERGE_LEFT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MERGE_LEFT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_LEFT* 13)
(intern "*ASSI_ACTION_ENTRY_MERGE_RIGHT_SILD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MERGE_RIGHT_SILD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_RIGHT_SILD* 14)
(intern "*ASSI_ACTION_ENTRY_MERGE_LEFT_SILD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MERGE_LEFT_SILD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_LEFT_SILD* 15)
(intern "*ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN* 16)
(intern "*ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN* 17)
(intern "*ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT* 18)
(intern "*ASSI_ACTION_ENTRY_FERRY*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_FERRY* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_FERRY* 19)
(intern "*ASSI_ACTION_LEFT_FERRY*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_LEFT_FERRY* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_FERRY* 20)
(intern "*ASSI_ACTION_ALONG_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ALONG_ROAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ALONG_ROAD* 23)
(intern "*ASSI_ACTION_ALONG_SILD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ALONG_SILD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ALONG_SILD* 24)
(intern "*ASSI_ACTION_ALONG_MAIN*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ALONG_MAIN* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ALONG_MAIN* 25)
(intern "*ASSI_ACTION_ARRIVE_EXIT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ARRIVE_EXIT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_EXIT* 32)
(intern "*ASSI_ACTION_ARRIVE_SERVICE_AREA*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ARRIVE_SERVICE_AREA* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_SERVICE_AREA* 33)
(intern "*ASSI_ACTION_ARRIVE_TOLL_GATE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ARRIVE_TOLL_GATE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_TOLL_GATE* 34)
(intern "*ASSI_ACTION_ARRIVE_WAY*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ARRIVE_WAY* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_WAY* 35)
(intern "*ASSI_ACTION_ARRIVE_DESTINATION*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ARRIVE_DESTINATION* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_DESTINATION* 36)
(intern "*ASSI_ACTION_ARRIVE_CHARGING_STATION*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ARRIVE_CHARGING_STATION* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_CHARGING_STATION* 37)
(intern "*ASSI_ACTION_ENTRY_RING_LEFT_*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_RING_LEFT_* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RING_LEFT_* 48)
(intern "*ASSI_ACTION_ENTRY_RING_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_RING_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RING_RIGHT* 49)
(intern "*ASSI_ACTION_ENTRY_RING_CONTINUE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_RING_CONTINUE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RING_CONTINUE* 50)
(intern "*ASSI_ACTION_ENTRY_RING_UTURN*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTRY_RING_UTURN* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RING_UTURN* 51)
(intern "*ASSI_ACTION_SMALL_RING_NOT_COUNT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_SMALL_RING_NOT_COUNT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_SMALL_RING_NOT_COUNT* 52)
(intern "*ASSI_ACTION_RIGHT_BRANCH_1*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_RIGHT_BRANCH_1* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_1* 64)
(intern "*ASSI_ACTION_RIGHT_BRANCH_2*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_RIGHT_BRANCH_2* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_2* 65)
(intern "*ASSI_ACTION_RIGHT_BRANCH_3*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_RIGHT_BRANCH_3* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_3* 66)
(intern "*ASSI_ACTION_RIGHT_BRANCH_4*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_RIGHT_BRANCH_4* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_4* 67)
(intern "*ASSI_ACTION_RIGHT_BRANCH_5*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_RIGHT_BRANCH_5* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_5* 68)
(intern "*ASSI_ACTION_LEFT_BRANCH_1*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_LEFT_BRANCH_1* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_1* 69)
(intern "*ASSI_ACTION_LEFT_BRANCH_2*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_LEFT_BRANCH_2* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_2* 70)
(intern "*ASSI_ACTION_LEFT_BRANCH_3*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_LEFT_BRANCH_3* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_3* 71)
(intern "*ASSI_ACTION_LEFT_BRANCH_4*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_LEFT_BRANCH_4* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_4* 72)
(intern "*ASSI_ACTION_LEFT_BRANCH_5*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_LEFT_BRANCH_5* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_5* 73)
(intern "*ASSI_ACTION_ENTER_ULINE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_ULINE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_ULINE* 80)
(intern "*ASSI_ACTION_PASS_CROSSWALK*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_CROSSWALK* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_CROSSWALK* 90)
(intern "*ASSI_ACTION_PASS_OVERPASS*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_OVERPASS* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_OVERPASS* 91)
(intern "*ASSI_ACTION_PASS_UNDERGROUND*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_UNDERGROUND* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_UNDERGROUND* 92)
(intern "*ASSI_ACTION_PASS_SQUARE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_SQUARE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SQUARE* 93)
(intern "*ASSI_ACTION_PASS_PARK*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_PARK* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_PARK* 94)
(intern "*ASSI_ACTION_PASS_STAIRCASE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_STAIRCASE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_STAIRCASE* 95)
(intern "*ASSI_ACTION_PASS_LIFT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_LIFT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_LIFT* 96)
(intern "*ASSI_ACTION_PASS_CABLEWAY*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_CABLEWAY* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_CABLEWAY* 97)
(intern "*ASSI_ACTION_PASS_SKY_CHANNEL*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_SKY_CHANNEL* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SKY_CHANNEL* 98)
(intern "*ASSI_ACTION_PASS_CHANNEL*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_CHANNEL* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_CHANNEL* 99)
(intern "*ASSI_ACTION_PASS_WALKROAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_WALKROAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_WALKROAD* 100)
(intern "*ASSI_ACTION_PASS_BOAT_LINE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_BOAT_LINE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_BOAT_LINE* 101)
(intern "*ASSI_ACTION_PASS_SIGHT_SEEING_LINE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_SIGHT_SEEING_LINE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SIGHT_SEEING_LINE* 102)
(intern "*ASSI_ACTION_PASS_SKIDWAY*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_SKIDWAY* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SKIDWAY* 103)
(intern "*ASSI_ACTION_PASS_LADDER*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_LADDER* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_LADDER* 105)
(intern "*ASSI_ACTION_PASS_SLOPE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_SLOPE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SLOPE* 106)
(intern "*ASSI_ACTION_PASS_BRIDGE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_BRIDGE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_BRIDGE* 107)
(intern "*ASSI_ACTION_PASS_FERRY*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_FERRY* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_FERRY* 108)
(intern "*ASSI_ACTION_PASS_SUBWAY*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_PASS_SUBWAY* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SUBWAY* 109)
(intern "*ASSI_ACTION_SOON_ENTER_BUILDING*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_SOON_ENTER_BUILDING* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_SOON_ENTER_BUILDING* 112)
(intern "*ASSI_ACTION_SOON_LEAVE_BUILDING*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_SOON_LEAVE_BUILDING* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_SOON_LEAVE_BUILDING* 113)
(intern "*ASSI_ACTION_ENTER_ROUNDABOUT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_ROUNDABOUT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_ROUNDABOUT* 114)
(intern "*ASSI_ACTION_LEAVE_ROUNDABOUT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_LEAVE_ROUNDABOUT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEAVE_ROUNDABOUT* 115)
(intern "*ASSI_ACTION_ENTER_PATH*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_PATH* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_PATH* 116)
(intern "*ASSI_ACTION_ENTER_INNER*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_INNER* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_INNER* 117)
(intern "*ASSI_ACTION_ENTER_LEFT_BRANCH_TWO*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_LEFT_BRANCH_TWO* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_LEFT_BRANCH_TWO* 118)
(intern "*ASSI_ACTION_ENTER_LEFT_BRANCH_THREE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_LEFT_BRANCH_THREE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_LEFT_BRANCH_THREE* 119)
(intern "*ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO* 120)
(intern "*ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE* 121)
(intern "*ASSI_ACTION_ENTER_GAS_STATION*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_GAS_STATION* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_GAS_STATION* 122)
(intern "*ASSI_ACTION_ENTER_HOUSING_ESTATE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_HOUSING_ESTATE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_HOUSING_ESTATE* 123)
(intern "*ASSI_ACTION_ENTER_PARK_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_PARK_ROAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_PARK_ROAD* 124)
(intern "*ASSI_ACTION_ENTER_OVERHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_OVERHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_OVERHEAD* 125)
(intern "*ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD* 126)
(intern "*ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD* 127)
(intern "*ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD* 128)
(intern "*ASSI_ACTION_ALONG_STRAIGHT*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ALONG_STRAIGHT* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ALONG_STRAIGHT* 129)
(intern "*ASSI_ACTION_DOWN_OVERHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_DOWN_OVERHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_DOWN_OVERHEAD* 130)
(intern "*ASSI_ACTION_ENTER_LEFT_OVERHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_LEFT_OVERHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_LEFT_OVERHEAD* 131)
(intern "*ASSI_ACTION_ENTER_RIGHT_OVERHEAD*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_RIGHT_OVERHEAD* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_RIGHT_OVERHEAD* 132)
(intern "*ASSI_ACTION_UP_TO_BRIDGE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_UP_TO_BRIDGE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_UP_TO_BRIDGE* 133)
(intern "*ASSI_ACTION_ENTER_PARKING*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_PARKING* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_PARKING* 134)
(intern "*ASSI_ACTION_ENTER_OVERPASS*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_OVERPASS* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_OVERPASS* 135)
(intern "*ASSI_ACTION_ENTER_BRIDGE*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_BRIDGE* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_BRIDGE* 136)
(intern "*ASSI_ACTION_ENTER_UNDERPASS*" (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(shadow '*ASSI_ACTION_ENTER_UNDERPASS* (find-package "LANE_NAVI_INFO_MSGS::TBTASSISTACTION"))
(defconstant lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_UNDERPASS* 137)

(defun lane_navi_info_msgs::TBTAssistAction-to-symbol (const)
  (cond
        ((= const 0) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_NULL*)
        ((= const 1) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MAIN*)
        ((= const 2) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_SIDE_ROAD*)
        ((= const 3) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_FREEWAY*)
        ((= const 4) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_SLIP*)
        ((= const 5) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_TUNNEL*)
        ((= const 6) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_CENTER_BRANCH*)
        ((= const 7) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RIGHT_BRANCH*)
        ((= const 8) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_LEFT_BRANCH*)
        ((= const 9) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RIGHT_ROAD*)
        ((= const 10) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_LEFT_ROAD*)
        ((= const 11) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_CENTER*)
        ((= const 12) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_RIGHT*)
        ((= const 13) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_LEFT*)
        ((= const 14) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_RIGHT_Sild*)
        ((= const 15) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_LEFT_Sild*)
        ((= const 16) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_RIGHT_MAIN*)
        ((= const 17) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_LEFT_MAIN*)
        ((= const 18) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_MERGE_RIGHT_RIGHT*)
        ((= const 19) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_FERRY*)
        ((= const 20) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_FERRY*)
        ((= const 23) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ALONG_ROAD*)
        ((= const 24) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ALONG_SILD*)
        ((= const 25) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ALONG_MAIN*)
        ((= const 32) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_EXIT*)
        ((= const 33) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_SERVICE_AREA*)
        ((= const 34) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_TOLL_GATE*)
        ((= const 35) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_WAY*)
        ((= const 36) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_DESTINATION*)
        ((= const 37) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ARRIVE_CHARGING_STATION*)
        ((= const 48) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RING_LEFT_*)
        ((= const 49) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RING_RIGHT*)
        ((= const 50) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RING_CONTINUE*)
        ((= const 51) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTRY_RING_UTURN*)
        ((= const 52) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_SMALL_RING_NOT_COUNT*)
        ((= const 64) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_1*)
        ((= const 65) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_2*)
        ((= const 66) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_3*)
        ((= const 67) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_4*)
        ((= const 68) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_RIGHT_BRANCH_5*)
        ((= const 69) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_1*)
        ((= const 70) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_2*)
        ((= const 71) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_3*)
        ((= const 72) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_4*)
        ((= const 73) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEFT_BRANCH_5*)
        ((= const 80) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_ULINE*)
        ((= const 90) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_CROSSWalk*)
        ((= const 91) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_OVERPASS*)
        ((= const 92) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_UNDERGROUND*)
        ((= const 93) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SQUARE*)
        ((= const 94) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_PARK*)
        ((= const 95) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_STAIRCASE*)
        ((= const 96) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_LIFT*)
        ((= const 97) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_CABLEWAY*)
        ((= const 98) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SKY_CHANNEL*)
        ((= const 99) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_CHANNEL*)
        ((= const 100) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_WALKROAD*)
        ((= const 101) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_BOAT_LINE*)
        ((= const 102) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SIGHT_SEEING_LINE*)
        ((= const 103) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SKIDWAY*)
        ((= const 105) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_LADDER*)
        ((= const 106) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SLOPE*)
        ((= const 107) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_BRIDGE*)
        ((= const 108) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_FERRY*)
        ((= const 109) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_PASS_SUBWAY*)
        ((= const 112) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_SOON_ENTER_Building*)
        ((= const 113) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_SOON_LEAVE_Building*)
        ((= const 114) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_ROUNDABOUT*)
        ((= const 115) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_LEAVE_ROUNDABOUT*)
        ((= const 116) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_PATH*)
        ((= const 117) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_INNER*)
        ((= const 118) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_LEFT_BRANCH_TWO*)
        ((= const 119) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_LEFT_BRANCH_THREE*)
        ((= const 120) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_RIGHT_BRANCH_TWO*)
        ((= const 121) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_RIGHT_BRANCH_THREE*)
        ((= const 122) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_GAS_STATION*)
        ((= const 123) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_HOUSING_ESTATE*)
        ((= const 124) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_PARK_ROAD*)
        ((= const 125) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_OVERHEAD*)
        ((= const 126) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_CENTER_BRANCH_OVERHEAD*)
        ((= const 127) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_RIGHT_BRANCH_OVERHEAD*)
        ((= const 128) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_LEFT_BRANCH_OVERHEAD*)
        ((= const 129) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ALONG_STRAIGHT*)
        ((= const 130) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_DOWN_OVERHEAD*)
        ((= const 131) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_LEFT_OVERHEAD*)
        ((= const 132) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_RIGHT_OVERHEAD*)
        ((= const 133) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_UP_TO_BRIDGE*)
        ((= const 134) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_PARKING*)
        ((= const 135) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_OVERPASS*)
        ((= const 136) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_BRIDGE*)
        ((= const 137) 'lane_navi_info_msgs::TBTAssistAction::*ASSI_ACTION_ENTER_UNDERPASS*)
        (t nil)))

(defclass lane_navi_info_msgs::TBTAssistAction
  :super ros::object
  :slots (_value ))

(defmethod lane_navi_info_msgs::TBTAssistAction
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::TBTAssistAction :md5sum-) "1cae210ca9db23923622a7fd41201250")
(setf (get lane_navi_info_msgs::TBTAssistAction :datatype-) "lane_navi_info_msgs/TBTAssistAction")
(setf (get lane_navi_info_msgs::TBTAssistAction :definition-)
      "uint16 ASSI_ACTION_NULL = 0
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



(provide :lane_navi_info_msgs/TBTAssistAction "1cae210ca9db23923622a7fd41201250")


