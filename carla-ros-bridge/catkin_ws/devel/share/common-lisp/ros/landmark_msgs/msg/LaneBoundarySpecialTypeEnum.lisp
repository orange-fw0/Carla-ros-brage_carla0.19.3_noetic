; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneBoundarySpecialTypeEnum.msg.html

(cl:defclass <LaneBoundarySpecialTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundarySpecialTypeEnum (<LaneBoundarySpecialTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundarySpecialTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundarySpecialTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneBoundarySpecialTypeEnum> is deprecated: use landmark_msgs-msg:LaneBoundarySpecialTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundarySpecialTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundarySpecialTypeEnum>)))
    "Constants for message type '<LaneBoundarySpecialTypeEnum>"
  '((:LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT . 1)
    (:LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT . 2)
    (:LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT . 3)
    (:LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT . 4)
    (:LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT . 5)
    (:LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundarySpecialTypeEnum)))
    "Constants for message type 'LaneBoundarySpecialTypeEnum"
  '((:LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT . 1)
    (:LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT . 2)
    (:LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT . 3)
    (:LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT . 4)
    (:LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT . 5)
    (:LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundarySpecialTypeEnum>) ostream)
  "Serializes a message object of type '<LaneBoundarySpecialTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundarySpecialTypeEnum>) istream)
  "Deserializes a message object of type '<LaneBoundarySpecialTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundarySpecialTypeEnum>)))
  "Returns string type for a message object of type '<LaneBoundarySpecialTypeEnum>"
  "landmark_msgs/LaneBoundarySpecialTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundarySpecialTypeEnum)))
  "Returns string type for a message object of type 'LaneBoundarySpecialTypeEnum"
  "landmark_msgs/LaneBoundarySpecialTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundarySpecialTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneBoundarySpecialTypeEnum>"
  "256a6813971319c042d9e22bfa2a0297")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundarySpecialTypeEnum)))
  "Returns md5sum for a message object of type 'LaneBoundarySpecialTypeEnum"
  "256a6813971319c042d9e22bfa2a0297")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundarySpecialTypeEnum>)))
  "Returns full string definition for message of type '<LaneBoundarySpecialTypeEnum>"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundarySpecialTypeEnum)))
  "Returns full string definition for message of type 'LaneBoundarySpecialTypeEnum"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundarySpecialTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundarySpecialTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundarySpecialTypeEnum
    (cl:cons ':value (value msg))
))
