; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude PerceptionSceneTypeEnum.msg.html

(cl:defclass <PerceptionSceneTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PerceptionSceneTypeEnum (<PerceptionSceneTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptionSceneTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptionSceneTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<PerceptionSceneTypeEnum> is deprecated: use perception_interface_msgs-msg:PerceptionSceneTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PerceptionSceneTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:value-val is deprecated.  Use perception_interface_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PerceptionSceneTypeEnum>)))
    "Constants for message type '<PerceptionSceneTypeEnum>"
  '((:SCENE_TYPE_UNKNOWN . 0)
    (:SCENE_TYPE_QUEUE . 1)
    (:SCENE_TYPE_LONGTERM_LANE_OCCUPATION . 2)
    (:SCENE_TYPE_SHORTTERM_LANE_OCCUPATION . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PerceptionSceneTypeEnum)))
    "Constants for message type 'PerceptionSceneTypeEnum"
  '((:SCENE_TYPE_UNKNOWN . 0)
    (:SCENE_TYPE_QUEUE . 1)
    (:SCENE_TYPE_LONGTERM_LANE_OCCUPATION . 2)
    (:SCENE_TYPE_SHORTTERM_LANE_OCCUPATION . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptionSceneTypeEnum>) ostream)
  "Serializes a message object of type '<PerceptionSceneTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptionSceneTypeEnum>) istream)
  "Deserializes a message object of type '<PerceptionSceneTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptionSceneTypeEnum>)))
  "Returns string type for a message object of type '<PerceptionSceneTypeEnum>"
  "perception_interface_msgs/PerceptionSceneTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptionSceneTypeEnum)))
  "Returns string type for a message object of type 'PerceptionSceneTypeEnum"
  "perception_interface_msgs/PerceptionSceneTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptionSceneTypeEnum>)))
  "Returns md5sum for a message object of type '<PerceptionSceneTypeEnum>"
  "288e77c5a09037bbacfe754c74a84da7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptionSceneTypeEnum)))
  "Returns md5sum for a message object of type 'PerceptionSceneTypeEnum"
  "288e77c5a09037bbacfe754c74a84da7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptionSceneTypeEnum>)))
  "Returns full string definition for message of type '<PerceptionSceneTypeEnum>"
  (cl:format cl:nil "uint8 SCENE_TYPE_UNKNOWN = 0~%uint8 SCENE_TYPE_QUEUE = 1~%uint8 SCENE_TYPE_LONGTERM_LANE_OCCUPATION = 2~%uint8 SCENE_TYPE_SHORTTERM_LANE_OCCUPATION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptionSceneTypeEnum)))
  "Returns full string definition for message of type 'PerceptionSceneTypeEnum"
  (cl:format cl:nil "uint8 SCENE_TYPE_UNKNOWN = 0~%uint8 SCENE_TYPE_QUEUE = 1~%uint8 SCENE_TYPE_LONGTERM_LANE_OCCUPATION = 2~%uint8 SCENE_TYPE_SHORTTERM_LANE_OCCUPATION = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptionSceneTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptionSceneTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptionSceneTypeEnum
    (cl:cons ':value (value msg))
))
