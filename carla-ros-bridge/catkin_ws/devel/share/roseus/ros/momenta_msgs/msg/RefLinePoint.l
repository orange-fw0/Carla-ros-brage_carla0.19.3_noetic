;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::RefLinePoint)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'RefLinePoint (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::REFLINEPOINT")
  (make-package "MOMENTA_MSGS::REFLINEPOINT"))

(in-package "ROS")
;;//! \htmlinclude RefLinePoint.msg.html


(defclass momenta_msgs::RefLinePoint
  :super ros::object
  :slots (_x _y _z _curvature _yaw _left_road_border_distance _right_road_border_distance _left_lane_border_distance _right_lane_border_distance _left_obstacle_distance _right_obstacle_distance _lane_width _speed_limit _track_id ))

(defmethod momenta_msgs::RefLinePoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:curvature __curvature) 0.0)
    ((:yaw __yaw) 0.0)
    ((:left_road_border_distance __left_road_border_distance) 0.0)
    ((:right_road_border_distance __right_road_border_distance) 0.0)
    ((:left_lane_border_distance __left_lane_border_distance) 0.0)
    ((:right_lane_border_distance __right_lane_border_distance) 0.0)
    ((:left_obstacle_distance __left_obstacle_distance) 0.0)
    ((:right_obstacle_distance __right_obstacle_distance) 0.0)
    ((:lane_width __lane_width) 0.0)
    ((:speed_limit __speed_limit) 0.0)
    ((:track_id __track_id) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _curvature (float __curvature))
   (setq _yaw (float __yaw))
   (setq _left_road_border_distance (float __left_road_border_distance))
   (setq _right_road_border_distance (float __right_road_border_distance))
   (setq _left_lane_border_distance (float __left_lane_border_distance))
   (setq _right_lane_border_distance (float __right_lane_border_distance))
   (setq _left_obstacle_distance (float __left_obstacle_distance))
   (setq _right_obstacle_distance (float __right_obstacle_distance))
   (setq _lane_width (float __lane_width))
   (setq _speed_limit (float __speed_limit))
   (setq _track_id (string __track_id))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:left_road_border_distance
   (&optional __left_road_border_distance)
   (if __left_road_border_distance (setq _left_road_border_distance __left_road_border_distance)) _left_road_border_distance)
  (:right_road_border_distance
   (&optional __right_road_border_distance)
   (if __right_road_border_distance (setq _right_road_border_distance __right_road_border_distance)) _right_road_border_distance)
  (:left_lane_border_distance
   (&optional __left_lane_border_distance)
   (if __left_lane_border_distance (setq _left_lane_border_distance __left_lane_border_distance)) _left_lane_border_distance)
  (:right_lane_border_distance
   (&optional __right_lane_border_distance)
   (if __right_lane_border_distance (setq _right_lane_border_distance __right_lane_border_distance)) _right_lane_border_distance)
  (:left_obstacle_distance
   (&optional __left_obstacle_distance)
   (if __left_obstacle_distance (setq _left_obstacle_distance __left_obstacle_distance)) _left_obstacle_distance)
  (:right_obstacle_distance
   (&optional __right_obstacle_distance)
   (if __right_obstacle_distance (setq _right_obstacle_distance __right_obstacle_distance)) _right_obstacle_distance)
  (:lane_width
   (&optional __lane_width)
   (if __lane_width (setq _lane_width __lane_width)) _lane_width)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _curvature
    8
    ;; float64 _yaw
    8
    ;; float64 _left_road_border_distance
    8
    ;; float64 _right_road_border_distance
    8
    ;; float64 _left_lane_border_distance
    8
    ;; float64 _right_lane_border_distance
    8
    ;; float64 _left_obstacle_distance
    8
    ;; float64 _right_obstacle_distance
    8
    ;; float64 _lane_width
    8
    ;; float64 _speed_limit
    8
    ;; string _track_id
    4 (length _track_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_road_border_distance
       (sys::poke _left_road_border_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_road_border_distance
       (sys::poke _right_road_border_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_lane_border_distance
       (sys::poke _left_lane_border_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_lane_border_distance
       (sys::poke _right_lane_border_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _left_obstacle_distance
       (sys::poke _left_obstacle_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_obstacle_distance
       (sys::poke _right_obstacle_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lane_width
       (sys::poke _lane_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _track_id
       (write-long (length _track_id) s) (princ _track_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curvature
     (setq _curvature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_road_border_distance
     (setq _left_road_border_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_road_border_distance
     (setq _right_road_border_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_lane_border_distance
     (setq _left_lane_border_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_lane_border_distance
     (setq _right_lane_border_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _left_obstacle_distance
     (setq _left_obstacle_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_obstacle_distance
     (setq _right_obstacle_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lane_width
     (setq _lane_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _track_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _track_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get momenta_msgs::RefLinePoint :md5sum-) "e6d3ed5196752014aedf09ac2b7a58f6")
(setf (get momenta_msgs::RefLinePoint :datatype-) "momenta_msgs/RefLinePoint")
(setf (get momenta_msgs::RefLinePoint :definition-)
      "float64 x
float64 y
float64 z
float64 curvature
float64 yaw
float64 left_road_border_distance
float64 right_road_border_distance
float64 left_lane_border_distance
float64 right_lane_border_distance
float64 left_obstacle_distance
float64 right_obstacle_distance
float64 lane_width
float64 speed_limit
string track_id

")



(provide :momenta_msgs/RefLinePoint "e6d3ed5196752014aedf09ac2b7a58f6")


