;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SimplifiedRoad)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SimplifiedRoad (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SIMPLIFIEDROAD")
  (make-package "LANE_NAVI_INFO_MSGS::SIMPLIFIEDROAD"))

(in-package "ROS")
;;//! \htmlinclude SimplifiedRoad.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::SimplifiedRoad
  :super ros::object
  :slots (_road_id _length _speed_limits _curvatures _slopes _road_class _formways _prev_roads _next_roads ))

(defmethod lane_navi_info_msgs::SimplifiedRoad
  (:init
   (&key
    ((:road_id __road_id) (instance landmark_msgs::TrackId :init))
    ((:length __length) 0.0)
    ((:speed_limits __speed_limits) ())
    ((:curvatures __curvatures) ())
    ((:slopes __slopes) ())
    ((:road_class __road_class) (instance landmark_msgs::RoadNodeRoadClassEnum :init))
    ((:formways __formways) ())
    ((:prev_roads __prev_roads) ())
    ((:next_roads __next_roads) ())
    )
   (send-super :init)
   (setq _road_id __road_id)
   (setq _length (float __length))
   (setq _speed_limits __speed_limits)
   (setq _curvatures __curvatures)
   (setq _slopes __slopes)
   (setq _road_class __road_class)
   (setq _formways __formways)
   (setq _prev_roads __prev_roads)
   (setq _next_roads __next_roads)
   self)
  (:road_id
   (&rest __road_id)
   (if (keywordp (car __road_id))
       (send* _road_id __road_id)
     (progn
       (if __road_id (setq _road_id (car __road_id)))
       _road_id)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:speed_limits
   (&rest __speed_limits)
   (if (keywordp (car __speed_limits))
       (send* _speed_limits __speed_limits)
     (progn
       (if __speed_limits (setq _speed_limits (car __speed_limits)))
       _speed_limits)))
  (:curvatures
   (&rest __curvatures)
   (if (keywordp (car __curvatures))
       (send* _curvatures __curvatures)
     (progn
       (if __curvatures (setq _curvatures (car __curvatures)))
       _curvatures)))
  (:slopes
   (&rest __slopes)
   (if (keywordp (car __slopes))
       (send* _slopes __slopes)
     (progn
       (if __slopes (setq _slopes (car __slopes)))
       _slopes)))
  (:road_class
   (&rest __road_class)
   (if (keywordp (car __road_class))
       (send* _road_class __road_class)
     (progn
       (if __road_class (setq _road_class (car __road_class)))
       _road_class)))
  (:formways
   (&rest __formways)
   (if (keywordp (car __formways))
       (send* _formways __formways)
     (progn
       (if __formways (setq _formways (car __formways)))
       _formways)))
  (:prev_roads
   (&rest __prev_roads)
   (if (keywordp (car __prev_roads))
       (send* _prev_roads __prev_roads)
     (progn
       (if __prev_roads (setq _prev_roads (car __prev_roads)))
       _prev_roads)))
  (:next_roads
   (&rest __next_roads)
   (if (keywordp (car __next_roads))
       (send* _next_roads __next_roads)
     (progn
       (if __next_roads (setq _next_roads (car __next_roads)))
       _next_roads)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _road_id
    (send _road_id :serialization-length)
    ;; float32 _length
    4
    ;; lane_navi_info_msgs/SpeedLimit[] _speed_limits
    (apply #'+ (send-all _speed_limits :serialization-length)) 4
    ;; lane_navi_info_msgs/Curvature[] _curvatures
    (apply #'+ (send-all _curvatures :serialization-length)) 4
    ;; lane_navi_info_msgs/Slope[] _slopes
    (apply #'+ (send-all _slopes :serialization-length)) 4
    ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
    (send _road_class :serialization-length)
    ;; landmark_msgs/RoadNodeFormwayEnum[] _formways
    (apply #'+ (send-all _formways :serialization-length)) 4
    ;; landmark_msgs/TrackId[] _prev_roads
    (apply #'+ (send-all _prev_roads :serialization-length)) 4
    ;; landmark_msgs/TrackId[] _next_roads
    (apply #'+ (send-all _next_roads :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _road_id
       (send _road_id :serialize s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/SpeedLimit[] _speed_limits
     (write-long (length _speed_limits) s)
     (dolist (elem _speed_limits)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Curvature[] _curvatures
     (write-long (length _curvatures) s)
     (dolist (elem _curvatures)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Slope[] _slopes
     (write-long (length _slopes) s)
     (dolist (elem _slopes)
       (send elem :serialize s)
       )
     ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
       (send _road_class :serialize s)
     ;; landmark_msgs/RoadNodeFormwayEnum[] _formways
     (write-long (length _formways) s)
     (dolist (elem _formways)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrackId[] _prev_roads
     (write-long (length _prev_roads) s)
     (dolist (elem _prev_roads)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrackId[] _next_roads
     (write-long (length _next_roads) s)
     (dolist (elem _next_roads)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _road_id
     (send _road_id :deserialize buf ptr-) (incf ptr- (send _road_id :serialization-length))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/SpeedLimit[] _speed_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed_limits (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SpeedLimit :init) r)) r))
     (dolist (elem- _speed_limits)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Curvature[] _curvatures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curvatures (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Curvature :init) r)) r))
     (dolist (elem- _curvatures)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Slope[] _slopes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _slopes (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Slope :init) r)) r))
     (dolist (elem- _slopes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/RoadNodeRoadClassEnum _road_class
     (send _road_class :deserialize buf ptr-) (incf ptr- (send _road_class :serialization-length))
   ;; landmark_msgs/RoadNodeFormwayEnum[] _formways
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _formways (let (r) (dotimes (i n) (push (instance landmark_msgs::RoadNodeFormwayEnum :init) r)) r))
     (dolist (elem- _formways)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrackId[] _prev_roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prev_roads (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _prev_roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrackId[] _next_roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _next_roads (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _next_roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SimplifiedRoad :md5sum-) "aef7b7ef92d6c0f4181b1f65bc9a8145")
(setf (get lane_navi_info_msgs::SimplifiedRoad :datatype-) "lane_navi_info_msgs/SimplifiedRoad")
(setf (get lane_navi_info_msgs::SimplifiedRoad :definition-)
      "landmark_msgs/TrackId road_id
float32 length
lane_navi_info_msgs/SpeedLimit[] speed_limits
lane_navi_info_msgs/Curvature[] curvatures
lane_navi_info_msgs/Slope[] slopes
landmark_msgs/RoadNodeRoadClassEnum road_class
landmark_msgs/RoadNodeFormwayEnum[] formways
landmark_msgs/TrackId[] prev_roads
landmark_msgs/TrackId[] next_roads

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

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

")



(provide :lane_navi_info_msgs/SimplifiedRoad "aef7b7ef92d6c0f4181b1f65bc9a8145")


