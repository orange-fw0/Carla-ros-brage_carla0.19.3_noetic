;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Obstacle)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Obstacle (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::OBSTACLE")
  (make-package "PLANNING_MSGS::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*BOX*" (find-package "PLANNING_MSGS::OBSTACLE"))
(shadow '*BOX* (find-package "PLANNING_MSGS::OBSTACLE"))
(defconstant planning_msgs::Obstacle::*BOX* 1)
(intern "*POLYGON*" (find-package "PLANNING_MSGS::OBSTACLE"))
(shadow '*POLYGON* (find-package "PLANNING_MSGS::OBSTACLE"))
(defconstant planning_msgs::Obstacle::*POLYGON* 2)
(intern "*POLYLINE*" (find-package "PLANNING_MSGS::OBSTACLE"))
(shadow '*POLYLINE* (find-package "PLANNING_MSGS::OBSTACLE"))
(defconstant planning_msgs::Obstacle::*POLYLINE* 4)
(intern "*POINT*" (find-package "PLANNING_MSGS::OBSTACLE"))
(shadow '*POINT* (find-package "PLANNING_MSGS::OBSTACLE"))
(defconstant planning_msgs::Obstacle::*POINT* 8)

(defun planning_msgs::Obstacle-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Obstacle::*BOX*)
        ((= const 2) 'planning_msgs::Obstacle::*POLYGON*)
        ((= const 4) 'planning_msgs::Obstacle::*POLYLINE*)
        ((= const 8) 'planning_msgs::Obstacle::*POINT*)
        (t nil)))

(defclass planning_msgs::Obstacle
  :super ros::object
  :slots (_available _obstacle_type _box _polygon _polyline _point ))

(defmethod planning_msgs::Obstacle
  (:init
   (&key
    ((:available __available) 0)
    ((:obstacle_type __obstacle_type) (instance planning_msgs::ObstacleTypeEnum :init))
    ((:box __box) (instance planning_msgs::Box2f :init))
    ((:polygon __polygon) (instance planning_msgs::Polygon2f :init))
    ((:polyline __polyline) (instance planning_msgs::Polyline2f :init))
    ((:point __point) (instance geometry_msgs::Point32 :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _obstacle_type __obstacle_type)
   (setq _box __box)
   (setq _polygon __polygon)
   (setq _polyline __polyline)
   (setq _point __point)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:obstacle_type
   (&rest __obstacle_type)
   (if (keywordp (car __obstacle_type))
       (send* _obstacle_type __obstacle_type)
     (progn
       (if __obstacle_type (setq _obstacle_type (car __obstacle_type)))
       _obstacle_type)))
  (:box
   (&rest __box)
   (if (keywordp (car __box))
       (send* _box __box)
     (progn
       (if __box (setq _box (car __box)))
       _box)))
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:polyline
   (&rest __polyline)
   (if (keywordp (car __polyline))
       (send* _polyline __polyline)
     (progn
       (if __polyline (setq _polyline (car __polyline)))
       _polyline)))
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/ObstacleTypeEnum _obstacle_type
    (send _obstacle_type :serialization-length)
    ;; planning_msgs/Box2f _box
    (send _box :serialization-length)
    ;; planning_msgs/Polygon2f _polygon
    (send _polygon :serialization-length)
    ;; planning_msgs/Polyline2f _polyline
    (send _polyline :serialization-length)
    ;; geometry_msgs/Point32 _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/ObstacleTypeEnum _obstacle_type
       (send _obstacle_type :serialize s)
     ;; planning_msgs/Box2f _box
       (send _box :serialize s)
     ;; planning_msgs/Polygon2f _polygon
       (send _polygon :serialize s)
     ;; planning_msgs/Polyline2f _polyline
       (send _polyline :serialize s)
     ;; geometry_msgs/Point32 _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/ObstacleTypeEnum _obstacle_type
     (send _obstacle_type :deserialize buf ptr-) (incf ptr- (send _obstacle_type :serialization-length))
   ;; planning_msgs/Box2f _box
     (send _box :deserialize buf ptr-) (incf ptr- (send _box :serialization-length))
   ;; planning_msgs/Polygon2f _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;; planning_msgs/Polyline2f _polyline
     (send _polyline :deserialize buf ptr-) (incf ptr- (send _polyline :serialization-length))
   ;; geometry_msgs/Point32 _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::Obstacle :md5sum-) "4b9f22e247ebbe5f0d21d8c258a8994c")
(setf (get planning_msgs::Obstacle :datatype-) "planning_msgs/Obstacle")
(setf (get planning_msgs::Obstacle :definition-)
      "uint8 BOX = 1
uint8 POLYGON = 2
uint8 POLYLINE = 4
uint8 POINT = 8
uint8 available
planning_msgs/ObstacleTypeEnum obstacle_type
planning_msgs/Box2f box
planning_msgs/Polygon2f polygon
planning_msgs/Polyline2f polyline
geometry_msgs/Point32 point

================================================================================
MSG: planning_msgs/ObstacleTypeEnum
uint8 PHYSICAL = 1
uint8 LOGICAL = 2
uint8 PARKING_SLOT = 4
uint8 value

================================================================================
MSG: planning_msgs/Box2f
geometry_msgs/Point32 center
float32 heading
float32 length
float32 width

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: planning_msgs/Polygon2f
geometry_msgs/Point32[] points

================================================================================
MSG: planning_msgs/Polyline2f
geometry_msgs/Point32[] points

")



(provide :planning_msgs/Obstacle "4b9f22e247ebbe5f0d21d8c258a8994c")


