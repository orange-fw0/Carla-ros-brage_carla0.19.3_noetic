;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Box2f)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Box2f (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::BOX2F")
  (make-package "PLANNING_MSGS::BOX2F"))

(in-package "ROS")
;;//! \htmlinclude Box2f.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass planning_msgs::Box2f
  :super ros::object
  :slots (_center _heading _length _width ))

(defmethod planning_msgs::Box2f
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point32 :init))
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
    ;; geometry_msgs/Point32 _center
    (send _center :serialization-length)
    ;; float32 _heading
    4
    ;; float32 _length
    4
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32 _center
       (send _center :serialize s)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32 _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planning_msgs::Box2f :md5sum-) "70f2aaaadc0ea42123834beb520a63b6")
(setf (get planning_msgs::Box2f :datatype-) "planning_msgs/Box2f")
(setf (get planning_msgs::Box2f :definition-)
      "geometry_msgs/Point32 center
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
")



(provide :planning_msgs/Box2f "70f2aaaadc0ea42123834beb520a63b6")


