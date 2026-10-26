; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightTypeEnum.msg.html

(cl:defclass <TrafficLightTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightTypeEnum (<TrafficLightTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightTypeEnum> is deprecated: use landmark_msgs-msg:TrafficLightTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightTypeEnum>)))
    "Constants for message type '<TrafficLightTypeEnum>"
  '((:TRAFFIC_LIGHT_TYPE_UNKNOWN . 0)
    (:TRAFFIC_LIGHT_TYPE_GROUP . 1)
    (:TRAFFIC_LIGHT_TYPE_GLIM_BULB . 2)
    (:TRAFFIC_LIGHT_TYPE_GLIM_HALO . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightTypeEnum)))
    "Constants for message type 'TrafficLightTypeEnum"
  '((:TRAFFIC_LIGHT_TYPE_UNKNOWN . 0)
    (:TRAFFIC_LIGHT_TYPE_GROUP . 1)
    (:TRAFFIC_LIGHT_TYPE_GLIM_BULB . 2)
    (:TRAFFIC_LIGHT_TYPE_GLIM_HALO . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightTypeEnum>) ostream)
  "Serializes a message object of type '<TrafficLightTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightTypeEnum>) istream)
  "Deserializes a message object of type '<TrafficLightTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightTypeEnum>)))
  "Returns string type for a message object of type '<TrafficLightTypeEnum>"
  "landmark_msgs/TrafficLightTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightTypeEnum)))
  "Returns string type for a message object of type 'TrafficLightTypeEnum"
  "landmark_msgs/TrafficLightTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightTypeEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightTypeEnum>"
  "36c73dd612044e565de3a7fdc79ab51e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightTypeEnum)))
  "Returns md5sum for a message object of type 'TrafficLightTypeEnum"
  "36c73dd612044e565de3a7fdc79ab51e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightTypeEnum>)))
  "Returns full string definition for message of type '<TrafficLightTypeEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightTypeEnum)))
  "Returns full string definition for message of type 'TrafficLightTypeEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightTypeEnum
    (cl:cons ':value (value msg))
))
