;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::RefPointInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'RefPointInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::REFPOINTINFO")
  (make-package "PLANNING_MSGS::REFPOINTINFO"))

(in-package "ROS")
;;//! \htmlinclude RefPointInfo.msg.html


(defclass planning_msgs::RefPointInfo
  :super ros::object
  :slots (_time _x _y _curvature _current_lane_width _left_lane_width _right_lane_width _left_lane_border _right_lane_border _left_road_border _right_road_border _theta_ref _cos_theta_ref _sin_theta_ref _left_road_border_type _right_road_border_type _left_lane_border_type _right_lane_border_type ))

(defmethod planning_msgs::RefPointInfo
  (:init
   (&key
    ((:time __time) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:curvature __curvature) 0.0)
    ((:current_lane_width __current_lane_width) 0.0)
    ((:left_lane_width __left_lane_width) 0.0)
    ((:right_lane_width __right_lane_width) 0.0)
    ((:left_lane_border __left_lane_border) 0.0)
    ((:right_lane_border __right_lane_border) 0.0)
    ((:left_road_border __left_road_border) 0.0)
    ((:right_road_border __right_road_border) 0.0)
    ((:theta_ref __theta_ref) 0.0)
    ((:cos_theta_ref __cos_theta_ref) 0.0)
    ((:sin_theta_ref __sin_theta_ref) 0.0)
    ((:left_road_border_type __left_road_border_type) 0)
    ((:right_road_border_type __right_road_border_type) 0)
    ((:left_lane_border_type __left_lane_border_type) 0)
    ((:right_lane_border_type __right_lane_border_type) 0)
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _curvature (float __curvature))
   (setq _current_lane_width (float __current_lane_width))
   (setq _left_lane_width (float __left_lane_width))
   (setq _right_lane_width (float __right_lane_width))
   (setq _left_lane_border (float __left_lane_border))
   (setq _right_lane_border (float __right_lane_border))
   (setq _left_road_border (float __left_road_border))
   (setq _right_road_border (float __right_road_border))
   (setq _theta_ref (float __theta_ref))
   (setq _cos_theta_ref (float __cos_theta_ref))
   (setq _sin_theta_ref (float __sin_theta_ref))
   (setq _left_road_border_type (round __left_road_border_type))
   (setq _right_road_border_type (round __right_road_border_type))
   (setq _left_lane_border_type (round __left_lane_border_type))
   (setq _right_lane_border_type (round __right_lane_border_type))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:current_lane_width
   (&optional __current_lane_width)
   (if __current_lane_width (setq _current_lane_width __current_lane_width)) _current_lane_width)
  (:left_lane_width
   (&optional __left_lane_width)
   (if __left_lane_width (setq _left_lane_width __left_lane_width)) _left_lane_width)
  (:right_lane_width
   (&optional __right_lane_width)
   (if __right_lane_width (setq _right_lane_width __right_lane_width)) _right_lane_width)
  (:left_lane_border
   (&optional __left_lane_border)
   (if __left_lane_border (setq _left_lane_border __left_lane_border)) _left_lane_border)
  (:right_lane_border
   (&optional __right_lane_border)
   (if __right_lane_border (setq _right_lane_border __right_lane_border)) _right_lane_border)
  (:left_road_border
   (&optional __left_road_border)
   (if __left_road_border (setq _left_road_border __left_road_border)) _left_road_border)
  (:right_road_border
   (&optional __right_road_border)
   (if __right_road_border (setq _right_road_border __right_road_border)) _right_road_border)
  (:theta_ref
   (&optional __theta_ref)
   (if __theta_ref (setq _theta_ref __theta_ref)) _theta_ref)
  (:cos_theta_ref
   (&optional __cos_theta_ref)
   (if __cos_theta_ref (setq _cos_theta_ref __cos_theta_ref)) _cos_theta_ref)
  (:sin_theta_ref
   (&optional __sin_theta_ref)
   (if __sin_theta_ref (setq _sin_theta_ref __sin_theta_ref)) _sin_theta_ref)
  (:left_road_border_type
   (&optional __left_road_border_type)
   (if __left_road_border_type (setq _left_road_border_type __left_road_border_type)) _left_road_border_type)
  (:right_road_border_type
   (&optional __right_road_border_type)
   (if __right_road_border_type (setq _right_road_border_type __right_road_border_type)) _right_road_border_type)
  (:left_lane_border_type
   (&optional __left_lane_border_type)
   (if __left_lane_border_type (setq _left_lane_border_type __left_lane_border_type)) _left_lane_border_type)
  (:right_lane_border_type
   (&optional __right_lane_border_type)
   (if __right_lane_border_type (setq _right_lane_border_type __right_lane_border_type)) _right_lane_border_type)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _curvature
    8
    ;; float64 _current_lane_width
    8
    ;; float64 _left_lane_width
    8
    ;; float64 _right_lane_width
    8
    ;; float64 _left_lane_border
    8
    ;; float64 _right_lane_border
    8
    ;; float64 _left_road_border
    8
    ;; float64 _right_road_border
    8
    ;; float64 _theta_ref
    8
    ;; float64 _cos_theta_ref
    8
    ;; float64 _sin_theta_ref
    8
    ;; int32 _left_road_border_type
    4
    ;; int32 _right_road_border_type
    4
    ;; int32 _left_lane_border_type
    4
    ;; int32 _right_lane_border_type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_lane_width
       (sys::poke _current_lane_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_lane_width
       (sys::poke _left_lane_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_lane_width
       (sys::poke _right_lane_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_lane_border
       (sys::poke _left_lane_border (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_lane_border
       (sys::poke _right_lane_border (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_road_border
       (sys::poke _left_road_border (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_road_border
       (sys::poke _right_road_border (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_ref
       (sys::poke _theta_ref (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cos_theta_ref
       (sys::poke _cos_theta_ref (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sin_theta_ref
       (sys::poke _sin_theta_ref (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _left_road_border_type
       (write-long _left_road_border_type s)
     ;; int32 _right_road_border_type
       (write-long _right_road_border_type s)
     ;; int32 _left_lane_border_type
       (write-long _left_lane_border_type s)
     ;; int32 _right_lane_border_type
       (write-long _right_lane_border_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curvature
     (setq _curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_lane_width
     (setq _current_lane_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_lane_width
     (setq _left_lane_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_lane_width
     (setq _right_lane_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_lane_border
     (setq _left_lane_border (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_lane_border
     (setq _right_lane_border (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_road_border
     (setq _left_road_border (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_road_border
     (setq _right_road_border (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta_ref
     (setq _theta_ref (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cos_theta_ref
     (setq _cos_theta_ref (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sin_theta_ref
     (setq _sin_theta_ref (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _left_road_border_type
     (setq _left_road_border_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_road_border_type
     (setq _right_road_border_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left_lane_border_type
     (setq _left_lane_border_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_lane_border_type
     (setq _right_lane_border_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning_msgs::RefPointInfo :md5sum-) "f9f90b313e4d20a00e3e615dc12ba380")
(setf (get planning_msgs::RefPointInfo :datatype-) "planning_msgs/RefPointInfo")
(setf (get planning_msgs::RefPointInfo :definition-)
      "float64 time
float64 x
float64 y
float64 curvature
float64 current_lane_width
float64 left_lane_width
float64 right_lane_width
float64 left_lane_border
float64 right_lane_border
float64 left_road_border
float64 right_road_border
float64 theta_ref
float64 cos_theta_ref
float64 sin_theta_ref
int32 left_road_border_type
int32 right_road_border_type
int32 left_lane_border_type
int32 right_lane_border_type

")



(provide :planning_msgs/RefPointInfo "f9f90b313e4d20a00e3e615dc12ba380")


