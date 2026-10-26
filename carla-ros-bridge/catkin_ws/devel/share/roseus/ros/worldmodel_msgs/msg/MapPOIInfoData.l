;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::MapPOIInfoData)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'MapPOIInfoData (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::MAPPOIINFODATA")
  (make-package "WORLDMODEL_MSGS::MAPPOIINFODATA"))

(in-package "ROS")
;;//! \htmlinclude MapPOIInfoData.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::MapPOIInfoData
  :super ros::object
  :slots (_distance _length _type _key_points_enu ))

(defmethod worldmodel_msgs::MapPOIInfoData
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:length __length) 0.0)
    ((:type __type) (instance worldmodel_msgs::MapPOIType :init))
    ((:key_points_enu __key_points_enu) ())
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _length (float __length))
   (setq _type __type)
   (setq _key_points_enu __key_points_enu)
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:key_points_enu
   (&rest __key_points_enu)
   (if (keywordp (car __key_points_enu))
       (send* _key_points_enu __key_points_enu)
     (progn
       (if __key_points_enu (setq _key_points_enu (car __key_points_enu)))
       _key_points_enu)))
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _length
    8
    ;; worldmodel_msgs/MapPOIType _type
    (send _type :serialization-length)
    ;; perception_interface_msgs/Point3f[] _key_points_enu
    (apply #'+ (send-all _key_points_enu :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; worldmodel_msgs/MapPOIType _type
       (send _type :serialize s)
     ;; perception_interface_msgs/Point3f[] _key_points_enu
     (write-long (length _key_points_enu) s)
     (dolist (elem _key_points_enu)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; worldmodel_msgs/MapPOIType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; perception_interface_msgs/Point3f[] _key_points_enu
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _key_points_enu (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _key_points_enu)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get worldmodel_msgs::MapPOIInfoData :md5sum-) "2a272a26a543b9830a26c84ebf4afbde")
(setf (get worldmodel_msgs::MapPOIInfoData :datatype-) "worldmodel_msgs/MapPOIInfoData")
(setf (get worldmodel_msgs::MapPOIInfoData :definition-)
      "float64 distance
float64 length
worldmodel_msgs/MapPOIType type
perception_interface_msgs/Point3f[] key_points_enu

================================================================================
MSG: worldmodel_msgs/MapPOIType
uint8 UNKNOWN = 0
uint8 PARKING_LOT = 1
uint8 HUMAN_ACCESS = 2
uint8 DESTINATION = 3
uint8 PARKING = 4
uint8 BARRIER_GAP = 5
uint8 FACILITY_ENTRANCE = 6
uint8 FACILITY_EXIT = 7
uint8 FACILITY_EXIT_AND_ENTRANCE = 8
uint8 BUS_STOP = 9
uint8 GARAGE_ENTRANCE = 10
uint8 GARAGE_EXIT = 11
uint8 SPEED_BUMP = 12
uint8 CROSS_WALK = 13
uint8 DASHED_SEGMENT = 14
uint8 CENTRAL_CIRCLE = 15
uint8 NO_PARKING_ZONE = 16
uint8 ROAD_MERGE = 17
uint8 ROAD_SPLIT = 18
uint8 TUNNEL = 19
uint8 TOLL_STATION = 20
uint8 value

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/MapPOIInfoData "2a272a26a543b9830a26c84ebf4afbde")


