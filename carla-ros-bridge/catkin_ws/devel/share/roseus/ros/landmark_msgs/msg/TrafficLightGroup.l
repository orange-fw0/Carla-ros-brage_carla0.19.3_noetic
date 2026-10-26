;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightGroup)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightGroup (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTGROUP")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTGROUP"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightGroup.msg.html


(defclass landmark_msgs::TrafficLightGroup
  :super ros::object
  :slots (_traffic_light_group ))

(defmethod landmark_msgs::TrafficLightGroup
  (:init
   (&key
    ((:traffic_light_group __traffic_light_group) ())
    )
   (send-super :init)
   (setq _traffic_light_group __traffic_light_group)
   self)
  (:traffic_light_group
   (&rest __traffic_light_group)
   (if (keywordp (car __traffic_light_group))
       (send* _traffic_light_group __traffic_light_group)
     (progn
       (if __traffic_light_group (setq _traffic_light_group (car __traffic_light_group)))
       _traffic_light_group)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrafficLight[] _traffic_light_group
    (apply #'+ (send-all _traffic_light_group :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrafficLight[] _traffic_light_group
     (write-long (length _traffic_light_group) s)
     (dolist (elem _traffic_light_group)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrafficLight[] _traffic_light_group
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_group (let (r) (dotimes (i n) (push (instance landmark_msgs::TrafficLight :init) r)) r))
     (dolist (elem- _traffic_light_group)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::TrafficLightGroup :md5sum-) "34a6c3d5e052809d6c4478b72401e015")
(setf (get landmark_msgs::TrafficLightGroup :datatype-) "landmark_msgs/TrafficLightGroup")
(setf (get landmark_msgs::TrafficLightGroup :definition-)
      "landmark_msgs/TrafficLight[] traffic_light_group

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



(provide :landmark_msgs/TrafficLightGroup "34a6c3d5e052809d6c4478b72401e015")


