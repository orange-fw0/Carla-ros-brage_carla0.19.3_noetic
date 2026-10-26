;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::Pillar)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'Pillar (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::PILLAR")
  (make-package "SUBMAP_MSGS::PILLAR"))

(in-package "ROS")
;;//! \htmlinclude Pillar.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass submap_msgs::Pillar
  :super ros::object
  :slots (_center _center_local _edge_points _edge_points_local _id _point_number _score _slide_distance ))

(defmethod submap_msgs::Pillar
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:center_local __center_local) (instance geometry_msgs::Point :init))
    ((:edge_points __edge_points) ())
    ((:edge_points_local __edge_points_local) ())
    ((:id __id) 0)
    ((:point_number __point_number) 0)
    ((:score __score) 0.0)
    ((:slide_distance __slide_distance) 0.0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _center_local __center_local)
   (setq _edge_points __edge_points)
   (setq _edge_points_local __edge_points_local)
   (setq _id (round __id))
   (setq _point_number (round __point_number))
   (setq _score (float __score))
   (setq _slide_distance (float __slide_distance))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:center_local
   (&rest __center_local)
   (if (keywordp (car __center_local))
       (send* _center_local __center_local)
     (progn
       (if __center_local (setq _center_local (car __center_local)))
       _center_local)))
  (:edge_points
   (&rest __edge_points)
   (if (keywordp (car __edge_points))
       (send* _edge_points __edge_points)
     (progn
       (if __edge_points (setq _edge_points (car __edge_points)))
       _edge_points)))
  (:edge_points_local
   (&rest __edge_points_local)
   (if (keywordp (car __edge_points_local))
       (send* _edge_points_local __edge_points_local)
     (progn
       (if __edge_points_local (setq _edge_points_local (car __edge_points_local)))
       _edge_points_local)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:point_number
   (&optional __point_number)
   (if __point_number (setq _point_number __point_number)) _point_number)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:slide_distance
   (&optional __slide_distance)
   (if __slide_distance (setq _slide_distance __slide_distance)) _slide_distance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; geometry_msgs/Point _center_local
    (send _center_local :serialization-length)
    ;; geometry_msgs/Point[] _edge_points
    (apply #'+ (send-all _edge_points :serialization-length)) 4
    ;; geometry_msgs/Point[] _edge_points_local
    (apply #'+ (send-all _edge_points_local :serialization-length)) 4
    ;; uint32 _id
    4
    ;; uint32 _point_number
    4
    ;; float32 _score
    4
    ;; float32 _slide_distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; geometry_msgs/Point _center_local
       (send _center_local :serialize s)
     ;; geometry_msgs/Point[] _edge_points
     (write-long (length _edge_points) s)
     (dolist (elem _edge_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _edge_points_local
     (write-long (length _edge_points_local) s)
     (dolist (elem _edge_points_local)
       (send elem :serialize s)
       )
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _point_number
       (write-long _point_number s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slide_distance
       (sys::poke _slide_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Point _center_local
     (send _center_local :deserialize buf ptr-) (incf ptr- (send _center_local :serialization-length))
   ;; geometry_msgs/Point[] _edge_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edge_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _edge_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _edge_points_local
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edge_points_local (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _edge_points_local)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _point_number
     (setq _point_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slide_distance
     (setq _slide_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get submap_msgs::Pillar :md5sum-) "618b7719eb1757eac91e139c9661a51a")
(setf (get submap_msgs::Pillar :datatype-) "submap_msgs/Pillar")
(setf (get submap_msgs::Pillar :definition-)
      "geometry_msgs/Point center
geometry_msgs/Point center_local
geometry_msgs/Point[] edge_points
geometry_msgs/Point[] edge_points_local
uint32 id
uint32 point_number
float32 score
float32 slide_distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :submap_msgs/Pillar "618b7719eb1757eac91e139c9661a51a")


