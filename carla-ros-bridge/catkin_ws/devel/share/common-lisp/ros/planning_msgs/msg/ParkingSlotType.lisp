; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude ParkingSlotType.msg.html

(cl:defclass <ParkingSlotType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ParkingSlotType (<ParkingSlotType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSlotType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSlotType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<ParkingSlotType> is deprecated: use planning_msgs-msg:ParkingSlotType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <ParkingSlotType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:value-val is deprecated.  Use planning_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSlotType>)))
    "Constants for message type '<ParkingSlotType>"
  '((:UNKNOWN . 0)
    (:PERPENDICULAR . 1)
    (:PARALLEL . 2)
    (:OBLIQUE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSlotType)))
    "Constants for message type 'ParkingSlotType"
  '((:UNKNOWN . 0)
    (:PERPENDICULAR . 1)
    (:PARALLEL . 2)
    (:OBLIQUE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSlotType>) ostream)
  "Serializes a message object of type '<ParkingSlotType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSlotType>) istream)
  "Deserializes a message object of type '<ParkingSlotType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSlotType>)))
  "Returns string type for a message object of type '<ParkingSlotType>"
  "planning_msgs/ParkingSlotType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSlotType)))
  "Returns string type for a message object of type 'ParkingSlotType"
  "planning_msgs/ParkingSlotType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSlotType>)))
  "Returns md5sum for a message object of type '<ParkingSlotType>"
  "ece84f9e7d1bd9c0d33795d454c01230")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSlotType)))
  "Returns md5sum for a message object of type 'ParkingSlotType"
  "ece84f9e7d1bd9c0d33795d454c01230")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSlotType>)))
  "Returns full string definition for message of type '<ParkingSlotType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 PERPENDICULAR = 1~%uint8 PARALLEL = 2~%uint8 OBLIQUE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSlotType)))
  "Returns full string definition for message of type 'ParkingSlotType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 PERPENDICULAR = 1~%uint8 PARALLEL = 2~%uint8 OBLIQUE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSlotType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSlotType>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSlotType
    (cl:cons ':value (value msg))
))
