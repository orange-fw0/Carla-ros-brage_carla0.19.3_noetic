;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::LinkedRoad)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'LinkedRoad (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::LINKEDROAD")
  (make-package "LANE_NAVI_INFO_MSGS::LINKEDROAD"))

(in-package "ROS")
;;//! \htmlinclude LinkedRoad.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::LinkedRoad
  :super ros::object
  :slots (_linked_roads _linked_traffic_light_group ))

(defmethod lane_navi_info_msgs::LinkedRoad
  (:init
   (&key
    ((:linked_roads __linked_roads) ())
    ((:linked_traffic_light_group __linked_traffic_light_group) (instance landmark_msgs::TrafficLightGroup :init))
    )
   (send-super :init)
   (setq _linked_roads __linked_roads)
   (setq _linked_traffic_light_group __linked_traffic_light_group)
   self)
  (:linked_roads
   (&rest __linked_roads)
   (if (keywordp (car __linked_roads))
       (send* _linked_roads __linked_roads)
     (progn
       (if __linked_roads (setq _linked_roads (car __linked_roads)))
       _linked_roads)))
  (:linked_traffic_light_group
   (&rest __linked_traffic_light_group)
   (if (keywordp (car __linked_traffic_light_group))
       (send* _linked_traffic_light_group __linked_traffic_light_group)
     (progn
       (if __linked_traffic_light_group (setq _linked_traffic_light_group (car __linked_traffic_light_group)))
       _linked_traffic_light_group)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId[] _linked_roads
    (apply #'+ (send-all _linked_roads :serialization-length)) 4
    ;; landmark_msgs/TrafficLightGroup _linked_traffic_light_group
    (send _linked_traffic_light_group :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId[] _linked_roads
     (write-long (length _linked_roads) s)
     (dolist (elem _linked_roads)
       (send elem :serialize s)
       )
     ;; landmark_msgs/TrafficLightGroup _linked_traffic_light_group
       (send _linked_traffic_light_group :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId[] _linked_roads
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _linked_roads (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _linked_roads)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/TrafficLightGroup _linked_traffic_light_group
     (send _linked_traffic_light_group :deserialize buf ptr-) (incf ptr- (send _linked_traffic_light_group :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::LinkedRoad :md5sum-) "796d7a74b9d833d01d81fe7b63a8aa3a")
(setf (get lane_navi_info_msgs::LinkedRoad :datatype-) "lane_navi_info_msgs/LinkedRoad")
(setf (get lane_navi_info_msgs::LinkedRoad :definition-)
      "landmark_msgs/TrackId[] linked_roads
landmark_msgs/TrafficLightGroup linked_traffic_light_group

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

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

")



(provide :lane_navi_info_msgs/LinkedRoad "796d7a74b9d833d01d81fe7b63a8aa3a")


