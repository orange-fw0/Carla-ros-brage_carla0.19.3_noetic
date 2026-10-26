; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude LaneTypeEnum.msg.html

(cl:defclass <LaneTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneTypeEnum (<LaneTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<LaneTypeEnum> is deprecated: use perception_interface_msgs-msg:LaneTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneTypeEnum>)))
    "Constants for message type '<LaneTypeEnum>"
  '((:LANE_TYPE_UNKNOWN . 0)
    (:LANE_TYPE_DASHED . 1)
    (:LANE_TYPE_SOLID . 2)
    (:LANE_TYPE_DOUBLE_SOLID . 3)
    (:LANE_TYPE_DOUBLE_DASHED_SOLID . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneTypeEnum)))
    "Constants for message type 'LaneTypeEnum"
  '((:LANE_TYPE_UNKNOWN . 0)
    (:LANE_TYPE_DASHED . 1)
    (:LANE_TYPE_SOLID . 2)
    (:LANE_TYPE_DOUBLE_SOLID . 3)
    (:LANE_TYPE_DOUBLE_DASHED_SOLID . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneTypeEnum>) ostream)
  "Serializes a message object of type '<LaneTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneTypeEnum>) istream)
  "Deserializes a message object of type '<LaneTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneTypeEnum>)))
  "Returns string type for a message object of type '<LaneTypeEnum>"
  "perception_interface_msgs/LaneTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneTypeEnum)))
  "Returns string type for a message object of type 'LaneTypeEnum"
  "perception_interface_msgs/LaneTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneTypeEnum>"
  "b6f5acaf2ae3320b7007fccd24b248b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneTypeEnum)))
  "Returns md5sum for a message object of type 'LaneTypeEnum"
  "b6f5acaf2ae3320b7007fccd24b248b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneTypeEnum>)))
  "Returns full string definition for message of type '<LaneTypeEnum>"
  (cl:format cl:nil "uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_DASHED = 1~%uint8 LANE_TYPE_SOLID = 2~%uint8 LANE_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneTypeEnum)))
  "Returns full string definition for message of type 'LaneTypeEnum"
  (cl:format cl:nil "uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_DASHED = 1~%uint8 LANE_TYPE_SOLID = 2~%uint8 LANE_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneTypeEnum
    (cl:cons ':value (value msg))
))
