; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotPoint.msg.html

(cl:defclass <ParkingSlotPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point2f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point2f))
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

(cl:defclass ParkingSlotPoint (<ParkingSlotPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotPoint> is deprecated: use perception_interface_msgs-msg:ParkingSlotPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ParkingSlotPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position-val is deprecated.  Use perception_interface_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ParkingSlotPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:confidence-val is deprecated.  Use perception_interface_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ParkingSlotPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:type-val is deprecated.  Use perception_interface_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotPoint>) ostream)
  "Serializes a message object of type '<ParkingSlotPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotPoint>) istream)
  "Deserializes a message object of type '<ParkingSlotPoint>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotPoint>)))
  "Returns string type for a message object of type '<ParkingSlotPoint>"
  "perception_interface_msgs/ParkingSlotPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotPoint)))
  "Returns string type for a message object of type 'ParkingSlotPoint"
  "perception_interface_msgs/ParkingSlotPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotPoint>)))
  "Returns md5sum for a message object of type '<ParkingSlotPoint>"
  "d5acb41d9c7e2c55fbfad9480dc898e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotPoint)))
  "Returns md5sum for a message object of type 'ParkingSlotPoint"
  "d5acb41d9c7e2c55fbfad9480dc898e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotPoint>)))
  "Returns full string definition for message of type '<ParkingSlotPoint>"
  (cl:format cl:nil "perception_interface_msgs/Point2f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotPoint)))
  "Returns full string definition for message of type 'ParkingSlotPoint"
  (cl:format cl:nil "perception_interface_msgs/Point2f position~%float32 confidence~%perception_interface_msgs/ParkingSlotPointTypeEnum type~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotPointTypeEnum~%uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_POINT_TYPE_REAL = 1~%uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotPoint
    (cl:cons ':position (position msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':type (type msg))
))
