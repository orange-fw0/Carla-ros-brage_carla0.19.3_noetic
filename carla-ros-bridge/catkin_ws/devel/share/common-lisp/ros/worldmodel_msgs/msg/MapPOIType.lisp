; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude MapPOIType.msg.html

(cl:defclass <MapPOIType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MapPOIType (<MapPOIType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapPOIType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapPOIType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<MapPOIType> is deprecated: use worldmodel_msgs-msg:MapPOIType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MapPOIType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:value-val is deprecated.  Use worldmodel_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MapPOIType>)))
    "Constants for message type '<MapPOIType>"
  '((:UNKNOWN . 0)
    (:PARKING_LOT . 1)
    (:HUMAN_ACCESS . 2)
    (:DESTINATION . 3)
    (:PARKING . 4)
    (:BARRIER_GAP . 5)
    (:FACILITY_ENTRANCE . 6)
    (:FACILITY_EXIT . 7)
    (:FACILITY_EXIT_AND_ENTRANCE . 8)
    (:BUS_STOP . 9)
    (:GARAGE_ENTRANCE . 10)
    (:GARAGE_EXIT . 11)
    (:SPEED_BUMP . 12)
    (:CROSS_WALK . 13)
    (:DASHED_SEGMENT . 14)
    (:CENTRAL_CIRCLE . 15)
    (:NO_PARKING_ZONE . 16)
    (:ROAD_MERGE . 17)
    (:ROAD_SPLIT . 18)
    (:TUNNEL . 19)
    (:TOLL_STATION . 20))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MapPOIType)))
    "Constants for message type 'MapPOIType"
  '((:UNKNOWN . 0)
    (:PARKING_LOT . 1)
    (:HUMAN_ACCESS . 2)
    (:DESTINATION . 3)
    (:PARKING . 4)
    (:BARRIER_GAP . 5)
    (:FACILITY_ENTRANCE . 6)
    (:FACILITY_EXIT . 7)
    (:FACILITY_EXIT_AND_ENTRANCE . 8)
    (:BUS_STOP . 9)
    (:GARAGE_ENTRANCE . 10)
    (:GARAGE_EXIT . 11)
    (:SPEED_BUMP . 12)
    (:CROSS_WALK . 13)
    (:DASHED_SEGMENT . 14)
    (:CENTRAL_CIRCLE . 15)
    (:NO_PARKING_ZONE . 16)
    (:ROAD_MERGE . 17)
    (:ROAD_SPLIT . 18)
    (:TUNNEL . 19)
    (:TOLL_STATION . 20))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapPOIType>) ostream)
  "Serializes a message object of type '<MapPOIType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapPOIType>) istream)
  "Deserializes a message object of type '<MapPOIType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapPOIType>)))
  "Returns string type for a message object of type '<MapPOIType>"
  "worldmodel_msgs/MapPOIType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapPOIType)))
  "Returns string type for a message object of type 'MapPOIType"
  "worldmodel_msgs/MapPOIType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapPOIType>)))
  "Returns md5sum for a message object of type '<MapPOIType>"
  "f56ebaef71ba28f4ef78c14b0e5d086f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapPOIType)))
  "Returns md5sum for a message object of type 'MapPOIType"
  "f56ebaef71ba28f4ef78c14b0e5d086f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapPOIType>)))
  "Returns full string definition for message of type '<MapPOIType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapPOIType)))
  "Returns full string definition for message of type 'MapPOIType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapPOIType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapPOIType>))
  "Converts a ROS message object to a list"
  (cl:list 'MapPOIType
    (cl:cons ':value (value msg))
))
