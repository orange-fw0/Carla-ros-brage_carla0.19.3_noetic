; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneBoundarySceneTypeEnum.msg.html

(cl:defclass <LaneBoundarySceneTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundarySceneTypeEnum (<LaneBoundarySceneTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundarySceneTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundarySceneTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneBoundarySceneTypeEnum> is deprecated: use landmark_msgs-msg:LaneBoundarySceneTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundarySceneTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundarySceneTypeEnum>)))
    "Constants for message type '<LaneBoundarySceneTypeEnum>"
  '((:LANE_BOUNDARY_SCENE_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_SCENE_TYPE_DISCARDED . 1)
    (:LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK . 2)
    (:LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE . 3)
    (:LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA . 4)
    (:LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundarySceneTypeEnum)))
    "Constants for message type 'LaneBoundarySceneTypeEnum"
  '((:LANE_BOUNDARY_SCENE_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_SCENE_TYPE_DISCARDED . 1)
    (:LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK . 2)
    (:LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE . 3)
    (:LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA . 4)
    (:LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundarySceneTypeEnum>) ostream)
  "Serializes a message object of type '<LaneBoundarySceneTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundarySceneTypeEnum>) istream)
  "Deserializes a message object of type '<LaneBoundarySceneTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundarySceneTypeEnum>)))
  "Returns string type for a message object of type '<LaneBoundarySceneTypeEnum>"
  "landmark_msgs/LaneBoundarySceneTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundarySceneTypeEnum)))
  "Returns string type for a message object of type 'LaneBoundarySceneTypeEnum"
  "landmark_msgs/LaneBoundarySceneTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundarySceneTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneBoundarySceneTypeEnum>"
  "5316f78aec7fd19d20a0439c3b3f8a02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundarySceneTypeEnum)))
  "Returns md5sum for a message object of type 'LaneBoundarySceneTypeEnum"
  "5316f78aec7fd19d20a0439c3b3f8a02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundarySceneTypeEnum>)))
  "Returns full string definition for message of type '<LaneBoundarySceneTypeEnum>"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1~%uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2~%uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3~%uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4~%uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundarySceneTypeEnum)))
  "Returns full string definition for message of type 'LaneBoundarySceneTypeEnum"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1~%uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2~%uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3~%uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4~%uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundarySceneTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundarySceneTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundarySceneTypeEnum
    (cl:cons ':value (value msg))
))
