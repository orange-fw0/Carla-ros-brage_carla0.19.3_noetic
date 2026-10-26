; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadBoundaryTypeEnum.msg.html

(cl:defclass <RoadBoundaryTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadBoundaryTypeEnum (<RoadBoundaryTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadBoundaryTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadBoundaryTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadBoundaryTypeEnum> is deprecated: use landmark_msgs-msg:RoadBoundaryTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadBoundaryTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadBoundaryTypeEnum>)))
    "Constants for message type '<RoadBoundaryTypeEnum>"
  '((:ROAD_BOUNDARY_TYPE_UNKNOWN . 0)
    (:ROAD_BOUNDARY_TYPE_NONE . 1)
    (:ROAD_BOUNDARY_TYPE_NORMAL . 2)
    (:ROAD_BOUNDARY_TYPE_VIRTUAL . 3)
    (:ROAD_BOUNDARY_TYPE_WATERHORSE . 4)
    (:ROAD_BOUNDARY_TYPE_CONE . 5)
    (:ROAD_BOUNDARY_TYPE_GREENBELT . 6)
    (:ROAD_BOUNDARY_TYPE_CEMENT_PIER . 7)
    (:ROAD_BOUNDARY_TYPE_GUTTER . 8)
    (:ROAD_BOUNDARY_TYPE_EMERGENCY_LANE . 9)
    (:ROAD_BOUNDARY_TYPE_GUARDRAIL . 10)
    (:ROAD_BOUNDARY_TYPE_DASH_LINE . 11)
    (:ROAD_BOUNDARY_TYPE_LOGICAL . 12)
    (:ROAD_BOUNDARY_TYPE_PHYSICAL . 13)
    (:ROAD_BOUNDARY_TYPE_SOLID_LINE . 14)
    (:ROAD_BOUNDARY_TYPE_CURB . 15)
    (:ROAD_BOUNDARY_TYPE_BOLLARD . 16)
    (:ROAD_BOUNDARY_TYPE_WALL . 17)
    (:ROAD_BOUNDARY_TYPE_CURB_YELLOW . 18)
    (:ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK . 19)
    (:ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA . 20))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadBoundaryTypeEnum)))
    "Constants for message type 'RoadBoundaryTypeEnum"
  '((:ROAD_BOUNDARY_TYPE_UNKNOWN . 0)
    (:ROAD_BOUNDARY_TYPE_NONE . 1)
    (:ROAD_BOUNDARY_TYPE_NORMAL . 2)
    (:ROAD_BOUNDARY_TYPE_VIRTUAL . 3)
    (:ROAD_BOUNDARY_TYPE_WATERHORSE . 4)
    (:ROAD_BOUNDARY_TYPE_CONE . 5)
    (:ROAD_BOUNDARY_TYPE_GREENBELT . 6)
    (:ROAD_BOUNDARY_TYPE_CEMENT_PIER . 7)
    (:ROAD_BOUNDARY_TYPE_GUTTER . 8)
    (:ROAD_BOUNDARY_TYPE_EMERGENCY_LANE . 9)
    (:ROAD_BOUNDARY_TYPE_GUARDRAIL . 10)
    (:ROAD_BOUNDARY_TYPE_DASH_LINE . 11)
    (:ROAD_BOUNDARY_TYPE_LOGICAL . 12)
    (:ROAD_BOUNDARY_TYPE_PHYSICAL . 13)
    (:ROAD_BOUNDARY_TYPE_SOLID_LINE . 14)
    (:ROAD_BOUNDARY_TYPE_CURB . 15)
    (:ROAD_BOUNDARY_TYPE_BOLLARD . 16)
    (:ROAD_BOUNDARY_TYPE_WALL . 17)
    (:ROAD_BOUNDARY_TYPE_CURB_YELLOW . 18)
    (:ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK . 19)
    (:ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA . 20))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadBoundaryTypeEnum>) ostream)
  "Serializes a message object of type '<RoadBoundaryTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadBoundaryTypeEnum>) istream)
  "Deserializes a message object of type '<RoadBoundaryTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadBoundaryTypeEnum>)))
  "Returns string type for a message object of type '<RoadBoundaryTypeEnum>"
  "landmark_msgs/RoadBoundaryTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadBoundaryTypeEnum)))
  "Returns string type for a message object of type 'RoadBoundaryTypeEnum"
  "landmark_msgs/RoadBoundaryTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadBoundaryTypeEnum>)))
  "Returns md5sum for a message object of type '<RoadBoundaryTypeEnum>"
  "8667598650ce3b2130edf7d50d7b0228")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadBoundaryTypeEnum)))
  "Returns md5sum for a message object of type 'RoadBoundaryTypeEnum"
  "8667598650ce3b2130edf7d50d7b0228")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadBoundaryTypeEnum>)))
  "Returns full string definition for message of type '<RoadBoundaryTypeEnum>"
  (cl:format cl:nil "uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_TYPE_NONE = 1~%uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2~%uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3~%uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4~%uint8 ROAD_BOUNDARY_TYPE_CONE = 5~%uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6~%uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7~%uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8~%uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9~%uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10~%uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11~%uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12~%uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14~%uint8 ROAD_BOUNDARY_TYPE_CURB = 15~%uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16~%uint8 ROAD_BOUNDARY_TYPE_WALL = 17~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19~%uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadBoundaryTypeEnum)))
  "Returns full string definition for message of type 'RoadBoundaryTypeEnum"
  (cl:format cl:nil "uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_TYPE_NONE = 1~%uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2~%uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3~%uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4~%uint8 ROAD_BOUNDARY_TYPE_CONE = 5~%uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6~%uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7~%uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8~%uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9~%uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10~%uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11~%uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12~%uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14~%uint8 ROAD_BOUNDARY_TYPE_CURB = 15~%uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16~%uint8 ROAD_BOUNDARY_TYPE_WALL = 17~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19~%uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadBoundaryTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadBoundaryTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadBoundaryTypeEnum
    (cl:cons ':value (value msg))
))
