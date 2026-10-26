; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadBoundaryPassDirectionTypeEnum.msg.html

(cl:defclass <RoadBoundaryPassDirectionTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadBoundaryPassDirectionTypeEnum (<RoadBoundaryPassDirectionTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadBoundaryPassDirectionTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadBoundaryPassDirectionTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadBoundaryPassDirectionTypeEnum> is deprecated: use landmark_msgs-msg:RoadBoundaryPassDirectionTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadBoundaryPassDirectionTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadBoundaryPassDirectionTypeEnum>)))
    "Constants for message type '<RoadBoundaryPassDirectionTypeEnum>"
  '((:ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN . 0)
    (:ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT . 1)
    (:ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT . 2)
    (:ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadBoundaryPassDirectionTypeEnum)))
    "Constants for message type 'RoadBoundaryPassDirectionTypeEnum"
  '((:ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN . 0)
    (:ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT . 1)
    (:ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT . 2)
    (:ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadBoundaryPassDirectionTypeEnum>) ostream)
  "Serializes a message object of type '<RoadBoundaryPassDirectionTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadBoundaryPassDirectionTypeEnum>) istream)
  "Deserializes a message object of type '<RoadBoundaryPassDirectionTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadBoundaryPassDirectionTypeEnum>)))
  "Returns string type for a message object of type '<RoadBoundaryPassDirectionTypeEnum>"
  "landmark_msgs/RoadBoundaryPassDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadBoundaryPassDirectionTypeEnum)))
  "Returns string type for a message object of type 'RoadBoundaryPassDirectionTypeEnum"
  "landmark_msgs/RoadBoundaryPassDirectionTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadBoundaryPassDirectionTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadBoundaryPassDirectionTypeEnum>"
  "889301e8fd08f041114b165b78d373c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadBoundaryPassDirectionTypeEnum)))
  "Returns md5sum for a message object of type 'RoadBoundaryPassDirectionTypeEnum"
  "889301e8fd08f041114b165b78d373c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadBoundaryPassDirectionTypeEnum>)))
  "Returns full string definition for message of type '<RoadBoundaryPassDirectionTypeEnum>"
  (cl:format cl:nil "uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadBoundaryPassDirectionTypeEnum)))
  "Returns full string definition for message of type 'RoadBoundaryPassDirectionTypeEnum"
  (cl:format cl:nil "uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadBoundaryPassDirectionTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadBoundaryPassDirectionTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadBoundaryPassDirectionTypeEnum
    (cl:cons ':value (value msg))
))
