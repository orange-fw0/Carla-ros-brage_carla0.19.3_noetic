;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::CurrentRoadInfo)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'CurrentRoadInfo (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::CURRENTROADINFO")
  (make-package "TBT_MSGS::CURRENTROADINFO"))

(in-package "ROS")
;;//! \htmlinclude CurrentRoadInfo.msg.html


(defclass tbt_msgs::CurrentRoadInfo
  :super ros::object
  :slots (_road_class _road_form _road_type _main_side_road_status _current_speed_limit ))

(defmethod tbt_msgs::CurrentRoadInfo
  (:init
   (&key
    ((:road_class __road_class) (instance tbt_msgs::RoadClassEnum :init))
    ((:road_form __road_form) (instance tbt_msgs::RoadFormEnum :init))
    ((:road_type __road_type) (instance tbt_msgs::RoadTypeEnum :init))
    ((:main_side_road_status __main_side_road_status) (instance tbt_msgs::MainSideRoadStatusEnum :init))
    ((:current_speed_limit __current_speed_limit) 0)
    )
   (send-super :init)
   (setq _road_class __road_class)
   (setq _road_form __road_form)
   (setq _road_type __road_type)
   (setq _main_side_road_status __main_side_road_status)
   (setq _current_speed_limit (round __current_speed_limit))
   self)
  (:road_class
   (&rest __road_class)
   (if (keywordp (car __road_class))
       (send* _road_class __road_class)
     (progn
       (if __road_class (setq _road_class (car __road_class)))
       _road_class)))
  (:road_form
   (&rest __road_form)
   (if (keywordp (car __road_form))
       (send* _road_form __road_form)
     (progn
       (if __road_form (setq _road_form (car __road_form)))
       _road_form)))
  (:road_type
   (&rest __road_type)
   (if (keywordp (car __road_type))
       (send* _road_type __road_type)
     (progn
       (if __road_type (setq _road_type (car __road_type)))
       _road_type)))
  (:main_side_road_status
   (&rest __main_side_road_status)
   (if (keywordp (car __main_side_road_status))
       (send* _main_side_road_status __main_side_road_status)
     (progn
       (if __main_side_road_status (setq _main_side_road_status (car __main_side_road_status)))
       _main_side_road_status)))
  (:current_speed_limit
   (&optional __current_speed_limit)
   (if __current_speed_limit (setq _current_speed_limit __current_speed_limit)) _current_speed_limit)
  (:serialization-length
   ()
   (+
    ;; tbt_msgs/RoadClassEnum _road_class
    (send _road_class :serialization-length)
    ;; tbt_msgs/RoadFormEnum _road_form
    (send _road_form :serialization-length)
    ;; tbt_msgs/RoadTypeEnum _road_type
    (send _road_type :serialization-length)
    ;; tbt_msgs/MainSideRoadStatusEnum _main_side_road_status
    (send _main_side_road_status :serialization-length)
    ;; uint8 _current_speed_limit
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tbt_msgs/RoadClassEnum _road_class
       (send _road_class :serialize s)
     ;; tbt_msgs/RoadFormEnum _road_form
       (send _road_form :serialize s)
     ;; tbt_msgs/RoadTypeEnum _road_type
       (send _road_type :serialize s)
     ;; tbt_msgs/MainSideRoadStatusEnum _main_side_road_status
       (send _main_side_road_status :serialize s)
     ;; uint8 _current_speed_limit
       (write-byte _current_speed_limit s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tbt_msgs/RoadClassEnum _road_class
     (send _road_class :deserialize buf ptr-) (incf ptr- (send _road_class :serialization-length))
   ;; tbt_msgs/RoadFormEnum _road_form
     (send _road_form :deserialize buf ptr-) (incf ptr- (send _road_form :serialization-length))
   ;; tbt_msgs/RoadTypeEnum _road_type
     (send _road_type :deserialize buf ptr-) (incf ptr- (send _road_type :serialization-length))
   ;; tbt_msgs/MainSideRoadStatusEnum _main_side_road_status
     (send _main_side_road_status :deserialize buf ptr-) (incf ptr- (send _main_side_road_status :serialization-length))
   ;; uint8 _current_speed_limit
     (setq _current_speed_limit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tbt_msgs::CurrentRoadInfo :md5sum-) "4ad1d17ea5ef6d3f4b08ffaa60cb67b1")
(setf (get tbt_msgs::CurrentRoadInfo :datatype-) "tbt_msgs/CurrentRoadInfo")
(setf (get tbt_msgs::CurrentRoadInfo :definition-)
      "tbt_msgs/RoadClassEnum road_class
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

")



(provide :tbt_msgs/CurrentRoadInfo "4ad1d17ea5ef6d3f4b08ffaa60cb67b1")


