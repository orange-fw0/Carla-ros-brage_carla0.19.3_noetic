;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::EnvironmentData)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'EnvironmentData (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::ENVIRONMENTDATA")
  (make-package "PLANNING_MSGS::ENVIRONMENTDATA"))

(in-package "ROS")
;;//! \htmlinclude EnvironmentData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*OBSTACLES*" (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(shadow '*OBSTACLES* (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(defconstant planning_msgs::EnvironmentData::*OBSTACLES* 1)
(intern "*OBSTACLE_BOXES*" (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(shadow '*OBSTACLE_BOXES* (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(defconstant planning_msgs::EnvironmentData::*OBSTACLE_BOXES* 2)
(intern "*OBSTACLE_LINES*" (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(shadow '*OBSTACLE_LINES* (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(defconstant planning_msgs::EnvironmentData::*OBSTACLE_LINES* 4)
(intern "*LINES*" (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(shadow '*LINES* (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(defconstant planning_msgs::EnvironmentData::*LINES* 8)
(intern "*POINTS*" (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(shadow '*POINTS* (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(defconstant planning_msgs::EnvironmentData::*POINTS* 16)
(intern "*STEP_POINTS*" (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(shadow '*STEP_POINTS* (find-package "PLANNING_MSGS::ENVIRONMENTDATA"))
(defconstant planning_msgs::EnvironmentData::*STEP_POINTS* 32)

(defun planning_msgs::EnvironmentData-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::EnvironmentData::*OBSTACLES*)
        ((= const 2) 'planning_msgs::EnvironmentData::*OBSTACLE_BOXES*)
        ((= const 4) 'planning_msgs::EnvironmentData::*OBSTACLE_LINES*)
        ((= const 8) 'planning_msgs::EnvironmentData::*LINES*)
        ((= const 16) 'planning_msgs::EnvironmentData::*POINTS*)
        ((= const 32) 'planning_msgs::EnvironmentData::*STEP_POINTS*)
        (t nil)))

(defclass planning_msgs::EnvironmentData
  :super ros::object
  :slots (_available _obstacles _obstacle_boxes _obstacle_lines _lines _points _step_points ))

(defmethod planning_msgs::EnvironmentData
  (:init
   (&key
    ((:available __available) 0)
    ((:obstacles __obstacles) ())
    ((:obstacle_boxes __obstacle_boxes) ())
    ((:obstacle_lines __obstacle_lines) ())
    ((:lines __lines) ())
    ((:points __points) ())
    ((:step_points __step_points) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _obstacles __obstacles)
   (setq _obstacle_boxes __obstacle_boxes)
   (setq _obstacle_lines __obstacle_lines)
   (setq _lines __lines)
   (setq _points __points)
   (setq _step_points __step_points)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:obstacle_boxes
   (&rest __obstacle_boxes)
   (if (keywordp (car __obstacle_boxes))
       (send* _obstacle_boxes __obstacle_boxes)
     (progn
       (if __obstacle_boxes (setq _obstacle_boxes (car __obstacle_boxes)))
       _obstacle_boxes)))
  (:obstacle_lines
   (&rest __obstacle_lines)
   (if (keywordp (car __obstacle_lines))
       (send* _obstacle_lines __obstacle_lines)
     (progn
       (if __obstacle_lines (setq _obstacle_lines (car __obstacle_lines)))
       _obstacle_lines)))
  (:lines
   (&rest __lines)
   (if (keywordp (car __lines))
       (send* _lines __lines)
     (progn
       (if __lines (setq _lines (car __lines)))
       _lines)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:step_points
   (&rest __step_points)
   (if (keywordp (car __step_points))
       (send* _step_points __step_points)
     (progn
       (if __step_points (setq _step_points (car __step_points)))
       _step_points)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ;; planning_msgs/Box2d[] _obstacle_boxes
    (apply #'+ (send-all _obstacle_boxes :serialization-length)) 4
    ;; planning_msgs/Line[] _obstacle_lines
    (apply #'+ (send-all _obstacle_lines :serialization-length)) 4
    ;; planning_msgs/Line[] _lines
    (apply #'+ (send-all _lines :serialization-length)) 4
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; geometry_msgs/Point[] _step_points
    (apply #'+ (send-all _step_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;; planning_msgs/Box2d[] _obstacle_boxes
     (write-long (length _obstacle_boxes) s)
     (dolist (elem _obstacle_boxes)
       (send elem :serialize s)
       )
     ;; planning_msgs/Line[] _obstacle_lines
     (write-long (length _obstacle_lines) s)
     (dolist (elem _obstacle_lines)
       (send elem :serialize s)
       )
     ;; planning_msgs/Line[] _lines
     (write-long (length _lines) s)
     (dolist (elem _lines)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _step_points
     (write-long (length _step_points) s)
     (dolist (elem _step_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance planning_msgs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planning_msgs/Box2d[] _obstacle_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_boxes (let (r) (dotimes (i n) (push (instance planning_msgs::Box2d :init) r)) r))
     (dolist (elem- _obstacle_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planning_msgs/Line[] _obstacle_lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_lines (let (r) (dotimes (i n) (push (instance planning_msgs::Line :init) r)) r))
     (dolist (elem- _obstacle_lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; planning_msgs/Line[] _lines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lines (let (r) (dotimes (i n) (push (instance planning_msgs::Line :init) r)) r))
     (dolist (elem- _lines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _step_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _step_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _step_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planning_msgs::EnvironmentData :md5sum-) "efab7c926f4af3e159778971cdc7a6b0")
(setf (get planning_msgs::EnvironmentData :datatype-) "planning_msgs/EnvironmentData")
(setf (get planning_msgs::EnvironmentData :definition-)
      "uint8 OBSTACLES = 1
uint8 OBSTACLE_BOXES = 2
uint8 OBSTACLE_LINES = 4
uint8 LINES = 8
uint8 POINTS = 16
uint8 STEP_POINTS = 32
uint8 available
planning_msgs/Obstacle[] obstacles
planning_msgs/Box2d[] obstacle_boxes
planning_msgs/Line[] obstacle_lines
planning_msgs/Line[] lines
geometry_msgs/Point[] points
geometry_msgs/Point[] step_points

================================================================================
MSG: planning_msgs/Obstacle
uint8 BOX = 1
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

================================================================================
MSG: planning_msgs/Box2d
geometry_msgs/Point center
float64 heading
float64 length
float64 width

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: planning_msgs/Line
geometry_msgs/Point start
geometry_msgs/Point end

")



(provide :planning_msgs/EnvironmentData "efab7c926f4af3e159778971cdc7a6b0")


