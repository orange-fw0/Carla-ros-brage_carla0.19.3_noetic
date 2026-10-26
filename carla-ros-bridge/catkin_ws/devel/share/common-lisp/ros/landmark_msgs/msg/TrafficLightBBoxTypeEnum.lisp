; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightBBoxTypeEnum.msg.html

(cl:defclass <TrafficLightBBoxTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightBBoxTypeEnum (<TrafficLightBBoxTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightBBoxTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightBBoxTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightBBoxTypeEnum> is deprecated: use landmark_msgs-msg:TrafficLightBBoxTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightBBoxTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightBBoxTypeEnum>)))
    "Constants for message type '<TrafficLightBBoxTypeEnum>"
  '((:LIGHT_GROUP . 0)
    (:LIGHT_BULB . 1)
    (:LIGHT_TYPE_GLIM_HALO . 2)
    (:LIGHT_TYPE_UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightBBoxTypeEnum)))
    "Constants for message type 'TrafficLightBBoxTypeEnum"
  '((:LIGHT_GROUP . 0)
    (:LIGHT_BULB . 1)
    (:LIGHT_TYPE_GLIM_HALO . 2)
    (:LIGHT_TYPE_UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightBBoxTypeEnum>) ostream)
  "Serializes a message object of type '<TrafficLightBBoxTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightBBoxTypeEnum>) istream)
  "Deserializes a message object of type '<TrafficLightBBoxTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightBBoxTypeEnum>)))
  "Returns string type for a message object of type '<TrafficLightBBoxTypeEnum>"
  "landmark_msgs/TrafficLightBBoxTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightBBoxTypeEnum)))
  "Returns string type for a message object of type 'TrafficLightBBoxTypeEnum"
  "landmark_msgs/TrafficLightBBoxTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightBBoxTypeEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightBBoxTypeEnum>"
  "727cdaffb2750a9364ac9e16d806affb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightBBoxTypeEnum)))
  "Returns md5sum for a message object of type 'TrafficLightBBoxTypeEnum"
  "727cdaffb2750a9364ac9e16d806affb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightBBoxTypeEnum>)))
  "Returns full string definition for message of type '<TrafficLightBBoxTypeEnum>"
  (cl:format cl:nil "uint8 LIGHT_GROUP = 0~%uint8 LIGHT_BULB = 1~%uint8 LIGHT_TYPE_GLIM_HALO = 2~%uint8 LIGHT_TYPE_UNKNOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightBBoxTypeEnum)))
  "Returns full string definition for message of type 'TrafficLightBBoxTypeEnum"
  (cl:format cl:nil "uint8 LIGHT_GROUP = 0~%uint8 LIGHT_BULB = 1~%uint8 LIGHT_TYPE_GLIM_HALO = 2~%uint8 LIGHT_TYPE_UNKNOWN = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightBBoxTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightBBoxTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightBBoxTypeEnum
    (cl:cons ':value (value msg))
))
