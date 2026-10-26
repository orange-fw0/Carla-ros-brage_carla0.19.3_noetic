;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::RoadPriority)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'RoadPriority (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::ROADPRIORITY")
  (make-package "WORLDMODEL_MSGS::ROADPRIORITY"))

(in-package "ROS")
;;//! \htmlinclude RoadPriority.msg.html


(defclass worldmodel_msgs::RoadPriority
  :super ros::object
  :slots (_road_priority_type _distance _length ))

(defmethod worldmodel_msgs::RoadPriority
  (:init
   (&key
    ((:road_priority_type __road_priority_type) (instance worldmodel_msgs::RoadPriorityType :init))
    ((:distance __distance) 0.0)
    ((:length __length) 0.0)
    )
   (send-super :init)
   (setq _road_priority_type __road_priority_type)
   (setq _distance (float __distance))
   (setq _length (float __length))
   self)
  (:road_priority_type
   (&rest __road_priority_type)
   (if (keywordp (car __road_priority_type))
       (send* _road_priority_type __road_priority_type)
     (progn
       (if __road_priority_type (setq _road_priority_type (car __road_priority_type)))
       _road_priority_type)))
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; worldmodel_msgs/RoadPriorityType _road_priority_type
    (send _road_priority_type :serialization-length)
    ;; float64 _distance
    8
    ;; float64 _length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; worldmodel_msgs/RoadPriorityType _road_priority_type
       (send _road_priority_type :serialize s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; worldmodel_msgs/RoadPriorityType _road_priority_type
     (send _road_priority_type :deserialize buf ptr-) (incf ptr- (send _road_priority_type :serialization-length))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::RoadPriority :md5sum-) "1fdce789557c67fc9d2a05524d43427e")
(setf (get worldmodel_msgs::RoadPriority :datatype-) "worldmodel_msgs/RoadPriority")
(setf (get worldmodel_msgs::RoadPriority :definition-)
      "worldmodel_msgs/RoadPriorityType road_priority_type
float64 distance
float64 length

================================================================================
MSG: worldmodel_msgs/RoadPriorityType
uint16 UNKNOWN = 0
uint16 PRIORITY_ROAD = 1
uint16 PRIORITY_ROAD_END = 2
uint16 PRIORITY_AUXILIARY = 4
uint16 PRIORITY_NEXT_INTERSECTION = 8
uint16 STOP = 16
uint16 YIELD = 32
uint16 PRIORITY_OVER_ONGOING = 64
uint16 YIELD_TO_ONCOMING = 128
uint8 value

")



(provide :worldmodel_msgs/RoadPriority "1fdce789557c67fc9d2a05524d43427e")


