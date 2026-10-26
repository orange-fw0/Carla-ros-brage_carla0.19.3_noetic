; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude TrafficSignArrowDirectionEnum.msg.html

(cl:defclass <TrafficSignArrowDirectionEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrafficSignArrowDirectionEnum (<TrafficSignArrowDirectionEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignArrowDirectionEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignArrowDirectionEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<TrafficSignArrowDirectionEnum> is deprecated: use perception_interface_msgs-msg:TrafficSignArrowDirectionEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <TrafficSignArrowDirectionEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignArrowDirectionEnum>)))
    "Constants for message type '<TrafficSignArrowDirectionEnum>"
  '((:TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_ARROW_DIRECTION_NONE . 1)
    (:TRAFFIC_SIGN_ARROW_DIRECTION_LEFT . 2)
    (:TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE . 3)
    (:TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignArrowDirectionEnum)))
    "Constants for message type 'TrafficSignArrowDirectionEnum"
  '((:TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN . 0)
    (:TRAFFIC_SIGN_ARROW_DIRECTION_NONE . 1)
    (:TRAFFIC_SIGN_ARROW_DIRECTION_LEFT . 2)
    (:TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE . 3)
    (:TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignArrowDirectionEnum>) ostream)
  "Serializes a message object of type '<TrafficSignArrowDirectionEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignArrowDirectionEnum>) istream)
  "Deserializes a message object of type '<TrafficSignArrowDirectionEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignArrowDirectionEnum>)))
  "Returns string type for a message object of type '<TrafficSignArrowDirectionEnum>"
  "perception_interface_msgs/TrafficSignArrowDirectionEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignArrowDirectionEnum)))
  "Returns string type for a message object of type 'TrafficSignArrowDirectionEnum"
  "perception_interface_msgs/TrafficSignArrowDirectionEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignArrowDirectionEnum>)))
  "Returns md5sum for a message object of type '<TrafficSignArrowDirectionEnum>"
  "6f83b18394e0195b968bad64c0f5a518")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignArrowDirectionEnum)))
  "Returns md5sum for a message object of type 'TrafficSignArrowDirectionEnum"
  "6f83b18394e0195b968bad64c0f5a518")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignArrowDirectionEnum>)))
  "Returns full string definition for message of type '<TrafficSignArrowDirectionEnum>"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignArrowDirectionEnum)))
  "Returns full string definition for message of type 'TrafficSignArrowDirectionEnum"
  (cl:format cl:nil "uint8 TRAFFIC_SIGN_ARROW_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_LEFT = 2~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_MIDDLE = 3~%uint8 TRAFFIC_SIGN_ARROW_DIRECTION_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignArrowDirectionEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignArrowDirectionEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignArrowDirectionEnum
    (cl:cons ':value (value msg))
))
