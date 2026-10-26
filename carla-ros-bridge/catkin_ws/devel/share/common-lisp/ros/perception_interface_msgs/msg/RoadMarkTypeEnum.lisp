; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude RoadMarkTypeEnum.msg.html

(cl:defclass <RoadMarkTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadMarkTypeEnum (<RoadMarkTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadMarkTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadMarkTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<RoadMarkTypeEnum> is deprecated: use perception_interface_msgs-msg:RoadMarkTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadMarkTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadMarkTypeEnum>)))
    "Constants for message type '<RoadMarkTypeEnum>"
  '((:ROAD_MARK_TYPE_UNKNOWN . 0)
    (:ROAD_MARK_TYPE_GO_STRAIGHT . 1)
    (:ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT . 2)
    (:ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT . 3)
    (:ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK . 4)
    (:ROAD_MARK_TYPE_TURN_LEFT . 5)
    (:ROAD_MARK_TYPE_TURN_RIGHT . 6)
    (:ROAD_MARK_TYPE_TURN_BACK . 7)
    (:ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK . 8)
    (:ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT . 9)
    (:ROAD_MARK_TYPE_LEFT_CONFLUENCE . 10)
    (:ROAD_MARK_TYPE_RIGHT_CONFLUENCE . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadMarkTypeEnum)))
    "Constants for message type 'RoadMarkTypeEnum"
  '((:ROAD_MARK_TYPE_UNKNOWN . 0)
    (:ROAD_MARK_TYPE_GO_STRAIGHT . 1)
    (:ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT . 2)
    (:ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT . 3)
    (:ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK . 4)
    (:ROAD_MARK_TYPE_TURN_LEFT . 5)
    (:ROAD_MARK_TYPE_TURN_RIGHT . 6)
    (:ROAD_MARK_TYPE_TURN_BACK . 7)
    (:ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK . 8)
    (:ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT . 9)
    (:ROAD_MARK_TYPE_LEFT_CONFLUENCE . 10)
    (:ROAD_MARK_TYPE_RIGHT_CONFLUENCE . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadMarkTypeEnum>) ostream)
  "Serializes a message object of type '<RoadMarkTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadMarkTypeEnum>) istream)
  "Deserializes a message object of type '<RoadMarkTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadMarkTypeEnum>)))
  "Returns string type for a message object of type '<RoadMarkTypeEnum>"
  "perception_interface_msgs/RoadMarkTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadMarkTypeEnum)))
  "Returns string type for a message object of type 'RoadMarkTypeEnum"
  "perception_interface_msgs/RoadMarkTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadMarkTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadMarkTypeEnum>"
  "ac8a7bb2c0183076ba51a6627b1c2fe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadMarkTypeEnum)))
  "Returns md5sum for a message object of type 'RoadMarkTypeEnum"
  "ac8a7bb2c0183076ba51a6627b1c2fe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadMarkTypeEnum>)))
  "Returns full string definition for message of type '<RoadMarkTypeEnum>"
  (cl:format cl:nil "uint8 ROAD_MARK_TYPE_UNKNOWN = 0~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4~%uint8 ROAD_MARK_TYPE_TURN_LEFT = 5~%uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6~%uint8 ROAD_MARK_TYPE_TURN_BACK = 7~%uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8~%uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9~%uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10~%uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadMarkTypeEnum)))
  "Returns full string definition for message of type 'RoadMarkTypeEnum"
  (cl:format cl:nil "uint8 ROAD_MARK_TYPE_UNKNOWN = 0~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT = 1~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_LEFT = 2~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_RIGHT = 3~%uint8 ROAD_MARK_TYPE_GO_STRAIGHT_OR_TURN_BACK = 4~%uint8 ROAD_MARK_TYPE_TURN_LEFT = 5~%uint8 ROAD_MARK_TYPE_TURN_RIGHT = 6~%uint8 ROAD_MARK_TYPE_TURN_BACK = 7~%uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_BACK = 8~%uint8 ROAD_MARK_TYPE_TURN_LEFT_OR_TURN_RIGHT = 9~%uint8 ROAD_MARK_TYPE_LEFT_CONFLUENCE = 10~%uint8 ROAD_MARK_TYPE_RIGHT_CONFLUENCE = 11~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadMarkTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadMarkTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadMarkTypeEnum
    (cl:cons ':value (value msg))
))
