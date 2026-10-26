;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::StaticObstacleMap)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'StaticObstacleMap (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::STATICOBSTACLEMAP")
  (make-package "SUBMAP_MSGS::STATICOBSTACLEMAP"))

(in-package "ROS")
;;//! \htmlinclude StaticObstacleMap.msg.html


(defclass submap_msgs::StaticObstacleMap
  :super ros::object
  :slots (_ground_lines _pillars ))

(defmethod submap_msgs::StaticObstacleMap
  (:init
   (&key
    ((:ground_lines __ground_lines) ())
    ((:pillars __pillars) ())
    )
   (send-super :init)
   (setq _ground_lines __ground_lines)
   (setq _pillars __pillars)
   self)
  (:ground_lines
   (&rest __ground_lines)
   (if (keywordp (car __ground_lines))
       (send* _ground_lines __ground_lines)
     (progn
       (if __ground_lines (setq _ground_lines (car __ground_lines)))
       _ground_lines)))
  (:pillars
   (&rest __pillars)
   (if (keywordp (car __pillars))
       (send* _pillars __pillars)
     (progn
       (if __pillars (setq _pillars (car __pillars)))
       _pillars)))
  (:serialization-length
   ()
   (+
    ;; submap_msgs/GroundLine[] _ground_lines
    (apply #'+ (send-all _ground_lines :serialization-length)) 4
    ;; submap_msgs/Pillar[] _pillars
    (apply #'+ (send-all _pillars :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/GroundLine[] _ground_lines
     (write-long (length _ground_lines) s)
     (dolist (elem _ground_lines)
       (send elem :serialize s)
       )
     ;; submap_msgs/Pillar[] _pillars
     (write-long (length _pillars) s)
     (dolist (elem _pillars)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/GroundLine[] _ground_lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ground_lines (let (r) (dotimes (i n) (push (instance submap_msgs::GroundLine :init) r)) r))
     (dolist (elem- _ground_lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; submap_msgs/Pillar[] _pillars
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pillars (let (r) (dotimes (i n) (push (instance submap_msgs::Pillar :init) r)) r))
     (dolist (elem- _pillars)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get submap_msgs::StaticObstacleMap :md5sum-) "b289da5312194eecff20112a751514d9")
(setf (get submap_msgs::StaticObstacleMap :datatype-) "submap_msgs/StaticObstacleMap")
(setf (get submap_msgs::StaticObstacleMap :definition-)
      "submap_msgs/GroundLine[] ground_lines
submap_msgs/Pillar[] pillars

================================================================================
MSG: submap_msgs/GroundLine
geometry_msgs/Point start
geometry_msgs/Point end
geometry_msgs/Point[] map_points
geometry_msgs/Point[] raw_points
uint32 id
submap_msgs/GroundLineType type
float32 score
float32 slide_distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: submap_msgs/GroundLineType
uint8 UNKNOWN = 0
uint8 WALL = 1
uint8 PILLAR = 2
uint8 FENCE = 3
uint8 STEP = 4
uint8 SPECIAL = 5
uint8 PARKING_GATE = 6
uint8 value

================================================================================
MSG: submap_msgs/Pillar
geometry_msgs/Point center
geometry_msgs/Point center_local
geometry_msgs/Point[] edge_points
geometry_msgs/Point[] edge_points_local
uint32 id
uint32 point_number
float32 score
float32 slide_distance

")



(provide :submap_msgs/StaticObstacleMap "b289da5312194eecff20112a751514d9")


