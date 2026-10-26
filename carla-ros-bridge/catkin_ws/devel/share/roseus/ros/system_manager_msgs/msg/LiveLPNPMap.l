;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LiveLPNPMap)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LiveLPNPMap (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LIVELPNPMAP")
  (make-package "SYSTEM_MANAGER_MSGS::LIVELPNPMAP"))

(in-package "ROS")
;;//! \htmlinclude LiveLPNPMap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass system_manager_msgs::LiveLPNPMap
  :super ros::object
  :slots (_psd_map _speed_bumps _pillars _walls _intersections _parking_gates _trajectory_points _road_id _road_type _transform ))

(defmethod system_manager_msgs::LiveLPNPMap
  (:init
   (&key
    ((:psd_map __psd_map) ())
    ((:speed_bumps __speed_bumps) ())
    ((:pillars __pillars) ())
    ((:walls __walls) ())
    ((:intersections __intersections) ())
    ((:parking_gates __parking_gates) ())
    ((:trajectory_points __trajectory_points) ())
    ((:road_id __road_id) 0)
    ((:road_type __road_type) (instance system_manager_msgs::RoadTypeEnum :init))
    ((:transform __transform) (instance geometry_msgs::TransformStamped :init))
    )
   (send-super :init)
   (setq _psd_map __psd_map)
   (setq _speed_bumps __speed_bumps)
   (setq _pillars __pillars)
   (setq _walls __walls)
   (setq _intersections __intersections)
   (setq _parking_gates __parking_gates)
   (setq _trajectory_points __trajectory_points)
   (setq _road_id (round __road_id))
   (setq _road_type __road_type)
   (setq _transform __transform)
   self)
  (:psd_map
   (&rest __psd_map)
   (if (keywordp (car __psd_map))
       (send* _psd_map __psd_map)
     (progn
       (if __psd_map (setq _psd_map (car __psd_map)))
       _psd_map)))
  (:speed_bumps
   (&rest __speed_bumps)
   (if (keywordp (car __speed_bumps))
       (send* _speed_bumps __speed_bumps)
     (progn
       (if __speed_bumps (setq _speed_bumps (car __speed_bumps)))
       _speed_bumps)))
  (:pillars
   (&rest __pillars)
   (if (keywordp (car __pillars))
       (send* _pillars __pillars)
     (progn
       (if __pillars (setq _pillars (car __pillars)))
       _pillars)))
  (:walls
   (&rest __walls)
   (if (keywordp (car __walls))
       (send* _walls __walls)
     (progn
       (if __walls (setq _walls (car __walls)))
       _walls)))
  (:intersections
   (&rest __intersections)
   (if (keywordp (car __intersections))
       (send* _intersections __intersections)
     (progn
       (if __intersections (setq _intersections (car __intersections)))
       _intersections)))
  (:parking_gates
   (&rest __parking_gates)
   (if (keywordp (car __parking_gates))
       (send* _parking_gates __parking_gates)
     (progn
       (if __parking_gates (setq _parking_gates (car __parking_gates)))
       _parking_gates)))
  (:trajectory_points
   (&rest __trajectory_points)
   (if (keywordp (car __trajectory_points))
       (send* _trajectory_points __trajectory_points)
     (progn
       (if __trajectory_points (setq _trajectory_points (car __trajectory_points)))
       _trajectory_points)))
  (:road_id
   (&optional __road_id)
   (if __road_id (setq _road_id __road_id)) _road_id)
  (:road_type
   (&rest __road_type)
   (if (keywordp (car __road_type))
       (send* _road_type __road_type)
     (progn
       (if __road_type (setq _road_type (car __road_type)))
       _road_type)))
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:serialization-length
   ()
   (+
    ;; system_manager_msgs/ParkingSpaceInfo[] _psd_map
    (apply #'+ (send-all _psd_map :serialization-length)) 4
    ;; system_manager_msgs/PointsPosition[] _speed_bumps
    (apply #'+ (send-all _speed_bumps :serialization-length)) 4
    ;; system_manager_msgs/PointsPosition[] _pillars
    (apply #'+ (send-all _pillars :serialization-length)) 4
    ;; system_manager_msgs/PointsPosition[] _walls
    (apply #'+ (send-all _walls :serialization-length)) 4
    ;; system_manager_msgs/PointsPosition[] _intersections
    (apply #'+ (send-all _intersections :serialization-length)) 4
    ;; system_manager_msgs/PointsPosition[] _parking_gates
    (apply #'+ (send-all _parking_gates :serialization-length)) 4
    ;; system_manager_msgs/LiveLPNPMapRoadPoint[] _trajectory_points
    (apply #'+ (send-all _trajectory_points :serialization-length)) 4
    ;; uint32 _road_id
    4
    ;; system_manager_msgs/RoadTypeEnum _road_type
    (send _road_type :serialization-length)
    ;; geometry_msgs/TransformStamped _transform
    (send _transform :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; system_manager_msgs/ParkingSpaceInfo[] _psd_map
     (write-long (length _psd_map) s)
     (dolist (elem _psd_map)
       (send elem :serialize s)
       )
     ;; system_manager_msgs/PointsPosition[] _speed_bumps
     (write-long (length _speed_bumps) s)
     (dolist (elem _speed_bumps)
       (send elem :serialize s)
       )
     ;; system_manager_msgs/PointsPosition[] _pillars
     (write-long (length _pillars) s)
     (dolist (elem _pillars)
       (send elem :serialize s)
       )
     ;; system_manager_msgs/PointsPosition[] _walls
     (write-long (length _walls) s)
     (dolist (elem _walls)
       (send elem :serialize s)
       )
     ;; system_manager_msgs/PointsPosition[] _intersections
     (write-long (length _intersections) s)
     (dolist (elem _intersections)
       (send elem :serialize s)
       )
     ;; system_manager_msgs/PointsPosition[] _parking_gates
     (write-long (length _parking_gates) s)
     (dolist (elem _parking_gates)
       (send elem :serialize s)
       )
     ;; system_manager_msgs/LiveLPNPMapRoadPoint[] _trajectory_points
     (write-long (length _trajectory_points) s)
     (dolist (elem _trajectory_points)
       (send elem :serialize s)
       )
     ;; uint32 _road_id
       (write-long _road_id s)
     ;; system_manager_msgs/RoadTypeEnum _road_type
       (send _road_type :serialize s)
     ;; geometry_msgs/TransformStamped _transform
       (send _transform :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; system_manager_msgs/ParkingSpaceInfo[] _psd_map
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _psd_map (let (r) (dotimes (i n) (push (instance system_manager_msgs::ParkingSpaceInfo :init) r)) r))
     (dolist (elem- _psd_map)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; system_manager_msgs/PointsPosition[] _speed_bumps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed_bumps (let (r) (dotimes (i n) (push (instance system_manager_msgs::PointsPosition :init) r)) r))
     (dolist (elem- _speed_bumps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; system_manager_msgs/PointsPosition[] _pillars
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pillars (let (r) (dotimes (i n) (push (instance system_manager_msgs::PointsPosition :init) r)) r))
     (dolist (elem- _pillars)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; system_manager_msgs/PointsPosition[] _walls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _walls (let (r) (dotimes (i n) (push (instance system_manager_msgs::PointsPosition :init) r)) r))
     (dolist (elem- _walls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; system_manager_msgs/PointsPosition[] _intersections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intersections (let (r) (dotimes (i n) (push (instance system_manager_msgs::PointsPosition :init) r)) r))
     (dolist (elem- _intersections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; system_manager_msgs/PointsPosition[] _parking_gates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _parking_gates (let (r) (dotimes (i n) (push (instance system_manager_msgs::PointsPosition :init) r)) r))
     (dolist (elem- _parking_gates)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; system_manager_msgs/LiveLPNPMapRoadPoint[] _trajectory_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_points (let (r) (dotimes (i n) (push (instance system_manager_msgs::LiveLPNPMapRoadPoint :init) r)) r))
     (dolist (elem- _trajectory_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _road_id
     (setq _road_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; system_manager_msgs/RoadTypeEnum _road_type
     (send _road_type :deserialize buf ptr-) (incf ptr- (send _road_type :serialization-length))
   ;; geometry_msgs/TransformStamped _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::LiveLPNPMap :md5sum-) "b966108b5c783baed293373c10146e4d")
(setf (get system_manager_msgs::LiveLPNPMap :datatype-) "system_manager_msgs/LiveLPNPMap")
(setf (get system_manager_msgs::LiveLPNPMap :definition-)
      "system_manager_msgs/ParkingSpaceInfo[] psd_map
system_manager_msgs/PointsPosition[] speed_bumps
system_manager_msgs/PointsPosition[] pillars
system_manager_msgs/PointsPosition[] walls
system_manager_msgs/PointsPosition[] intersections
system_manager_msgs/PointsPosition[] parking_gates
system_manager_msgs/LiveLPNPMapRoadPoint[] trajectory_points
uint32 road_id
system_manager_msgs/RoadTypeEnum road_type
geometry_msgs/TransformStamped transform

================================================================================
MSG: system_manager_msgs/ParkingSpaceInfo
uint64 id
uint8 code
system_manager_msgs/ParkingSpaceStatusEnum status
system_manager_msgs/ParkingSpaceTypeEnum type
mla_localization_msgs/MLAPosLocal[] corners

================================================================================
MSG: system_manager_msgs/ParkingSpaceStatusEnum
uint8 NO_INFORMATION = 0
uint8 PARKING_SPACE_VACANT = 1
uint8 PARKING_SPACE_OCCUPIED = 2
uint8 PARKING_SPACE_HIGHLIGHT = 3
uint8 value

================================================================================
MSG: system_manager_msgs/ParkingSpaceTypeEnum
uint8 UNKNOWN = 0
uint8 PARKING_SPACE_WITH_CHARGING = 1
uint8 value

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

================================================================================
MSG: system_manager_msgs/PointsPosition
mla_localization_msgs/MLAPosLocal[] points

================================================================================
MSG: system_manager_msgs/LiveLPNPMapRoadPoint
float64 x
float64 y
float64 z
float64 width

================================================================================
MSG: system_manager_msgs/RoadTypeEnum
uint8 UNKNOWN = 0
uint8 LEVEL = 1
uint8 DOWNHILL = 2
uint8 UPHILL = 3
uint8 GROUND_PARKING = 4
uint8 PUBLIC_ROAD = 5
uint8 value

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href=\"http://wiki.ros.org/tf\">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :system_manager_msgs/LiveLPNPMap "b966108b5c783baed293373c10146e4d")


