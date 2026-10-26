; Auto-generated. Do not edit!


(cl:in-package pnp_msgs-msg)


;//! \htmlinclude RoutingActionEnum.msg.html

(cl:defclass <RoutingActionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoutingActionEnum (<RoutingActionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingActionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingActionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnp_msgs-msg:<RoutingActionEnum> is deprecated: use pnp_msgs-msg:RoutingActionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoutingActionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnp_msgs-msg:value-val is deprecated.  Use pnp_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoutingActionEnum>)))
    "Constants for message type '<RoutingActionEnum>"
  '((:PARKING_ENTER . 0)
    (:PARKING_EXIT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoutingActionEnum)))
    "Constants for message type 'RoutingActionEnum"
  '((:PARKING_ENTER . 0)
    (:PARKING_EXIT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingActionEnum>) ostream)
  "Serializes a message object of type '<RoutingActionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingActionEnum>) istream)
  "Deserializes a message object of type '<RoutingActionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingActionEnum>)))
  "Returns string type for a message object of type '<RoutingActionEnum>"
  "pnp_msgs/RoutingActionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingActionEnum)))
  "Returns string type for a message object of type 'RoutingActionEnum"
  "pnp_msgs/RoutingActionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingActionEnum>)))
  "Returns md5sum for a message object of type '<RoutingActionEnum>"
  "ad352bc04bcc879b7a17b7ce86bf3bef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingActionEnum)))
  "Returns md5sum for a message object of type 'RoutingActionEnum"
  "ad352bc04bcc879b7a17b7ce86bf3bef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingActionEnum>)))
  "Returns full string definition for message of type '<RoutingActionEnum>"
  (cl:format cl:nil "uint8 PARKING_ENTER = 0~%uint8 PARKING_EXIT = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingActionEnum)))
  "Returns full string definition for message of type 'RoutingActionEnum"
  (cl:format cl:nil "uint8 PARKING_ENTER = 0~%uint8 PARKING_EXIT = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingActionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingActionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingActionEnum
    (cl:cons ':value (value msg))
))
