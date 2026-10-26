; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadNodeFormwayEnum.msg.html

(cl:defclass <RoadNodeFormwayEnum> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RoadNodeFormwayEnum (<RoadNodeFormwayEnum>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadNodeFormwayEnum>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadNodeFormwayEnum)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadNodeFormwayEnum> is deprecated: use landmark_msgs-msg:RoadNodeFormwayEnum instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RoadNodeFormwayEnum>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadNodeFormwayEnum>)))
    "Constants for message type '<RoadNodeFormwayEnum>"
  '((:FORMWAY_UNKNOWN . 0)
    (:SINGLE_CARRIAGE_WAY . 1)
    (:IC . 2)
    (:JCT . 3)
    (:SERVICE . 4)
    (:TUNNEL . 5)
    (:TOLL . 6)
    (:SLIP_ROAD . 7)
    (:SIDEROAD . 8)
    (:ROUNDABOUT . 9)
    (:RAMP_ENTRY . 10)
    (:RAMP_EXIT . 11)
    (:SAPA . 12)
    (:PARKING_RAMP . 13)
    (:PARKING_ROAD . 14)
    (:U_TURN . 15)
    (:TURN_RIGHT . 16)
    (:TURN_LEFT . 17)
    (:TURN_LEFT_RIGHT . 18)
    (:CROSS_LINK . 19)
    (:SERVICE_AND_SLIP_ROAD . 20)
    (:SERVICE_AND_JCT . 21)
    (:SERVICE_AND_SLIP_ROAD_AND_JCT . 22)
    (:MULTIPLE_CARRIAGE_WAY . 23)
    (:CHECK_POINT . 24)
    (:WALK_ROAD . 25)
    (:PARALLED_ROAD . 26)
    (:OTHERS . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadNodeFormwayEnum)))
    "Constants for message type 'RoadNodeFormwayEnum"
  '((:FORMWAY_UNKNOWN . 0)
    (:SINGLE_CARRIAGE_WAY . 1)
    (:IC . 2)
    (:JCT . 3)
    (:SERVICE . 4)
    (:TUNNEL . 5)
    (:TOLL . 6)
    (:SLIP_ROAD . 7)
    (:SIDEROAD . 8)
    (:ROUNDABOUT . 9)
    (:RAMP_ENTRY . 10)
    (:RAMP_EXIT . 11)
    (:SAPA . 12)
    (:PARKING_RAMP . 13)
    (:PARKING_ROAD . 14)
    (:U_TURN . 15)
    (:TURN_RIGHT . 16)
    (:TURN_LEFT . 17)
    (:TURN_LEFT_RIGHT . 18)
    (:CROSS_LINK . 19)
    (:SERVICE_AND_SLIP_ROAD . 20)
    (:SERVICE_AND_JCT . 21)
    (:SERVICE_AND_SLIP_ROAD_AND_JCT . 22)
    (:MULTIPLE_CARRIAGE_WAY . 23)
    (:CHECK_POINT . 24)
    (:WALK_ROAD . 25)
    (:PARALLED_ROAD . 26)
    (:OTHERS . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadNodeFormwayEnum>) ostream)
  "Serializes a message object of type '<RoadNodeFormwayEnum>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadNodeFormwayEnum>) istream)
  "Deserializes a message object of type '<RoadNodeFormwayEnum>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadNodeFormwayEnum>)))
  "Returns string type for a message object of type '<RoadNodeFormwayEnum>"
  "landmark_msgs/RoadNodeFormwayEnum")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadNodeFormwayEnum)))
  "Returns string type for a message object of type 'RoadNodeFormwayEnum"
  "landmark_msgs/RoadNodeFormwayEnum")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadNodeFormwayEnum>)))
  "Returns md5sum for a message object of type '<RoadNodeFormwayEnum>"
  "94ebc80755913b27bbd791c06beea3fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadNodeFormwayEnum)))
  "Returns md5sum for a message object of type 'RoadNodeFormwayEnum"
  "94ebc80755913b27bbd791c06beea3fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadNodeFormwayEnum>)))
  "Returns full string definition for message of type '<RoadNodeFormwayEnum>"
  (cl:format cl:nil "uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadNodeFormwayEnum)))
  "Returns full string definition for message of type 'RoadNodeFormwayEnum"
  (cl:format cl:nil "uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadNodeFormwayEnum>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadNodeFormwayEnum>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadNodeFormwayEnum
    (cl:cons ':value (value msg))
))
