;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xTrafficLight)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xTrafficLight (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XTRAFFICLIGHT")
  (make-package "V2X_MSGS::V2XTRAFFICLIGHT"))

(in-package "ROS")
;;//! \htmlinclude V2xTrafficLight.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass v2x_msgs::V2xTrafficLight
  :super ros::object
  :slots (_header _meta _v2x_traffic_light_info ))

(defmethod v2x_msgs::V2xTrafficLight
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:meta __meta) (instance v2x_msgs::V2xMeta :init))
    ((:v2x_traffic_light_info __v2x_traffic_light_info) (instance v2x_msgs::V2xTrafficLightInfo :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _meta __meta)
   (setq _v2x_traffic_light_info __v2x_traffic_light_info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:v2x_traffic_light_info
   (&rest __v2x_traffic_light_info)
   (if (keywordp (car __v2x_traffic_light_info))
       (send* _v2x_traffic_light_info __v2x_traffic_light_info)
     (progn
       (if __v2x_traffic_light_info (setq _v2x_traffic_light_info (car __v2x_traffic_light_info)))
       _v2x_traffic_light_info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; v2x_msgs/V2xMeta _meta
    (send _meta :serialization-length)
    ;; v2x_msgs/V2xTrafficLightInfo _v2x_traffic_light_info
    (send _v2x_traffic_light_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; v2x_msgs/V2xMeta _meta
       (send _meta :serialize s)
     ;; v2x_msgs/V2xTrafficLightInfo _v2x_traffic_light_info
       (send _v2x_traffic_light_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; v2x_msgs/V2xMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;; v2x_msgs/V2xTrafficLightInfo _v2x_traffic_light_info
     (send _v2x_traffic_light_info :deserialize buf ptr-) (incf ptr- (send _v2x_traffic_light_info :serialization-length))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xTrafficLight :md5sum-) "1d30e375a597d2397918c9af98d8b1b0")
(setf (get v2x_msgs::V2xTrafficLight :datatype-) "v2x_msgs/V2xTrafficLight")
(setf (get v2x_msgs::V2xTrafficLight :definition-)
      "std_msgs/Header header
v2x_msgs/V2xMeta meta
v2x_msgs/V2xTrafficLightInfo v2x_traffic_light_info

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: v2x_msgs/V2xMeta
uint64 timestamp_us
string frame_id

================================================================================
MSG: v2x_msgs/V2xTrafficLightInfo
uint8 V2X_INTERSECTION_STATE = 1
uint8 available
v2x_msgs/V2xIntersectionState[] v2x_intersection_state

================================================================================
MSG: v2x_msgs/V2xIntersectionState
int32 intersection_id
v2x_msgs/V2xPhase[] v2x_phase

================================================================================
MSG: v2x_msgs/V2xPhase
int32 phase_id
v2x_msgs/V2xPhaseState v2x_phase_state

================================================================================
MSG: v2x_msgs/V2xPhaseState
perception_interface_msgs/TrafficLightStatusEnum status
float64 start_time
float64 likely_end_time

================================================================================
MSG: perception_interface_msgs/TrafficLightStatusEnum
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
uint8 value

")



(provide :v2x_msgs/V2xTrafficLight "1d30e375a597d2397918c9af98d8b1b0")


