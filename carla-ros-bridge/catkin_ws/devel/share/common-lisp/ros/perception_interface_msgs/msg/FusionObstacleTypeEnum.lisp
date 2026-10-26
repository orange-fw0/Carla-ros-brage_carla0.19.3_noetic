; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude FusionObstacleTypeEnum.msg.html

(cl:defclass <FusionObstacleTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FusionObstacleTypeEnum (<FusionObstacleTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FusionObstacleTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FusionObstacleTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<FusionObstacleTypeEnum> is deprecated: use perception_interface_msgs-msg:FusionObstacleTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FusionObstacleTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FusionObstacleTypeEnum>)))
    "Constants for message type '<FusionObstacleTypeEnum>"
  '((:FUSION_OBSTACLE_TYPE_UNKNOWN . 0)
    (:FUSION_OBSTACLE_TYPE_WALL . 1)
    (:FUSION_OBSTACLE_TYPE_PILLAR . 2)
    (:FUSION_OBSTACLE_TYPE_FENCE . 3)
    (:FUSION_OBSTACLE_TYPE_STEP . 4)
    (:FUSION_OBSTACLE_TYPE_SPECIAL . 5)
    (:FUSION_OBSTACLE_TYPE_VEHICLE . 6)
    (:FUSION_OBSTACLE_TYPE_STATIC_BARRIER . 7)
    (:FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN . 8)
    (:FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE . 9)
    (:FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT . 10)
    (:FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT . 11)
    (:FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS . 12)
    (:FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR . 13)
    (:FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS . 14)
    (:FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FusionObstacleTypeEnum)))
    "Constants for message type 'FusionObstacleTypeEnum"
  '((:FUSION_OBSTACLE_TYPE_UNKNOWN . 0)
    (:FUSION_OBSTACLE_TYPE_WALL . 1)
    (:FUSION_OBSTACLE_TYPE_PILLAR . 2)
    (:FUSION_OBSTACLE_TYPE_FENCE . 3)
    (:FUSION_OBSTACLE_TYPE_STEP . 4)
    (:FUSION_OBSTACLE_TYPE_SPECIAL . 5)
    (:FUSION_OBSTACLE_TYPE_VEHICLE . 6)
    (:FUSION_OBSTACLE_TYPE_STATIC_BARRIER . 7)
    (:FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN . 8)
    (:FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE . 9)
    (:FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT . 10)
    (:FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT . 11)
    (:FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS . 12)
    (:FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR . 13)
    (:FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS . 14)
    (:FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FusionObstacleTypeEnum>) ostream)
  "Serializes a message object of type '<FusionObstacleTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FusionObstacleTypeEnum>) istream)
  "Deserializes a message object of type '<FusionObstacleTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FusionObstacleTypeEnum>)))
  "Returns string type for a message object of type '<FusionObstacleTypeEnum>"
  "perception_interface_msgs/FusionObstacleTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FusionObstacleTypeEnum)))
  "Returns string type for a message object of type 'FusionObstacleTypeEnum"
  "perception_interface_msgs/FusionObstacleTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FusionObstacleTypeEnum>)))
  "Returns md5sum for a message object of type '<FusionObstacleTypeEnum>"
  "bd8f5aa40adb65615ebb954ffa75bf9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FusionObstacleTypeEnum)))
  "Returns md5sum for a message object of type 'FusionObstacleTypeEnum"
  "bd8f5aa40adb65615ebb954ffa75bf9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FusionObstacleTypeEnum>)))
  "Returns full string definition for message of type '<FusionObstacleTypeEnum>"
  (cl:format cl:nil "uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0~%uint8 FUSION_OBSTACLE_TYPE_WALL = 1~%uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2~%uint8 FUSION_OBSTACLE_TYPE_FENCE = 3~%uint8 FUSION_OBSTACLE_TYPE_STEP = 4~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5~%uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6~%uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7~%uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8~%uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12~%uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14~%uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FusionObstacleTypeEnum)))
  "Returns full string definition for message of type 'FusionObstacleTypeEnum"
  (cl:format cl:nil "uint8 FUSION_OBSTACLE_TYPE_UNKNOWN = 0~%uint8 FUSION_OBSTACLE_TYPE_WALL = 1~%uint8 FUSION_OBSTACLE_TYPE_PILLAR = 2~%uint8 FUSION_OBSTACLE_TYPE_FENCE = 3~%uint8 FUSION_OBSTACLE_TYPE_STEP = 4~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL = 5~%uint8 FUSION_OBSTACLE_TYPE_VEHICLE = 6~%uint8 FUSION_OBSTACLE_TYPE_STATIC_BARRIER = 7~%uint8 FUSION_OBSTACLE_TYPE_ONLY_USS_UNKNOWN = 8~%uint8 FUSION_OBSTACLE_TYPE_USS_REALTIME_OBSTACLE = 9~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_IN_SLOT = 10~%uint8 FUSION_OBSTACLE_TYPE_WHEEL_STOPPER_OUT_SLOT = 11~%uint8 FUSION_OBSTACLE_TYPE_SPECIAL_VEHICLE_POINTS = 12~%uint8 FUSION_OBSTACLE_TYPE_REARVIEW_MIRROR = 13~%uint8 FUSION_OBSTACLE_TYPE_UNKNOWN_VEHICLE_POINTS = 14~%uint8 FUSION_OBSTACLE_TYPE_NO_RIDER_BICYCLIST = 15~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FusionObstacleTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FusionObstacleTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'FusionObstacleTypeEnum
    (cl:cons ':value (value msg))
))
