;; Auto-generated. Do not edit!


(when (boundp 'hdmap_msgs::ODDEvent)
  (if (not (find-package "HDMAP_MSGS"))
    (make-package "HDMAP_MSGS"))
  (shadow 'ODDEvent (find-package "HDMAP_MSGS")))
(unless (find-package "HDMAP_MSGS::ODDEVENT")
  (make-package "HDMAP_MSGS::ODDEVENT"))

(in-package "ROS")
;;//! \htmlinclude ODDEvent.msg.html


(defclass hdmap_msgs::ODDEvent
  :super ros::object
  :slots (_id _type _distance _priority _end_distance ))

(defmethod hdmap_msgs::ODDEvent
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) (instance hdmap_msgs::ODDType :init))
    ((:distance __distance) 0)
    ((:priority __priority) (instance hdmap_msgs::ODDPriorityType :init))
    ((:end_distance __end_distance) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type __type)
   (setq _distance (round __distance))
   (setq _priority __priority)
   (setq _end_distance (round __end_distance))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:priority
   (&rest __priority)
   (if (keywordp (car __priority))
       (send* _priority __priority)
     (progn
       (if __priority (setq _priority (car __priority)))
       _priority)))
  (:end_distance
   (&optional __end_distance)
   (if __end_distance (setq _end_distance __end_distance)) _end_distance)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; hdmap_msgs/ODDType _type
    (send _type :serialization-length)
    ;; int32 _distance
    4
    ;; hdmap_msgs/ODDPriorityType _priority
    (send _priority :serialization-length)
    ;; int32 _end_distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; hdmap_msgs/ODDType _type
       (send _type :serialize s)
     ;; int32 _distance
       (write-long _distance s)
     ;; hdmap_msgs/ODDPriorityType _priority
       (send _priority :serialize s)
     ;; int32 _end_distance
       (write-long _end_distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; hdmap_msgs/ODDType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; int32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; hdmap_msgs/ODDPriorityType _priority
     (send _priority :deserialize buf ptr-) (incf ptr- (send _priority :serialization-length))
   ;; int32 _end_distance
     (setq _end_distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hdmap_msgs::ODDEvent :md5sum-) "192054015d6200cfaefb9ac7d7641006")
(setf (get hdmap_msgs::ODDEvent :datatype-) "hdmap_msgs/ODDEvent")
(setf (get hdmap_msgs::ODDEvent :definition-)
      "uint32 id
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



(provide :hdmap_msgs/ODDEvent "192054015d6200cfaefb9ac7d7641006")


