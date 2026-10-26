;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::ParkingSlot)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'ParkingSlot (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::PARKINGSLOT")
  (make-package "SUBMAP_MSGS::PARKINGSLOT"))

(in-package "ROS")
;;//! \htmlinclude ParkingSlot.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass submap_msgs::ParkingSlot
  :super ros::object
  :slots (_points _points_local _timestamp _id _score _slide_distance ))

(defmethod submap_msgs::ParkingSlot
  (:init
   (&key
    ((:points __points) ())
    ((:points_local __points_local) ())
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:score __score) 0.0)
    ((:slide_distance __slide_distance) 0.0)
    )
   (send-super :init)
   (setq _points __points)
   (setq _points_local __points_local)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _score (float __score))
   (setq _slide_distance (float __slide_distance))
   self)
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
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:slide_distance
   (&optional __slide_distance)
   (if __slide_distance (setq _slide_distance __slide_distance)) _slide_distance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; geometry_msgs/Point[] _points_local
    (apply #'+ (send-all _points_local :serialization-length)) 4
    ;; float64 _timestamp
    8
    ;; uint32 _id
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
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _id
       (write-long _id s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slide_distance
       (sys::poke _slide_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slide_distance
     (setq _slide_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get submap_msgs::ParkingSlot :md5sum-) "c48dc675186df97106798253a657541d")
(setf (get submap_msgs::ParkingSlot :datatype-) "submap_msgs/ParkingSlot")
(setf (get submap_msgs::ParkingSlot :definition-)
      "geometry_msgs/Point[] points
geometry_msgs/Point[] points_local
float64 timestamp
uint32 id
float32 score
float32 slide_distance

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :submap_msgs/ParkingSlot "c48dc675186df97106798253a657541d")


