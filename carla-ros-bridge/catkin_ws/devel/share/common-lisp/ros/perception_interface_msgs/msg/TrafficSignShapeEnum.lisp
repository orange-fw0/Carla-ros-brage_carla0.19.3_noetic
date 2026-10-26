; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficSignShapeEnum.msg.html

(cl:defclass <TrafficSignShapeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignShapeEnum (<TrafficSignShapeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignShapeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignShapeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficSignShapeEnum> is deprecated: use perception_interface_msgs-msg:TrafficSignShapeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignShapeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignShapeEnum>)))
    "Constants for message type '<TrafficSignShapeEnum>"
  '((:TRAFFIC_SIGN_SHAPE_UNKNOWN . 0)
    (:TRAFFIC_SIGN_SHAPE_BACKGROUND . 1)
    (:TRAFFIC_SIGN_SHAPE_HEXAGON . 2)
    (:TRAFFIC_SIGN_SHAPE_DIAMOND . 3)
    (:TRAFFIC_SIGN_SHAPE_RECTANGLE . 4)
    (:TRAFFIC_SIGN_SHAPE_TRIANGLE . 5)
    (:TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE . 6)
    (:TRAFFIC_SIGN_SHAPE_POLYGON . 7)
    (:TRAFFIC_SIGN_SHAPE_CIRCLE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignShapeEnum)))
    "Constants for message type 'TrafficSignShapeEnum"
  '((:TRAFFIC_SIGN_SHAPE_UNKNOWN . 0)
    (:TRAFFIC_SIGN_SHAPE_BACKGROUND . 1)
    (:TRAFFIC_SIGN_SHAPE_HEXAGON . 2)
    (:TRAFFIC_SIGN_SHAPE_DIAMOND . 3)
    (:TRAFFIC_SIGN_SHAPE_RECTANGLE . 4)
    (:TRAFFIC_SIGN_SHAPE_TRIANGLE . 5)
    (:TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE . 6)
    (:TRAFFIC_SIGN_SHAPE_POLYGON . 7)
    (:TRAFFIC_SIGN_SHAPE_CIRCLE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignShapeEnum>) ostream)
  "Serializes a message object of type '<TrafficSignShapeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignShapeEnum>) istream)
  "Deserializes a message object of type '<TrafficSignShapeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignShapeEnum>)))
  "Returns string type for a message object of type '<TrafficSignShapeEnum>"
  "perception_interface_msgs/TrafficSignShapeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignShapeEnum)))
  "Returns string type for a message object of type 'TrafficSignShapeEnum"
  "perception_interface_msgs/TrafficSignShapeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignShapeEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignShapeEnum>"
  "431f0c16990575d9ef25ed37f5d6dcf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignShapeEnum)))
  "Returns md5sum for a message object of type 'TrafficSignShapeEnum"
  "431f0c16990575d9ef25ed37f5d6dcf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignShapeEnum>)))
  "Returns full string definition for message of type '<TrafficSignShapeEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1~%uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2~%uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3~%uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4~%uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5~%uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6~%uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7~%uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignShapeEnum)))
  "Returns full string definition for message of type 'TrafficSignShapeEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1~%uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2~%uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3~%uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4~%uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5~%uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6~%uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7~%uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignShapeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignShapeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignShapeEnum
    (cl:cons ':value (value msg))
))
