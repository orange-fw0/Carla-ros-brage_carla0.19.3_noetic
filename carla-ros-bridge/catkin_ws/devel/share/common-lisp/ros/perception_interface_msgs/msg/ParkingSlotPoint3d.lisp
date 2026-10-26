; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotPoint3d.msg.html

(cl:defclass <ParkingSlotPoint3d> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type perception_interface_msgs-msg:ParkingSlotPointTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotPointTypeEnum)))
)

(cl:defclass ParkingSlotPoint3d (<ParkingSlotPoint3d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotPoint3d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotPoint3d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotPoint3d> is deprecated: use perception_interface_msgs-msg:ParkingSlotPoint3d instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ParkingSlotPoint3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position-val is deprecated.  Use perception_interface_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ParkingSlotPoint3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:confidence-val is deprecated.  Use perception_interface_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParkingSlotPoint3d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type-val is deprecated.  Use perception_interface_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotPoint3d>) ostream)
  "Serializes a message object of type '<ParkingSlotPoint3d>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotPoint3d>) istream)
  "Deserializes a message object of type '<ParkingSlotPoint3d>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotPoint3d>)))
  "Returns string type for a message object of type '<ParkingSlotPoint3d>"
  "perception_interface_msgs/ParkingSlotPoint3d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotPoint3d)))
  "Returns string type for a message object of type 'ParkingSlotPoint3d"
  "perception_interface_msgs/ParkingSlotPoint3d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotPoint3d>)))
  "Returns md5sum for a message object of type '<ParkingSlotPoint3d>"
  "fe19c303ecb74963763c24fdf3320429")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotPoint3d)))
  "Returns md5sum for a message object of type 'ParkingSlotPoint3d"
  "fe19c303ecb74963763c24fdf3320429")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotPoint3d>)))
  "Returns full string definition for message of type '<ParkingSlotPoint3d>"
  (cl:format cl:nil "perception_interface_msgs/Point3f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotPoint3d)))
  "Returns full string definition for message of type 'ParkingSlotPoint3d"
  (cl:format cl:nil "perception_interface_msgs/Point3f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotPoint3d>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotPoint3d>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotPoint3d
    (cl:cons ':position (position msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':type (type msg))
))
