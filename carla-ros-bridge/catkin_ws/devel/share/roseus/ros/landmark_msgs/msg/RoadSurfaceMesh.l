;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadSurfaceMesh)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadSurfaceMesh (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADSURFACEMESH")
  (make-package "LANDMARK_MSGS::ROADSURFACEMESH"))

(in-package "ROS")
;;//! \htmlinclude RoadSurfaceMesh.msg.html


(intern "*SCORE_MAP_VALID*" (find-package "LANDMARK_MSGS::ROADSURFACEMESH"))
(shadow '*SCORE_MAP_VALID* (find-package "LANDMARK_MSGS::ROADSURFACEMESH"))
(defconstant landmark_msgs::RoadSurfaceMesh::*SCORE_MAP_VALID* 1)

(defun landmark_msgs::RoadSurfaceMesh-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::RoadSurfaceMesh::*SCORE_MAP_VALID*)
        (t nil)))

(defclass landmark_msgs::RoadSurfaceMesh
  :super ros::object
  :slots (_available _score_map _bev_h _bev_w _x_bound_min _x_bound_max _y_bound_min _y_bound_max _meter_per_pixel_x _meter_per_pixel_y ))

(defmethod landmark_msgs::RoadSurfaceMesh
  (:init
   (&key
    ((:available __available) 0)
    ((:score_map __score_map) (make-array 0 :initial-element 0 :element-type :char))
    ((:bev_h __bev_h) 0)
    ((:bev_w __bev_w) 0)
    ((:x_bound_min __x_bound_min) 0.0)
    ((:x_bound_max __x_bound_max) 0.0)
    ((:y_bound_min __y_bound_min) 0.0)
    ((:y_bound_max __y_bound_max) 0.0)
    ((:meter_per_pixel_x __meter_per_pixel_x) 0.0)
    ((:meter_per_pixel_y __meter_per_pixel_y) 0.0)
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _score_map __score_map)
   (setq _bev_h (round __bev_h))
   (setq _bev_w (round __bev_w))
   (setq _x_bound_min (float __x_bound_min))
   (setq _x_bound_max (float __x_bound_max))
   (setq _y_bound_min (float __y_bound_min))
   (setq _y_bound_max (float __y_bound_max))
   (setq _meter_per_pixel_x (float __meter_per_pixel_x))
   (setq _meter_per_pixel_y (float __meter_per_pixel_y))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:score_map
   (&optional __score_map)
   (if __score_map (setq _score_map __score_map)) _score_map)
  (:bev_h
   (&optional __bev_h)
   (if __bev_h (setq _bev_h __bev_h)) _bev_h)
  (:bev_w
   (&optional __bev_w)
   (if __bev_w (setq _bev_w __bev_w)) _bev_w)
  (:x_bound_min
   (&optional __x_bound_min)
   (if __x_bound_min (setq _x_bound_min __x_bound_min)) _x_bound_min)
  (:x_bound_max
   (&optional __x_bound_max)
   (if __x_bound_max (setq _x_bound_max __x_bound_max)) _x_bound_max)
  (:y_bound_min
   (&optional __y_bound_min)
   (if __y_bound_min (setq _y_bound_min __y_bound_min)) _y_bound_min)
  (:y_bound_max
   (&optional __y_bound_max)
   (if __y_bound_max (setq _y_bound_max __y_bound_max)) _y_bound_max)
  (:meter_per_pixel_x
   (&optional __meter_per_pixel_x)
   (if __meter_per_pixel_x (setq _meter_per_pixel_x __meter_per_pixel_x)) _meter_per_pixel_x)
  (:meter_per_pixel_y
   (&optional __meter_per_pixel_y)
   (if __meter_per_pixel_y (setq _meter_per_pixel_y __meter_per_pixel_y)) _meter_per_pixel_y)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; uint8[] _score_map
    (* 1    (length _score_map)) 4
    ;; uint16 _bev_h
    2
    ;; uint16 _bev_w
    2
    ;; float32 _x_bound_min
    4
    ;; float32 _x_bound_max
    4
    ;; float32 _y_bound_min
    4
    ;; float32 _y_bound_max
    4
    ;; float32 _meter_per_pixel_x
    4
    ;; float32 _meter_per_pixel_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; uint8[] _score_map
     (write-long (length _score_map) s)
     (princ _score_map s)
     ;; uint16 _bev_h
       (write-word _bev_h s)
     ;; uint16 _bev_w
       (write-word _bev_w s)
     ;; float32 _x_bound_min
       (sys::poke _x_bound_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x_bound_max
       (sys::poke _x_bound_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_bound_min
       (sys::poke _y_bound_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y_bound_max
       (sys::poke _y_bound_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _meter_per_pixel_x
       (sys::poke _meter_per_pixel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _meter_per_pixel_y
       (sys::poke _meter_per_pixel_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _score_map
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _score_map (make-array n :element-type :char))
     (replace _score_map buf :start2 ptr-) (incf ptr- n))
   ;; uint16 _bev_h
     (setq _bev_h (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _bev_w
     (setq _bev_w (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _x_bound_min
     (setq _x_bound_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x_bound_max
     (setq _x_bound_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_bound_min
     (setq _y_bound_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y_bound_max
     (setq _y_bound_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _meter_per_pixel_x
     (setq _meter_per_pixel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _meter_per_pixel_y
     (setq _meter_per_pixel_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::RoadSurfaceMesh :md5sum-) "434e68323d7f85a51e6378c55a1151ff")
(setf (get landmark_msgs::RoadSurfaceMesh :datatype-) "landmark_msgs/RoadSurfaceMesh")
(setf (get landmark_msgs::RoadSurfaceMesh :definition-)
      "uint8 SCORE_MAP_VALID = 1
uint8 available
uint8[] score_map
uint16 bev_h
uint16 bev_w
float32 x_bound_min
float32 x_bound_max
float32 y_bound_min
float32 y_bound_max
float32 meter_per_pixel_x
float32 meter_per_pixel_y

")



(provide :landmark_msgs/RoadSurfaceMesh "434e68323d7f85a51e6378c55a1151ff")


