; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude LaneColorEnum.msg.html

(cl:defclass <LaneColorEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneColorEnum (<LaneColorEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneColorEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneColorEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<LaneColorEnum> is deprecated: use perception_interface_msgs-msg:LaneColorEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneColorEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneColorEnum>)))
    "Constants for message type '<LaneColorEnum>"
  '((:LANE_COLOR_UNKNOWN . 0)
    (:LANE_COLOR_WHITE . 1)
    (:LANE_COLOR_YELLOW . 2)
    (:LANE_COLOR_RED . 3)
    (:LANE_COLOR_BLUE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneColorEnum)))
    "Constants for message type 'LaneColorEnum"
  '((:LANE_COLOR_UNKNOWN . 0)
    (:LANE_COLOR_WHITE . 1)
    (:LANE_COLOR_YELLOW . 2)
    (:LANE_COLOR_RED . 3)
    (:LANE_COLOR_BLUE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneColorEnum>) ostream)
  "Serializes a message object of type '<LaneColorEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneColorEnum>) istream)
  "Deserializes a message object of type '<LaneColorEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneColorEnum>)))
  "Returns string type for a message object of type '<LaneColorEnum>"
  "perception_interface_msgs/LaneColorEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneColorEnum)))
  "Returns string type for a message object of type 'LaneColorEnum"
  "perception_interface_msgs/LaneColorEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneColorEnum>)))
  "Returns md5sum for a message object of type '<LaneColorEnum>"
  "6891bd0acaabe6e6f5f1074f0b129b91")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneColorEnum)))
  "Returns md5sum for a message object of type 'LaneColorEnum"
  "6891bd0acaabe6e6f5f1074f0b129b91")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneColorEnum>)))
  "Returns full string definition for message of type '<LaneColorEnum>"
  (cl:format cl:nil "uint8 LANE_COLOR_UNKNOWN = 0~%uint8 LANE_COLOR_WHITE = 1~%uint8 LANE_COLOR_YELLOW = 2~%uint8 LANE_COLOR_RED = 3~%uint8 LANE_COLOR_BLUE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneColorEnum)))
  "Returns full string definition for message of type 'LaneColorEnum"
  (cl:format cl:nil "uint8 LANE_COLOR_UNKNOWN = 0~%uint8 LANE_COLOR_WHITE = 1~%uint8 LANE_COLOR_YELLOW = 2~%uint8 LANE_COLOR_RED = 3~%uint8 LANE_COLOR_BLUE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneColorEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneColorEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneColorEnum
    (cl:cons ':value (value msg))
))
