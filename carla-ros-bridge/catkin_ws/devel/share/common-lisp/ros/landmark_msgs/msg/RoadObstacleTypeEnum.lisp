; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadObstacleTypeEnum.msg.html

(cl:defclass <RoadObstacleTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadObstacleTypeEnum (<RoadObstacleTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadObstacleTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadObstacleTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadObstacleTypeEnum> is deprecated: use landmark_msgs-msg:RoadObstacleTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadObstacleTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadObstacleTypeEnum>)))
    "Constants for message type '<RoadObstacleTypeEnum>"
  '((:ROAD_OBSTACLE_TYPE_UNKONWN . 0)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL . 1)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR . 2)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL . 3)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE . 4)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP . 5)
    (:ROAD_OBSTACLE_TYPE_PILLAR . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadObstacleTypeEnum)))
    "Constants for message type 'RoadObstacleTypeEnum"
  '((:ROAD_OBSTACLE_TYPE_UNKONWN . 0)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL . 1)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR . 2)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL . 3)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE . 4)
    (:ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP . 5)
    (:ROAD_OBSTACLE_TYPE_PILLAR . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadObstacleTypeEnum>) ostream)
  "Serializes a message object of type '<RoadObstacleTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadObstacleTypeEnum>) istream)
  "Deserializes a message object of type '<RoadObstacleTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadObstacleTypeEnum>)))
  "Returns string type for a message object of type '<RoadObstacleTypeEnum>"
  "landmark_msgs/RoadObstacleTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadObstacleTypeEnum)))
  "Returns string type for a message object of type 'RoadObstacleTypeEnum"
  "landmark_msgs/RoadObstacleTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadObstacleTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadObstacleTypeEnum>"
  "3a1bcb34cfae7ea8cc1017cbfc2e9ac6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadObstacleTypeEnum)))
  "Returns md5sum for a message object of type 'RoadObstacleTypeEnum"
  "3a1bcb34cfae7ea8cc1017cbfc2e9ac6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadObstacleTypeEnum>)))
  "Returns full string definition for message of type '<RoadObstacleTypeEnum>"
  (cl:format cl:nil "uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5~%uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadObstacleTypeEnum)))
  "Returns full string definition for message of type 'RoadObstacleTypeEnum"
  (cl:format cl:nil "uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5~%uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadObstacleTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadObstacleTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadObstacleTypeEnum
    (cl:cons ':value (value msg))
))
