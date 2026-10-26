;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::NavigationInfo)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'NavigationInfo (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::NAVIGATIONINFO")
  (make-package "TBT_MSGS::NAVIGATIONINFO"))

(in-package "ROS")
;;//! \htmlinclude NavigationInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tbt_msgs::NavigationInfo
  :super ros::object
  :slots (_header _current_road_info _next_intersection _road_curve _distance_to_next_guidance _warning_sign_board _distance_to_toll_station _distance_to_ramp _traffic_jam _tunnel_reminder _construction_site _current_location _relative_location_on_route _navi_status _speed_limit_camera _interval_camera _navi_road_traffic_light_sts _distance_to_destination _guide_action _origin_icon_type _traffic_lights_location _tts_text ))

(defmethod tbt_msgs::NavigationInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_road_info __current_road_info) (instance tbt_msgs::CurrentRoadInfo :init))
    ((:next_intersection __next_intersection) (instance tbt_msgs::NextIntersection :init))
    ((:road_curve __road_curve) (instance tbt_msgs::RoadCurve :init))
    ((:distance_to_next_guidance __distance_to_next_guidance) 0)
    ((:warning_sign_board __warning_sign_board) (instance tbt_msgs::WarningSignBoard :init))
    ((:distance_to_toll_station __distance_to_toll_station) 0)
    ((:distance_to_ramp __distance_to_ramp) 0)
    ((:traffic_jam __traffic_jam) (instance tbt_msgs::TrafficJam :init))
    ((:tunnel_reminder __tunnel_reminder) 0)
    ((:construction_site __construction_site) (instance tbt_msgs::ConstructionSite :init))
    ((:current_location __current_location) (instance tbt_msgs::CurrentLocation :init))
    ((:relative_location_on_route __relative_location_on_route) (instance tbt_msgs::RelativeLocationOnRoute :init))
    ((:navi_status __navi_status) (instance tbt_msgs::NaviStatusEnum :init))
    ((:speed_limit_camera __speed_limit_camera) (instance tbt_msgs::SpeedLimitCamera :init))
    ((:interval_camera __interval_camera) (instance tbt_msgs::IntervalCamera :init))
    ((:navi_road_traffic_light_sts __navi_road_traffic_light_sts) (instance tbt_msgs::NaviRoadTrafficLightSts :init))
    ((:distance_to_destination __distance_to_destination) 0)
    ((:guide_action __guide_action) (instance tbt_msgs::GuideActionEnum :init))
    ((:origin_icon_type __origin_icon_type) 0)
    ((:traffic_lights_location __traffic_lights_location) ())
    ((:tts_text __tts_text) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_road_info __current_road_info)
   (setq _next_intersection __next_intersection)
   (setq _road_curve __road_curve)
   (setq _distance_to_next_guidance (round __distance_to_next_guidance))
   (setq _warning_sign_board __warning_sign_board)
   (setq _distance_to_toll_station (round __distance_to_toll_station))
   (setq _distance_to_ramp (round __distance_to_ramp))
   (setq _traffic_jam __traffic_jam)
   (setq _tunnel_reminder (round __tunnel_reminder))
   (setq _construction_site __construction_site)
   (setq _current_location __current_location)
   (setq _relative_location_on_route __relative_location_on_route)
   (setq _navi_status __navi_status)
   (setq _speed_limit_camera __speed_limit_camera)
   (setq _interval_camera __interval_camera)
   (setq _navi_road_traffic_light_sts __navi_road_traffic_light_sts)
   (setq _distance_to_destination (round __distance_to_destination))
   (setq _guide_action __guide_action)
   (setq _origin_icon_type (round __origin_icon_type))
   (setq _traffic_lights_location __traffic_lights_location)
   (setq _tts_text __tts_text)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_road_info
   (&rest __current_road_info)
   (if (keywordp (car __current_road_info))
       (send* _current_road_info __current_road_info)
     (progn
       (if __current_road_info (setq _current_road_info (car __current_road_info)))
       _current_road_info)))
  (:next_intersection
   (&rest __next_intersection)
   (if (keywordp (car __next_intersection))
       (send* _next_intersection __next_intersection)
     (progn
       (if __next_intersection (setq _next_intersection (car __next_intersection)))
       _next_intersection)))
  (:road_curve
   (&rest __road_curve)
   (if (keywordp (car __road_curve))
       (send* _road_curve __road_curve)
     (progn
       (if __road_curve (setq _road_curve (car __road_curve)))
       _road_curve)))
  (:distance_to_next_guidance
   (&optional __distance_to_next_guidance)
   (if __distance_to_next_guidance (setq _distance_to_next_guidance __distance_to_next_guidance)) _distance_to_next_guidance)
  (:warning_sign_board
   (&rest __warning_sign_board)
   (if (keywordp (car __warning_sign_board))
       (send* _warning_sign_board __warning_sign_board)
     (progn
       (if __warning_sign_board (setq _warning_sign_board (car __warning_sign_board)))
       _warning_sign_board)))
  (:distance_to_toll_station
   (&optional __distance_to_toll_station)
   (if __distance_to_toll_station (setq _distance_to_toll_station __distance_to_toll_station)) _distance_to_toll_station)
  (:distance_to_ramp
   (&optional __distance_to_ramp)
   (if __distance_to_ramp (setq _distance_to_ramp __distance_to_ramp)) _distance_to_ramp)
  (:traffic_jam
   (&rest __traffic_jam)
   (if (keywordp (car __traffic_jam))
       (send* _traffic_jam __traffic_jam)
     (progn
       (if __traffic_jam (setq _traffic_jam (car __traffic_jam)))
       _traffic_jam)))
  (:tunnel_reminder
   (&optional __tunnel_reminder)
   (if __tunnel_reminder (setq _tunnel_reminder __tunnel_reminder)) _tunnel_reminder)
  (:construction_site
   (&rest __construction_site)
   (if (keywordp (car __construction_site))
       (send* _construction_site __construction_site)
     (progn
       (if __construction_site (setq _construction_site (car __construction_site)))
       _construction_site)))
  (:current_location
   (&rest __current_location)
   (if (keywordp (car __current_location))
       (send* _current_location __current_location)
     (progn
       (if __current_location (setq _current_location (car __current_location)))
       _current_location)))
  (:relative_location_on_route
   (&rest __relative_location_on_route)
   (if (keywordp (car __relative_location_on_route))
       (send* _relative_location_on_route __relative_location_on_route)
     (progn
       (if __relative_location_on_route (setq _relative_location_on_route (car __relative_location_on_route)))
       _relative_location_on_route)))
  (:navi_status
   (&rest __navi_status)
   (if (keywordp (car __navi_status))
       (send* _navi_status __navi_status)
     (progn
       (if __navi_status (setq _navi_status (car __navi_status)))
       _navi_status)))
  (:speed_limit_camera
   (&rest __speed_limit_camera)
   (if (keywordp (car __speed_limit_camera))
       (send* _speed_limit_camera __speed_limit_camera)
     (progn
       (if __speed_limit_camera (setq _speed_limit_camera (car __speed_limit_camera)))
       _speed_limit_camera)))
  (:interval_camera
   (&rest __interval_camera)
   (if (keywordp (car __interval_camera))
       (send* _interval_camera __interval_camera)
     (progn
       (if __interval_camera (setq _interval_camera (car __interval_camera)))
       _interval_camera)))
  (:navi_road_traffic_light_sts
   (&rest __navi_road_traffic_light_sts)
   (if (keywordp (car __navi_road_traffic_light_sts))
       (send* _navi_road_traffic_light_sts __navi_road_traffic_light_sts)
     (progn
       (if __navi_road_traffic_light_sts (setq _navi_road_traffic_light_sts (car __navi_road_traffic_light_sts)))
       _navi_road_traffic_light_sts)))
  (:distance_to_destination
   (&optional __distance_to_destination)
   (if __distance_to_destination (setq _distance_to_destination __distance_to_destination)) _distance_to_destination)
  (:guide_action
   (&rest __guide_action)
   (if (keywordp (car __guide_action))
       (send* _guide_action __guide_action)
     (progn
       (if __guide_action (setq _guide_action (car __guide_action)))
       _guide_action)))
  (:origin_icon_type
   (&optional __origin_icon_type)
   (if __origin_icon_type (setq _origin_icon_type __origin_icon_type)) _origin_icon_type)
  (:traffic_lights_location
   (&rest __traffic_lights_location)
   (if (keywordp (car __traffic_lights_location))
       (send* _traffic_lights_location __traffic_lights_location)
     (progn
       (if __traffic_lights_location (setq _traffic_lights_location (car __traffic_lights_location)))
       _traffic_lights_location)))
  (:tts_text
   (&optional __tts_text)
   (if __tts_text (setq _tts_text __tts_text)) _tts_text)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tbt_msgs/CurrentRoadInfo _current_road_info
    (send _current_road_info :serialization-length)
    ;; tbt_msgs/NextIntersection _next_intersection
    (send _next_intersection :serialization-length)
    ;; tbt_msgs/RoadCurve _road_curve
    (send _road_curve :serialization-length)
    ;; uint16 _distance_to_next_guidance
    2
    ;; tbt_msgs/WarningSignBoard _warning_sign_board
    (send _warning_sign_board :serialization-length)
    ;; uint16 _distance_to_toll_station
    2
    ;; uint16 _distance_to_ramp
    2
    ;; tbt_msgs/TrafficJam _traffic_jam
    (send _traffic_jam :serialization-length)
    ;; uint16 _tunnel_reminder
    2
    ;; tbt_msgs/ConstructionSite _construction_site
    (send _construction_site :serialization-length)
    ;; tbt_msgs/CurrentLocation _current_location
    (send _current_location :serialization-length)
    ;; tbt_msgs/RelativeLocationOnRoute _relative_location_on_route
    (send _relative_location_on_route :serialization-length)
    ;; tbt_msgs/NaviStatusEnum _navi_status
    (send _navi_status :serialization-length)
    ;; tbt_msgs/SpeedLimitCamera _speed_limit_camera
    (send _speed_limit_camera :serialization-length)
    ;; tbt_msgs/IntervalCamera _interval_camera
    (send _interval_camera :serialization-length)
    ;; tbt_msgs/NaviRoadTrafficLightSts _navi_road_traffic_light_sts
    (send _navi_road_traffic_light_sts :serialization-length)
    ;; uint16 _distance_to_destination
    2
    ;; tbt_msgs/GuideActionEnum _guide_action
    (send _guide_action :serialization-length)
    ;; uint16 _origin_icon_type
    2
    ;; tbt_msgs/TrafficLightsLocation[] _traffic_lights_location
    (apply #'+ (send-all _traffic_lights_location :serialization-length)) 4
    ;; string[] _tts_text
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _tts_text)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tbt_msgs/CurrentRoadInfo _current_road_info
       (send _current_road_info :serialize s)
     ;; tbt_msgs/NextIntersection _next_intersection
       (send _next_intersection :serialize s)
     ;; tbt_msgs/RoadCurve _road_curve
       (send _road_curve :serialize s)
     ;; uint16 _distance_to_next_guidance
       (write-word _distance_to_next_guidance s)
     ;; tbt_msgs/WarningSignBoard _warning_sign_board
       (send _warning_sign_board :serialize s)
     ;; uint16 _distance_to_toll_station
       (write-word _distance_to_toll_station s)
     ;; uint16 _distance_to_ramp
       (write-word _distance_to_ramp s)
     ;; tbt_msgs/TrafficJam _traffic_jam
       (send _traffic_jam :serialize s)
     ;; uint16 _tunnel_reminder
       (write-word _tunnel_reminder s)
     ;; tbt_msgs/ConstructionSite _construction_site
       (send _construction_site :serialize s)
     ;; tbt_msgs/CurrentLocation _current_location
       (send _current_location :serialize s)
     ;; tbt_msgs/RelativeLocationOnRoute _relative_location_on_route
       (send _relative_location_on_route :serialize s)
     ;; tbt_msgs/NaviStatusEnum _navi_status
       (send _navi_status :serialize s)
     ;; tbt_msgs/SpeedLimitCamera _speed_limit_camera
       (send _speed_limit_camera :serialize s)
     ;; tbt_msgs/IntervalCamera _interval_camera
       (send _interval_camera :serialize s)
     ;; tbt_msgs/NaviRoadTrafficLightSts _navi_road_traffic_light_sts
       (send _navi_road_traffic_light_sts :serialize s)
     ;; uint16 _distance_to_destination
       (write-word _distance_to_destination s)
     ;; tbt_msgs/GuideActionEnum _guide_action
       (send _guide_action :serialize s)
     ;; uint16 _origin_icon_type
       (write-word _origin_icon_type s)
     ;; tbt_msgs/TrafficLightsLocation[] _traffic_lights_location
     (write-long (length _traffic_lights_location) s)
     (dolist (elem _traffic_lights_location)
       (send elem :serialize s)
       )
     ;; string[] _tts_text
     (write-long (length _tts_text) s)
     (dolist (elem _tts_text)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tbt_msgs/CurrentRoadInfo _current_road_info
     (send _current_road_info :deserialize buf ptr-) (incf ptr- (send _current_road_info :serialization-length))
   ;; tbt_msgs/NextIntersection _next_intersection
     (send _next_intersection :deserialize buf ptr-) (incf ptr- (send _next_intersection :serialization-length))
   ;; tbt_msgs/RoadCurve _road_curve
     (send _road_curve :deserialize buf ptr-) (incf ptr- (send _road_curve :serialization-length))
   ;; uint16 _distance_to_next_guidance
     (setq _distance_to_next_guidance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tbt_msgs/WarningSignBoard _warning_sign_board
     (send _warning_sign_board :deserialize buf ptr-) (incf ptr- (send _warning_sign_board :serialization-length))
   ;; uint16 _distance_to_toll_station
     (setq _distance_to_toll_station (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _distance_to_ramp
     (setq _distance_to_ramp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tbt_msgs/TrafficJam _traffic_jam
     (send _traffic_jam :deserialize buf ptr-) (incf ptr- (send _traffic_jam :serialization-length))
   ;; uint16 _tunnel_reminder
     (setq _tunnel_reminder (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tbt_msgs/ConstructionSite _construction_site
     (send _construction_site :deserialize buf ptr-) (incf ptr- (send _construction_site :serialization-length))
   ;; tbt_msgs/CurrentLocation _current_location
     (send _current_location :deserialize buf ptr-) (incf ptr- (send _current_location :serialization-length))
   ;; tbt_msgs/RelativeLocationOnRoute _relative_location_on_route
     (send _relative_location_on_route :deserialize buf ptr-) (incf ptr- (send _relative_location_on_route :serialization-length))
   ;; tbt_msgs/NaviStatusEnum _navi_status
     (send _navi_status :deserialize buf ptr-) (incf ptr- (send _navi_status :serialization-length))
   ;; tbt_msgs/SpeedLimitCamera _speed_limit_camera
     (send _speed_limit_camera :deserialize buf ptr-) (incf ptr- (send _speed_limit_camera :serialization-length))
   ;; tbt_msgs/IntervalCamera _interval_camera
     (send _interval_camera :deserialize buf ptr-) (incf ptr- (send _interval_camera :serialization-length))
   ;; tbt_msgs/NaviRoadTrafficLightSts _navi_road_traffic_light_sts
     (send _navi_road_traffic_light_sts :deserialize buf ptr-) (incf ptr- (send _navi_road_traffic_light_sts :serialization-length))
   ;; uint16 _distance_to_destination
     (setq _distance_to_destination (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tbt_msgs/GuideActionEnum _guide_action
     (send _guide_action :deserialize buf ptr-) (incf ptr- (send _guide_action :serialization-length))
   ;; uint16 _origin_icon_type
     (setq _origin_icon_type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tbt_msgs/TrafficLightsLocation[] _traffic_lights_location
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_lights_location (let (r) (dotimes (i n) (push (instance tbt_msgs::TrafficLightsLocation :init) r)) r))
     (dolist (elem- _traffic_lights_location)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string[] _tts_text
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tts_text (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _tts_text i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get tbt_msgs::NavigationInfo :md5sum-) "17e980566be3580dc3d3bf1dda4ecef6")
(setf (get tbt_msgs::NavigationInfo :datatype-) "tbt_msgs/NavigationInfo")
(setf (get tbt_msgs::NavigationInfo :definition-)
      "std_msgs/Header header
tbt_msgs/CurrentRoadInfo current_road_info
tbt_msgs/NextIntersection next_intersection
tbt_msgs/RoadCurve road_curve
uint16 distance_to_next_guidance
tbt_msgs/WarningSignBoard warning_sign_board
uint16 distance_to_toll_station
uint16 distance_to_ramp
tbt_msgs/TrafficJam traffic_jam
uint16 tunnel_reminder
tbt_msgs/ConstructionSite construction_site
tbt_msgs/CurrentLocation current_location
tbt_msgs/RelativeLocationOnRoute relative_location_on_route
tbt_msgs/NaviStatusEnum navi_status
tbt_msgs/SpeedLimitCamera speed_limit_camera
tbt_msgs/IntervalCamera interval_camera
tbt_msgs/NaviRoadTrafficLightSts navi_road_traffic_light_sts
uint16 distance_to_destination
tbt_msgs/GuideActionEnum guide_action
uint16 origin_icon_type
tbt_msgs/TrafficLightsLocation[] traffic_lights_location
string[] tts_text

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: tbt_msgs/CurrentRoadInfo
tbt_msgs/RoadClassEnum road_class
tbt_msgs/RoadFormEnum road_form
tbt_msgs/RoadTypeEnum road_type
tbt_msgs/MainSideRoadStatusEnum main_side_road_status
uint8 current_speed_limit

================================================================================
MSG: tbt_msgs/RoadClassEnum
uint8 RoadClassFreeway = 0
uint8 RoadClassNationalRoad = 1
uint8 RoadClassProvinceRoad = 2
uint8 RoadClassCountyRoad = 3
uint8 RoadClassRuralRoad = 4
uint8 RoadClassInCountyRoad = 5
uint8 RoadClassCitySpeedway = 6
uint8 RoadClassMainRoad = 7
uint8 RoadClassSecondaryRoad = 8
uint8 RoadClassCommonRoad = 9
uint8 RoadClassNonNaviRoad = 10
uint8 RoadClassNULL = 255
uint8 value

================================================================================
MSG: tbt_msgs/RoadFormEnum
uint8 FormwayDivisedLink = 1
uint8 FormwayCrossLink = 2
uint8 FormwayJCT = 3
uint8 FormwayRoundCircle = 4
uint8 FormwayServiceRoad = 5
uint8 FormwaySlipRoad = 6
uint8 FormwaySideRoad = 7
uint8 FormwaySlipJCT = 8
uint8 FormwayExitLink = 9
uint8 FormwayEntranceLink = 10
uint8 FormwayTurnRightLineA = 11
uint8 FormwayTurnRightLineB = 12
uint8 FormwayTurnLeftLineA = 13
uint8 FormwayTurnLeftLineB = 14
uint8 FormwayCommonLink = 15
uint8 FormwayTurnLeftRightLine = 16
uint8 FormwayServiceJCTRoad = 53
uint8 FormwayServiceSlipRoad = 56
uint8 FormwayServiceSlipJCTRoad = 58
uint8 FormwayNULL = 255
uint8 value

================================================================================
MSG: tbt_msgs/RoadTypeEnum
uint8 LinkTypeCommon = 0
uint8 LinkTypeFerry = 1
uint8 LinkTypeTunnel = 2
uint8 LinkTypeBridge = 3
uint8 LinkTypeElevatedRd = 4
uint8 LinkTypeNull = 255
uint8 value

================================================================================
MSG: tbt_msgs/MainSideRoadStatusEnum
uint8 Default = 0
uint8 MainRoad = 1
uint8 SideRoad = 2
uint8 value

================================================================================
MSG: tbt_msgs/NextIntersection
uint8 number_of_lanes
tbt_msgs/LaneActionEnum[] lane_guidance_list
tbt_msgs/HighLightLaneEnum[] highlight_lane_list
tbt_msgs/LaneActionEnum[] origin_highlight_lane_list

================================================================================
MSG: tbt_msgs/LaneActionEnum
uint8 LaneActionAhead = 0
uint8 LaneActionLeft = 1
uint8 LaneActionAheadLeft = 2
uint8 LaneActionRight = 3
uint8 LaneActionAheadRight = 4
uint8 LaneActionLUTurn = 5
uint8 LaneActionLeftRigh = 6
uint8 LaneActionAheadLeftRight = 7
uint8 LaneActionRUTurn = 8
uint8 LaneActionAheadLUTurn = 9
uint8 LaneActionAheadRUTurn = 10
uint8 LaneActionLeftLUTurn = 11
uint8 LaneActionRightRUTurn = 12
uint8 LaneActionLeftInAhead = 13
uint8 LaneActionLeftLUTurnLEx = 14
uint8 LaneActionReserved = 15
uint8 LaneActionAheadLeftLUTurn = 16
uint8 LaneActionRightLUTurn = 17
uint8 LaneActionLeftRightLUTurn = 18
uint8 LaneActionAheadRightLUTurn = 19
uint8 LaneActionLeftRUTurn = 20
uint8 LaneActionBus = 21
uint8 LaneActionEmpty = 22
uint8 LaneActionVariable = 23
uint8 LaneActionNULL = 255
uint8 value

================================================================================
MSG: tbt_msgs/HighLightLaneEnum
uint8 Default = 0
uint8 HighLight = 1
uint8 value

================================================================================
MSG: tbt_msgs/RoadCurve
uint16[] curvature_list
float64[] latitude_list
float64[] longitude_list

================================================================================
MSG: tbt_msgs/WarningSignBoard
tbt_msgs/SignTypeEnum[] sign_type_list
uint16[] distance_to_sign_list
uint8[] speed_limit_list

================================================================================
MSG: tbt_msgs/SignTypeEnum
uint8 FacilityTypeNULL = 0
uint8 FacilityTypeLeftInterflow = 1
uint8 FacilityTypeRightInterflow = 2
uint8 FacilityTypeSharpTurn = 3
uint8 FacilityTypeReverseTurn = 4
uint8 FacilityTypeLinkingTurn = 5
uint8 FacilityTypeAccidentArea = 6
uint8 FacilityTypeFallingRocks = 7
uint8 FacilityTypeFailwayCross = 8
uint8 FacilityTypeSlippery = 9
uint8 FacilityTypeMaxSpeedLimit = 10
uint8 FacilityTypeMinSpeedLimit = 11
uint8 FacilityTypeVillage = 12
uint8 FacilityTypeLeftNarrow = 13
uint8 FacilityTypeRightNarrow = 14
uint8 FacilityTypeDoubleNarrow = 15
uint8 FacilityTypeCrosswindArea = 16
uint8 FacilityTypeSchoolZone = 17
uint8 FacilityTypeOvertakeForbid = 18
uint8 FacilityTypeNarrowBridge = 19
uint8 FacilityTypeDoubleDetour = 20
uint8 FacilityTypeLeftDetour = 21
uint8 FacilityTypeRightDetour = 22
uint8 FacilityTypeLeftDangerous = 23
uint8 FacilityTypeRightDangerous = 24
uint8 FacilityTypeUpperSteep = 25
uint8 FacilityTypeDownSteep = 26
uint8 FacilityTypeWaterPavement = 27
uint8 FacilityTypeIrregularityPavement = 28
uint8 value

================================================================================
MSG: tbt_msgs/TrafficJam
tbt_msgs/TrafficJamStatusEnum status
uint32 length
uint32 distance_to_jam

================================================================================
MSG: tbt_msgs/TrafficJamStatusEnum
uint8 Unkwon = 0
uint8 TrafStsFast = 1
uint8 TrafStsSlow = 2
uint8 TrafStsJamed = 3
uint8 TrafStsJamedBad = 4
uint8 value

================================================================================
MSG: tbt_msgs/ConstructionSite
tbt_msgs/ConstructionSiteStatusEnum status
float64[] latitude_list
float64[] longitude_list

================================================================================
MSG: tbt_msgs/ConstructionSiteStatusEnum
uint8 Unkwon = 0
uint8 No = 1
uint8 Yes = 2
uint8 value

================================================================================
MSG: tbt_msgs/CurrentLocation
float64 latitude
float64 longitude
uint8 invalid

================================================================================
MSG: tbt_msgs/RelativeLocationOnRoute
uint32 ori_cur_step_id
uint32 ori_cur_link_id_in_step
uint32 ori_link_offset
uint32 link_index
uint32 offset
uint8 valid

================================================================================
MSG: tbt_msgs/NaviStatusEnum
uint8 NavSts_0_invalid = 0
uint8 NavSts_1_navigation = 1
uint8 NavSts_2_routing = 2
uint8 NavSts_3_Cruise = 3
uint8 NavSts_4_yaw = 4
uint8 value

================================================================================
MSG: tbt_msgs/SpeedLimitCamera
uint8 speed_limit
uint32 distance

================================================================================
MSG: tbt_msgs/IntervalCamera
uint8 speed_limit
uint16 distance
float64 start_lat
float64 start_long
float64 end_lat
float64 end_long

================================================================================
MSG: tbt_msgs/NaviRoadTrafficLightSts
uint8 status
uint32 dist

================================================================================
MSG: tbt_msgs/GuideActionEnum
uint8 NO_NAVI_ACTION = 0
uint8 TURN_LEFT = 1
uint8 TURN_RIGHT = 2
uint8 DRIVE_LEFT_FRONT = 3
uint8 DRIVE_RIGHT_FRONT = 4
uint8 DRIVE_LEFT_REAR = 5
uint8 DRIVE_RIGHT_REAR = 6
uint8 TURN_LEFT_TURN_AROUND = 7
uint8 GO_STRAIGHT = 8
uint8 FRONT_ROAD_ALONG_LEFT = 9
uint8 FRONT_ROAD_ALONG_RIGHT = 10
uint8 TRIFURCATION_ALONG_LEFT = 11
uint8 TRIFURCATION_ALONG_MIDDLE = 12
uint8 TRIFURCATION_ALONG_RIGHT = 13
uint8 TWO_STRAIGHT_ALONG_LEFT = 14
uint8 TWO_STRAIGHT_ALONG_RIGHT = 15
uint8 THREE_STRAIGHT_ALONG_LEFT = 16
uint8 THREE_STRAIGHT_ALONG_MIDDLE = 17
uint8 THREE_STRAIGHT_ALONG_RIGHT = 18
uint8 ENTRY_RING = 19
uint8 DESTINATION = 20
uint8 value

================================================================================
MSG: tbt_msgs/TrafficLightsLocation
float64 lat
float64 lon

")



(provide :tbt_msgs/NavigationInfo "17e980566be3580dc3d3bf1dda4ecef6")


