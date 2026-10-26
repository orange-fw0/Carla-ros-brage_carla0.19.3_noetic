; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneBoundaryDirectionTypeEnum.msg.html

(cl:defclass <LaneBoundaryDirectionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundaryDirectionTypeEnum (<LaneBoundaryDirectionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryDirectionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryDirectionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneBoundaryDirectionTypeEnum> is deprecated: use landmark_msgs-msg:LaneBoundaryDirectionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundaryDirectionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundaryDirectionTypeEnum>)))
    "Constants for message type '<LaneBoundaryDirectionTypeEnum>"
  '((:LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_DIRECTION_TYPE_SAME . 1)
    (:LANE_BOUNDARY_DIRECTION_TYPE_REVERSE . 2)
    (:LANE_BOUNDARY_DIRECTION_TYPE_BOTH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundaryDirectionTypeEnum)))
    "Constants for message type 'LaneBoundaryDirectionTypeEnum"
  '((:LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_DIRECTION_TYPE_SAME . 1)
    (:LANE_BOUNDARY_DIRECTION_TYPE_REVERSE . 2)
    (:LANE_BOUNDARY_DIRECTION_TYPE_BOTH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryDirectionTypeEnum>) ostream)
  "Serializes a message object of type '<LaneBoundaryDirectionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryDirectionTypeEnum>) istream)
  "Deserializes a message object of type '<LaneBoundaryDirectionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryDirectionTypeEnum>)))
  "Returns string type for a message object of type '<LaneBoundaryDirectionTypeEnum>"
  "landmark_msgs/LaneBoundaryDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryDirectionTypeEnum)))
  "Returns string type for a message object of type 'LaneBoundaryDirectionTypeEnum"
  "landmark_msgs/LaneBoundaryDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryDirectionTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneBoundaryDirectionTypeEnum>"
  "1c40bb7d175ce8e27090133aa1cd1366")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryDirectionTypeEnum)))
  "Returns md5sum for a message object of type 'LaneBoundaryDirectionTypeEnum"
  "1c40bb7d175ce8e27090133aa1cd1366")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryDirectionTypeEnum>)))
  "Returns full string definition for message of type '<LaneBoundaryDirectionTypeEnum>"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryDirectionTypeEnum)))
  "Returns full string definition for message of type 'LaneBoundaryDirectionTypeEnum"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryDirectionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryDirectionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryDirectionTypeEnum
    (cl:cons ':value (value msg))
))
