; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude RoutingStatusEnum.msg.html

(cl:defclass <RoutingStatusEnum> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoutingStatusEnum (<RoutingStatusEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingStatusEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingStatusEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<RoutingStatusEnum> is deprecated: use pnp_msgs-msg:RoutingStatusEnum instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RoutingStatusEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:status-val is deprecated.  Use pnp_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoutingStatusEnum>)))
    "Constants for message type '<RoutingStatusEnum>"
  '((:ROUTING_SUCCESS . 0)
    (:NO_ROUTING_FOUND . 1)
    (:NO_ROADS_NEARBY_VEHICLE . 2)
    (:NO_PARKING_LOT . 3)
    (:NO_PARKING_SPACE . 4)
    (:NO_ROADS_BOUNDED_SPACE . 5)
    (:TOO_SHORT_PATH . 6)
    (:TOO_LONG_PATH . 7)
    (:MAP_DATA_ERROR . 8)
    (:SYSTEM_ERROR . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoutingStatusEnum)))
    "Constants for message type 'RoutingStatusEnum"
  '((:ROUTING_SUCCESS . 0)
    (:NO_ROUTING_FOUND . 1)
    (:NO_ROADS_NEARBY_VEHICLE . 2)
    (:NO_PARKING_LOT . 3)
    (:NO_PARKING_SPACE . 4)
    (:NO_ROADS_BOUNDED_SPACE . 5)
    (:TOO_SHORT_PATH . 6)
    (:TOO_LONG_PATH . 7)
    (:MAP_DATA_ERROR . 8)
    (:SYSTEM_ERROR . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingStatusEnum>) ostream)
  "Serializes a message object of type '<RoutingStatusEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingStatusEnum>) istream)
  "Deserializes a message object of type '<RoutingStatusEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingStatusEnum>)))
  "Returns string type for a message object of type '<RoutingStatusEnum>"
  "pnp_msgs/RoutingStatusEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingStatusEnum)))
  "Returns string type for a message object of type 'RoutingStatusEnum"
  "pnp_msgs/RoutingStatusEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingStatusEnum>)))
  "Returns md5sum for a message object of type '<RoutingStatusEnum>"
  "58197edd90dad1c617b67f7261354b9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingStatusEnum)))
  "Returns md5sum for a message object of type 'RoutingStatusEnum"
  "58197edd90dad1c617b67f7261354b9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingStatusEnum>)))
  "Returns full string definition for message of type '<RoutingStatusEnum>"
  (cl:format cl:nil "uint8 ROUTING_SUCCESS = 0~%uint8 NO_ROUTING_FOUND = 1~%uint8 NO_ROADS_NEARBY_VEHICLE = 2~%uint8 NO_PARKING_LOT = 3~%uint8 NO_PARKING_SPACE = 4~%uint8 NO_ROADS_BOUNDED_SPACE = 5~%uint8 TOO_SHORT_PATH = 6~%uint8 TOO_LONG_PATH = 7~%uint8 MAP_DATA_ERROR = 8~%uint8 SYSTEM_ERROR = 255~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingStatusEnum)))
  "Returns full string definition for message of type 'RoutingStatusEnum"
  (cl:format cl:nil "uint8 ROUTING_SUCCESS = 0~%uint8 NO_ROUTING_FOUND = 1~%uint8 NO_ROADS_NEARBY_VEHICLE = 2~%uint8 NO_PARKING_LOT = 3~%uint8 NO_PARKING_SPACE = 4~%uint8 NO_ROADS_BOUNDED_SPACE = 5~%uint8 TOO_SHORT_PATH = 6~%uint8 TOO_LONG_PATH = 7~%uint8 MAP_DATA_ERROR = 8~%uint8 SYSTEM_ERROR = 255~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingStatusEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingStatusEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingStatusEnum
    (cl:cons ':status (status msg))
))
