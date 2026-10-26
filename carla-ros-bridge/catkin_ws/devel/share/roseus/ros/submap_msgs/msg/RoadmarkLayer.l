;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::RoadmarkLayer)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'RoadmarkLayer (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::ROADMARKLAYER")
  (make-package "SUBMAP_MSGS::ROADMARKLAYER"))

(in-package "ROS")
;;//! \htmlinclude RoadmarkLayer.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass submap_msgs::RoadmarkLayer
  :super ros::object
  :slots (_type _points _points_local ))

(defmethod submap_msgs::RoadmarkLayer
  (:init
   (&key
    ((:type __type) (instance submap_msgs::RoadmarkType :init))
    ((:points __points) ())
    ((:points_local __points_local) ())
    )
   (send-super :init)
   (setq _type __type)
   (setq _points __points)
   (setq _points_local __points_local)
   self)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:points_local
   (&rest __points_local)
   (if (keywordp (car __points_local))
       (send* _points_local __points_local)
     (progn
       (if __points_local (setq _points_local (car __points_local)))
       _points_local)))
  (:serialization-length
   ()
   (+
    ;; submap_msgs/RoadmarkType _type
    (send _type :serialization-length)
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; geometry_msgs/Point[] _points_local
    (apply #'+ (send-all _points_local :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/RoadmarkType _type
       (send _type :serialize s)
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _points_local
     (write-long (length _points_local) s)
     (dolist (elem _points_local)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/RoadmarkType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _points_local
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_local (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points_local)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get submap_msgs::RoadmarkLayer :md5sum-) "d028498cfcba48291666c2f426c62e64")
(setf (get submap_msgs::RoadmarkLayer :datatype-) "submap_msgs/RoadmarkLayer")
(setf (get submap_msgs::RoadmarkLayer :definition-)
      "submap_msgs/RoadmarkType type
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



(provide :submap_msgs/RoadmarkLayer "d028498cfcba48291666c2f426c62e64")


