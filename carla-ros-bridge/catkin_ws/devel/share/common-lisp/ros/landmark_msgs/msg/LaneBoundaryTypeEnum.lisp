; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneBoundaryTypeEnum.msg.html

(cl:defclass <LaneBoundaryTypeEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LaneBoundaryTypeEnum (<LaneBoundaryTypeEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryTypeEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryTypeEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneBoundaryTypeEnum> is deprecated: use landmark_msgs-msg:LaneBoundaryTypeEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LaneBoundaryTypeEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundaryTypeEnum>)))
    "Constants for message type '<LaneBoundaryTypeEnum>"
  '((:LANE_BOUNDARY_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_TYPE_DASHED . 1)
    (:LANE_BOUNDARY_TYPE_SOLID . 2)
    (:LANE_BOUNDARY_TYPE_DOUBLE_SOLID . 3)
    (:LANE_BOUNDARY_TYPE_DOUBLE_DASHED . 4)
    (:LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID . 5)
    (:LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED . 6)
    (:LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED . 7)
    (:LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID . 8)
    (:LANE_BOUNDARY_TYPE_ZIG_ZAG . 9)
    (:LANE_BOUNDARY_TYPE_BOTTS_DOTS . 10)
    (:LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK . 11)
    (:LANE_BOUNDARY_TYPE_LOGICAL . 12)
    (:LANE_BOUNDARY_TYPE_PHYSICAL . 13)
    (:LANE_BOUNDARY_TYPE_VIRTUAL . 14)
    (:LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE . 15)
    (:LANE_BOUNDARY_TYPE_SHADE_AREA . 16)
    (:LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING . 17)
    (:LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING . 18)
    (:LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING . 19)
    (:LANE_BOUNDARY_TYPE_UNCLOSED_ROAD . 20)
    (:LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE . 21)
    (:LANE_BOUNDARY_TYPE_OTHERS . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundaryTypeEnum)))
    "Constants for message type 'LaneBoundaryTypeEnum"
  '((:LANE_BOUNDARY_TYPE_UNKNOWN . 0)
    (:LANE_BOUNDARY_TYPE_DASHED . 1)
    (:LANE_BOUNDARY_TYPE_SOLID . 2)
    (:LANE_BOUNDARY_TYPE_DOUBLE_SOLID . 3)
    (:LANE_BOUNDARY_TYPE_DOUBLE_DASHED . 4)
    (:LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID . 5)
    (:LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED . 6)
    (:LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED . 7)
    (:LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID . 8)
    (:LANE_BOUNDARY_TYPE_ZIG_ZAG . 9)
    (:LANE_BOUNDARY_TYPE_BOTTS_DOTS . 10)
    (:LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK . 11)
    (:LANE_BOUNDARY_TYPE_LOGICAL . 12)
    (:LANE_BOUNDARY_TYPE_PHYSICAL . 13)
    (:LANE_BOUNDARY_TYPE_VIRTUAL . 14)
    (:LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE . 15)
    (:LANE_BOUNDARY_TYPE_SHADE_AREA . 16)
    (:LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING . 17)
    (:LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING . 18)
    (:LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING . 19)
    (:LANE_BOUNDARY_TYPE_UNCLOSED_ROAD . 20)
    (:LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE . 21)
    (:LANE_BOUNDARY_TYPE_OTHERS . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryTypeEnum>) ostream)
  "Serializes a message object of type '<LaneBoundaryTypeEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryTypeEnum>) istream)
  "Deserializes a message object of type '<LaneBoundaryTypeEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryTypeEnum>)))
  "Returns string type for a message object of type '<LaneBoundaryTypeEnum>"
  "landmark_msgs/LaneBoundaryTypeEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryTypeEnum)))
  "Returns string type for a message object of type 'LaneBoundaryTypeEnum"
  "landmark_msgs/LaneBoundaryTypeEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryTypeEnum>)))
  "Returns md5sum for a message object of type '<LaneBoundaryTypeEnum>"
  "d88357c717eba9bdaa54eb321b39ac5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryTypeEnum)))
  "Returns md5sum for a message object of type 'LaneBoundaryTypeEnum"
  "d88357c717eba9bdaa54eb321b39ac5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryTypeEnum>)))
  "Returns full string definition for message of type '<LaneBoundaryTypeEnum>"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_TYPE_DASHED = 1~%uint8 LANE_BOUNDARY_TYPE_SOLID = 2~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8~%uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9~%uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10~%uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11~%uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12~%uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14~%uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15~%uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16~%uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17~%uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18~%uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19~%uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20~%uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21~%uint8 LANE_BOUNDARY_TYPE_OTHERS = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryTypeEnum)))
  "Returns full string definition for message of type 'LaneBoundaryTypeEnum"
  (cl:format cl:nil "uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_TYPE_DASHED = 1~%uint8 LANE_BOUNDARY_TYPE_SOLID = 2~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8~%uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9~%uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10~%uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11~%uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12~%uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14~%uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15~%uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16~%uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17~%uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18~%uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19~%uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20~%uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21~%uint8 LANE_BOUNDARY_TYPE_OTHERS = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryTypeEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryTypeEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryTypeEnum
    (cl:cons ':value (value msg))
))
