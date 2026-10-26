; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude SpeedBumpTypeEnum.msg.html

(cl:defclass <SpeedBumpTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SpeedBumpTypeEnum (<SpeedBumpTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedBumpTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedBumpTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<SpeedBumpTypeEnum> is deprecated: use landmark_msgs-msg:SpeedBumpTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SpeedBumpTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedBumpTypeEnum>)))
    "Constants for message type '<SpeedBumpTypeEnum>"
  '((:SPEED_BUMP_TYPE_UNKNOWN . 0)
    (:SPEED_BUMP_TYPE_NORMAL . 1)
    (:SPEED_BUMP_TYPE_BLOCK . 2)
    (:SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedBumpTypeEnum)))
    "Constants for message type 'SpeedBumpTypeEnum"
  '((:SPEED_BUMP_TYPE_UNKNOWN . 0)
    (:SPEED_BUMP_TYPE_NORMAL . 1)
    (:SPEED_BUMP_TYPE_BLOCK . 2)
    (:SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedBumpTypeEnum>) ostream)
  "Serializes a message object of type '<SpeedBumpTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedBumpTypeEnum>) istream)
  "Deserializes a message object of type '<SpeedBumpTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedBumpTypeEnum>)))
  "Returns string type for a message object of type '<SpeedBumpTypeEnum>"
  "landmark_msgs/SpeedBumpTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedBumpTypeEnum)))
  "Returns string type for a message object of type 'SpeedBumpTypeEnum"
  "landmark_msgs/SpeedBumpTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedBumpTypeEnum>)))
  "Returns md5sum for a message object of type '<SpeedBumpTypeEnum>"
  "f22b8c263763f223e58e1d2424b844ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedBumpTypeEnum)))
  "Returns md5sum for a message object of type 'SpeedBumpTypeEnum"
  "f22b8c263763f223e58e1d2424b844ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedBumpTypeEnum>)))
  "Returns full string definition for message of type '<SpeedBumpTypeEnum>"
  (cl:format cl:nil "uint8 SPEED_BUMP_TYPE_UNKNOWN = 0~%uint8 SPEED_BUMP_TYPE_NORMAL = 1~%uint8 SPEED_BUMP_TYPE_BLOCK = 2~%uint8 SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedBumpTypeEnum)))
  "Returns full string definition for message of type 'SpeedBumpTypeEnum"
  (cl:format cl:nil "uint8 SPEED_BUMP_TYPE_UNKNOWN = 0~%uint8 SPEED_BUMP_TYPE_NORMAL = 1~%uint8 SPEED_BUMP_TYPE_BLOCK = 2~%uint8 SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedBumpTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedBumpTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedBumpTypeEnum
    (cl:cons ':value (value msg))
))
