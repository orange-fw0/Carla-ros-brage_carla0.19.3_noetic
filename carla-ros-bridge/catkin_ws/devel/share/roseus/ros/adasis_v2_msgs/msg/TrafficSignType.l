;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::TrafficSignType)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'TrafficSignType (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE")
  (make-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignType.msg.html


(intern "*DANGER*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*DANGER* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*DANGER* 0)
(intern "*PASS_LEFT_OR_RIGHT_SIDE*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*PASS_LEFT_OR_RIGHT_SIDE* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*PASS_LEFT_OR_RIGHT_SIDE* 1)
(intern "*PASS_LEFT_SIDE*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*PASS_LEFT_SIDE* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*PASS_LEFT_SIDE* 2)
(intern "*PASS_RIGHT_SIDE*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*PASS_RIGHT_SIDE* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*PASS_RIGHT_SIDE* 3)
(intern "*DOMESTIC_ANIMALS_CROSSING*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*DOMESTIC_ANIMALS_CROSSING* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*DOMESTIC_ANIMALS_CROSSING* 4)
(intern "*WILD_ANIMALS_CROSSING*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*WILD_ANIMALS_CROSSING* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*WILD_ANIMALS_CROSSING* 5)
(intern "*ROAD_WORKS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*ROAD_WORKS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*ROAD_WORKS* 6)
(intern "*RESIDENTIAL_AREA*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RESIDENTIAL_AREA* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RESIDENTIAL_AREA* 7)
(intern "*END_OF_RESIDENTIAL_AREA*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*END_OF_RESIDENTIAL_AREA* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*END_OF_RESIDENTIAL_AREA* 8)
(intern "*RIGHT_BEND*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RIGHT_BEND* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RIGHT_BEND* 9)
(intern "*LEFT_BEND*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*LEFT_BEND* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*LEFT_BEND* 10)
(intern "*DOUBLE_BEND_RIGHT_FIRST*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*DOUBLE_BEND_RIGHT_FIRST* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*DOUBLE_BEND_RIGHT_FIRST* 13)
(intern "*DOUBLE_BEND_LEFT_FIRST*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*DOUBLE_BEND_LEFT_FIRST* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*DOUBLE_BEND_LEFT_FIRST* 14)
(intern "*CURVY_ROAD*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*CURVY_ROAD* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*CURVY_ROAD* 17)
(intern "*OVERTAKING_BY_GOODS_VEHICLES_PROHIBITED*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*OVERTAKING_BY_GOODS_VEHICLES_PROHIBITED* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*OVERTAKING_BY_GOODS_VEHICLES_PROHIBITED* 20)
(intern "*END_OF_PROHIBITION_ON_OVERTAKING_FOR_GOODS_VEHICLES*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*END_OF_PROHIBITION_ON_OVERTAKING_FOR_GOODS_VEHICLES* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*END_OF_PROHIBITION_ON_OVERTAKING_FOR_GOODS_VEHICLES* 21)
(intern "*DANGEROUS_INTERSECTION*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*DANGEROUS_INTERSECTION* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*DANGEROUS_INTERSECTION* 22)
(intern "*TUNNEL*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*TUNNEL* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*TUNNEL* 24)
(intern "*FERRY_TERMINAL*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*FERRY_TERMINAL* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*FERRY_TERMINAL* 25)
(intern "*NARROW_BRIDGE*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*NARROW_BRIDGE* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*NARROW_BRIDGE* 26)
(intern "*HUMPBACK_BRIDGE*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*HUMPBACK_BRIDGE* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*HUMPBACK_BRIDGE* 28)
(intern "*RIVER_BANK*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RIVER_BANK* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RIVER_BANK* 29)
(intern "*RIVER_BANK_LEFT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RIVER_BANK_LEFT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RIVER_BANK_LEFT* 30)
(intern "*LIGHT_SIGNALS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*LIGHT_SIGNALS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*LIGHT_SIGNALS* 31)
(intern "*GIVE_WAY_YIELD*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*GIVE_WAY_YIELD* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*GIVE_WAY_YIELD* 32)
(intern "*STOP*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*STOP* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*STOP* 33)
(intern "*PRIORITY_ROAD*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*PRIORITY_ROAD* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*PRIORITY_ROAD* 34)
(intern "*INTERSECTION*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*INTERSECTION* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*INTERSECTION* 35)
(intern "*INTERSECTION_WITH_MINOR_ROAD*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*INTERSECTION_WITH_MINOR_ROAD* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*INTERSECTION_WITH_MINOR_ROAD* 36)
(intern "*INTERSECTION_WITH_PRIORITY_TO_THE_RIGHT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*INTERSECTION_WITH_PRIORITY_TO_THE_RIGHT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*INTERSECTION_WITH_PRIORITY_TO_THE_RIGHT* 37)
(intern "*DIRECTION_TO_THE_RIGHT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*DIRECTION_TO_THE_RIGHT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*DIRECTION_TO_THE_RIGHT* 38)
(intern "*DIRECTION_TO_THE_LEFT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*DIRECTION_TO_THE_LEFT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*DIRECTION_TO_THE_LEFT* 39)
(intern "*CARRIAGEWAY_NARROWS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*CARRIAGEWAY_NARROWS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*CARRIAGEWAY_NARROWS* 40)
(intern "*CARRIAGEWAY_NARROWS_RIGHT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*CARRIAGEWAY_NARROWS_RIGHT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*CARRIAGEWAY_NARROWS_RIGHT* 41)
(intern "*CARRIAGEWAY_NARROWS_LEFT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*CARRIAGEWAY_NARROWS_LEFT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*CARRIAGEWAY_NARROWS_LEFT* 42)
(intern "*LANE_MERGE_LEFT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*LANE_MERGE_LEFT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*LANE_MERGE_LEFT* 43)
(intern "*LANE_MERGE_RIGHT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*LANE_MERGE_RIGHT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*LANE_MERGE_RIGHT* 44)
(intern "*LANE_MERGE_CENTER*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*LANE_MERGE_CENTER* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*LANE_MERGE_CENTER* 45)
(intern "*OVERTAKING_PROHIBITED_*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*OVERTAKING_PROHIBITED_* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*OVERTAKING_PROHIBITED_* 46)
(intern "*END_OF_PROHIBITION_ON_OVERTAKING*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*END_OF_PROHIBITION_ON_OVERTAKING* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*END_OF_PROHIBITION_ON_OVERTAKING* 47)
(intern "*PEDESTRIANS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*PEDESTRIANS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*PEDESTRIANS* 50)
(intern "*PEDESTRIAN_CROSSING*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*PEDESTRIAN_CROSSING* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*PEDESTRIAN_CROSSING* 51)
(intern "*CHILDREN*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*CHILDREN* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*CHILDREN* 52)
(intern "*SCHOOL_ZOME*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*SCHOOL_ZOME* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*SCHOOL_ZOME* 53)
(intern "*CYCLISTS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*CYCLISTS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*CYCLISTS* 54)
(intern "*TWO_WAY_TRAFFIC*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*TWO_WAY_TRAFFIC* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*TWO_WAY_TRAFFIC* 55)
(intern "*RAILWAY_CROSSING_WITH_GATES*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RAILWAY_CROSSING_WITH_GATES* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RAILWAY_CROSSING_WITH_GATES* 56)
(intern "*RAILWAY_CROSSING_WITHOUT_GATES*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RAILWAY_CROSSING_WITHOUT_GATES* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RAILWAY_CROSSING_WITHOUT_GATES* 57)
(intern "*RAILWAY_CROSSING*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RAILWAY_CROSSING* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RAILWAY_CROSSING* 58)
(intern "*TRAMWAY*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*TRAMWAY* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*TRAMWAY* 59)
(intern "*FALLING_ROCKS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*FALLING_ROCKS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*FALLING_ROCKS* 60)
(intern "*FALLING_ROCKS_LEFT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*FALLING_ROCKS_LEFT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*FALLING_ROCKS_LEFT* 61)
(intern "*FALLING_ROCKS_RIGHT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*FALLING_ROCKS_RIGHT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*FALLING_ROCKS_RIGHT* 62)
(intern "*STEEP_DROP_LEFT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*STEEP_DROP_LEFT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*STEEP_DROP_LEFT* 63)
(intern "*STEEP_DROP_RIGHT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*STEEP_DROP_RIGHT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*STEEP_DROP_RIGHT* 64)
(intern "*VARIABLE_SIGN_MECHANIC_ELEMENTS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*VARIABLE_SIGN_MECHANIC_ELEMENTS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*VARIABLE_SIGN_MECHANIC_ELEMENTS* 65)
(intern "*SLIPPERY_ROAD*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*SLIPPERY_ROAD* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*SLIPPERY_ROAD* 66)
(intern "*STEEP_ASCENT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*STEEP_ASCENT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*STEEP_ASCENT* 67)
(intern "*STEEP_DESCENT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*STEEP_DESCENT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*STEEP_DESCENT* 68)
(intern "*UNEVEN_ROAD*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*UNEVEN_ROAD* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*UNEVEN_ROAD* 69)
(intern "*HUMP*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*HUMP* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*HUMP* 70)
(intern "*DIP*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*DIP* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*DIP* 71)
(intern "*ROAD_FLOODS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*ROAD_FLOODS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*ROAD_FLOODS* 72)
(intern "*ICY_ROAD*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*ICY_ROAD* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*ICY_ROAD* 73)
(intern "*SIDE_WINDS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*SIDE_WINDS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*SIDE_WINDS* 74)
(intern "*TRAFFIC_CONGESTION*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*TRAFFIC_CONGESTION* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*TRAFFIC_CONGESTION* 75)
(intern "*HIGH_ACCIDENT_AREA*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*HIGH_ACCIDENT_AREA* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*HIGH_ACCIDENT_AREA* 76)
(intern "*BEGINNING_OF_BUILT_UP_AREA*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*BEGINNING_OF_BUILT_UP_AREA* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*BEGINNING_OF_BUILT_UP_AREA* 77)
(intern "*END_OF_ALL_PROHIBITIONS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*END_OF_ALL_PROHIBITIONS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*END_OF_ALL_PROHIBITIONS* 79)
(intern "*VARIABLE_SIGN_LIGHT_ELEMENTS*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*VARIABLE_SIGN_LIGHT_ELEMENTS* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*VARIABLE_SIGN_LIGHT_ELEMENTS* 80)
(intern "*PRIORITY_OVER_ONCOMING_TRAFFIC*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*PRIORITY_OVER_ONCOMING_TRAFFIC* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*PRIORITY_OVER_ONCOMING_TRAFFIC* 81)
(intern "*PRIORITY_FOR_ONCOMING_TRAFIIC*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*PRIORITY_FOR_ONCOMING_TRAFIIC* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*PRIORITY_FOR_ONCOMING_TRAFIIC* 82)
(intern "*END_OF_BUILT_UP_AREA*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*END_OF_BUILT_UP_AREA* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*END_OF_BUILT_UP_AREA* 83)
(intern "*SPEED_LIMIT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*SPEED_LIMIT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*SPEED_LIMIT* 87)
(intern "*END_OF_SPEED_LIMIT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*END_OF_SPEED_LIMIT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*END_OF_SPEED_LIMIT* 88)
(intern "*TOLL_STATION*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*TOLL_STATION* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*TOLL_STATION* 150)
(intern "*END_INTERVAL_VELOCITY_MEASUR*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*END_INTERVAL_VELOCITY_MEASUR* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*END_INTERVAL_VELOCITY_MEASUR* 237)
(intern "*START_INTERVAL_VELOCITY_MEASUR*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*START_INTERVAL_VELOCITY_MEASUR* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*START_INTERVAL_VELOCITY_MEASUR* 238)
(intern "*INTERVAL_VELOCITY_MEASURE*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*INTERVAL_VELOCITY_MEASURE* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*INTERVAL_VELOCITY_MEASURE* 239)
(intern "*NON_MOTORIZED_VEHICLE_LANE*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*NON_MOTORIZED_VEHICLE_LANE* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*NON_MOTORIZED_VEHICLE_LANE* 240)
(intern "*EMERGENCY_LANE*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*EMERGENCY_LANE* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*EMERGENCY_LANE* 241)
(intern "*BUS_LANE_CAMERA*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*BUS_LANE_CAMERA* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*BUS_LANE_CAMERA* 242)
(intern "*VIOLATION_CAMERA*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*VIOLATION_CAMERA* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*VIOLATION_CAMERA* 243)
(intern "*RED_LIGHT_SHOOTING*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RED_LIGHT_SHOOTING* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RED_LIGHT_SHOOTING* 244)
(intern "*MONITOR_CAMERA*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*MONITOR_CAMERA* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*MONITOR_CAMERA* 249)
(intern "*SPEED_MEASURE_RADAR*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*SPEED_MEASURE_RADAR* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*SPEED_MEASURE_RADAR* 250)
(intern "*RAILROAD_CROSSING*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*RAILROAD_CROSSING* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*RAILROAD_CROSSING* 251)
(intern "*ZEBRA_PEDESTRIAN_CROSSING*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*ZEBRA_PEDESTRIAN_CROSSING* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*ZEBRA_PEDESTRIAN_CROSSING* 252)
(intern "*SPEED_BUMP*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*SPEED_BUMP* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*SPEED_BUMP* 253)
(intern "*TRAFFIC_LIGHT*" (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(shadow '*TRAFFIC_LIGHT* (find-package "ADASIS_V2_MSGS::TRAFFICSIGNTYPE"))
(defconstant adasis_v2_msgs::TrafficSignType::*TRAFFIC_LIGHT* 254)

(defun adasis_v2_msgs::TrafficSignType-to-symbol (const)
  (cond
        ((= const 0) 'adasis_v2_msgs::TrafficSignType::*DANGER*)
        ((= const 1) 'adasis_v2_msgs::TrafficSignType::*PASS_LEFT_OR_RIGHT_SIDE*)
        ((= const 2) 'adasis_v2_msgs::TrafficSignType::*PASS_LEFT_SIDE*)
        ((= const 3) 'adasis_v2_msgs::TrafficSignType::*PASS_RIGHT_SIDE*)
        ((= const 4) 'adasis_v2_msgs::TrafficSignType::*DOMESTIC_ANIMALS_CROSSING*)
        ((= const 5) 'adasis_v2_msgs::TrafficSignType::*WILD_ANIMALS_CROSSING*)
        ((= const 6) 'adasis_v2_msgs::TrafficSignType::*ROAD_WORKS*)
        ((= const 7) 'adasis_v2_msgs::TrafficSignType::*RESIDENTIAL_AREA*)
        ((= const 8) 'adasis_v2_msgs::TrafficSignType::*END_OF_RESIDENTIAL_AREA*)
        ((= const 9) 'adasis_v2_msgs::TrafficSignType::*RIGHT_BEND*)
        ((= const 10) 'adasis_v2_msgs::TrafficSignType::*LEFT_BEND*)
        ((= const 13) 'adasis_v2_msgs::TrafficSignType::*DOUBLE_BEND_RIGHT_FIRST*)
        ((= const 14) 'adasis_v2_msgs::TrafficSignType::*DOUBLE_BEND_LEFT_FIRST*)
        ((= const 17) 'adasis_v2_msgs::TrafficSignType::*CURVY_ROAD*)
        ((= const 20) 'adasis_v2_msgs::TrafficSignType::*OVERTAKING_BY_GOODS_VEHICLES_PROHIBITED*)
        ((= const 21) 'adasis_v2_msgs::TrafficSignType::*END_OF_PROHIBITION_ON_OVERTAKING_FOR_GOODS_VEHICLES*)
        ((= const 22) 'adasis_v2_msgs::TrafficSignType::*DANGEROUS_INTERSECTION*)
        ((= const 24) 'adasis_v2_msgs::TrafficSignType::*TUNNEL*)
        ((= const 25) 'adasis_v2_msgs::TrafficSignType::*FERRY_TERMINAL*)
        ((= const 26) 'adasis_v2_msgs::TrafficSignType::*NARROW_BRIDGE*)
        ((= const 28) 'adasis_v2_msgs::TrafficSignType::*HUMPBACK_BRIDGE*)
        ((= const 29) 'adasis_v2_msgs::TrafficSignType::*RIVER_BANK*)
        ((= const 30) 'adasis_v2_msgs::TrafficSignType::*RIVER_BANK_LEFT*)
        ((= const 31) 'adasis_v2_msgs::TrafficSignType::*LIGHT_SIGNALS*)
        ((= const 32) 'adasis_v2_msgs::TrafficSignType::*GIVE_WAY_YIELD*)
        ((= const 33) 'adasis_v2_msgs::TrafficSignType::*STOP*)
        ((= const 34) 'adasis_v2_msgs::TrafficSignType::*PRIORITY_ROAD*)
        ((= const 35) 'adasis_v2_msgs::TrafficSignType::*INTERSECTION*)
        ((= const 36) 'adasis_v2_msgs::TrafficSignType::*INTERSECTION_WITH_MINOR_ROAD*)
        ((= const 37) 'adasis_v2_msgs::TrafficSignType::*INTERSECTION_WITH_PRIORITY_TO_THE_RIGHT*)
        ((= const 38) 'adasis_v2_msgs::TrafficSignType::*DIRECTION_TO_THE_RIGHT*)
        ((= const 39) 'adasis_v2_msgs::TrafficSignType::*DIRECTION_TO_THE_LEFT*)
        ((= const 40) 'adasis_v2_msgs::TrafficSignType::*CARRIAGEWAY_NARROWS*)
        ((= const 41) 'adasis_v2_msgs::TrafficSignType::*CARRIAGEWAY_NARROWS_RIGHT*)
        ((= const 42) 'adasis_v2_msgs::TrafficSignType::*CARRIAGEWAY_NARROWS_LEFT*)
        ((= const 43) 'adasis_v2_msgs::TrafficSignType::*LANE_MERGE_LEFT*)
        ((= const 44) 'adasis_v2_msgs::TrafficSignType::*LANE_MERGE_RIGHT*)
        ((= const 45) 'adasis_v2_msgs::TrafficSignType::*LANE_MERGE_CENTER*)
        ((= const 46) 'adasis_v2_msgs::TrafficSignType::*OVERTAKING_PROHIBITED_*)
        ((= const 47) 'adasis_v2_msgs::TrafficSignType::*END_OF_PROHIBITION_ON_OVERTAKING*)
        ((= const 50) 'adasis_v2_msgs::TrafficSignType::*PEDESTRIANS*)
        ((= const 51) 'adasis_v2_msgs::TrafficSignType::*PEDESTRIAN_CROSSING*)
        ((= const 52) 'adasis_v2_msgs::TrafficSignType::*CHILDREN*)
        ((= const 53) 'adasis_v2_msgs::TrafficSignType::*SCHOOL_ZOME*)
        ((= const 54) 'adasis_v2_msgs::TrafficSignType::*CYCLISTS*)
        ((= const 55) 'adasis_v2_msgs::TrafficSignType::*TWO_WAY_TRAFFIC*)
        ((= const 56) 'adasis_v2_msgs::TrafficSignType::*RAILWAY_CROSSING_WITH_GATES*)
        ((= const 57) 'adasis_v2_msgs::TrafficSignType::*RAILWAY_CROSSING_WITHOUT_GATES*)
        ((= const 58) 'adasis_v2_msgs::TrafficSignType::*RAILWAY_CROSSING*)
        ((= const 59) 'adasis_v2_msgs::TrafficSignType::*TRAMWAY*)
        ((= const 60) 'adasis_v2_msgs::TrafficSignType::*FALLING_ROCKS*)
        ((= const 61) 'adasis_v2_msgs::TrafficSignType::*FALLING_ROCKS_LEFT*)
        ((= const 62) 'adasis_v2_msgs::TrafficSignType::*FALLING_ROCKS_RIGHT*)
        ((= const 63) 'adasis_v2_msgs::TrafficSignType::*STEEP_DROP_LEFT*)
        ((= const 64) 'adasis_v2_msgs::TrafficSignType::*STEEP_DROP_RIGHT*)
        ((= const 65) 'adasis_v2_msgs::TrafficSignType::*VARIABLE_SIGN_MECHANIC_ELEMENTS*)
        ((= const 66) 'adasis_v2_msgs::TrafficSignType::*SLIPPERY_ROAD*)
        ((= const 67) 'adasis_v2_msgs::TrafficSignType::*STEEP_ASCENT*)
        ((= const 68) 'adasis_v2_msgs::TrafficSignType::*STEEP_DESCENT*)
        ((= const 69) 'adasis_v2_msgs::TrafficSignType::*UNEVEN_ROAD*)
        ((= const 70) 'adasis_v2_msgs::TrafficSignType::*HUMP*)
        ((= const 71) 'adasis_v2_msgs::TrafficSignType::*DIP*)
        ((= const 72) 'adasis_v2_msgs::TrafficSignType::*ROAD_FLOODS*)
        ((= const 73) 'adasis_v2_msgs::TrafficSignType::*ICY_ROAD*)
        ((= const 74) 'adasis_v2_msgs::TrafficSignType::*SIDE_WINDS*)
        ((= const 75) 'adasis_v2_msgs::TrafficSignType::*TRAFFIC_CONGESTION*)
        ((= const 76) 'adasis_v2_msgs::TrafficSignType::*HIGH_ACCIDENT_AREA*)
        ((= const 77) 'adasis_v2_msgs::TrafficSignType::*BEGINNING_OF_BUILT_UP_AREA*)
        ((= const 79) 'adasis_v2_msgs::TrafficSignType::*END_OF_ALL_PROHIBITIONS*)
        ((= const 80) 'adasis_v2_msgs::TrafficSignType::*VARIABLE_SIGN_LIGHT_ELEMENTS*)
        ((= const 81) 'adasis_v2_msgs::TrafficSignType::*PRIORITY_OVER_ONCOMING_TRAFFIC*)
        ((= const 82) 'adasis_v2_msgs::TrafficSignType::*PRIORITY_FOR_ONCOMING_TRAFIIC*)
        ((= const 83) 'adasis_v2_msgs::TrafficSignType::*END_OF_BUILT_UP_AREA*)
        ((= const 87) 'adasis_v2_msgs::TrafficSignType::*SPEED_LIMIT*)
        ((= const 88) 'adasis_v2_msgs::TrafficSignType::*END_OF_SPEED_LIMIT*)
        ((= const 150) 'adasis_v2_msgs::TrafficSignType::*TOLL_STATION*)
        ((= const 237) 'adasis_v2_msgs::TrafficSignType::*END_INTERVAL_VELOCITY_MEASUR*)
        ((= const 238) 'adasis_v2_msgs::TrafficSignType::*START_INTERVAL_VELOCITY_MEASUR*)
        ((= const 239) 'adasis_v2_msgs::TrafficSignType::*INTERVAL_VELOCITY_MEASURE*)
        ((= const 240) 'adasis_v2_msgs::TrafficSignType::*NON_MOTORIZED_VEHICLE_LANE*)
        ((= const 241) 'adasis_v2_msgs::TrafficSignType::*EMERGENCY_LANE*)
        ((= const 242) 'adasis_v2_msgs::TrafficSignType::*BUS_LANE_CAMERA*)
        ((= const 243) 'adasis_v2_msgs::TrafficSignType::*VIOLATION_CAMERA*)
        ((= const 244) 'adasis_v2_msgs::TrafficSignType::*RED_LIGHT_SHOOTING*)
        ((= const 249) 'adasis_v2_msgs::TrafficSignType::*MONITOR_CAMERA*)
        ((= const 250) 'adasis_v2_msgs::TrafficSignType::*SPEED_MEASURE_RADAR*)
        ((= const 251) 'adasis_v2_msgs::TrafficSignType::*RAILROAD_CROSSING*)
        ((= const 252) 'adasis_v2_msgs::TrafficSignType::*ZEBRA_PEDESTRIAN_CROSSING*)
        ((= const 253) 'adasis_v2_msgs::TrafficSignType::*SPEED_BUMP*)
        ((= const 254) 'adasis_v2_msgs::TrafficSignType::*TRAFFIC_LIGHT*)
        (t nil)))

(defclass adasis_v2_msgs::TrafficSignType
  :super ros::object
  :slots (_value ))

(defmethod adasis_v2_msgs::TrafficSignType
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
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get adasis_v2_msgs::TrafficSignType :md5sum-) "69343a205513aa9979e8a3d9b2935824")
(setf (get adasis_v2_msgs::TrafficSignType :datatype-) "adasis_v2_msgs/TrafficSignType")
(setf (get adasis_v2_msgs::TrafficSignType :definition-)
      "uint8 DANGER = 0
uint8 PASS_LEFT_OR_RIGHT_SIDE = 1
uint8 PASS_LEFT_SIDE = 2
uint8 PASS_RIGHT_SIDE = 3
uint8 DOMESTIC_ANIMALS_CROSSING = 4
uint8 WILD_ANIMALS_CROSSING = 5
uint8 ROAD_WORKS = 6
uint8 RESIDENTIAL_AREA = 7
uint8 END_OF_RESIDENTIAL_AREA = 8
uint8 RIGHT_BEND = 9
uint8 LEFT_BEND = 10
uint8 DOUBLE_BEND_RIGHT_FIRST = 13
uint8 DOUBLE_BEND_LEFT_FIRST = 14
uint8 CURVY_ROAD = 17
uint8 OVERTAKING_BY_GOODS_VEHICLES_PROHIBITED = 20
uint8 END_OF_PROHIBITION_ON_OVERTAKING_FOR_GOODS_VEHICLES = 21
uint8 DANGEROUS_INTERSECTION = 22
uint8 TUNNEL = 24
uint8 FERRY_TERMINAL = 25
uint8 NARROW_BRIDGE = 26
uint8 HUMPBACK_BRIDGE = 28
uint8 RIVER_BANK = 29
uint8 RIVER_BANK_LEFT = 30
uint8 LIGHT_SIGNALS = 31
uint8 GIVE_WAY_YIELD = 32
uint8 STOP = 33
uint8 PRIORITY_ROAD = 34
uint8 INTERSECTION = 35
uint8 INTERSECTION_WITH_MINOR_ROAD = 36
uint8 INTERSECTION_WITH_PRIORITY_TO_THE_RIGHT = 37
uint8 DIRECTION_TO_THE_RIGHT = 38
uint8 DIRECTION_TO_THE_LEFT = 39
uint8 CARRIAGEWAY_NARROWS = 40
uint8 CARRIAGEWAY_NARROWS_RIGHT = 41
uint8 CARRIAGEWAY_NARROWS_LEFT = 42
uint8 LANE_MERGE_LEFT = 43
uint8 LANE_MERGE_RIGHT = 44
uint8 LANE_MERGE_CENTER = 45
uint8 OVERTAKING_PROHIBITED_ = 46
uint8 END_OF_PROHIBITION_ON_OVERTAKING = 47
uint8 PEDESTRIANS = 50
uint8 PEDESTRIAN_CROSSING = 51
uint8 CHILDREN = 52
uint8 SCHOOL_ZOME = 53
uint8 CYCLISTS = 54
uint8 TWO_WAY_TRAFFIC = 55
uint8 RAILWAY_CROSSING_WITH_GATES = 56
uint8 RAILWAY_CROSSING_WITHOUT_GATES = 57
uint8 RAILWAY_CROSSING = 58
uint8 TRAMWAY = 59
uint8 FALLING_ROCKS = 60
uint8 FALLING_ROCKS_LEFT = 61
uint8 FALLING_ROCKS_RIGHT = 62
uint8 STEEP_DROP_LEFT = 63
uint8 STEEP_DROP_RIGHT = 64
uint8 VARIABLE_SIGN_MECHANIC_ELEMENTS = 65
uint8 SLIPPERY_ROAD = 66
uint8 STEEP_ASCENT = 67
uint8 STEEP_DESCENT = 68
uint8 UNEVEN_ROAD = 69
uint8 HUMP = 70
uint8 DIP = 71
uint8 ROAD_FLOODS = 72
uint8 ICY_ROAD = 73
uint8 SIDE_WINDS = 74
uint8 TRAFFIC_CONGESTION = 75
uint8 HIGH_ACCIDENT_AREA = 76
uint8 BEGINNING_OF_BUILT_UP_AREA = 77
uint8 END_OF_ALL_PROHIBITIONS = 79
uint8 VARIABLE_SIGN_LIGHT_ELEMENTS = 80
uint8 PRIORITY_OVER_ONCOMING_TRAFFIC = 81
uint8 PRIORITY_FOR_ONCOMING_TRAFIIC = 82
uint8 END_OF_BUILT_UP_AREA = 83
uint8 SPEED_LIMIT = 87
uint8 END_OF_SPEED_LIMIT = 88
uint8 TOLL_STATION = 150
uint8 END_INTERVAL_VELOCITY_MEASUR = 237
uint8 START_INTERVAL_VELOCITY_MEASUR = 238
uint8 INTERVAL_VELOCITY_MEASURE = 239
uint8 NON_MOTORIZED_VEHICLE_LANE = 240
uint8 EMERGENCY_LANE = 241
uint8 BUS_LANE_CAMERA = 242
uint8 VIOLATION_CAMERA = 243
uint8 RED_LIGHT_SHOOTING = 244
uint8 MONITOR_CAMERA = 249
uint8 SPEED_MEASURE_RADAR = 250
uint8 RAILROAD_CROSSING = 251
uint8 ZEBRA_PEDESTRIAN_CROSSING = 252
uint8 SPEED_BUMP = 253
uint8 TRAFFIC_LIGHT = 254
uint8 value

")



(provide :adasis_v2_msgs/TrafficSignType "69343a205513aa9979e8a3d9b2935824")


