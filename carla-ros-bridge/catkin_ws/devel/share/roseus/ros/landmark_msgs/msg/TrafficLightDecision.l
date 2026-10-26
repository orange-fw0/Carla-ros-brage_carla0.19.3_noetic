;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightDecision)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightDecision (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightDecision.msg.html


(intern "*PATTERN_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*PATTERN_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*PATTERN_VALID* 1)
(intern "*STATUS_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*STATUS_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*STATUS_VALID* 2)
(intern "*DURATION_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*DURATION_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*DURATION_VALID* 4)
(intern "*REMAINING_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*REMAINING_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*REMAINING_VALID* 8)
(intern "*COUNT_NUMBER_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*COUNT_NUMBER_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*COUNT_NUMBER_VALID* 16)
(intern "*SCORE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*SCORE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*SCORE_VALID* 32)
(intern "*RESERVED_INFO_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*RESERVED_INFO_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*RESERVED_INFO_VALID* 64)
(intern "*POS_FEATURE_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*POS_FEATURE_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*POS_FEATURE_VALID* 128)
(intern "*PHYSICAL_NODE_LIST_VALID*" (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(shadow '*PHYSICAL_NODE_LIST_VALID* (find-package "LANDMARK_MSGS::TRAFFICLIGHTDECISION"))
(defconstant landmark_msgs::TrafficLightDecision::*PHYSICAL_NODE_LIST_VALID* 256)

(defun landmark_msgs::TrafficLightDecision-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::TrafficLightDecision::*PATTERN_VALID*)
        ((= const 2) 'landmark_msgs::TrafficLightDecision::*STATUS_VALID*)
        ((= const 4) 'landmark_msgs::TrafficLightDecision::*DURATION_VALID*)
        ((= const 8) 'landmark_msgs::TrafficLightDecision::*REMAINING_VALID*)
        ((= const 16) 'landmark_msgs::TrafficLightDecision::*COUNT_NUMBER_VALID*)
        ((= const 32) 'landmark_msgs::TrafficLightDecision::*SCORE_VALID*)
        ((= const 64) 'landmark_msgs::TrafficLightDecision::*RESERVED_INFO_VALID*)
        ((= const 128) 'landmark_msgs::TrafficLightDecision::*POS_FEATURE_VALID*)
        ((= const 256) 'landmark_msgs::TrafficLightDecision::*PHYSICAL_NODE_LIST_VALID*)
        (t nil)))

(defclass landmark_msgs::TrafficLightDecision
  :super ros::object
  :slots (_pattern _status _duration _remaining _count_number _score _reserved_info _pos_feature _physical_node_list _available ))

(defmethod landmark_msgs::TrafficLightDecision
  (:init
   (&key
    ((:pattern __pattern) (instance landmark_msgs::TrafficLightPatternEnum :init))
    ((:status __status) (instance landmark_msgs::TrafficLightStatusEnum :init))
    ((:duration __duration) 0.0)
    ((:remaining __remaining) 0.0)
    ((:count_number __count_number) 0)
    ((:score __score) 0.0)
    ((:reserved_info __reserved_info) "")
    ((:pos_feature __pos_feature) (instance landmark_msgs::TrafficLightPositionFeature :init))
    ((:physical_node_list __physical_node_list) ())
    ((:available __available) 0)
    )
   (send-super :init)
   (setq _pattern __pattern)
   (setq _status __status)
   (setq _duration (float __duration))
   (setq _remaining (float __remaining))
   (setq _count_number (round __count_number))
   (setq _score (float __score))
   (setq _reserved_info (string __reserved_info))
   (setq _pos_feature __pos_feature)
   (setq _physical_node_list __physical_node_list)
   (setq _available (round __available))
   self)
  (:pattern
   (&rest __pattern)
   (if (keywordp (car __pattern))
       (send* _pattern __pattern)
     (progn
       (if __pattern (setq _pattern (car __pattern)))
       _pattern)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:remaining
   (&optional __remaining)
   (if __remaining (setq _remaining __remaining)) _remaining)
  (:count_number
   (&optional __count_number)
   (if __count_number (setq _count_number __count_number)) _count_number)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:pos_feature
   (&rest __pos_feature)
   (if (keywordp (car __pos_feature))
       (send* _pos_feature __pos_feature)
     (progn
       (if __pos_feature (setq _pos_feature (car __pos_feature)))
       _pos_feature)))
  (:physical_node_list
   (&rest __physical_node_list)
   (if (keywordp (car __physical_node_list))
       (send* _physical_node_list __physical_node_list)
     (progn
       (if __physical_node_list (setq _physical_node_list (car __physical_node_list)))
       _physical_node_list)))
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrafficLightPatternEnum _pattern
    (send _pattern :serialization-length)
    ;; landmark_msgs/TrafficLightStatusEnum _status
    (send _status :serialization-length)
    ;; float32 _duration
    4
    ;; float32 _remaining
    4
    ;; uint8 _count_number
    1
    ;; float32 _score
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ;; landmark_msgs/TrafficLightPositionFeature _pos_feature
    (send _pos_feature :serialization-length)
    ;; landmark_msgs/TrackId[] _physical_node_list
    (apply #'+ (send-all _physical_node_list :serialization-length)) 4
    ;; uint32 _available
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrafficLightPatternEnum _pattern
       (send _pattern :serialize s)
     ;; landmark_msgs/TrafficLightStatusEnum _status
       (send _status :serialize s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _remaining
       (sys::poke _remaining (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _count_number
       (write-byte _count_number s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;; landmark_msgs/TrafficLightPositionFeature _pos_feature
       (send _pos_feature :serialize s)
     ;; landmark_msgs/TrackId[] _physical_node_list
     (write-long (length _physical_node_list) s)
     (dolist (elem _physical_node_list)
       (send elem :serialize s)
       )
     ;; uint32 _available
       (write-long _available s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrafficLightPatternEnum _pattern
     (send _pattern :deserialize buf ptr-) (incf ptr- (send _pattern :serialization-length))
   ;; landmark_msgs/TrafficLightStatusEnum _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _remaining
     (setq _remaining (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _count_number
     (setq _count_number (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; landmark_msgs/TrafficLightPositionFeature _pos_feature
     (send _pos_feature :deserialize buf ptr-) (incf ptr- (send _pos_feature :serialization-length))
   ;; landmark_msgs/TrackId[] _physical_node_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _physical_node_list (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _physical_node_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _available
     (setq _available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::TrafficLightDecision :md5sum-) "61c701e5aee496088a1703b308041a79")
(setf (get landmark_msgs::TrafficLightDecision :datatype-) "landmark_msgs/TrafficLightDecision")
(setf (get landmark_msgs::TrafficLightDecision :definition-)
      "uint32 PATTERN_VALID = 1
uint32 STATUS_VALID = 2
uint32 DURATION_VALID = 4
uint32 REMAINING_VALID = 8
uint32 COUNT_NUMBER_VALID = 16
uint32 SCORE_VALID = 32
uint32 RESERVED_INFO_VALID = 64
uint32 POS_FEATURE_VALID = 128
uint32 PHYSICAL_NODE_LIST_VALID = 256
landmark_msgs/TrafficLightPatternEnum pattern
landmark_msgs/TrafficLightStatusEnum status
float32 duration
float32 remaining
uint8 count_number
float32 score
string reserved_info
landmark_msgs/TrafficLightPositionFeature pos_feature
landmark_msgs/TrackId[] physical_node_list
uint32 available

================================================================================
MSG: landmark_msgs/TrafficLightPatternEnum
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
uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23
uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24
uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25
uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26
uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50
uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51
uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52
uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81
uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightStatusEnum
uint8 TRAFFIC_LIGHT_STATUS_RED = 0
uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1
uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2
uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3
uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4
uint8 TRAFFIC_LIGHT_STATUS_OFF = 5
uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6
uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7
uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8
uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9
uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10
uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11
uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12
uint8 TRAFFIC_LIGHT_STATUS_ON = 13
uint8 value

================================================================================
MSG: landmark_msgs/TrafficLightPositionFeature
perception_interface_msgs/Point3f position
float32 yaw

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :landmark_msgs/TrafficLightDecision "61c701e5aee496088a1703b308041a79")


