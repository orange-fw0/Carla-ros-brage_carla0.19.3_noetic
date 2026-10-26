; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ParkingOutPosition.msg.html

(cl:defclass <ParkingOutPosition> (roslisp-msg-protocol:ros-message)
  ((source_parking_lot_id
    :reader source_parking_lot_id
    :initarg :source_parking_lot_id
    :type cl:fixnum
    :initform 0)
   (source_parking_lot_position
    :reader source_parking_lot_position
    :initarg :source_parking_lot_position
    :type perception_interface_msgs-msg:Polygon3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Polygon3f))
   (target_position
    :reader target_position
    :initarg :target_position
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (target_heading_yaw
    :reader target_heading_yaw
    :initarg :target_heading_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass ParkingOutPosition (<ParkingOutPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingOutPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingOutPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ParkingOutPosition> is deprecated: use worldmodel_msgs-msg:ParkingOutPosition instead.")))

(cl:ensure-generic-function 'source_parking_lot_id-val :lambda-list '(m))
(cl:defmethod source_parking_lot_id-val ((m <ParkingOutPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:source_parking_lot_id-val is deprecated.  Use worldmodel_msgs-msg:source_parking_lot_id instead.")
  (source_parking_lot_id m))

(cl:ensure-generic-function 'source_parking_lot_position-val :lambda-list '(m))
(cl:defmethod source_parking_lot_position-val ((m <ParkingOutPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:source_parking_lot_position-val is deprecated.  Use worldmodel_msgs-msg:source_parking_lot_position instead.")
  (source_parking_lot_position m))

(cl:ensure-generic-function 'target_position-val :lambda-list '(m))
(cl:defmethod target_position-val ((m <ParkingOutPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:target_position-val is deprecated.  Use worldmodel_msgs-msg:target_position instead.")
  (target_position m))

(cl:ensure-generic-function 'target_heading_yaw-val :lambda-list '(m))
(cl:defmethod target_heading_yaw-val ((m <ParkingOutPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:target_heading_yaw-val is deprecated.  Use worldmodel_msgs-msg:target_heading_yaw instead.")
  (target_heading_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingOutPosition>) ostream)
  "Serializes a message object of type '<ParkingOutPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_parking_lot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_parking_lot_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'source_parking_lot_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_heading_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingOutPosition>) istream)
  "Deserializes a message object of type '<ParkingOutPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'source_parking_lot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'source_parking_lot_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'source_parking_lot_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_heading_yaw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingOutPosition>)))
  "Returns string type for a message object of type '<ParkingOutPosition>"
  "worldmodel_msgs/ParkingOutPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingOutPosition)))
  "Returns string type for a message object of type 'ParkingOutPosition"
  "worldmodel_msgs/ParkingOutPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingOutPosition>)))
  "Returns md5sum for a message object of type '<ParkingOutPosition>"
  "b814692f7a170f06545586a256496d60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingOutPosition)))
  "Returns md5sum for a message object of type 'ParkingOutPosition"
  "b814692f7a170f06545586a256496d60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingOutPosition>)))
  "Returns full string definition for message of type '<ParkingOutPosition>"
  (cl:format cl:nil "uint16 source_parking_lot_id~%perception_interface_msgs/Polygon3f source_parking_lot_position~%perception_interface_msgs/Point3f target_position~%float64 target_heading_yaw~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingOutPosition)))
  "Returns full string definition for message of type 'ParkingOutPosition"
  (cl:format cl:nil "uint16 source_parking_lot_id~%perception_interface_msgs/Polygon3f source_parking_lot_position~%perception_interface_msgs/Point3f target_position~%float64 target_heading_yaw~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingOutPosition>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'source_parking_lot_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingOutPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingOutPosition
    (cl:cons ':source_parking_lot_id (source_parking_lot_id msg))
    (cl:cons ':source_parking_lot_position (source_parking_lot_position msg))
    (cl:cons ':target_position (target_position msg))
    (cl:cons ':target_heading_yaw (target_heading_yaw msg))
))
