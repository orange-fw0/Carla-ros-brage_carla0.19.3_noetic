; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RefPathGoalTypeEnum.msg.html

(cl:defclass <RefPathGoalTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RefPathGoalTypeEnum (<RefPathGoalTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefPathGoalTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefPathGoalTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RefPathGoalTypeEnum> is deprecated: use landmark_msgs-msg:RefPathGoalTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RefPathGoalTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RefPathGoalTypeEnum>)))
    "Constants for message type '<RefPathGoalTypeEnum>"
  '((:GOAL_TYPE_UNKNOWN . 0)
    (:GOAL_TYPE_WAY_POINT . 1)
    (:GOAL_TYPE_LANE_CENTER . 2)
    (:GOAL_TYPE_ROAD_MARK . 3)
    (:GOAL_TYPE_ROAD_ENTRY_LINE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RefPathGoalTypeEnum)))
    "Constants for message type 'RefPathGoalTypeEnum"
  '((:GOAL_TYPE_UNKNOWN . 0)
    (:GOAL_TYPE_WAY_POINT . 1)
    (:GOAL_TYPE_LANE_CENTER . 2)
    (:GOAL_TYPE_ROAD_MARK . 3)
    (:GOAL_TYPE_ROAD_ENTRY_LINE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefPathGoalTypeEnum>) ostream)
  "Serializes a message object of type '<RefPathGoalTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefPathGoalTypeEnum>) istream)
  "Deserializes a message object of type '<RefPathGoalTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefPathGoalTypeEnum>)))
  "Returns string type for a message object of type '<RefPathGoalTypeEnum>"
  "landmark_msgs/RefPathGoalTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefPathGoalTypeEnum)))
  "Returns string type for a message object of type 'RefPathGoalTypeEnum"
  "landmark_msgs/RefPathGoalTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefPathGoalTypeEnum>)))
  "Returns md5sum for a message object of type '<RefPathGoalTypeEnum>"
  "569a727b8f51e506287ecbb39b567167")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefPathGoalTypeEnum)))
  "Returns md5sum for a message object of type 'RefPathGoalTypeEnum"
  "569a727b8f51e506287ecbb39b567167")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefPathGoalTypeEnum>)))
  "Returns full string definition for message of type '<RefPathGoalTypeEnum>"
  (cl:format cl:nil "uint8 GOAL_TYPE_UNKNOWN = 0~%uint8 GOAL_TYPE_WAY_POINT = 1~%uint8 GOAL_TYPE_LANE_CENTER = 2~%uint8 GOAL_TYPE_ROAD_MARK = 3~%uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefPathGoalTypeEnum)))
  "Returns full string definition for message of type 'RefPathGoalTypeEnum"
  (cl:format cl:nil "uint8 GOAL_TYPE_UNKNOWN = 0~%uint8 GOAL_TYPE_WAY_POINT = 1~%uint8 GOAL_TYPE_LANE_CENTER = 2~%uint8 GOAL_TYPE_ROAD_MARK = 3~%uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefPathGoalTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefPathGoalTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RefPathGoalTypeEnum
    (cl:cons ':value (value msg))
))
