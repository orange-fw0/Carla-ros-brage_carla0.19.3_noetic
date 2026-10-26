;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::TargetPosition)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'TargetPosition (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::TARGETPOSITION")
  (make-package "WORLDMODEL_MSGS::TARGETPOSITION"))

(in-package "ROS")
;;//! \htmlinclude TargetPosition.msg.html


(intern "*PARKING_TARGET_POSITION*" (find-package "WORLDMODEL_MSGS::TARGETPOSITION"))
(shadow '*PARKING_TARGET_POSITION* (find-package "WORLDMODEL_MSGS::TARGETPOSITION"))
(defconstant worldmodel_msgs::TargetPosition::*PARKING_TARGET_POSITION* 1)

(defun worldmodel_msgs::TargetPosition-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::TargetPosition::*PARKING_TARGET_POSITION*)
        (t nil)))

(defclass worldmodel_msgs::TargetPosition
  :super ros::object
  :slots (_available _parking_target_position ))

(defmethod worldmodel_msgs::TargetPosition
  (:init
   (&key
    ((:available __available) 0)
    ((:parking_target_position __parking_target_position) (instance worldmodel_msgs::ParkingTargetPosition :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _parking_target_position __parking_target_position)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:parking_target_position
   (&rest __parking_target_position)
   (if (keywordp (car __parking_target_position))
       (send* _parking_target_position __parking_target_position)
     (progn
       (if __parking_target_position (setq _parking_target_position (car __parking_target_position)))
       _parking_target_position)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; worldmodel_msgs/ParkingTargetPosition _parking_target_position
    (send _parking_target_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; worldmodel_msgs/ParkingTargetPosition _parking_target_position
       (send _parking_target_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; worldmodel_msgs/ParkingTargetPosition _parking_target_position
     (send _parking_target_position :deserialize buf ptr-) (incf ptr- (send _parking_target_position :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::TargetPosition :md5sum-) "924ad0be012ca2958f6df3c9aa3b893d")
(setf (get worldmodel_msgs::TargetPosition :datatype-) "worldmodel_msgs/TargetPosition")
(setf (get worldmodel_msgs::TargetPosition :definition-)
      "uint8 PARKING_TARGET_POSITION = 1
uint8 available
worldmodel_msgs/ParkingTargetPosition parking_target_position

================================================================================
MSG: worldmodel_msgs/ParkingTargetPosition
uint64 TARGET_MAP_POI = 1
uint64 TRAVERSED_PARKING_LOTS = 2
uint64 PARKING_OUT_POSITION = 4
uint64 available
worldmodel_msgs/TargetMapPOI target_map_poi
worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots
worldmodel_msgs/ParkingOutPosition parking_out_position

================================================================================
MSG: worldmodel_msgs/TargetMapPOI
uint16 id
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

================================================================================
MSG: worldmodel_msgs/TraversedParkingLot
uint16 parking_lot_id
perception_interface_msgs/Polygon3f parking_lot_position
perception_interface_msgs/Point3f parking_lot_center
perception_interface_msgs/Point3f parking_lot_entrance_center
float64 available_inner_width
float64 available_outter_width
uint16 next_parking_lot_id
uint16 previous_parking_lot_id
float64 left_extended_distance
float64 right_extended_distance
float64 score

================================================================================
MSG: worldmodel_msgs/ParkingOutPosition
uint16 source_parking_lot_id
perception_interface_msgs/Polygon3f source_parking_lot_position
perception_interface_msgs/Point3f target_position
float64 target_heading_yaw

")



(provide :worldmodel_msgs/TargetPosition "924ad0be012ca2958f6df3c9aa3b893d")


