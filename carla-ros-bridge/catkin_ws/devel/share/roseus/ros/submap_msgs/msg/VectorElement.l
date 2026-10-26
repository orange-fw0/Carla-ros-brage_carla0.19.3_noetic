;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::VectorElement)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'VectorElement (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::VECTORELEMENT")
  (make-package "SUBMAP_MSGS::VECTORELEMENT"))

(in-package "ROS")
;;//! \htmlinclude VectorElement.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass submap_msgs::VectorElement
  :super ros::object
  :slots (_id _type _score _slide_distance _center _center_point _points _points_local ))

(defmethod submap_msgs::VectorElement
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) (instance submap_msgs::VectorElementTypeEnum :init))
    ((:score __score) 0.0)
    ((:slide_distance __slide_distance) 0.0)
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:center_point __center_point) (instance geometry_msgs::Point :init))
    ((:points __points) ())
    ((:points_local __points_local) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type __type)
   (setq _score (float __score))
   (setq _slide_distance (float __slide_distance))
   (setq _center __center)
   (setq _center_point __center_point)
   (setq _points __points)
   (setq _points_local __points_local)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:slide_distance
   (&optional __slide_distance)
   (if __slide_distance (setq _slide_distance __slide_distance)) _slide_distance)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:center_point
   (&rest __center_point)
   (if (keywordp (car __center_point))
       (send* _center_point __center_point)
     (progn
       (if __center_point (setq _center_point (car __center_point)))
       _center_point)))
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
    ;; uint32 _id
    4
    ;; submap_msgs/VectorElementTypeEnum _type
    (send _type :serialization-length)
    ;; float32 _score
    4
    ;; float32 _slide_distance
    4
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; geometry_msgs/Point _center_point
    (send _center_point :serialization-length)
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; geometry_msgs/Point[] _points_local
    (apply #'+ (send-all _points_local :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; submap_msgs/VectorElementTypeEnum _type
       (send _type :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slide_distance
       (sys::poke _slide_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; geometry_msgs/Point _center_point
       (send _center_point :serialize s)
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
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; submap_msgs/VectorElementTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slide_distance
     (setq _slide_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Point _center_point
     (send _center_point :deserialize buf ptr-) (incf ptr- (send _center_point :serialization-length))
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

(setf (get submap_msgs::VectorElement :md5sum-) "4266346c59e853813e442fbfa7cdd405")
(setf (get submap_msgs::VectorElement :datatype-) "submap_msgs/VectorElement")
(setf (get submap_msgs::VectorElement :definition-)
      "uint32 id
submap_msgs/VectorElementTypeEnum type
float32 score
float32 slide_distance
geometry_msgs/Point center
geometry_msgs/Point center_point
geometry_msgs/Point[] points
geometry_msgs/Point[] points_local

================================================================================
MSG: submap_msgs/VectorElementTypeEnum
uint8 UNKNOWN = 0
uint8 GATE = 1
uint8 ARROW = 2
uint8 STOP_LINE = 3
uint8 DASH_LINE = 4
uint8 SPEED_BUMP = 5
uint8 ZWBRA_LINE = 6
uint8 DDLD_ROAD_BOUNDARY = 7
uint8 DDLD_LANE_BOUNDARY = 8
uint8 DDLD_STOP_LINE = 9
uint8 DDLD_CROSS_WALK = 10
uint8 DDLD_ROAD_MARK = 11
uint8 DDLD_TRAFFIC_SIGN = 12
uint8 DDLD_TRAFFIC_LIGHT = 13
uint8 value
float32 score

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :submap_msgs/VectorElement "4266346c59e853813e442fbfa7cdd405")


