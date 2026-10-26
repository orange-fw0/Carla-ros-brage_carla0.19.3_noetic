;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDFacilityType)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDFacilityType (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE")
  (make-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))

(in-package "ROS")
;;//! \htmlinclude SDFacilityType.msg.html


(intern "*FACILITY_LEFT_INTER_FLOW*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_LEFT_INTER_FLOW* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_LEFT_INTER_FLOW* 1)
(intern "*FACILITY_RIGHT_INTER_FLOW*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RIGHT_INTER_FLOW* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RIGHT_INTER_FLOW* 2)
(intern "*FACILITY_REVERSE_TURN*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_REVERSE_TURN* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_REVERSE_TURN* 4)
(intern "*FACILITY_LINKING_TURN*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_LINKING_TURN* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_LINKING_TURN* 5)
(intern "*FACILITY_ACCIDENT_AREA*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_ACCIDENT_AREA* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_ACCIDENT_AREA* 6)
(intern "*FACILITY_RAILWAY_CROSS*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RAILWAY_CROSS* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RAILWAY_CROSS* 8)
(intern "*FACILITY_SLIPPERY*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_SLIPPERY* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_SLIPPERY* 9)
(intern "*FACILITY_MAX_SPEED_LIMIT*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_MAX_SPEED_LIMIT* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_MAX_SPEED_LIMIT* 10)
(intern "*FACILITY_MIN_SPEED_LIMIT*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_MIN_SPEED_LIMIT* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_MIN_SPEED_LIMIT* 11)
(intern "*FACILITY_VILLAGE*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_VILLAGE* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_VILLAGE* 12)
(intern "*FACILITY_LEFT_NARROW*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_LEFT_NARROW* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_LEFT_NARROW* 13)
(intern "*FACILITY_RIGHT_NARROW*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RIGHT_NARROW* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RIGHT_NARROW* 14)
(intern "*FACILITY_DOUBLE_NARROW*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_DOUBLE_NARROW* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_DOUBLE_NARROW* 15)
(intern "*FACILITY_CROSS_WIND_AREA*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_CROSS_WIND_AREA* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_CROSS_WIND_AREA* 16)
(intern "*FACILITY_SCHOOL*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_SCHOOL* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_SCHOOL* 17)
(intern "*FACILITY_NOPASSING*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_NOPASSING* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_NOPASSING* 18)
(intern "*FACILITY_NARROW_BRIDGE*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_NARROW_BRIDGE* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_NARROW_BRIDGE* 19)
(intern "*FACILITY_AROUND_THE_LINE*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_AROUND_THE_LINE* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_AROUND_THE_LINE* 20)
(intern "*FACILITY_LEFT_BYPASS*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_LEFT_BYPASS* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_LEFT_BYPASS* 21)
(intern "*FACILITY_RIGHT_BYPASS*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RIGHT_BYPASS* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RIGHT_BYPASS* 22)
(intern "*FACILITY_LEFT_MOUNTAIN_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_LEFT_MOUNTAIN_ROAD* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_LEFT_MOUNTAIN_ROAD* 23)
(intern "*FACILITY_RIGHT_MOUNTAIN_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RIGHT_MOUNTAIN_ROAD* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RIGHT_MOUNTAIN_ROAD* 24)
(intern "*FACILITY_ONSTEEPLOPE*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_ONSTEEPLOPE* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_ONSTEEPLOPE* 25)
(intern "*FACILITY_UNDERSTEEPLOPE*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_UNDERSTEEPLOPE* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_UNDERSTEEPLOPE* 26)
(intern "*FACILITY_OVER_WATER_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_OVER_WATER_ROAD* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_OVER_WATER_ROAD* 27)
(intern "*FACILITY_UNEVEN_ROAD*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_UNEVEN_ROAD* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_UNEVEN_ROAD* 28)
(intern "*FACILITY_STROLL*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_STROLL* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_STROLL* 29)
(intern "*FACILITY_ATTENTION_TO_DANGER*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_ATTENTION_TO_DANGER* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_ATTENTION_TO_DANGER* 30)
(intern "*FACILITY_CROSSWALK*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_CROSSWALK* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_CROSSWALK* 31)
(intern "*FACILITY_RIVER_BANK_LEFT*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RIVER_BANK_LEFT* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RIVER_BANK_LEFT* 33)
(intern "*FACILITY_RIVER_BANK_RIGHT*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RIVER_BANK_RIGHT* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RIVER_BANK_RIGHT* 34)
(intern "*FACILITY_CHILDREN*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_CHILDREN* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_CHILDREN* 35)
(intern "*FACILITY_CYCLISTS*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_CYCLISTS* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_CYCLISTS* 36)
(intern "*FACILITY_DOMESTIC_ANIMALS_CROSSING*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_DOMESTIC_ANIMALS_CROSSING* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_DOMESTIC_ANIMALS_CROSSING* 37)
(intern "*FACILITY_GIVE_WAY*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_GIVE_WAY* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_GIVE_WAY* 38)
(intern "*FACILITY_STOP*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_STOP* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_STOP* 39)
(intern "*FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC* 40)
(intern "*FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC* 41)
(intern "*FACILITY_HUMPBACK_BRIDGE*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_HUMPBACK_BRIDGE* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_HUMPBACK_BRIDGE* 42)
(intern "*FACILITY_END_OF_SPEED_LIMIT*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_END_OF_SPEED_LIMIT* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_END_OF_SPEED_LIMIT* 43)
(intern "*FACILITY_END_OF_PROHIBITION_ON_OVERTAKING*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_END_OF_PROHIBITION_ON_OVERTAKING* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_END_OF_PROHIBITION_ON_OVERTAKING* 44)
(intern "*FACILITY_RAILWAY_CROSS_EXTEND*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RAILWAY_CROSS_EXTEND* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RAILWAY_CROSS_EXTEND* 50)
(intern "*FACILITY_RAILWAY_WITH_GATES*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RAILWAY_WITH_GATES* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RAILWAY_WITH_GATES* 51)
(intern "*FACILITY_RAILWAY_WITHOUT_GATES*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_RAILWAY_WITHOUT_GATES* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_RAILWAY_WITHOUT_GATES* 52)
(intern "*FACILITY_VARIABLE_SPEED*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_VARIABLE_SPEED* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_VARIABLE_SPEED* 53)
(intern "*FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO* 54)
(intern "*FACILITY_PEDESTRIANS*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_PEDESTRIANS* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_PEDESTRIANS* 56)
(intern "*FACILITY_UNKNOWN*" (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(shadow '*FACILITY_UNKNOWN* (find-package "LANE_NAVI_INFO_MSGS::SDFACILITYTYPE"))
(defconstant lane_navi_info_msgs::SDFacilityType::*FACILITY_UNKNOWN* 255)

(defun lane_navi_info_msgs::SDFacilityType-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_LEFT_INTER_FLOW*)
        ((= const 2) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RIGHT_INTER_FLOW*)
        ((= const 4) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_REVERSE_TURN*)
        ((= const 5) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_LINKING_TURN*)
        ((= const 6) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_ACCIDENT_AREA*)
        ((= const 8) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RAILWAY_CROSS*)
        ((= const 9) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_SLIPPERY*)
        ((= const 10) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_MAX_SPEED_LIMIT*)
        ((= const 11) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_MIN_SPEED_LIMIT*)
        ((= const 12) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_VILLAGE*)
        ((= const 13) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_LEFT_NARROW*)
        ((= const 14) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RIGHT_NARROW*)
        ((= const 15) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_DOUBLE_NARROW*)
        ((= const 16) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_CROSS_WIND_AREA*)
        ((= const 17) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_SCHOOL*)
        ((= const 18) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_NOPASSING*)
        ((= const 19) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_NARROW_BRIDGE*)
        ((= const 20) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_AROUND_THE_LINE*)
        ((= const 21) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_LEFT_BYPASS*)
        ((= const 22) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RIGHT_BYPASS*)
        ((= const 23) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_LEFT_MOUNTAIN_ROAD*)
        ((= const 24) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RIGHT_MOUNTAIN_ROAD*)
        ((= const 25) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_ONSTEEPLOPE*)
        ((= const 26) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_UNDERSTEEPLOPE*)
        ((= const 27) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_OVER_WATER_ROAD*)
        ((= const 28) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_UNEVEN_ROAD*)
        ((= const 29) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_STROLL*)
        ((= const 30) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_ATTENTION_TO_DANGER*)
        ((= const 31) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_CROSSWALK*)
        ((= const 33) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RIVER_BANK_LEFT*)
        ((= const 34) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RIVER_BANK_RIGHT*)
        ((= const 35) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_CHILDREN*)
        ((= const 36) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_CYCLISTS*)
        ((= const 37) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_DOMESTIC_ANIMALS_CROSSING*)
        ((= const 38) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_GIVE_WAY*)
        ((= const 39) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_STOP*)
        ((= const 40) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC*)
        ((= const 41) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC*)
        ((= const 42) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_HUMPBACK_BRIDGE*)
        ((= const 43) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_END_OF_SPEED_LIMIT*)
        ((= const 44) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_END_OF_PROHIBITION_ON_OVERTAKING*)
        ((= const 50) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RAILWAY_CROSS_EXTEND*)
        ((= const 51) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RAILWAY_WITH_GATES*)
        ((= const 52) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_RAILWAY_WITHOUT_GATES*)
        ((= const 53) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_VARIABLE_SPEED*)
        ((= const 54) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO*)
        ((= const 56) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_PEDESTRIANS*)
        ((= const 255) 'lane_navi_info_msgs::SDFacilityType::*FACILITY_UNKNOWN*)
        (t nil)))

(defclass lane_navi_info_msgs::SDFacilityType
  :super ros::object
  :slots (_type ))

(defmethod lane_navi_info_msgs::SDFacilityType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDFacilityType :md5sum-) "ccaffcd6932aad91bf6651283d6e600a")
(setf (get lane_navi_info_msgs::SDFacilityType :datatype-) "lane_navi_info_msgs/SDFacilityType")
(setf (get lane_navi_info_msgs::SDFacilityType :definition-)
      "uint8 FACILITY_LEFT_INTER_FLOW = 1
uint8 FACILITY_RIGHT_INTER_FLOW = 2
uint8 FACILITY_REVERSE_TURN = 4
uint8 FACILITY_LINKING_TURN = 5
uint8 FACILITY_ACCIDENT_AREA = 6
uint8 FACILITY_RAILWAY_CROSS = 8
uint8 FACILITY_SLIPPERY = 9
uint8 FACILITY_MAX_SPEED_LIMIT = 10
uint8 FACILITY_MIN_SPEED_LIMIT = 11
uint8 FACILITY_VILLAGE = 12
uint8 FACILITY_LEFT_NARROW = 13
uint8 FACILITY_RIGHT_NARROW = 14
uint8 FACILITY_DOUBLE_NARROW = 15
uint8 FACILITY_CROSS_WIND_AREA = 16
uint8 FACILITY_SCHOOL = 17
uint8 FACILITY_NOPASSING = 18
uint8 FACILITY_NARROW_BRIDGE = 19
uint8 FACILITY_AROUND_THE_LINE = 20
uint8 FACILITY_LEFT_BYPASS = 21
uint8 FACILITY_RIGHT_BYPASS = 22
uint8 FACILITY_LEFT_MOUNTAIN_ROAD = 23
uint8 FACILITY_RIGHT_MOUNTAIN_ROAD = 24
uint8 FACILITY_ONSTEEPLOPE = 25
uint8 FACILITY_UNDERSTEEPLOPE = 26
uint8 FACILITY_OVER_WATER_ROAD = 27
uint8 FACILITY_UNEVEN_ROAD = 28
uint8 FACILITY_STROLL = 29
uint8 FACILITY_ATTENTION_TO_DANGER = 30
uint8 FACILITY_CROSSWALK = 31
uint8 FACILITY_RIVER_BANK_LEFT = 33
uint8 FACILITY_RIVER_BANK_RIGHT = 34
uint8 FACILITY_CHILDREN = 35
uint8 FACILITY_CYCLISTS = 36
uint8 FACILITY_DOMESTIC_ANIMALS_CROSSING = 37
uint8 FACILITY_GIVE_WAY = 38
uint8 FACILITY_STOP = 39
uint8 FACILITY_PRIORITY_FOR_ONCOMING_TRAFFIC = 40
uint8 FACILITY_PRIORITY_OVER_ONCOMING_TRAFFIC = 41
uint8 FACILITY_HUMPBACK_BRIDGE = 42
uint8 FACILITY_END_OF_SPEED_LIMIT = 43
uint8 FACILITY_END_OF_PROHIBITION_ON_OVERTAKING = 44
uint8 FACILITY_RAILWAY_CROSS_EXTEND = 50
uint8 FACILITY_RAILWAY_WITH_GATES = 51
uint8 FACILITY_RAILWAY_WITHOUT_GATES = 52
uint8 FACILITY_VARIABLE_SPEED = 53
uint8 FACILITY_MAX_SPEED_LIMIT_WITH_RULEINFO = 54
uint8 FACILITY_PEDESTRIANS = 56
uint8 FACILITY_UNKNOWN = 255
uint8 type

")



(provide :lane_navi_info_msgs/SDFacilityType "ccaffcd6932aad91bf6651283d6e600a")


