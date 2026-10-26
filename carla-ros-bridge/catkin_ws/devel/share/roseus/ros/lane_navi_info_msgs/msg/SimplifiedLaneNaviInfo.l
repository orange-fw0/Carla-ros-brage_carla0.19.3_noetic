;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SimplifiedLaneNaviInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SimplifiedLaneNaviInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SIMPLIFIEDLANENAVIINFO")
  (make-package "LANE_NAVI_INFO_MSGS::SIMPLIFIEDLANENAVIINFO"))

(in-package "ROS")
;;//! \htmlinclude SimplifiedLaneNaviInfo.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lane_navi_info_msgs::SimplifiedLaneNaviInfo
  :super ros::object
  :slots (_header _path_road_ids _roads _meta _reserved ))

(defmethod lane_navi_info_msgs::SimplifiedLaneNaviInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:path_road_ids __path_road_ids) ())
    ((:roads __roads) ())
    ((:meta __meta) (instance lane_navi_info_msgs::Meta :init))
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _path_road_ids __path_road_ids)
   (setq _roads __roads)
   (setq _meta __meta)
   (setq _reserved (string __reserved))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:path_road_ids
   (&rest __path_road_ids)
   (if (keywordp (car __path_road_ids))
       (send* _path_road_ids __path_road_ids)
     (progn
       (if __path_road_ids (setq _path_road_ids (car __path_road_ids)))
       _path_road_ids)))
  (:roads
   (&rest __roads)
   (if (keywordp (car __roads))
       (send* _roads __roads)
     (progn
       (if __roads (setq _roads (car __roads)))
       _roads)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; landmark_msgs/TrackId[] _path_road_ids
    (apply #'+ (send-all _path_road_ids :serialization-length)) 4
    ;; lane_navi_info_msgs/SimplifiedRoad[] _roads
    (apply #'+ (send-all _roads :serialization-length)) 4
    ;; lane_navi_info_msgs/Meta _meta
    (send _meta :serialization-length)
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; landmark_msgs/TrackId[] _path_road_ids
     (write-long (length _path_road_ids) s)
     (dolist (elem _path_road_ids)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/SimplifiedRoad[] _roads
     (write-long (length _roads) s)
     (dolist (elem _roads)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Meta _meta
       (send _meta :serialize s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; landmark_msgs/TrackId[] _path_road_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _path_road_ids (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _path_road_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/SimplifiedRoad[] _roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roads (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SimplifiedRoad :init) r)) r))
     (dolist (elem- _roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Meta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SimplifiedLaneNaviInfo :md5sum-) "b22ecc10ca9f8d08af284a87babe91a6")
(setf (get lane_navi_info_msgs::SimplifiedLaneNaviInfo :datatype-) "lane_navi_info_msgs/SimplifiedLaneNaviInfo")
(setf (get lane_navi_info_msgs::SimplifiedLaneNaviInfo :definition-)
      "std_msgs/Header header
landmark_msgs/TrackId[] path_road_ids
lane_navi_info_msgs/SimplifiedRoad[] roads
lane_navi_info_msgs/Meta meta
string reserved

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
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/SimplifiedRoad
landmark_msgs/TrackId road_id
float32 length
lane_navi_info_msgs/SpeedLimit[] speed_limits
lane_navi_info_msgs/Curvature[] curvatures
lane_navi_info_msgs/Slope[] slopes
landmark_msgs/RoadNodeRoadClassEnum road_class
landmark_msgs/RoadNodeFormwayEnum[] formways
landmark_msgs/TrackId[] prev_roads
landmark_msgs/TrackId[] next_roads

================================================================================
MSG: lane_navi_info_msgs/SpeedLimit
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/InterpolationType
uint8 UNKNOWN = 0
uint8 STEP = 1
uint8 LINEAR = 2
uint8 GENERAL = 3
uint8 OHTERS = 255
uint8 type
float32[] addition_values
float32[] params

================================================================================
MSG: lane_navi_info_msgs/Curvature
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/Slope
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: landmark_msgs/RoadNodeRoadClassEnum
uint8 ROAD_CLASS_UNKNOWN = 0
uint8 HIGHWAY = 1
uint8 URBAN = 2
uint8 CITY_EXPRESSWAY = 3
uint8 STATE_ROAD = 4
uint8 PROVINCIAL_ROAD = 5
uint8 MAIN_ROAD = 6
uint8 SECONDARY_ROAD = 7
uint8 NORMAL_ROAD = 8
uint8 COUNTY_ROAD = 9
uint8 COUNTRY_ROAD = 10
uint8 INTERNAL_ROAD = 11
uint8 OTHERS = 99
uint8 value

================================================================================
MSG: landmark_msgs/RoadNodeFormwayEnum
uint8 FORMWAY_UNKNOWN = 0
uint8 SINGLE_CARRIAGE_WAY = 1
uint8 IC = 2
uint8 JCT = 3
uint8 SERVICE = 4
uint8 TUNNEL = 5
uint8 TOLL = 6
uint8 SLIP_ROAD = 7
uint8 SIDEROAD = 8
uint8 ROUNDABOUT = 9
uint8 RAMP_ENTRY = 10
uint8 RAMP_EXIT = 11
uint8 SAPA = 12
uint8 PARKING_RAMP = 13
uint8 PARKING_ROAD = 14
uint8 U_TURN = 15
uint8 TURN_RIGHT = 16
uint8 TURN_LEFT = 17
uint8 TURN_LEFT_RIGHT = 18
uint8 CROSS_LINK = 19
uint8 SERVICE_AND_SLIP_ROAD = 20
uint8 SERVICE_AND_JCT = 21
uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22
uint8 MULTIPLE_CARRIAGE_WAY = 23
uint8 CHECK_POINT = 24
uint8 WALK_ROAD = 25
uint8 PARALLED_ROAD = 26
uint8 OTHERS = 99
uint8 value

================================================================================
MSG: lane_navi_info_msgs/Meta
string source
string version
string reserved_data
lane_navi_info_msgs/MapType map_type
lane_navi_info_msgs/AdministrativeInfo administrative_info
lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule

================================================================================
MSG: lane_navi_info_msgs/MapType
uint8 SD_PRO = 0
uint8 SD_MAP = 1
uint8 value

================================================================================
MSG: lane_navi_info_msgs/AdministrativeInfo
uint16 UNKNOWN = 0
uint16 BELGIEN = 56
uint16 BULGARIEN = 100
uint16 DAENEMARK = 208
uint16 DEUTSCHLAND = 276
uint16 ESTLAND = 233
uint16 FINNLAND = 246
uint16 FRANKREICH = 250
uint16 GRIECHENLAND = 300
uint16 GROSSBRITANNIEN = 826
uint16 IRLAND = 372
uint16 ISLAND = 352
uint16 ISRAEL = 376
uint16 ITALIEN = 380
uint16 KROATIEN = 191
uint16 LETTLAND = 428
uint16 LITAUEN = 440
uint16 LUXEMBURG = 442
uint16 MALTA = 470
uint16 NIEDERLANDE = 528
uint16 NORWEGEN = 578
uint16 OESTERREICH = 40
uint16 POLEN = 616
uint16 PORTUGAL = 620
uint16 RUMAENIEN = 642
uint16 SCHWEDEN = 752
uint16 SCHWEIZ = 756
uint16 SLOWAKISCHE_REPUBLIK = 703
uint16 SLOWENIEN = 705
uint16 SPANIEN = 724
uint16 TSCHECHISCHE_REPUBLIK = 203
uint16 UNGARN = 348
uint16 ZYPERN_EU_GEBIET = 196
uint16 HONGKONG = 344
uint16 MACAO = 446
uint16 SINGAPUR = 702
uint16 FRANZ_POLYNES = 258
uint16 REP_NORDMAZEDONIEN = 807
uint16 SERBIEN = 688
uint16 TUERKEI = 792
uint16 UKRAINE = 804
uint16 WESTJORDANLAND = 275
uint16 ZYPERN_NORD = 10001
uint16 CHINA = 156
uint16 JAPAN = 392
uint16 USA = 840
uint16 OTHERS = 9999
uint16 value

================================================================================
MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 value

")



(provide :lane_navi_info_msgs/SimplifiedLaneNaviInfo "b22ecc10ca9f8d08af284a87babe91a6")


