; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ParkingTargetPosition.msg.html

(cl:defclass <ParkingTargetPosition> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0)
   (target_map_poi
    :reader target_map_poi
    :initarg :target_map_poi
    :type worldmodel_msgs-msg:TargetMapPOI
    :initform (cl:make-instance 'worldmodel_msgs-msg:TargetMapPOI))
   (traversed_parking_lots
    :reader traversed_parking_lots
    :initarg :traversed_parking_lots
    :type (cl:vector worldmodel_msgs-msg:TraversedParkingLot)
   :initform (cl:make-array 0 :element-type 'worldmodel_msgs-msg:TraversedParkingLot :initial-element (cl:make-instance 'worldmodel_msgs-msg:TraversedParkingLot)))
   (parking_out_position
    :reader parking_out_position
    :initarg :parking_out_position
    :type worldmodel_msgs-msg:ParkingOutPosition
    :initform (cl:make-instance 'worldmodel_msgs-msg:ParkingOutPosition)))
)

(cl:defclass ParkingTargetPosition (<ParkingTargetPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingTargetPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingTargetPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ParkingTargetPosition> is deprecated: use worldmodel_msgs-msg:ParkingTargetPosition instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ParkingTargetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'target_map_poi-val :lambda-list '(m))
(cl:defmethod target_map_poi-val ((m <ParkingTargetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:target_map_poi-val is deprecated.  Use worldmodel_msgs-msg:target_map_poi instead.")
  (target_map_poi m))

(cl:ensure-generic-function 'traversed_parking_lots-val :lambda-list '(m))
(cl:defmethod traversed_parking_lots-val ((m <ParkingTargetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:traversed_parking_lots-val is deprecated.  Use worldmodel_msgs-msg:traversed_parking_lots instead.")
  (traversed_parking_lots m))

(cl:ensure-generic-function 'parking_out_position-val :lambda-list '(m))
(cl:defmethod parking_out_position-val ((m <ParkingTargetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:parking_out_position-val is deprecated.  Use worldmodel_msgs-msg:parking_out_position instead.")
  (parking_out_position m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingTargetPosition>)))
    "Constants for message type '<ParkingTargetPosition>"
  '((:TARGET_MAP_POI . 1)
    (:TRAVERSED_PARKING_LOTS . 2)
    (:PARKING_OUT_POSITION . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingTargetPosition)))
    "Constants for message type 'ParkingTargetPosition"
  '((:TARGET_MAP_POI . 1)
    (:TRAVERSED_PARKING_LOTS . 2)
    (:PARKING_OUT_POSITION . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingTargetPosition>) ostream)
  "Serializes a message object of type '<ParkingTargetPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_map_poi) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traversed_parking_lots))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traversed_parking_lots))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_out_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingTargetPosition>) istream)
  "Deserializes a message object of type '<ParkingTargetPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_map_poi) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traversed_parking_lots) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traversed_parking_lots)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'worldmodel_msgs-msg:TraversedParkingLot))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_out_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingTargetPosition>)))
  "Returns string type for a message object of type '<ParkingTargetPosition>"
  "worldmodel_msgs/ParkingTargetPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingTargetPosition)))
  "Returns string type for a message object of type 'ParkingTargetPosition"
  "worldmodel_msgs/ParkingTargetPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingTargetPosition>)))
  "Returns md5sum for a message object of type '<ParkingTargetPosition>"
  "50c369e5f394877d68504d4f1d02c447")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingTargetPosition)))
  "Returns md5sum for a message object of type 'ParkingTargetPosition"
  "50c369e5f394877d68504d4f1d02c447")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingTargetPosition>)))
  "Returns full string definition for message of type '<ParkingTargetPosition>"
  (cl:format cl:nil "uint64 TARGET_MAP_POI = 1~%uint64 TRAVERSED_PARKING_LOTS = 2~%uint64 PARKING_OUT_POSITION = 4~%uint64 available~%worldmodel_msgs/TargetMapPOI target_map_poi~%worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots~%worldmodel_msgs/ParkingOutPosition parking_out_position~%~%================================================================================~%MSG: worldmodel_msgs/TargetMapPOI~%uint16 id~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Polygon3f position~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/TraversedParkingLot~%uint16 parking_lot_id~%perception_interface_msgs/Polygon3f parking_lot_position~%perception_interface_msgs/Point3f parking_lot_center~%perception_interface_msgs/Point3f parking_lot_entrance_center~%float64 available_inner_width~%float64 available_outter_width~%uint16 next_parking_lot_id~%uint16 previous_parking_lot_id~%float64 left_extended_distance~%float64 right_extended_distance~%float64 score~%~%================================================================================~%MSG: worldmodel_msgs/ParkingOutPosition~%uint16 source_parking_lot_id~%perception_interface_msgs/Polygon3f source_parking_lot_position~%perception_interface_msgs/Point3f target_position~%float64 target_heading_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingTargetPosition)))
  "Returns full string definition for message of type 'ParkingTargetPosition"
  (cl:format cl:nil "uint64 TARGET_MAP_POI = 1~%uint64 TRAVERSED_PARKING_LOTS = 2~%uint64 PARKING_OUT_POSITION = 4~%uint64 available~%worldmodel_msgs/TargetMapPOI target_map_poi~%worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots~%worldmodel_msgs/ParkingOutPosition parking_out_position~%~%================================================================================~%MSG: worldmodel_msgs/TargetMapPOI~%uint16 id~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Polygon3f position~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/TraversedParkingLot~%uint16 parking_lot_id~%perception_interface_msgs/Polygon3f parking_lot_position~%perception_interface_msgs/Point3f parking_lot_center~%perception_interface_msgs/Point3f parking_lot_entrance_center~%float64 available_inner_width~%float64 available_outter_width~%uint16 next_parking_lot_id~%uint16 previous_parking_lot_id~%float64 left_extended_distance~%float64 right_extended_distance~%float64 score~%~%================================================================================~%MSG: worldmodel_msgs/ParkingOutPosition~%uint16 source_parking_lot_id~%perception_interface_msgs/Polygon3f source_parking_lot_position~%perception_interface_msgs/Point3f target_position~%float64 target_heading_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingTargetPosition>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_map_poi))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traversed_parking_lots) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_out_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingTargetPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingTargetPosition
    (cl:cons ':available (available msg))
    (cl:cons ':target_map_poi (target_map_poi msg))
    (cl:cons ':traversed_parking_lots (traversed_parking_lots msg))
    (cl:cons ':parking_out_position (parking_out_position msg))
))
