; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficLightInFov.msg.html

(cl:defclass <TrafficLightInFov> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficLightInFov (<TrafficLightInFov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightInFov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightInFov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficLightInFov> is deprecated: use perception_interface_msgs-msg:TrafficLightInFov instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficLightInFov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightInFov>)))
    "Constants for message type '<TrafficLightInFov>"
  '((:TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN . 1)
    (:TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW . 2)
    (:TRAFFIC_LIGHT_IN_FOV_UP_ARROW . 4)
    (:TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW . 8)
    (:TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightInFov)))
    "Constants for message type 'TrafficLightInFov"
  '((:TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN . 1)
    (:TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW . 2)
    (:TRAFFIC_LIGHT_IN_FOV_UP_ARROW . 4)
    (:TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW . 8)
    (:TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightInFov>) ostream)
  "Serializes a message object of type '<TrafficLightInFov>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightInFov>) istream)
  "Deserializes a message object of type '<TrafficLightInFov>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightInFov>)))
  "Returns string type for a message object of type '<TrafficLightInFov>"
  "perception_interface_msgs/TrafficLightInFov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightInFov)))
  "Returns string type for a message object of type 'TrafficLightInFov"
  "perception_interface_msgs/TrafficLightInFov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightInFov>)))
  "Returns md5sum for a message object of type '<TrafficLightInFov>"
  "8bd3ed24862fdff9279b7619796b701d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightInFov)))
  "Returns md5sum for a message object of type 'TrafficLightInFov"
  "8bd3ed24862fdff9279b7619796b701d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightInFov>)))
  "Returns full string definition for message of type '<TrafficLightInFov>"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1~%uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2~%uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4~%uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8~%uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightInFov)))
  "Returns full string definition for message of type 'TrafficLightInFov"
  (cl:format cl:nil "uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_UTURN = 1~%uint8 TRAFFIC_LIGHT_IN_FOV_LEFT_ARROW = 2~%uint8 TRAFFIC_LIGHT_IN_FOV_UP_ARROW = 4~%uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_ARROW = 8~%uint8 TRAFFIC_LIGHT_IN_FOV_RIGHT_UTURN = 16~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightInFov>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightInFov>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightInFov
    (cl:cons ':value (value msg))
))
