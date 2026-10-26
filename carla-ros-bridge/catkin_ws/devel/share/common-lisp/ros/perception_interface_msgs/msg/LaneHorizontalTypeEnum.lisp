; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude LaneHorizontalTypeEnum.msg.html

(cl:defclass <LaneHorizontalTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneHorizontalTypeEnum (<LaneHorizontalTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneHorizontalTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneHorizontalTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<LaneHorizontalTypeEnum> is deprecated: use perception_interface_msgs-msg:LaneHorizontalTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneHorizontalTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneHorizontalTypeEnum>)))
    "Constants for message type '<LaneHorizontalTypeEnum>"
  '((:LANE_HORIZENTAL_TYPE_UNKNOWN . 0)
    (:LANE_HORIZENTAL_TYPE_STOP_LINE . 1)
    (:LANE_HORIZENTAL_TYPE_ZEBRA_LINE . 2)
    (:LANE_HORIZENTAL_TYPE_SPEED_BUMP . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneHorizontalTypeEnum)))
    "Constants for message type 'LaneHorizontalTypeEnum"
  '((:LANE_HORIZENTAL_TYPE_UNKNOWN . 0)
    (:LANE_HORIZENTAL_TYPE_STOP_LINE . 1)
    (:LANE_HORIZENTAL_TYPE_ZEBRA_LINE . 2)
    (:LANE_HORIZENTAL_TYPE_SPEED_BUMP . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneHorizontalTypeEnum>) ostream)
  "Serializes a message object of type '<LaneHorizontalTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneHorizontalTypeEnum>) istream)
  "Deserializes a message object of type '<LaneHorizontalTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneHorizontalTypeEnum>)))
  "Returns string type for a message object of type '<LaneHorizontalTypeEnum>"
  "perception_interface_msgs/LaneHorizontalTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneHorizontalTypeEnum)))
  "Returns string type for a message object of type 'LaneHorizontalTypeEnum"
  "perception_interface_msgs/LaneHorizontalTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneHorizontalTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneHorizontalTypeEnum>"
  "cb80404395a8ff2246618e9ee59c656f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneHorizontalTypeEnum)))
  "Returns md5sum for a message object of type 'LaneHorizontalTypeEnum"
  "cb80404395a8ff2246618e9ee59c656f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneHorizontalTypeEnum>)))
  "Returns full string definition for message of type '<LaneHorizontalTypeEnum>"
  (cl:format cl:nil "uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0~%uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1~%uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2~%uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneHorizontalTypeEnum)))
  "Returns full string definition for message of type 'LaneHorizontalTypeEnum"
  (cl:format cl:nil "uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0~%uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1~%uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2~%uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneHorizontalTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneHorizontalTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneHorizontalTypeEnum
    (cl:cons ':value (value msg))
))
