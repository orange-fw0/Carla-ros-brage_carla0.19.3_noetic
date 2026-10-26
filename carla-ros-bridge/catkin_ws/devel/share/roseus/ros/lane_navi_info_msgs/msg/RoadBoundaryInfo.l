;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::RoadBoundaryInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'RoadBoundaryInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::ROADBOUNDARYINFO")
  (make-package "LANE_NAVI_INFO_MSGS::ROADBOUNDARYINFO"))

(in-package "ROS")
;;//! \htmlinclude RoadBoundaryInfo.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::RoadBoundaryInfo
  :super ros::object
  :slots (_type _start_offset _end_offset _polyline ))

(defmethod lane_navi_info_msgs::RoadBoundaryInfo
  (:init
   (&key
    ((:type __type) (instance landmark_msgs::RoadBoundaryTypeEnum :init))
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    ((:polyline __polyline) (instance lane_navi_info_msgs::Polyline :init))
    )
   (send-super :init)
   (setq _type __type)
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   (setq _polyline __polyline)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:end_offset
   (&optional __end_offset)
   (if __end_offset (setq _end_offset __end_offset)) _end_offset)
  (:polyline
   (&rest __polyline)
   (if (keywordp (car __polyline))
       (send* _polyline __polyline)
     (progn
       (if __polyline (setq _polyline (car __polyline)))
       _polyline)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/RoadBoundaryTypeEnum _type
    (send _type :serialization-length)
    ;; float32 _start_offset
    4
    ;; float32 _end_offset
    4
    ;; lane_navi_info_msgs/Polyline _polyline
    (send _polyline :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/RoadBoundaryTypeEnum _type
       (send _type :serialize s)
     ;; float32 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_offset
       (sys::poke _end_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/Polyline _polyline
       (send _polyline :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/RoadBoundaryTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_offset
     (setq _end_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/Polyline _polyline
     (send _polyline :deserialize buf ptr-) (incf ptr- (send _polyline :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::RoadBoundaryInfo :md5sum-) "0f039d657e0a5870f4df5525e774018d")
(setf (get lane_navi_info_msgs::RoadBoundaryInfo :datatype-) "lane_navi_info_msgs/RoadBoundaryInfo")
(setf (get lane_navi_info_msgs::RoadBoundaryInfo :definition-)
      "landmark_msgs/RoadBoundaryTypeEnum type
float32 start_offset
float32 end_offset
lane_navi_info_msgs/Polyline polyline

================================================================================
MSG: landmark_msgs/RoadBoundaryTypeEnum
uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0
uint8 ROAD_BOUNDARY_TYPE_NONE = 1
uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2
uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3
uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4
uint8 ROAD_BOUNDARY_TYPE_CONE = 5
uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6
uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7
uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8
uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9
uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10
uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11
uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12
uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13
uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14
uint8 ROAD_BOUNDARY_TYPE_CURB = 15
uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16
uint8 ROAD_BOUNDARY_TYPE_WALL = 17
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18
uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19
uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20
uint8 value

================================================================================
MSG: lane_navi_info_msgs/Polyline
lane_navi_info_msgs/Point[] points

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

")



(provide :lane_navi_info_msgs/RoadBoundaryInfo "0f039d657e0a5870f4df5525e774018d")


