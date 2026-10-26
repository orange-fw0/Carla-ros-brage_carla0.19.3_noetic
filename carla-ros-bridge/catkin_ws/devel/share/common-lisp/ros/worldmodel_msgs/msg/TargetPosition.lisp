; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude TargetPosition.msg.html

(cl:defclass <TargetPosition> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (parking_target_position
    :reader parking_target_position
    :initarg :parking_target_position
    :type worldmodel_msgs-msg:ParkingTargetPosition
    :initform (cl:make-instance 'worldmodel_msgs-msg:ParkingTargetPosition)))
)

(cl:defclass TargetPosition (<TargetPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<TargetPosition> is deprecated: use worldmodel_msgs-msg:TargetPosition instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TargetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available-val is deprecated.  Use worldmodel_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'parking_target_position-val :lambda-list '(m))
(cl:defmethod parking_target_position-val ((m <TargetPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:parking_target_position-val is deprecated.  Use worldmodel_msgs-msg:parking_target_position instead.")
  (parking_target_position m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TargetPosition>)))
    "Constants for message type '<TargetPosition>"
  '((:PARKING_TARGET_POSITION . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TargetPosition)))
    "Constants for message type 'TargetPosition"
  '((:PARKING_TARGET_POSITION . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetPosition>) ostream)
  "Serializes a message object of type '<TargetPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_target_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetPosition>) istream)
  "Deserializes a message object of type '<TargetPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_target_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetPosition>)))
  "Returns string type for a message object of type '<TargetPosition>"
  "worldmodel_msgs/TargetPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetPosition)))
  "Returns string type for a message object of type 'TargetPosition"
  "worldmodel_msgs/TargetPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetPosition>)))
  "Returns md5sum for a message object of type '<TargetPosition>"
  "924ad0be012ca2958f6df3c9aa3b893d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetPosition)))
  "Returns md5sum for a message object of type 'TargetPosition"
  "924ad0be012ca2958f6df3c9aa3b893d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetPosition>)))
  "Returns full string definition for message of type '<TargetPosition>"
  (cl:format cl:nil "uint8 PARKING_TARGET_POSITION = 1~%uint8 available~%worldmodel_msgs/ParkingTargetPosition parking_target_position~%~%================================================================================~%MSG: worldmodel_msgs/ParkingTargetPosition~%uint64 TARGET_MAP_POI = 1~%uint64 TRAVERSED_PARKING_LOTS = 2~%uint64 PARKING_OUT_POSITION = 4~%uint64 available~%worldmodel_msgs/TargetMapPOI target_map_poi~%worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots~%worldmodel_msgs/ParkingOutPosition parking_out_position~%~%================================================================================~%MSG: worldmodel_msgs/TargetMapPOI~%uint16 id~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Polygon3f position~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/TraversedParkingLot~%uint16 parking_lot_id~%perception_interface_msgs/Polygon3f parking_lot_position~%perception_interface_msgs/Point3f parking_lot_center~%perception_interface_msgs/Point3f parking_lot_entrance_center~%float64 available_inner_width~%float64 available_outter_width~%uint16 next_parking_lot_id~%uint16 previous_parking_lot_id~%float64 left_extended_distance~%float64 right_extended_distance~%float64 score~%~%================================================================================~%MSG: worldmodel_msgs/ParkingOutPosition~%uint16 source_parking_lot_id~%perception_interface_msgs/Polygon3f source_parking_lot_position~%perception_interface_msgs/Point3f target_position~%float64 target_heading_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetPosition)))
  "Returns full string definition for message of type 'TargetPosition"
  (cl:format cl:nil "uint8 PARKING_TARGET_POSITION = 1~%uint8 available~%worldmodel_msgs/ParkingTargetPosition parking_target_position~%~%================================================================================~%MSG: worldmodel_msgs/ParkingTargetPosition~%uint64 TARGET_MAP_POI = 1~%uint64 TRAVERSED_PARKING_LOTS = 2~%uint64 PARKING_OUT_POSITION = 4~%uint64 available~%worldmodel_msgs/TargetMapPOI target_map_poi~%worldmodel_msgs/TraversedParkingLot[] traversed_parking_lots~%worldmodel_msgs/ParkingOutPosition parking_out_position~%~%================================================================================~%MSG: worldmodel_msgs/TargetMapPOI~%uint16 id~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Polygon3f position~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: worldmodel_msgs/TraversedParkingLot~%uint16 parking_lot_id~%perception_interface_msgs/Polygon3f parking_lot_position~%perception_interface_msgs/Point3f parking_lot_center~%perception_interface_msgs/Point3f parking_lot_entrance_center~%float64 available_inner_width~%float64 available_outter_width~%uint16 next_parking_lot_id~%uint16 previous_parking_lot_id~%float64 left_extended_distance~%float64 right_extended_distance~%float64 score~%~%================================================================================~%MSG: worldmodel_msgs/ParkingOutPosition~%uint16 source_parking_lot_id~%perception_interface_msgs/Polygon3f source_parking_lot_position~%perception_interface_msgs/Point3f target_position~%float64 target_heading_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetPosition>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_target_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetPosition
    (cl:cons ':available (available msg))
    (cl:cons ':parking_target_position (parking_target_position msg))
))
