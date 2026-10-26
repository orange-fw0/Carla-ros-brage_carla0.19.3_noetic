;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Intersection)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Intersection (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::INTERSECTION")
  (make-package "LANE_NAVI_INFO_MSGS::INTERSECTION"))

(in-package "ROS")
;;//! \htmlinclude Intersection.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(intern "*ROADS_VALID*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTION"))
(shadow '*ROADS_VALID* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTION"))
(defconstant lane_navi_info_msgs::Intersection::*ROADS_VALID* 1)
(intern "*ROADS_ENTER_VALID*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTION"))
(shadow '*ROADS_ENTER_VALID* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTION"))
(defconstant lane_navi_info_msgs::Intersection::*ROADS_ENTER_VALID* 2)
(intern "*ROADS_EXIT*" (find-package "LANE_NAVI_INFO_MSGS::INTERSECTION"))
(shadow '*ROADS_EXIT* (find-package "LANE_NAVI_INFO_MSGS::INTERSECTION"))
(defconstant lane_navi_info_msgs::Intersection::*ROADS_EXIT* 4)

(defun lane_navi_info_msgs::Intersection-to-symbol (const)
  (cond
        ((= const 1) 'lane_navi_info_msgs::Intersection::*ROADS_VALID*)
        ((= const 2) 'lane_navi_info_msgs::Intersection::*ROADS_ENTER_VALID*)
        ((= const 4) 'lane_navi_info_msgs::Intersection::*ROADS_EXIT*)
        (t nil)))

(defclass lane_navi_info_msgs::Intersection
  :super ros::object
  :slots (_available _intersection_id _intersection_roads _roads_enter _roads_exit _type ))

(defmethod lane_navi_info_msgs::Intersection
  (:init
   (&key
    ((:available __available) 0)
    ((:intersection_id __intersection_id) (instance landmark_msgs::TrackId :init))
    ((:intersection_roads __intersection_roads) ())
    ((:roads_enter __roads_enter) ())
    ((:roads_exit __roads_exit) ())
    ((:type __type) (instance lane_navi_info_msgs::IntersectionType :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _intersection_id __intersection_id)
   (setq _intersection_roads __intersection_roads)
   (setq _roads_enter __roads_enter)
   (setq _roads_exit __roads_exit)
   (setq _type __type)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:intersection_id
   (&rest __intersection_id)
   (if (keywordp (car __intersection_id))
       (send* _intersection_id __intersection_id)
     (progn
       (if __intersection_id (setq _intersection_id (car __intersection_id)))
       _intersection_id)))
  (:intersection_roads
   (&rest __intersection_roads)
   (if (keywordp (car __intersection_roads))
       (send* _intersection_roads __intersection_roads)
     (progn
       (if __intersection_roads (setq _intersection_roads (car __intersection_roads)))
       _intersection_roads)))
  (:roads_enter
   (&rest __roads_enter)
   (if (keywordp (car __roads_enter))
       (send* _roads_enter __roads_enter)
     (progn
       (if __roads_enter (setq _roads_enter (car __roads_enter)))
       _roads_enter)))
  (:roads_exit
   (&rest __roads_exit)
   (if (keywordp (car __roads_exit))
       (send* _roads_exit __roads_exit)
     (progn
       (if __roads_exit (setq _roads_exit (car __roads_exit)))
       _roads_exit)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/TrackId _intersection_id
    (send _intersection_id :serialization-length)
    ;; landmark_msgs/TrackId[] _intersection_roads
    (apply #'+ (send-all _intersection_roads :serialization-length)) 4
    ;; lane_navi_info_msgs/LinkedRoad[] _roads_enter
    (apply #'+ (send-all _roads_enter :serialization-length)) 4
    ;; lane_navi_info_msgs/LinkedRoad[] _roads_exit
    (apply #'+ (send-all _roads_exit :serialization-length)) 4
    ;; lane_navi_info_msgs/IntersectionType _type
    (send _type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/TrackId _intersection_id
       (send _intersection_id :serialize s)
     ;; landmark_msgs/TrackId[] _intersection_roads
     (write-long (length _intersection_roads) s)
     (dolist (elem _intersection_roads)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LinkedRoad[] _roads_enter
     (write-long (length _roads_enter) s)
     (dolist (elem _roads_enter)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/LinkedRoad[] _roads_exit
     (write-long (length _roads_exit) s)
     (dolist (elem _roads_exit)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/IntersectionType _type
       (send _type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/TrackId _intersection_id
     (send _intersection_id :deserialize buf ptr-) (incf ptr- (send _intersection_id :serialization-length))
   ;; landmark_msgs/TrackId[] _intersection_roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intersection_roads (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _intersection_roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LinkedRoad[] _roads_enter
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roads_enter (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LinkedRoad :init) r)) r))
     (dolist (elem- _roads_enter)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/LinkedRoad[] _roads_exit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roads_exit (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::LinkedRoad :init) r)) r))
     (dolist (elem- _roads_exit)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/IntersectionType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Intersection :md5sum-) "31fe710ac983200e5d02acd040904f8b")
(setf (get lane_navi_info_msgs::Intersection :datatype-) "lane_navi_info_msgs/Intersection")
(setf (get lane_navi_info_msgs::Intersection :definition-)
      "uint8 ROADS_VALID = 1
uint8 ROADS_ENTER_VALID = 2
uint8 ROADS_EXIT = 4
uint8 available
landmark_msgs/TrackId intersection_id
landmark_msgs/TrackId[] intersection_roads
lane_navi_info_msgs/LinkedRoad[] roads_enter
lane_navi_info_msgs/LinkedRoad[] roads_exit
lane_navi_info_msgs/IntersectionType type

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/LinkedRoad
landmark_msgs/TrackId[] linked_roads
landmark_msgs/TrafficLightGroup linked_traffic_light_group

================================================================================
MSG: landmark_msgs/TrafficLightGroup
landmark_msgs/TrafficLight[] traffic_light_group

================================================================================
MSG: landmark_msgs/TrafficLight
landmark_msgs/TrafficLightType type
landmark_msgs/Direction[] direction

================================================================================
MSG: landmark_msgs/TrafficLightType
uint8 UNKNOWN = 0
uint8 DOT_TRAFFIC_LIGHT = 1
uint8 ARROW_TRAFFIC_LIGHT = 2
uint8 NUMBER_TRAFFIC_LIGHT = 3
uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4
uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5
uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6
uint8 value

================================================================================
MSG: landmark_msgs/Direction
uint8 UNKNOWN = 0
uint8 GO_STRAIGHT = 1
uint8 TURN_RIGHT = 2
uint8 TURN_LEFT = 3
uint8 U_TURN_LEFT = 4
uint8 U_TURN_RIGHT = 5
uint8 LEFT_CONFLUENCE = 6
uint8 RIGHT_CONFLUENCE = 7
uint8 LEFT_LEFT = 10
uint8 LEFT_LEFT_UT = 11
uint8 LEFT_RIGHT = 12
uint8 LEFT_RIGHT_UT = 13
uint8 LEFT_GO_STRAIGHT = 14
uint8 LEFT_UNKNOWN = 15
uint8 RIGHT_RIGHT = 20
uint8 RIGHT_RIGHT_UT = 21
uint8 RIGHT_LEFT = 22
uint8 RIGHT_LEFT_UT = 23
uint8 RIGHT_GO_STRAIGHT = 24
uint8 RIGHT_UNKNOWN = 25
uint8 LEFT_UT_LEFT_UT = 30
uint8 LEFT_UT_LEFT = 31
uint8 LEFT_UT_RIGHT = 32
uint8 LEFT_UT_RIGHT_UT = 33
uint8 LEFT_UT_GO_STRAIGHT = 34
uint8 LEFT_UT_UNKNOWN = 35
uint8 RIGHT_UT_RIGHT_UT = 40
uint8 RIGHT_UT_RIGHT = 41
uint8 RIGHT_UT_LEFT = 42
uint8 RIGHT_UT_LEFT_UT = 43
uint8 RIGHT_UT_GO_STRAIGHT = 44
uint8 RIGHT_UT_UNKNOWN = 45
uint8 GO_STRAIGHT_GO_STRAIGHT = 50
uint8 GO_STRAIGHT_LEFT = 51
uint8 GO_STRAIGHT_LEFT_UT = 52
uint8 GO_STRAIGHT_RIGHT = 53
uint8 GO_STRAIGHT_RIGHT_UT = 54
uint8 GO_STRAIGHT_UNKNOWN = 55
uint8 OTHER_LEFT = 61
uint8 OTHER_LEFT_UT = 62
uint8 OTHER_RIGHT = 63
uint8 OTHER_RIGHT_UT = 64
uint8 OTHER_GO_STRAIGHT = 65
uint8 OTHER_UNKNOWN = 66
uint8 UNKNOWN_LEFT = 91
uint8 UNKNOWN_LEFT_UT = 92
uint8 UNKNOWN_RIGHT = 93
uint8 UNKNOWN_RIGHT_UT = 94
uint8 UNKNOWN_GO_STRAIGHT = 95
uint8 UNKNOWN_UNKNOWN = 96
uint8 value

================================================================================
MSG: lane_navi_info_msgs/IntersectionType
uint8 UNKNOWN = 0
uint8 HIGHWAY_SPLIT = 1
uint8 URBAN_NORMAL = 2
uint8 NORMAL_SPLIT_MERGE = 3
uint8 T_JUNCTION = 4
uint8 Y_JUNCTION = 5
uint8 ROUNDABOUT = 6
uint8 OVERPASS = 7
uint8 OTHERS = 255
uint8 value

")



(provide :lane_navi_info_msgs/Intersection "31fe710ac983200e5d02acd040904f8b")


