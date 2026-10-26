;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::MapTrafficLight)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'MapTrafficLight (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::MAPTRAFFICLIGHT")
  (make-package "WORLDMODEL_MSGS::MAPTRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude MapTrafficLight.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::MapTrafficLight
  :super ros::object
  :slots (_boundary _pattern _on_route ))

(defmethod worldmodel_msgs::MapTrafficLight
  (:init
   (&key
    ((:boundary __boundary) ())
    ((:pattern __pattern) (instance perception_interface_msgs::TrafficLightPatternEnum :init))
    ((:on_route __on_route) nil)
    )
   (send-super :init)
   (setq _boundary __boundary)
   (setq _pattern __pattern)
   (setq _on_route __on_route)
   self)
  (:boundary
   (&rest __boundary)
   (if (keywordp (car __boundary))
       (send* _boundary __boundary)
     (progn
       (if __boundary (setq _boundary (car __boundary)))
       _boundary)))
  (:pattern
   (&rest __pattern)
   (if (keywordp (car __pattern))
       (send* _pattern __pattern)
     (progn
       (if __pattern (setq _pattern (car __pattern)))
       _pattern)))
  (:on_route
   (&optional (__on_route :null))
   (if (not (eq __on_route :null)) (setq _on_route __on_route)) _on_route)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point3d[] _boundary
    (apply #'+ (send-all _boundary :serialization-length)) 4
    ;; perception_interface_msgs/TrafficLightPatternEnum _pattern
    (send _pattern :serialization-length)
    ;; bool _on_route
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point3d[] _boundary
     (write-long (length _boundary) s)
     (dolist (elem _boundary)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/TrafficLightPatternEnum _pattern
       (send _pattern :serialize s)
     ;; bool _on_route
       (if _on_route (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point3d[] _boundary
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boundary (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3d :init) r)) r))
     (dolist (elem- _boundary)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/TrafficLightPatternEnum _pattern
     (send _pattern :deserialize buf ptr-) (incf ptr- (send _pattern :serialization-length))
   ;; bool _on_route
     (setq _on_route (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get worldmodel_msgs::MapTrafficLight :md5sum-) "92cc1ecc74c79b99531efbce87361743")
(setf (get worldmodel_msgs::MapTrafficLight :datatype-) "worldmodel_msgs/MapTrafficLight")
(setf (get worldmodel_msgs::MapTrafficLight :definition-)
      "perception_interface_msgs/Point3d[] boundary
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



(provide :worldmodel_msgs/MapTrafficLight "92cc1ecc74c79b99531efbce87361743")


