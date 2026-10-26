;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::WayPointData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'WayPointData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::WAYPOINTDATA")
  (make-package "WORLDMODEL_MSGS::WAYPOINTDATA"))

(in-package "ROS")
;;//! \htmlinclude WayPointData.msg.html


(defclass worldmodel_msgs::WayPointData
  :super ros::object
  :slots (_way_point_type _longtitude _latitude _altitude ))

(defmethod worldmodel_msgs::WayPointData
  (:init
   (&key
    ((:way_point_type __way_point_type) (instance worldmodel_msgs::WayPointType :init))
    ((:longtitude __longtitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:altitude __altitude) 0.0)
    )
   (send-super :init)
   (setq _way_point_type __way_point_type)
   (setq _longtitude (float __longtitude))
   (setq _latitude (float __latitude))
   (setq _altitude (float __altitude))
   self)
  (:way_point_type
   (&rest __way_point_type)
   (if (keywordp (car __way_point_type))
       (send* _way_point_type __way_point_type)
     (progn
       (if __way_point_type (setq _way_point_type (car __way_point_type)))
       _way_point_type)))
  (:longtitude
   (&optional __longtitude)
   (if __longtitude (setq _longtitude __longtitude)) _longtitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; worldmodel_msgs/WayPointType _way_point_type
    (send _way_point_type :serialization-length)
    ;; float64 _longtitude
    8
    ;; float64 _latitude
    8
    ;; float64 _altitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; worldmodel_msgs/WayPointType _way_point_type
       (send _way_point_type :serialize s)
     ;; float64 _longtitude
       (sys::poke _longtitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; worldmodel_msgs/WayPointType _way_point_type
     (send _way_point_type :deserialize buf ptr-) (incf ptr- (send _way_point_type :serialization-length))
   ;; float64 _longtitude
     (setq _longtitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::WayPointData :md5sum-) "c143696712cc66370c1d8d07f7340403")
(setf (get worldmodel_msgs::WayPointData :datatype-) "worldmodel_msgs/WayPointData")
(setf (get worldmodel_msgs::WayPointData :definition-)
      "worldmodel_msgs/WayPointType way_point_type
float64 longtitude
float64 latitude
float64 altitude

================================================================================
MSG: worldmodel_msgs/WayPointType
uint8 NORMAL_WAYPOINT = 1
uint8 INTERSECTION_WAYPOINT = 2
uint8 RAMP_WAYPOINT = 4
uint8 value

")



(provide :worldmodel_msgs/WayPointData "c143696712cc66370c1d8d07f7340403")


