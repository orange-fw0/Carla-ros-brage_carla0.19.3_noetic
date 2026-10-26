;; Auto-generated. Do not edit!


(when (boundp 'hdmap_msgs::ODDData)
  (if (not (find-package "HDMAP_MSGS"))
    (make-package "HDMAP_MSGS"))
  (shadow 'ODDData (find-package "HDMAP_MSGS")))
(unless (find-package "HDMAP_MSGS::ODDDATA")
  (make-package "HDMAP_MSGS::ODDDATA"))

(in-package "ROS")
;;//! \htmlinclude ODDData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdmap_msgs::ODDData
  :super ros::object
  :slots (_header _odd_events _in_odd ))

(defmethod hdmap_msgs::ODDData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:odd_events __odd_events) ())
    ((:in_odd __in_odd) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _odd_events __odd_events)
   (setq _in_odd __in_odd)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:odd_events
   (&rest __odd_events)
   (if (keywordp (car __odd_events))
       (send* _odd_events __odd_events)
     (progn
       (if __odd_events (setq _odd_events (car __odd_events)))
       _odd_events)))
  (:in_odd
   (&optional (__in_odd :null))
   (if (not (eq __in_odd :null)) (setq _in_odd __in_odd)) _in_odd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hdmap_msgs/ODDEvent[] _odd_events
    (apply #'+ (send-all _odd_events :serialization-length)) 4
    ;; bool _in_odd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hdmap_msgs/ODDEvent[] _odd_events
     (write-long (length _odd_events) s)
     (dolist (elem _odd_events)
       (send elem :serialize s)
       )
     ;; bool _in_odd
       (if _in_odd (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hdmap_msgs/ODDEvent[] _odd_events
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _odd_events (let (r) (dotimes (i n) (push (instance hdmap_msgs::ODDEvent :init) r)) r))
     (dolist (elem- _odd_events)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _in_odd
     (setq _in_odd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hdmap_msgs::ODDData :md5sum-) "5e3595e8ee910b69289d544b410a0085")
(setf (get hdmap_msgs::ODDData :datatype-) "hdmap_msgs/ODDData")
(setf (get hdmap_msgs::ODDData :definition-)
      "std_msgs/Header header
hdmap_msgs/ODDEvent[] odd_events
bool in_odd

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
MSG: hdmap_msgs/ODDEvent
uint32 id
hdmap_msgs/ODDType type
int32 distance
hdmap_msgs/ODDPriorityType priority
int32 end_distance

================================================================================
MSG: hdmap_msgs/ODDType
uint8 ODD_UNKNOWN = 0
uint8 ODD_ROAD_CONSTRUCTION = 1
uint8 ODD_TOLL = 2
uint8 ODD_GATE_MACHINE = 3
uint8 ODD_MAP_COLLECT = 4
uint8 ODD_MAP_ERROR = 5
uint8 ODD_NONE_MAP_ERROR = 6
uint8 ODD_DYNAMIC_EVENT = 7
uint8 ODD_SERVICE_AREA = 9
uint8 ODD_DRIVABLE_TOLL = 20
uint8 ODD_SHORT = 50
uint8 ODD_NOT_AVAILABLE = 100
uint8 ODD_UNMATCH = 101
uint8 ODD_TOUR_END = 102
uint8 ESR_ROAD_CLASS = 103
uint8 ODD_TILE_END = 104
uint8 ODD_UNP_ROUNDABOUT = 105
uint8 ODD_UNP_U_TURN = 106
uint8 ODD_UNP_TIDAL_FLOW_LANE = 107
uint8 ODD_UNP_REVERSIBLE_LANE = 108
uint8 ODD_CRITICALLY_OVER_CURVATURE = 109
uint8 ODD_OVER_CURVATURE = 110
uint8 ODD_OVER_SLOPE = 111
uint8 ODD_OVER_LANEWIDTH = 112
uint8 ODD_INVALID_LINE = 113
uint8 ODD_TOO_LOW_SPDLIMIT_HIGHWAY = 114
uint8 ODD_PROHIBITED_LANE = 115
uint8 ODD_INTERSECTION_HIGHWAY = 116
uint8 ODD_TRAFFICLIGHT_HIGHWAY = 117
uint8 ODD_PROHIBITED_FACILITY_HIGHWAY = 118
uint8 ODD_ROUNDABOUT_HIGHWAY = 119
uint8 ODD_LOCAL_MAP_EDGE = 120
uint8 ODD_HNP_MINUS = 121
uint8 ODD_CHECK_POINT = 130
uint8 ODD_INNER_ROAD = 131
uint8 ODD_DYNAMIC_ROADWORK = 132
uint8 ODD_L3_CROSS_NOLIGHT = 141
uint8 ODD_L3_NARROW_UTURN = 142
uint8 ODD_L3_UNREGULAR_ROAD = 143
uint8 ODD_L3_ETC = 144
uint8 ODD_L3_DUALWAY = 145
uint8 ODD_L3_BROKEN_ICJCT = 146
uint8 ODD_L3_DEAD_ROAD = 147
uint8 URBAN = 201
uint8 HIGHWAY = 202
uint8 HDMAP = 203
uint8 NO_HDMAP = 204
uint8 SDNaviNP_AREA = 205
uint8 SWITCH_NP_TO_PNP_AREA = 210
uint8 SWITCH_PNP_TO_NP_AREA = 211
uint8 value

================================================================================
MSG: hdmap_msgs/ODDPriorityType
uint8 UNKNOWN = 0
uint8 HDMAP_PRIORITY = 1
uint8 NO_HDMAP_PRIORITY = 2
uint8 priority

")



(provide :hdmap_msgs/ODDData "5e3595e8ee910b69289d544b410a0085")


