;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Boundary)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Boundary (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::BOUNDARY")
  (make-package "PLANNING_MSGS::BOUNDARY"))

(in-package "ROS")
;;//! \htmlinclude Boundary.msg.html


(intern "*BOX*" (find-package "PLANNING_MSGS::BOUNDARY"))
(shadow '*BOX* (find-package "PLANNING_MSGS::BOUNDARY"))
(defconstant planning_msgs::Boundary::*BOX* 1)
(intern "*POLYGON*" (find-package "PLANNING_MSGS::BOUNDARY"))
(shadow '*POLYGON* (find-package "PLANNING_MSGS::BOUNDARY"))
(defconstant planning_msgs::Boundary::*POLYGON* 2)

(defun planning_msgs::Boundary-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::Boundary::*BOX*)
        ((= const 2) 'planning_msgs::Boundary::*POLYGON*)
        (t nil)))

(defclass planning_msgs::Boundary
  :super ros::object
  :slots (_available _box _polygon ))

(defmethod planning_msgs::Boundary
  (:init
   (&key
    ((:available __available) 0)
    ((:box __box) (instance planning_msgs::Box2f :init))
    ((:polygon __polygon) (instance planning_msgs::Polygon2f :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _box __box)
   (setq _polygon __polygon)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
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
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; planning_msgs/Box2f _box
    (send _box :serialization-length)
    ;; planning_msgs/Polygon2f _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; planning_msgs/Box2f _box
       (send _box :serialize s)
     ;; planning_msgs/Polygon2f _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; planning_msgs/Box2f _box
     (send _box :deserialize buf ptr-) (incf ptr- (send _box :serialization-length))
   ;; planning_msgs/Polygon2f _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(setf (get planning_msgs::Boundary :md5sum-) "1ab1c750a8b963519677acba357af34f")
(setf (get planning_msgs::Boundary :datatype-) "planning_msgs/Boundary")
(setf (get planning_msgs::Boundary :definition-)
      "uint8 BOX = 1
uint8 POLYGON = 2
uint8 available
planning_msgs/Box2f box
planning_msgs/Polygon2f polygon

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

")



(provide :planning_msgs/Boundary "1ab1c750a8b963519677acba357af34f")


