; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignShapeTypeEnum.msg.html

(cl:defclass <TrafficSignShapeTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignShapeTypeEnum (<TrafficSignShapeTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignShapeTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignShapeTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignShapeTypeEnum> is deprecated: use landmark_msgs-msg:TrafficSignShapeTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignShapeTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignShapeTypeEnum>)))
    "Constants for message type '<TrafficSignShapeTypeEnum>"
  '((:TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN . 0)
    (:TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE . 1)
    (:TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND . 2)
    (:TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE . 3)
    (:TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE . 4)
    (:TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE . 5)
    (:TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE . 6)
    (:TRAFFIC_SIGN_SHAPE_TYPE_OTHER . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignShapeTypeEnum)))
    "Constants for message type 'TrafficSignShapeTypeEnum"
  '((:TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN . 0)
    (:TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE . 1)
    (:TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND . 2)
    (:TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE . 3)
    (:TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE . 4)
    (:TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE . 5)
    (:TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE . 6)
    (:TRAFFIC_SIGN_SHAPE_TYPE_OTHER . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignShapeTypeEnum>) ostream)
  "Serializes a message object of type '<TrafficSignShapeTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignShapeTypeEnum>) istream)
  "Deserializes a message object of type '<TrafficSignShapeTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignShapeTypeEnum>)))
  "Returns string type for a message object of type '<TrafficSignShapeTypeEnum>"
  "landmark_msgs/TrafficSignShapeTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignShapeTypeEnum)))
  "Returns string type for a message object of type 'TrafficSignShapeTypeEnum"
  "landmark_msgs/TrafficSignShapeTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignShapeTypeEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignShapeTypeEnum>"
  "8bf54da8eb36e30faf550fd112e6ae73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignShapeTypeEnum)))
  "Returns md5sum for a message object of type 'TrafficSignShapeTypeEnum"
  "8bf54da8eb36e30faf550fd112e6ae73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignShapeTypeEnum>)))
  "Returns full string definition for message of type '<TrafficSignShapeTypeEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignShapeTypeEnum)))
  "Returns full string definition for message of type 'TrafficSignShapeTypeEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignShapeTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignShapeTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignShapeTypeEnum
    (cl:cons ':value (value msg))
))
