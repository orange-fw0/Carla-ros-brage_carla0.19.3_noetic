;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::RoadmarkMap)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'RoadmarkMap (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::ROADMARKMAP")
  (make-package "SUBMAP_MSGS::ROADMARKMAP"))

(in-package "ROS")
;;//! \htmlinclude RoadmarkMap.msg.html


(defclass submap_msgs::RoadmarkMap
  :super ros::object
  :slots (_roadmark_contours _roadmark_raw_points ))

(defmethod submap_msgs::RoadmarkMap
  (:init
   (&key
    ((:roadmark_contours __roadmark_contours) (instance submap_msgs::Roadmark :init))
    ((:roadmark_raw_points __roadmark_raw_points) (instance submap_msgs::Roadmark :init))
    )
   (send-super :init)
   (setq _roadmark_contours __roadmark_contours)
   (setq _roadmark_raw_points __roadmark_raw_points)
   self)
  (:roadmark_contours
   (&rest __roadmark_contours)
   (if (keywordp (car __roadmark_contours))
       (send* _roadmark_contours __roadmark_contours)
     (progn
       (if __roadmark_contours (setq _roadmark_contours (car __roadmark_contours)))
       _roadmark_contours)))
  (:roadmark_raw_points
   (&rest __roadmark_raw_points)
   (if (keywordp (car __roadmark_raw_points))
       (send* _roadmark_raw_points __roadmark_raw_points)
     (progn
       (if __roadmark_raw_points (setq _roadmark_raw_points (car __roadmark_raw_points)))
       _roadmark_raw_points)))
  (:serialization-length
   ()
   (+
    ;; submap_msgs/Roadmark _roadmark_contours
    (send _roadmark_contours :serialization-length)
    ;; submap_msgs/Roadmark _roadmark_raw_points
    (send _roadmark_raw_points :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/Roadmark _roadmark_contours
       (send _roadmark_contours :serialize s)
     ;; submap_msgs/Roadmark _roadmark_raw_points
       (send _roadmark_raw_points :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/Roadmark _roadmark_contours
     (send _roadmark_contours :deserialize buf ptr-) (incf ptr- (send _roadmark_contours :serialization-length))
   ;; submap_msgs/Roadmark _roadmark_raw_points
     (send _roadmark_raw_points :deserialize buf ptr-) (incf ptr- (send _roadmark_raw_points :serialization-length))
   ;;
   self)
  )

(setf (get submap_msgs::RoadmarkMap :md5sum-) "9babd27ffe2cdfa70b280e90ae92d9ef")
(setf (get submap_msgs::RoadmarkMap :datatype-) "submap_msgs/RoadmarkMap")
(setf (get submap_msgs::RoadmarkMap :definition-)
      "submap_msgs/Roadmark roadmark_contours
submap_msgs/Roadmark roadmark_raw_points

================================================================================
MSG: submap_msgs/Roadmark
submap_msgs/RoadmarkLayer[] layers

================================================================================
MSG: submap_msgs/RoadmarkLayer
submap_msgs/RoadmarkType type
geometry_msgs/Point[] points
geometry_msgs/Point[] points_local

================================================================================
MSG: submap_msgs/RoadmarkType
uint8 NORMAL = 0
uint8 ARROW = 1
uint8 SPEED_BUMP = 2
uint8 CROSS_WALK = 3
uint8 STOP_LINE = 4
uint8 value

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :submap_msgs/RoadmarkMap "9babd27ffe2cdfa70b280e90ae92d9ef")


