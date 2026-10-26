;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::TargetMapPOI)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'TargetMapPOI (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::TARGETMAPPOI")
  (make-package "WORLDMODEL_MSGS::TARGETMAPPOI"))

(in-package "ROS")
;;//! \htmlinclude TargetMapPOI.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass worldmodel_msgs::TargetMapPOI
  :super ros::object
  :slots (_id _type _position _distance ))

(defmethod worldmodel_msgs::TargetMapPOI
  (:init
   (&key
    ((:id __id) 0)
    ((:type __type) (instance worldmodel_msgs::MapPOIType :init))
    ((:position __position) (instance perception_interface_msgs::Polygon3f :init))
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _type __type)
   (setq _position __position)
   (setq _distance (float __distance))
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
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; worldmodel_msgs/MapPOIType _type
    (send _type :serialization-length)
    ;; perception_interface_msgs/Polygon3f _position
    (send _position :serialization-length)
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; worldmodel_msgs/MapPOIType _type
       (send _type :serialize s)
     ;; perception_interface_msgs/Polygon3f _position
       (send _position :serialize s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; worldmodel_msgs/MapPOIType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; perception_interface_msgs/Polygon3f _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::TargetMapPOI :md5sum-) "c173681e5576cb584ac0a57003590dc7")
(setf (get worldmodel_msgs::TargetMapPOI :datatype-) "worldmodel_msgs/TargetMapPOI")
(setf (get worldmodel_msgs::TargetMapPOI :definition-)
      "uint16 id
worldmodel_msgs/MapPOIType type
perception_interface_msgs/Polygon3f position
float64 distance

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
MSG: perception_interface_msgs/Polygon3f
perception_interface_msgs/Point3f[] points

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :worldmodel_msgs/TargetMapPOI "c173681e5576cb584ac0a57003590dc7")


