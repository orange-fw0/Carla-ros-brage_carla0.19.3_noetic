;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::HDMapTafficLightInformation)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'HDMapTafficLightInformation (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::HDMAPTAFFICLIGHTINFORMATION")
  (make-package "PERCEPTION_INTERFACE_MSGS::HDMAPTAFFICLIGHTINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude HDMapTafficLightInformation.msg.html


(defclass perception_interface_msgs::HDMapTafficLightInformation
  :super ros::object
  :slots (_valid _in_intersection _hdmap_intersecions ))

(defmethod perception_interface_msgs::HDMapTafficLightInformation
  (:init
   (&key
    ((:valid __valid) nil)
    ((:in_intersection __in_intersection) nil)
    ((:hdmap_intersecions __hdmap_intersecions) ())
    )
   (send-super :init)
   (setq _valid __valid)
   (setq _in_intersection __in_intersection)
   (setq _hdmap_intersecions __hdmap_intersecions)
   self)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:in_intersection
   (&optional (__in_intersection :null))
   (if (not (eq __in_intersection :null)) (setq _in_intersection __in_intersection)) _in_intersection)
  (:hdmap_intersecions
   (&rest __hdmap_intersecions)
   (if (keywordp (car __hdmap_intersecions))
       (send* _hdmap_intersecions __hdmap_intersecions)
     (progn
       (if __hdmap_intersecions (setq _hdmap_intersecions (car __hdmap_intersecions)))
       _hdmap_intersecions)))
  (:serialization-length
   ()
   (+
    ;; bool _valid
    1
    ;; bool _in_intersection
    1
    ;; perception_interface_msgs/HDMapIntersection[] _hdmap_intersecions
    (apply #'+ (send-all _hdmap_intersecions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _in_intersection
       (if _in_intersection (write-byte -1 s) (write-byte 0 s))
     ;; perception_interface_msgs/HDMapIntersection[] _hdmap_intersecions
     (write-long (length _hdmap_intersecions) s)
     (dolist (elem _hdmap_intersecions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _in_intersection
     (setq _in_intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; perception_interface_msgs/HDMapIntersection[] _hdmap_intersecions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hdmap_intersecions (let (r) (dotimes (i n) (push (instance perception_interface_msgs::HDMapIntersection :init) r)) r))
     (dolist (elem- _hdmap_intersecions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_interface_msgs::HDMapTafficLightInformation :md5sum-) "341f1dad7a2d7bb84b1c89cd015f6f35")
(setf (get perception_interface_msgs::HDMapTafficLightInformation :datatype-) "perception_interface_msgs/HDMapTafficLightInformation")
(setf (get perception_interface_msgs::HDMapTafficLightInformation :definition-)
      "bool valid
bool in_intersection
perception_interface_msgs/HDMapIntersection[] hdmap_intersecions

================================================================================
MSG: perception_interface_msgs/HDMapIntersection
perception_interface_msgs/HDMapIntersectionStopLine distance_to_stop_line
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



(provide :perception_interface_msgs/HDMapTafficLightInformation "341f1dad7a2d7bb84b1c89cd015f6f35")


