; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ParkingSlotCenterPoint.msg.html

(cl:defclass <ParkingSlotCenterPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point2f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point2f))
   (available_type
    :reader available_type
    :initarg :available_type
    :type perception_interface_msgs-msg:ParkingSlotTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotTypeEnum))
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (center_line_angle
    :reader center_line_angle
    :initarg :center_line_angle
    :type cl:float
    :initform 0.0)
   (charge_type
    :reader charge_type
    :initarg :charge_type
    :type perception_interface_msgs-msg:ParkingSlotChargeTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotChargeTypeEnum))
   (special_type
    :reader special_type
    :initarg :special_type
    :type perception_interface_msgs-msg:ParkingSlotSpecialTypeEnum
    :initform (cl:make-instance 'perception_interface_msgs-msg:ParkingSlotSpecialTypeEnum))
   (special_confidence
    :reader special_confidence
    :initarg :special_confidence
    :type cl:float
    :initform 0.0))
)

(cl:defclass ParkingSlotCenterPoint (<ParkingSlotCenterPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotCenterPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotCenterPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ParkingSlotCenterPoint> is deprecated: use perception_interface_msgs-msg:ParkingSlotCenterPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ParkingSlotCenterPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:position-val is deprecated.  Use perception_interface_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'available_type-val :lambda-list '(m))
(cl:defmethod available_type-val ((m <ParkingSlotCenterPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:available_type-val is deprecated.  Use perception_interface_msgs-msg:available_type instead.")
  (available_type m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <ParkingSlotCenterPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:confidence-val is deprecated.  Use perception_interface_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'center_line_angle-val :lambda-list '(m))
(cl:defmethod center_line_angle-val ((m <ParkingSlotCenterPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:center_line_angle-val is deprecated.  Use perception_interface_msgs-msg:center_line_angle instead.")
  (center_line_angle m))

(cl:ensure-generic-function 'charge_type-val :lambda-list '(m))
(cl:defmethod charge_type-val ((m <ParkingSlotCenterPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:charge_type-val is deprecated.  Use perception_interface_msgs-msg:charge_type instead.")
  (charge_type m))

(cl:ensure-generic-function 'special_type-val :lambda-list '(m))
(cl:defmethod special_type-val ((m <ParkingSlotCenterPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:special_type-val is deprecated.  Use perception_interface_msgs-msg:special_type instead.")
  (special_type m))

(cl:ensure-generic-function 'special_confidence-val :lambda-list '(m))
(cl:defmethod special_confidence-val ((m <ParkingSlotCenterPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:special_confidence-val is deprecated.  Use perception_interface_msgs-msg:special_confidence instead.")
  (special_confidence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotCenterPoint>) ostream)
  "Serializes a message object of type '<ParkingSlotCenterPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'available_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'center_line_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'charge_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'special_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'special_confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotCenterPoint>) istream)
  "Deserializes a message object of type '<ParkingSlotCenterPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'available_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'center_line_angle) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'charge_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'special_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'special_confidence) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotCenterPoint>)))
  "Returns string type for a message object of type '<ParkingSlotCenterPoint>"
  "perception_interface_msgs/ParkingSlotCenterPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotCenterPoint)))
  "Returns string type for a message object of type 'ParkingSlotCenterPoint"
  "perception_interface_msgs/ParkingSlotCenterPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotCenterPoint>)))
  "Returns md5sum for a message object of type '<ParkingSlotCenterPoint>"
  "8e47dee11eefcbac6dcb78dde2360eb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotCenterPoint)))
  "Returns md5sum for a message object of type 'ParkingSlotCenterPoint"
  "8e47dee11eefcbac6dcb78dde2360eb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotCenterPoint>)))
  "Returns full string definition for message of type '<ParkingSlotCenterPoint>"
  (cl:format cl:nil "perception_interface_msgs/Point2f position~%perception_interface_msgs/ParkingSlotTypeEnum available_type~%float32 confidence~%float32 center_line_angle~%perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type~%perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type~%float32 special_confidence~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotTypeEnum~%uint8 PARKING_SLOT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_TYPE_OCCUPIED = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum~%uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum~%uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1~%uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2~%uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3~%uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotCenterPoint)))
  "Returns full string definition for message of type 'ParkingSlotCenterPoint"
  (cl:format cl:nil "perception_interface_msgs/Point2f position~%perception_interface_msgs/ParkingSlotTypeEnum available_type~%float32 confidence~%float32 center_line_angle~%perception_interface_msgs/ParkingSlotChargeTypeEnum charge_type~%perception_interface_msgs/ParkingSlotSpecialTypeEnum special_type~%float32 special_confidence~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotTypeEnum~%uint8 PARKING_SLOT_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_TYPE_OCCUPIED = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotChargeTypeEnum~%uint8 PARKING_SLOT_CHARGE_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_CHARGE_TYPE_AVAILABLE = 1~%uint8 PARKING_SLOT_CHARGE_TYPE_NOT_AVAILABLE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/ParkingSlotSpecialTypeEnum~%uint8 PARKING_SLOT_SPECIAL_TYPE_UNKNOWN = 0~%uint8 PARKING_SLOT_SPECIAL_TYPE_NORMAL = 1~%uint8 PARKING_SLOT_SPECIAL_TYPE_CHARGE = 2~%uint8 PARKING_SLOT_SPECIAL_TYPE_MECHANICAL = 3~%uint8 PARKING_SLOT_SPECIAL_TYPE_FORBIDDEN = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotCenterPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'available_type))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'charge_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'special_type))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotCenterPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotCenterPoint
    (cl:cons ':position (position msg))
    (cl:cons ':available_type (available_type msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':center_line_angle (center_line_angle msg))
    (cl:cons ':charge_type (charge_type msg))
    (cl:cons ':special_type (special_type msg))
    (cl:cons ':special_confidence (special_confidence msg))
))
