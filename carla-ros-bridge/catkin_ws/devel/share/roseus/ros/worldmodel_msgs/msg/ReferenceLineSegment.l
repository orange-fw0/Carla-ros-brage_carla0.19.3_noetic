;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ReferenceLineSegment)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ReferenceLineSegment (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::REFERENCELINESEGMENT")
  (make-package "WORLDMODEL_MSGS::REFERENCELINESEGMENT"))

(in-package "ROS")
;;//! \htmlinclude ReferenceLineSegment.msg.html


(defclass worldmodel_msgs::ReferenceLineSegment
  :super ros::object
  :slots (_begin_index _end_index _direction _lane_type _is_in_intersection _is_in_route ))

(defmethod worldmodel_msgs::ReferenceLineSegment
  (:init
   (&key
    ((:begin_index __begin_index) 0)
    ((:end_index __end_index) 0)
    ((:direction __direction) (instance worldmodel_msgs::LaneConnectDirection :init))
    ((:lane_type __lane_type) (instance worldmodel_msgs::LaneType :init))
    ((:is_in_intersection __is_in_intersection) nil)
    ((:is_in_route __is_in_route) nil)
    )
   (send-super :init)
   (setq _begin_index (round __begin_index))
   (setq _end_index (round __end_index))
   (setq _direction __direction)
   (setq _lane_type __lane_type)
   (setq _is_in_intersection __is_in_intersection)
   (setq _is_in_route __is_in_route)
   self)
  (:begin_index
   (&optional __begin_index)
   (if __begin_index (setq _begin_index __begin_index)) _begin_index)
  (:end_index
   (&optional __end_index)
   (if __end_index (setq _end_index __end_index)) _end_index)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:lane_type
   (&rest __lane_type)
   (if (keywordp (car __lane_type))
       (send* _lane_type __lane_type)
     (progn
       (if __lane_type (setq _lane_type (car __lane_type)))
       _lane_type)))
  (:is_in_intersection
   (&optional (__is_in_intersection :null))
   (if (not (eq __is_in_intersection :null)) (setq _is_in_intersection __is_in_intersection)) _is_in_intersection)
  (:is_in_route
   (&optional (__is_in_route :null))
   (if (not (eq __is_in_route :null)) (setq _is_in_route __is_in_route)) _is_in_route)
  (:serialization-length
   ()
   (+
    ;; uint16 _begin_index
    2
    ;; uint16 _end_index
    2
    ;; worldmodel_msgs/LaneConnectDirection _direction
    (send _direction :serialization-length)
    ;; worldmodel_msgs/LaneType _lane_type
    (send _lane_type :serialization-length)
    ;; bool _is_in_intersection
    1
    ;; bool _is_in_route
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _begin_index
       (write-word _begin_index s)
     ;; uint16 _end_index
       (write-word _end_index s)
     ;; worldmodel_msgs/LaneConnectDirection _direction
       (send _direction :serialize s)
     ;; worldmodel_msgs/LaneType _lane_type
       (send _lane_type :serialize s)
     ;; bool _is_in_intersection
       (if _is_in_intersection (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_in_route
       (if _is_in_route (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _begin_index
     (setq _begin_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _end_index
     (setq _end_index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; worldmodel_msgs/LaneConnectDirection _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; worldmodel_msgs/LaneType _lane_type
     (send _lane_type :deserialize buf ptr-) (incf ptr- (send _lane_type :serialization-length))
   ;; bool _is_in_intersection
     (setq _is_in_intersection (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_in_route
     (setq _is_in_route (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get worldmodel_msgs::ReferenceLineSegment :md5sum-) "3f509e0e69594c073549ebbc315cf1a7")
(setf (get worldmodel_msgs::ReferenceLineSegment :datatype-) "worldmodel_msgs/ReferenceLineSegment")
(setf (get worldmodel_msgs::ReferenceLineSegment :definition-)
      "uint16 begin_index
uint16 end_index
worldmodel_msgs/LaneConnectDirection direction
worldmodel_msgs/LaneType lane_type
bool is_in_intersection
bool is_in_route

================================================================================
MSG: worldmodel_msgs/LaneConnectDirection
uint8 NORMAL = 0
uint8 SPLIT_TO_LEFT = 1
uint8 SPLIT_TO_RIGHT = 2
uint8 MERGE_FROM_LEFT = 3
uint8 MERGE_FROM_RIGHT = 4
uint8 value

================================================================================
MSG: worldmodel_msgs/LaneType
uint8 UNKNOWN = 0
uint8 NORMAL = 1
uint8 VIRTUAL = 2
uint8 PARKING = 3
uint8 ACCELERATE = 4
uint8 DECELERATE = 5
uint8 BUS = 6
uint8 EMERGENCY = 7
uint8 ACCELERATE_DECELERATE = 8
uint8 LEFT_TURN_WAITTING_AREA = 9
uint8 NON_MOTOR = 10
uint8 value

")



(provide :worldmodel_msgs/ReferenceLineSegment "3f509e0e69594c073549ebbc315cf1a7")


