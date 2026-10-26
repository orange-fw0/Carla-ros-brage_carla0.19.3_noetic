;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Box2d)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Box2d (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::BOX2D")
  (make-package "PLANNING_MSGS::BOX2D"))

(in-package "ROS")
;;//! \htmlinclude Box2d.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass planning_msgs::Box2d
  :super ros::object
  :slots (_center _heading _length _width ))

(defmethod planning_msgs::Box2d
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:heading __heading) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _heading (float __heading))
   (setq _length (float __length))
   (setq _width (float __width))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; float64 _heading
    8
    ;; float64 _length
    8
    ;; float64 _width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::Box2d :md5sum-) "1a2b132a54047c4650f4f50de39e0f6a")
(setf (get planning_msgs::Box2d :datatype-) "planning_msgs/Box2d")
(setf (get planning_msgs::Box2d :definition-)
      "geometry_msgs/Point center
float64 heading
float64 length
float64 width

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :planning_msgs/Box2d "1a2b132a54047c4650f4f50de39e0f6a")


