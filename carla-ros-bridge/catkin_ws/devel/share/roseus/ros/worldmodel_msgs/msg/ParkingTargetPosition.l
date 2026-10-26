;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ParkingTargetPosition)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ParkingTargetPosition (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::PARKINGTARGETPOSITION")
  (make-package "WORLDMODEL_MSGS::PARKINGTARGETPOSITION"))

(in-package "ROS")
;;//! \htmlinclude ParkingTargetPosition.msg.html


(intern "*TARGET_MAP_POI*" (find-package "WORLDMODEL_MSGS::PARKINGTARGETPOSITION"))
(shadow '*TARGET_MAP_POI* (find-package "WORLDMODEL_MSGS::PARKINGTARGETPOSITION"))
(defconstant worldmodel_msgs::ParkingTargetPosition::*TARGET_MAP_POI* 1)
(intern "*TRAVERSED_PARKING_LOTS*" (find-package "WORLDMODEL_MSGS::PARKINGTARGETPOSITION"))
(shadow '*TRAVERSED_PARKING_LOTS* (find-package "WORLDMODEL_MSGS::PARKINGTARGETPOSITION"))
(defconstant worldmodel_msgs::ParkingTargetPosition::*TRAVERSED_PARKING_LOTS* 2)
(intern "*PARKING_OUT_POSITION*" (find-package "WORLDMODEL_MSGS::PARKINGTARGETPOSITION"))
(shadow '*PARKING_OUT_POSITION* (find-package "WORLDMODEL_MSGS::PARKINGTARGETPOSITION"))
(defconstant worldmodel_msgs::ParkingTargetPosition::*PARKING_OUT_POSITION* 4)

(defun worldmodel_msgs::ParkingTargetPosition-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::ParkingTargetPosition::*TARGET_MAP_POI*)
        ((= const 2) 'worldmodel_msgs::ParkingTargetPosition::*TRAVERSED_PARKING_LOTS*)
        ((= const 4) 'worldmodel_msgs::ParkingTargetPosition::*PARKING_OUT_POSITION*)
        (t nil)))

(defclass worldmodel_msgs::ParkingTargetPosition
  :super ros::object
  :slots (_available _target_map_poi _traversed_parking_lots _parking_out_position ))

(defmethod worldmodel_msgs::ParkingTargetPosition
  (:init
   (&key
    ((:available __available) 0)
    ((:target_map_poi __target_map_poi) (instance worldmodel_msgs::TargetMapPOI :init))
    ((:traversed_parking_lots __traversed_parking_lots) ())
    ((:parking_out_position __parking_out_position) (instance worldmodel_msgs::ParkingOutPosition :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _target_map_poi __target_map_poi)
   (setq _traversed_parking_lots __traversed_parking_lots)
   (setq _parking_out_position __parking_out_position)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:target_map_poi
   (&rest __target_map_poi)
   (if (keywordp (car __target_map_poi))
       (send* _target_map_poi __target_map_poi)
     (progn
       (if __target_map_poi (setq _target_map_poi (car __target_map_poi)))
       _target_map_poi)))
  (:traversed_parking_lots
   (&rest __traversed_parking_lots)
   (if (keywordp (car __traversed_parking_lots))
       (send* _traversed_parking_lots __traversed_parking_lots)
     (progn
       (if __traversed_parking_lots (setq _traversed_parking_lots (car __traversed_parking_lots)))
       _traversed_parking_lots)))
  (:parking_out_position
   (&rest __parking_out_position)
   (if (keywordp (car __parking_out_position))
       (send* _parking_out_position __parking_out_position)
     (progn
       (if __parking_out_position (setq _parking_out_position (car __parking_out_position)))
       _parking_out_position)))
  (:serialization-length
   ()
   (+
    ;; uint64 _available
    8
    ;; worldmodel_msgs/TargetMapPOI _target_map_poi
    (send _target_map_poi :serialization-length)
    ;; worldmodel_msgs/TraversedParkingLot[] _traversed_parking_lots
    (apply #'+ (send-all _traversed_parking_lots :serialization-length)) 4
    ;; worldmodel_msgs/ParkingOutPosition _parking_out_position
    (send _parking_out_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _available
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _available (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _available) (= (length (_available . bv)) 2)) ;; bignum
              (write-long (ash (elt (_available . bv) 0) 0) s)
              (write-long (ash (elt (_available . bv) 1) -1) s))
             ((and (class _available) (= (length (_available . bv)) 1)) ;; big1
              (write-long (elt (_available . bv) 0) s)
              (write-long (if (>= _available 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _available s)(write-long (if (>= _available 0) 0 #xffffffff) s)))
     ;; worldmodel_msgs/TargetMapPOI _target_map_poi
       (send _target_map_poi :serialize s)
     ;; worldmodel_msgs/TraversedParkingLot[] _traversed_parking_lots
     (write-long (length _traversed_parking_lots) s)
     (dolist (elem _traversed_parking_lots)
       (send elem :serialize s)
       )
     ;; worldmodel_msgs/ParkingOutPosition _parking_out_position
       (send _parking_out_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _available
     
#+(or :alpha :irix6 :x86_64)
      (setf _available (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _available (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; worldmodel_msgs/TargetMapPOI _target_map_poi
     (send _target_map_poi :deserialize buf ptr-) (incf ptr- (send _target_map_poi :serialization-length))
   ;; worldmodel_msgs/TraversedParkingLot[] _traversed_parking_lots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _traversed_parking_lots (let (r) (dotimes (i n) (push (instance worldmodel_msgs::TraversedParkingLot :init) r)) r))
     (dolist (elem- _traversed_parking_lots)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; worldmodel_msgs/ParkingOutPosition _parking_out_position
     (send _parking_out_position :deserialize buf ptr-) (incf ptr- (send _parking_out_position :serialization-length))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ParkingTargetPosition :md5sum-) "50c369e5f394877d68504d4f1d02c447")
(setf (get worldmodel_msgs::ParkingTargetPosition :datatype-) "worldmodel_msgs/ParkingTargetPosition")
(setf (get worldmodel_msgs::ParkingTargetPosition :definition-)
      "uint64 TARGET_MAP_POI = 1
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



(provide :worldmodel_msgs/ParkingTargetPosition "50c369e5f394877d68504d4f1d02c447")


