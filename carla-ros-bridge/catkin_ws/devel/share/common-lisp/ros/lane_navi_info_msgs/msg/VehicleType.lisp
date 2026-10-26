; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude VehicleType.msg.html

(cl:defclass <VehicleType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleType (<VehicleType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<VehicleType> is deprecated: use lane_navi_info_msgs-msg:VehicleType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <VehicleType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleType>)))
    "Constants for message type '<VehicleType>"
  '((:RESTRICTION_VEHICLE_ALL . 0)
    (:RESTRICTION_VEHICLE_MOTOR . 1)
    (:RESTRICTION_VEHICLE_CAR . 2)
    (:RESTRICTION_VEHICLE_BUS . 3)
    (:RESTRICTION_VEHICLE_HOV . 4)
    (:RESTRICTION_VEHICLE_UNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleType)))
    "Constants for message type 'VehicleType"
  '((:RESTRICTION_VEHICLE_ALL . 0)
    (:RESTRICTION_VEHICLE_MOTOR . 1)
    (:RESTRICTION_VEHICLE_CAR . 2)
    (:RESTRICTION_VEHICLE_BUS . 3)
    (:RESTRICTION_VEHICLE_HOV . 4)
    (:RESTRICTION_VEHICLE_UNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleType>) ostream)
  "Serializes a message object of type '<VehicleType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleType>) istream)
  "Deserializes a message object of type '<VehicleType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleType>)))
  "Returns string type for a message object of type '<VehicleType>"
  "lane_navi_info_msgs/VehicleType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleType)))
  "Returns string type for a message object of type 'VehicleType"
  "lane_navi_info_msgs/VehicleType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleType>)))
  "Returns md5sum for a message object of type '<VehicleType>"
  "f351d22d0e3ba3de339857ca66220cca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleType)))
  "Returns md5sum for a message object of type 'VehicleType"
  "f351d22d0e3ba3de339857ca66220cca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleType>)))
  "Returns full string definition for message of type '<VehicleType>"
  (cl:format cl:nil "uint8 RESTRICTION_VEHICLE_ALL = 0~%uint8 RESTRICTION_VEHICLE_MOTOR = 1~%uint8 RESTRICTION_VEHICLE_CAR = 2~%uint8 RESTRICTION_VEHICLE_BUS = 3~%uint8 RESTRICTION_VEHICLE_HOV = 4~%uint8 RESTRICTION_VEHICLE_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleType)))
  "Returns full string definition for message of type 'VehicleType"
  (cl:format cl:nil "uint8 RESTRICTION_VEHICLE_ALL = 0~%uint8 RESTRICTION_VEHICLE_MOTOR = 1~%uint8 RESTRICTION_VEHICLE_CAR = 2~%uint8 RESTRICTION_VEHICLE_BUS = 3~%uint8 RESTRICTION_VEHICLE_HOV = 4~%uint8 RESTRICTION_VEHICLE_UNKNOWN = 255~%uint8 type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleType>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleType
    (cl:cons ':type (type msg))
))
