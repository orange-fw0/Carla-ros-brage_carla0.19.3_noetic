;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficLightIndication)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficLightIndication (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINDICATION")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICLIGHTINDICATION"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightIndication.msg.html


(defclass perception_interface_msgs::TrafficLightIndication
  :super ros::object
  :slots (_bounding_box_3d _pattern ))

(defmethod perception_interface_msgs::TrafficLightIndication
  (:init
   (&key
    ((:bounding_box_3d __bounding_box_3d) ())
    ((:pattern __pattern) (instance perception_interface_msgs::TrafficLightPatternEnum :init))
    )
   (send-super :init)
   (setq _bounding_box_3d __bounding_box_3d)
   (setq _pattern __pattern)
   self)
  (:bounding_box_3d
   (&rest __bounding_box_3d)
   (if (keywordp (car __bounding_box_3d))
       (send* _bounding_box_3d __bounding_box_3d)
     (progn
       (if __bounding_box_3d (setq _bounding_box_3d (car __bounding_box_3d)))
       _bounding_box_3d)))
  (:pattern
   (&rest __pattern)
   (if (keywordp (car __pattern))
       (send* _pattern __pattern)
     (progn
       (if __pattern (setq _pattern (car __pattern)))
       _pattern)))
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point3f[] _bounding_box_3d
    (apply #'+ (send-all _bounding_box_3d :serialization-length)) 4
    ;; perception_interface_msgs/TrafficLightPatternEnum _pattern
    (send _pattern :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point3f[] _bounding_box_3d
     (write-long (length _bounding_box_3d) s)
     (dolist (elem _bounding_box_3d)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/TrafficLightPatternEnum _pattern
       (send _pattern :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point3f[] _bounding_box_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_box_3d (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _bounding_box_3d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/TrafficLightPatternEnum _pattern
     (send _pattern :deserialize buf ptr-) (incf ptr- (send _pattern :serialization-length))
   ;;
   self)
  )

(setf (get perception_interface_msgs::TrafficLightIndication :md5sum-) "0beed876db032f4b25f262014ae4840f")
(setf (get perception_interface_msgs::TrafficLightIndication :datatype-) "perception_interface_msgs/TrafficLightIndication")
(setf (get perception_interface_msgs::TrafficLightIndication :definition-)
      "perception_interface_msgs/Point3f[] bounding_box_3d
perception_interface_msgs/TrafficLightPatternEnum pattern

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

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



(provide :perception_interface_msgs/TrafficLightIndication "0beed876db032f4b25f262014ae4840f")


