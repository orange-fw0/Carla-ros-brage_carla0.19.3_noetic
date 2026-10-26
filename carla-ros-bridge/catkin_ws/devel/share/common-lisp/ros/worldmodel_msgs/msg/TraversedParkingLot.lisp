; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude TraversedParkingLot.msg.html

(cl:defclass <TraversedParkingLot> (roslisp-msg-protocol:ros-message)
  ((parking_lot_id
    :reader parking_lot_id
    :initarg :parking_lot_id
    :type cl:fixnum
    :initform 0)
   (parking_lot_position
    :reader parking_lot_position
    :initarg :parking_lot_position
    :type perception_interface_msgs-msg:Polygon3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Polygon3f))
   (parking_lot_center
    :reader parking_lot_center
    :initarg :parking_lot_center
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (parking_lot_entrance_center
    :reader parking_lot_entrance_center
    :initarg :parking_lot_entrance_center
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (available_inner_width
    :reader available_inner_width
    :initarg :available_inner_width
    :type cl:float
    :initform 0.0)
   (available_outter_width
    :reader available_outter_width
    :initarg :available_outter_width
    :type cl:float
    :initform 0.0)
   (next_parking_lot_id
    :reader next_parking_lot_id
    :initarg :next_parking_lot_id
    :type cl:fixnum
    :initform 0)
   (previous_parking_lot_id
    :reader previous_parking_lot_id
    :initarg :previous_parking_lot_id
    :type cl:fixnum
    :initform 0)
   (left_extended_distance
    :reader left_extended_distance
    :initarg :left_extended_distance
    :type cl:float
    :initform 0.0)
   (right_extended_distance
    :reader right_extended_distance
    :initarg :right_extended_distance
    :type cl:float
    :initform 0.0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass TraversedParkingLot (<TraversedParkingLot>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TraversedParkingLot>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TraversedParkingLot)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<TraversedParkingLot> is deprecated: use worldmodel_msgs-msg:TraversedParkingLot instead.")))

(cl:ensure-generic-function 'parking_lot_id-val :lambda-list '(m))
(cl:defmethod parking_lot_id-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:parking_lot_id-val is deprecated.  Use worldmodel_msgs-msg:parking_lot_id instead.")
  (parking_lot_id m))

(cl:ensure-generic-function 'parking_lot_position-val :lambda-list '(m))
(cl:defmethod parking_lot_position-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:parking_lot_position-val is deprecated.  Use worldmodel_msgs-msg:parking_lot_position instead.")
  (parking_lot_position m))

(cl:ensure-generic-function 'parking_lot_center-val :lambda-list '(m))
(cl:defmethod parking_lot_center-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:parking_lot_center-val is deprecated.  Use worldmodel_msgs-msg:parking_lot_center instead.")
  (parking_lot_center m))

(cl:ensure-generic-function 'parking_lot_entrance_center-val :lambda-list '(m))
(cl:defmethod parking_lot_entrance_center-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:parking_lot_entrance_center-val is deprecated.  Use worldmodel_msgs-msg:parking_lot_entrance_center instead.")
  (parking_lot_entrance_center m))

(cl:ensure-generic-function 'available_inner_width-val :lambda-list '(m))
(cl:defmethod available_inner_width-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available_inner_width-val is deprecated.  Use worldmodel_msgs-msg:available_inner_width instead.")
  (available_inner_width m))

(cl:ensure-generic-function 'available_outter_width-val :lambda-list '(m))
(cl:defmethod available_outter_width-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:available_outter_width-val is deprecated.  Use worldmodel_msgs-msg:available_outter_width instead.")
  (available_outter_width m))

(cl:ensure-generic-function 'next_parking_lot_id-val :lambda-list '(m))
(cl:defmethod next_parking_lot_id-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:next_parking_lot_id-val is deprecated.  Use worldmodel_msgs-msg:next_parking_lot_id instead.")
  (next_parking_lot_id m))

(cl:ensure-generic-function 'previous_parking_lot_id-val :lambda-list '(m))
(cl:defmethod previous_parking_lot_id-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:previous_parking_lot_id-val is deprecated.  Use worldmodel_msgs-msg:previous_parking_lot_id instead.")
  (previous_parking_lot_id m))

(cl:ensure-generic-function 'left_extended_distance-val :lambda-list '(m))
(cl:defmethod left_extended_distance-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:left_extended_distance-val is deprecated.  Use worldmodel_msgs-msg:left_extended_distance instead.")
  (left_extended_distance m))

(cl:ensure-generic-function 'right_extended_distance-val :lambda-list '(m))
(cl:defmethod right_extended_distance-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:right_extended_distance-val is deprecated.  Use worldmodel_msgs-msg:right_extended_distance instead.")
  (right_extended_distance m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <TraversedParkingLot>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:score-val is deprecated.  Use worldmodel_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TraversedParkingLot>) ostream)
  "Serializes a message object of type '<TraversedParkingLot>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_lot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_lot_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_lot_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_lot_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_lot_entrance_center) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'available_inner_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'available_outter_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_parking_lot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'next_parking_lot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'previous_parking_lot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'previous_parking_lot_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_extended_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_extended_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TraversedParkingLot>) istream)
  "Deserializes a message object of type '<TraversedParkingLot>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parking_lot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'parking_lot_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_lot_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_lot_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_lot_entrance_center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'available_inner_width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'available_outter_width) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'next_parking_lot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'next_parking_lot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'previous_parking_lot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'previous_parking_lot_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_extended_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_extended_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TraversedParkingLot>)))
  "Returns string type for a message object of type '<TraversedParkingLot>"
  "worldmodel_msgs/TraversedParkingLot")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TraversedParkingLot)))
  "Returns string type for a message object of type 'TraversedParkingLot"
  "worldmodel_msgs/TraversedParkingLot")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TraversedParkingLot>)))
  "Returns md5sum for a message object of type '<TraversedParkingLot>"
  "99833757c467c39052e43667a23c3f17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TraversedParkingLot)))
  "Returns md5sum for a message object of type 'TraversedParkingLot"
  "99833757c467c39052e43667a23c3f17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TraversedParkingLot>)))
  "Returns full string definition for message of type '<TraversedParkingLot>"
  (cl:format cl:nil "uint16 parking_lot_id~%perception_interface_msgs/Polygon3f parking_lot_position~%perception_interface_msgs/Point3f parking_lot_center~%perception_interface_msgs/Point3f parking_lot_entrance_center~%float64 available_inner_width~%float64 available_outter_width~%uint16 next_parking_lot_id~%uint16 previous_parking_lot_id~%float64 left_extended_distance~%float64 right_extended_distance~%float64 score~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TraversedParkingLot)))
  "Returns full string definition for message of type 'TraversedParkingLot"
  (cl:format cl:nil "uint16 parking_lot_id~%perception_interface_msgs/Polygon3f parking_lot_position~%perception_interface_msgs/Point3f parking_lot_center~%perception_interface_msgs/Point3f parking_lot_entrance_center~%float64 available_inner_width~%float64 available_outter_width~%uint16 next_parking_lot_id~%uint16 previous_parking_lot_id~%float64 left_extended_distance~%float64 right_extended_distance~%float64 score~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TraversedParkingLot>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_lot_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_lot_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_lot_entrance_center))
     8
     8
     2
     2
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TraversedParkingLot>))
  "Converts a ROS message object to a list"
  (cl:list 'TraversedParkingLot
    (cl:cons ':parking_lot_id (parking_lot_id msg))
    (cl:cons ':parking_lot_position (parking_lot_position msg))
    (cl:cons ':parking_lot_center (parking_lot_center msg))
    (cl:cons ':parking_lot_entrance_center (parking_lot_entrance_center msg))
    (cl:cons ':available_inner_width (available_inner_width msg))
    (cl:cons ':available_outter_width (available_outter_width msg))
    (cl:cons ':next_parking_lot_id (next_parking_lot_id msg))
    (cl:cons ':previous_parking_lot_id (previous_parking_lot_id msg))
    (cl:cons ':left_extended_distance (left_extended_distance msg))
    (cl:cons ':right_extended_distance (right_extended_distance msg))
    (cl:cons ':score (score msg))
))
