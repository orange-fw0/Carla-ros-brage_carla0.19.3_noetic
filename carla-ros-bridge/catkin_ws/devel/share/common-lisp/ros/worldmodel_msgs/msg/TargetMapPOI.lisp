; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude TargetMapPOI.msg.html

(cl:defclass <TargetMapPOI> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type worldmodel_msgs-msg:MapPOIType
    :initform (cl:make-instance 'worldmodel_msgs-msg:MapPOIType))
   (position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Polygon3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Polygon3f))
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass TargetMapPOI (<TargetMapPOI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetMapPOI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetMapPOI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<TargetMapPOI> is deprecated: use worldmodel_msgs-msg:TargetMapPOI instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TargetMapPOI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:id-val is deprecated.  Use worldmodel_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TargetMapPOI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:type-val is deprecated.  Use worldmodel_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TargetMapPOI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:position-val is deprecated.  Use worldmodel_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <TargetMapPOI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:distance-val is deprecated.  Use worldmodel_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetMapPOI>) ostream)
  "Serializes a message object of type '<TargetMapPOI>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetMapPOI>) istream)
  "Deserializes a message object of type '<TargetMapPOI>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetMapPOI>)))
  "Returns string type for a message object of type '<TargetMapPOI>"
  "worldmodel_msgs/TargetMapPOI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetMapPOI)))
  "Returns string type for a message object of type 'TargetMapPOI"
  "worldmodel_msgs/TargetMapPOI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetMapPOI>)))
  "Returns md5sum for a message object of type '<TargetMapPOI>"
  "c173681e5576cb584ac0a57003590dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetMapPOI)))
  "Returns md5sum for a message object of type 'TargetMapPOI"
  "c173681e5576cb584ac0a57003590dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetMapPOI>)))
  "Returns full string definition for message of type '<TargetMapPOI>"
  (cl:format cl:nil "uint16 id~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Polygon3f position~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetMapPOI)))
  "Returns full string definition for message of type 'TargetMapPOI"
  (cl:format cl:nil "uint16 id~%worldmodel_msgs/MapPOIType type~%perception_interface_msgs/Polygon3f position~%float64 distance~%~%================================================================================~%MSG: worldmodel_msgs/MapPOIType~%uint8 UNKNOWN = 0~%uint8 PARKING_LOT = 1~%uint8 HUMAN_ACCESS = 2~%uint8 DESTINATION = 3~%uint8 PARKING = 4~%uint8 BARRIER_GAP = 5~%uint8 FACILITY_ENTRANCE = 6~%uint8 FACILITY_EXIT = 7~%uint8 FACILITY_EXIT_AND_ENTRANCE = 8~%uint8 BUS_STOP = 9~%uint8 GARAGE_ENTRANCE = 10~%uint8 GARAGE_EXIT = 11~%uint8 SPEED_BUMP = 12~%uint8 CROSS_WALK = 13~%uint8 DASHED_SEGMENT = 14~%uint8 CENTRAL_CIRCLE = 15~%uint8 NO_PARKING_ZONE = 16~%uint8 ROAD_MERGE = 17~%uint8 ROAD_SPLIT = 18~%uint8 TUNNEL = 19~%uint8 TOLL_STATION = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetMapPOI>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetMapPOI>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetMapPOI
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':position (position msg))
    (cl:cons ':distance (distance msg))
))
