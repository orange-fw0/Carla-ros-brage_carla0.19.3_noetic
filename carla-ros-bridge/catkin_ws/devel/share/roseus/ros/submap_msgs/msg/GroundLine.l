;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::GroundLine)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'GroundLine (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::GROUNDLINE")
  (make-package "SUBMAP_MSGS::GROUNDLINE"))

(in-package "ROS")
;;//! \htmlinclude GroundLine.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass submap_msgs::GroundLine
  :super ros::object
  :slots (_start _end _map_points _raw_points _id _type _score _slide_distance ))

(defmethod submap_msgs::GroundLine
  (:init
   (&key
    ((:start __start) (instance geometry_msgs::Point :init))
    ((:end __end) (instance geometry_msgs::Point :init))
    ((:map_points __map_points) ())
    ((:raw_points __raw_points) ())
    ((:id __id) 0)
    ((:type __type) (instance submap_msgs::GroundLineType :init))
    ((:score __score) 0.0)
    ((:slide_distance __slide_distance) 0.0)
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
   (setq _map_points __map_points)
   (setq _raw_points __raw_points)
   (setq _id (round __id))
   (setq _type __type)
   (setq _score (float __score))
   (setq _slide_distance (float __slide_distance))
   self)
  (:start
   (&rest __start)
   (if (keywordp (car __start))
       (send* _start __start)
     (progn
       (if __start (setq _start (car __start)))
       _start)))
  (:end
   (&rest __end)
   (if (keywordp (car __end))
       (send* _end __end)
     (progn
       (if __end (setq _end (car __end)))
       _end)))
  (:map_points
   (&rest __map_points)
   (if (keywordp (car __map_points))
       (send* _map_points __map_points)
     (progn
       (if __map_points (setq _map_points (car __map_points)))
       _map_points)))
  (:raw_points
   (&rest __raw_points)
   (if (keywordp (car __raw_points))
       (send* _raw_points __raw_points)
     (progn
       (if __raw_points (setq _raw_points (car __raw_points)))
       _raw_points)))
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
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _start
    (send _start :serialization-length)
    ;; geometry_msgs/Point _end
    (send _end :serialization-length)
    ;; geometry_msgs/Point[] _map_points
    (apply #'+ (send-all _map_points :serialization-length)) 4
    ;; geometry_msgs/Point[] _raw_points
    (apply #'+ (send-all _raw_points :serialization-length)) 4
    ;; uint32 _id
    4
    ;; submap_msgs/GroundLineType _type
    (send _type :serialization-length)
    ;; float32 _score
    4
    ;; float32 _slide_distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _start
       (send _start :serialize s)
     ;; geometry_msgs/Point _end
       (send _end :serialize s)
     ;; geometry_msgs/Point[] _map_points
     (write-long (length _map_points) s)
     (dolist (elem _map_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _raw_points
     (write-long (length _raw_points) s)
     (dolist (elem _raw_points)
       (send elem :serialize s)
       )
     ;; uint32 _id
       (write-long _id s)
     ;; submap_msgs/GroundLineType _type
       (send _type :serialize s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slide_distance
       (sys::poke _slide_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _start
     (send _start :deserialize buf ptr-) (incf ptr- (send _start :serialization-length))
   ;; geometry_msgs/Point _end
     (send _end :deserialize buf ptr-) (incf ptr- (send _end :serialization-length))
   ;; geometry_msgs/Point[] _map_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _map_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _raw_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _raw_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _raw_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; submap_msgs/GroundLineType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slide_distance
     (setq _slide_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get submap_msgs::GroundLine :md5sum-) "77d899539297858d39b0f3e9ac37f606")
(setf (get submap_msgs::GroundLine :datatype-) "submap_msgs/GroundLine")
(setf (get submap_msgs::GroundLine :definition-)
      "geometry_msgs/Point start
geometry_msgs/Point end
geometry_msgs/Point[] map_points
geometry_msgs/Point[] raw_points
uint32 id
submap_msgs/GroundLineType type
float32 score
float32 slide_distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: submap_msgs/GroundLineType
uint8 UNKNOWN = 0
uint8 WALL = 1
uint8 PILLAR = 2
uint8 FENCE = 3
uint8 STEP = 4
uint8 SPECIAL = 5
uint8 PARKING_GATE = 6
uint8 value

")



(provide :submap_msgs/GroundLine "77d899539297858d39b0f3e9ac37f606")


