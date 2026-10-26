; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadEntryLinePassDirectionTypeEnum.msg.html

(cl:defclass <RoadEntryLinePassDirectionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadEntryLinePassDirectionTypeEnum (<RoadEntryLinePassDirectionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadEntryLinePassDirectionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadEntryLinePassDirectionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadEntryLinePassDirectionTypeEnum> is deprecated: use landmark_msgs-msg:RoadEntryLinePassDirectionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadEntryLinePassDirectionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadEntryLinePassDirectionTypeEnum>)))
    "Constants for message type '<RoadEntryLinePassDirectionTypeEnum>"
  '((:ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN . 0)
    (:ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT . 1)
    (:ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadEntryLinePassDirectionTypeEnum)))
    "Constants for message type 'RoadEntryLinePassDirectionTypeEnum"
  '((:ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN . 0)
    (:ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT . 1)
    (:ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadEntryLinePassDirectionTypeEnum>) ostream)
  "Serializes a message object of type '<RoadEntryLinePassDirectionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadEntryLinePassDirectionTypeEnum>) istream)
  "Deserializes a message object of type '<RoadEntryLinePassDirectionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadEntryLinePassDirectionTypeEnum>)))
  "Returns string type for a message object of type '<RoadEntryLinePassDirectionTypeEnum>"
  "landmark_msgs/RoadEntryLinePassDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadEntryLinePassDirectionTypeEnum)))
  "Returns string type for a message object of type 'RoadEntryLinePassDirectionTypeEnum"
  "landmark_msgs/RoadEntryLinePassDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadEntryLinePassDirectionTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadEntryLinePassDirectionTypeEnum>"
  "c27148b3cc75c960d03ff4519bc5d666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadEntryLinePassDirectionTypeEnum)))
  "Returns md5sum for a message object of type 'RoadEntryLinePassDirectionTypeEnum"
  "c27148b3cc75c960d03ff4519bc5d666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadEntryLinePassDirectionTypeEnum>)))
  "Returns full string definition for message of type '<RoadEntryLinePassDirectionTypeEnum>"
  (cl:format cl:nil "uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1~%uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadEntryLinePassDirectionTypeEnum)))
  "Returns full string definition for message of type 'RoadEntryLinePassDirectionTypeEnum"
  (cl:format cl:nil "uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_LEFT_TO_RIGHT = 1~%uint8 ROAD_ENTRY_LINE_PASS_DIRECTION_TYPE_RIGHT_TO_LEFT = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadEntryLinePassDirectionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadEntryLinePassDirectionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadEntryLinePassDirectionTypeEnum
    (cl:cons ':value (value msg))
))
