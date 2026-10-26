;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDFrontLaneInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDFrontLaneInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDFRONTLANEINFO")
  (make-package "LANE_NAVI_INFO_MSGS::SDFRONTLANEINFO"))

(in-package "ROS")
;;//! \htmlinclude SDFrontLaneInfo.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::SDFrontLaneInfo
  :super ros::object
  :slots (_to_road_id _lanes ))

(defmethod lane_navi_info_msgs::SDFrontLaneInfo
  (:init
   (&key
    ((:to_road_id __to_road_id) (instance landmark_msgs::TrackId :init))
    ((:lanes __lanes) ())
    )
   (send-super :init)
   (setq _to_road_id __to_road_id)
   (setq _lanes __lanes)
   self)
  (:to_road_id
   (&rest __to_road_id)
   (if (keywordp (car __to_road_id))
       (send* _to_road_id __to_road_id)
     (progn
       (if __to_road_id (setq _to_road_id (car __to_road_id)))
       _to_road_id)))
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _to_road_id
    (send _to_road_id :serialization-length)
    ;; lane_navi_info_msgs/SDFrontLane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _to_road_id
       (send _to_road_id :serialize s)
     ;; lane_navi_info_msgs/SDFrontLane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _to_road_id
     (send _to_road_id :deserialize buf ptr-) (incf ptr- (send _to_road_id :serialization-length))
   ;; lane_navi_info_msgs/SDFrontLane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SDFrontLane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDFrontLaneInfo :md5sum-) "1ecc0ace40f546cb5c18d7600ba2defa")
(setf (get lane_navi_info_msgs::SDFrontLaneInfo :datatype-) "lane_navi_info_msgs/SDFrontLaneInfo")
(setf (get lane_navi_info_msgs::SDFrontLaneInfo :definition-)
      "landmark_msgs/TrackId to_road_id
lane_navi_info_msgs/SDFrontLane[] lanes

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/SDFrontLane
int32 number
lane_navi_info_msgs/SDLaneDirectType lane_type
lane_navi_info_msgs/SDLaneArrow[] arrows

================================================================================
MSG: lane_navi_info_msgs/SDLaneDirectType
uint8 SD_LANE_DIRECT_TYPE_NORMAL = 0
uint8 SD_LANE_DIRECT_TYPE_BUS = 1
uint8 SD_LANE_DIRECT_TYPE_OTHER_SPECIAL = 2
uint8 SD_LANE_DIRECT_TYPE_REVERSIBLE = 3
uint8 SD_LANE_DIRECT_TYPE_VARIABLE = 4
uint8 type

================================================================================
MSG: lane_navi_info_msgs/SDLaneArrow
lane_navi_info_msgs/SDArrowType[] arrow_types
lane_navi_info_msgs/TimeRegulationRange[] time
lane_navi_info_msgs/HolidayType holiday
lane_navi_info_msgs/WorkHolidayType work_holiday

================================================================================
MSG: lane_navi_info_msgs/SDArrowType
uint8 SD_ARROW_TYPE_LEFTUTURN = 0
uint8 SD_ARROW_TYPE_TURNLEFT = 1
uint8 SD_ARROW_TYPE_STRAIGHT = 2
uint8 SD_ARROW_TYPE_TURNRIGHT = 3
uint8 SD_ARROW_TYPE_RIGHTUTURN = 4
uint8 SD_ARROW_TYPE_LEFT_SIDE_WIDTH_CHANGE = 5
uint8 SD_ARROW_TYPE_RIGHT_SIDE_WIDTH_CHANGE = 6
uint8 SD_ARROW_TYPE_SINGLE_LANE_NO_UTURN = 7
uint8 SD_ARROW_TYPE_LEFT_CURVATURE = 8
uint8 SD_ARROW_TYPE_RIGHT_CURVATURE = 9
uint8 SD_ARROW_TYPE_EMPTY_LANE = 10
uint8 SD_ARROW_TYPE_INVALID = 255
uint8 type

================================================================================
MSG: lane_navi_info_msgs/TimeRegulationRange
lane_navi_info_msgs/TimeRegulation start_time
lane_navi_info_msgs/TimeRegulation end_time
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/TimeRegulation
lane_navi_info_msgs/TimeOfDay day
uint8 week
lane_navi_info_msgs/DayOfYear year

================================================================================
MSG: lane_navi_info_msgs/TimeOfDay
uint8 hours
uint8 minutes

================================================================================
MSG: lane_navi_info_msgs/DayOfYear
uint16 year
uint8 month
uint8 day

================================================================================
MSG: lane_navi_info_msgs/HolidayType
uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

================================================================================
MSG: lane_navi_info_msgs/WorkHolidayType
uint8 WORKHOLIDAYTYPE_NONE = 0
uint8 WORKHOLIDAYTYPE_VALID = 1
uint8 WORKHOLIDAYTYPE_INVALID = 2
uint8 WORKHOLIDAYTYPE_WEEKEND = 3
uint8 type

")



(provide :lane_navi_info_msgs/SDFrontLaneInfo "1ecc0ace40f546cb5c18d7600ba2defa")


