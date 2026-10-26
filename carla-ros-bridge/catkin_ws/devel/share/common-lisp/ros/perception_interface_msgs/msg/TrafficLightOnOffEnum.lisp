; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightOnOffEnum.msg.html

(cl:defclass <TrafficLightOnOffEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightOnOffEnum (<TrafficLightOnOffEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightOnOffEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightOnOffEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightOnOffEnum> is deprecated: use perception_interface_msgs-msg:TrafficLightOnOffEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightOnOffEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightOnOffEnum>)))
    "Constants for message type '<TrafficLightOnOffEnum>"
  '((:TRAFFIC_LIGHT_ONOFF_ON . 0)
    (:TRAFFIC_LIGHT_ONOFF_OFF . 1)
    (:TRAFFIC_LIGHT_ONOFF_UNKNOW . 2)
    (:TRAFFIC_LIGHT_ONOFF_UNMARKED . 3)
    (:TRAFFIC_LIGHT_ONOFF_RESERVE1 . 4)
    (:TRAFFIC_LIGHT_ONOFF_RESERVE2 . 5)
    (:TRAFFIC_LIGHT_ONOFF_RESERVE3 . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightOnOffEnum)))
    "Constants for message type 'TrafficLightOnOffEnum"
  '((:TRAFFIC_LIGHT_ONOFF_ON . 0)
    (:TRAFFIC_LIGHT_ONOFF_OFF . 1)
    (:TRAFFIC_LIGHT_ONOFF_UNKNOW . 2)
    (:TRAFFIC_LIGHT_ONOFF_UNMARKED . 3)
    (:TRAFFIC_LIGHT_ONOFF_RESERVE1 . 4)
    (:TRAFFIC_LIGHT_ONOFF_RESERVE2 . 5)
    (:TRAFFIC_LIGHT_ONOFF_RESERVE3 . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightOnOffEnum>) ostream)
  "Serializes a message object of type '<TrafficLightOnOffEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightOnOffEnum>) istream)
  "Deserializes a message object of type '<TrafficLightOnOffEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightOnOffEnum>)))
  "Returns string type for a message object of type '<TrafficLightOnOffEnum>"
  "perception_interface_msgs/TrafficLightOnOffEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightOnOffEnum)))
  "Returns string type for a message object of type 'TrafficLightOnOffEnum"
  "perception_interface_msgs/TrafficLightOnOffEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightOnOffEnum>)))
  "Returns md5sum for a message object of type '<TrafficLightOnOffEnum>"
  "04f595a1ed29db67b154a36851db594b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightOnOffEnum)))
  "Returns md5sum for a message object of type 'TrafficLightOnOffEnum"
  "04f595a1ed29db67b154a36851db594b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightOnOffEnum>)))
  "Returns full string definition for message of type '<TrafficLightOnOffEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_ONOFF_ON = 0~%uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1~%uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2~%uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightOnOffEnum)))
  "Returns full string definition for message of type 'TrafficLightOnOffEnum"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_ONOFF_ON = 0~%uint8 TRAFFIC_LIGHT_ONOFF_OFF = 1~%uint8 TRAFFIC_LIGHT_ONOFF_UNKNOW = 2~%uint8 TRAFFIC_LIGHT_ONOFF_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_ONOFF_RESERVE3 = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightOnOffEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightOnOffEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightOnOffEnum
    (cl:cons ':value (value msg))
))
