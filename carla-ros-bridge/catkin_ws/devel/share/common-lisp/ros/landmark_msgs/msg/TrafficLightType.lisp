; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightType.msg.html

(cl:defclass <TrafficLightType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightType (<TrafficLightType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightType> is deprecated: use landmark_msgs-msg:TrafficLightType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightType>)))
    "Constants for message type '<TrafficLightType>"
  '((:UNKNOWN . 0)
    (:DOT_TRAFFIC_LIGHT . 1)
    (:ARROW_TRAFFIC_LIGHT . 2)
    (:NUMBER_TRAFFIC_LIGHT . 3)
    (:TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE . 4)
    (:TRAFFIC_LIGHT_FOR_PEDESTRIANS . 5)
    (:SAND_CLOCK_TRAFFIC_LIGHT . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightType)))
    "Constants for message type 'TrafficLightType"
  '((:UNKNOWN . 0)
    (:DOT_TRAFFIC_LIGHT . 1)
    (:ARROW_TRAFFIC_LIGHT . 2)
    (:NUMBER_TRAFFIC_LIGHT . 3)
    (:TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE . 4)
    (:TRAFFIC_LIGHT_FOR_PEDESTRIANS . 5)
    (:SAND_CLOCK_TRAFFIC_LIGHT . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightType>) ostream)
  "Serializes a message object of type '<TrafficLightType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightType>) istream)
  "Deserializes a message object of type '<TrafficLightType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightType>)))
  "Returns string type for a message object of type '<TrafficLightType>"
  "landmark_msgs/TrafficLightType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightType)))
  "Returns string type for a message object of type 'TrafficLightType"
  "landmark_msgs/TrafficLightType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightType>)))
  "Returns md5sum for a message object of type '<TrafficLightType>"
  "0eebfb04c94ba700ee92bc49ba51290f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightType)))
  "Returns md5sum for a message object of type 'TrafficLightType"
  "0eebfb04c94ba700ee92bc49ba51290f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightType>)))
  "Returns full string definition for message of type '<TrafficLightType>"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightType)))
  "Returns full string definition for message of type 'TrafficLightType"
  (cl:format cl:nil "uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightType>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightType
    (cl:cons ':value (value msg))
))
