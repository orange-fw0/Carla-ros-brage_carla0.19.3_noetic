;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::HDMapIntersection)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'HDMapIntersection (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::HDMAPINTERSECTION")
  (make-package "PERCEPTION_INTERFACE_MSGS::HDMAPINTERSECTION"))

(in-package "ROS")
;;//! \htmlinclude HDMapIntersection.msg.html


(defclass perception_interface_msgs::HDMapIntersection
  :super ros::object
  :slots (_distance_to_stop_line _traffic_light_groups ))

(defmethod perception_interface_msgs::HDMapIntersection
  (:init
   (&key
    ((:distance_to_stop_line __distance_to_stop_line) (instance perception_interface_msgs::HDMapIntersectionStopLine :init))
    ((:traffic_light_groups __traffic_light_groups) ())
    )
   (send-super :init)
   (setq _distance_to_stop_line __distance_to_stop_line)
   (setq _traffic_light_groups __traffic_light_groups)
   self)
  (:distance_to_stop_line
   (&rest __distance_to_stop_line)
   (if (keywordp (car __distance_to_stop_line))
       (send* _distance_to_stop_line __distance_to_stop_line)
     (progn
       (if __distance_to_stop_line (setq _distance_to_stop_line (car __distance_to_stop_line)))
       _distance_to_stop_line)))
  (:traffic_light_groups
   (&rest __traffic_light_groups)
   (if (keywordp (car __traffic_light_groups))
       (send* _traffic_light_groups __traffic_light_groups)
     (progn
       (if __traffic_light_groups (setq _traffic_light_groups (car __traffic_light_groups)))
       _traffic_light_groups)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/HDMapIntersectionStopLine _distance_to_stop_line
    (send _distance_to_stop_line :serialization-length)
    ;; perception_interface_msgs/HDMapTrafficLightGroup[] _traffic_light_groups
    (apply #'+ (send-all _traffic_light_groups :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/HDMapIntersectionStopLine _distance_to_stop_line
       (send _distance_to_stop_line :serialize s)
     ;; perception_interface_msgs/HDMapTrafficLightGroup[] _traffic_light_groups
     (write-long (length _traffic_light_groups) s)
     (dolist (elem _traffic_light_groups)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/HDMapIntersectionStopLine _distance_to_stop_line
     (send _distance_to_stop_line :deserialize buf ptr-) (incf ptr- (send _distance_to_stop_line :serialization-length))
   ;; perception_interface_msgs/HDMapTrafficLightGroup[] _traffic_light_groups
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traffic_light_groups (let (r) (dotimes (i n) (push (instance perception_interface_msgs::HDMapTrafficLightGroup :init) r)) r))
     (dolist (elem- _traffic_light_groups)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::HDMapIntersection :md5sum-) "80cd972c8e61675f20e8e962101def1b")
(setf (get perception_interface_msgs::HDMapIntersection :datatype-) "perception_interface_msgs/HDMapIntersection")
(setf (get perception_interface_msgs::HDMapIntersection :definition-)
      "perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line
perception_interface_msgs/HDMapTrafficLightGroup[] traffic_light_groups

================================================================================
MSG: perception_interface_msgs/HDMapIntersectionStopLine
float64 distance_to_stop_line
float64 distance_buffer

================================================================================
MSG: perception_interface_msgs/HDMapTrafficLightGroup
uint64 track_id
perception_interface_msgs/HDMapTrafficLight[] traffic_lights

================================================================================
MSG: perception_interface_msgs/HDMapTrafficLight
perception_interface_msgs/Point3d[] boundary
perception_interface_msgs/TrafficLightPatternEnum pattern
bool on_route

================================================================================
MSG: perception_interface_msgs/Point3d
float64 x
float64 y
float64 z

================================================================================
MSG: perception_interface_msgs/TrafficLightPatternEnum
uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2
uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3
uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4
uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5
uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8
uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9
uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10
uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11
uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12
uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14
uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15
uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20
uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21
uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22
uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 23
uint8 TRAFFIC_LIGHT_PATTERN_UNKNOW = 24
uint8 TRAFFIC_LIGHT_PATTERN_OFF = 25
uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 26
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 27
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 28
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 29
uint8 value

")



(provide :perception_interface_msgs/HDMapIntersection "80cd972c8e61675f20e8e962101def1b")


