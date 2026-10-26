; Auto-generated. Do not edit!


(cl:in-package framework_status_msgs-msg)


;//! \htmlinclude RoutingRequestType.msg.html

(cl:defclass <RoutingRequestType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoutingRequestType (<RoutingRequestType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutingRequestType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutingRequestType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name framework_status_msgs-msg:<RoutingRequestType> is deprecated: use framework_status_msgs-msg:RoutingRequestType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoutingRequestType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader framework_status_msgs-msg:value-val is deprecated.  Use framework_status_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoutingRequestType>)))
    "Constants for message type '<RoutingRequestType>"
  '((:ROUTE_ENDS . 0)
    (:JSON_FILE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoutingRequestType)))
    "Constants for message type 'RoutingRequestType"
  '((:ROUTE_ENDS . 0)
    (:JSON_FILE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutingRequestType>) ostream)
  "Serializes a message object of type '<RoutingRequestType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutingRequestType>) istream)
  "Deserializes a message object of type '<RoutingRequestType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutingRequestType>)))
  "Returns string type for a message object of type '<RoutingRequestType>"
  "framework_status_msgs/RoutingRequestType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutingRequestType)))
  "Returns string type for a message object of type 'RoutingRequestType"
  "framework_status_msgs/RoutingRequestType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutingRequestType>)))
  "Returns md5sum for a message object of type '<RoutingRequestType>"
  "707ea02662e865f186e59577078d9322")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutingRequestType)))
  "Returns md5sum for a message object of type 'RoutingRequestType"
  "707ea02662e865f186e59577078d9322")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutingRequestType>)))
  "Returns full string definition for message of type '<RoutingRequestType>"
  (cl:format cl:nil "uint8 ROUTE_ENDS = 0~%uint8 JSON_FILE = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutingRequestType)))
  "Returns full string definition for message of type 'RoutingRequestType"
  (cl:format cl:nil "uint8 ROUTE_ENDS = 0~%uint8 JSON_FILE = 1~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutingRequestType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutingRequestType>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutingRequestType
    (cl:cons ':value (value msg))
))
