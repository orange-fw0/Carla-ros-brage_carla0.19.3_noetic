; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LandmarkPerceptionNodeType.msg.html

(cl:defclass <LandmarkPerceptionNodeType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LandmarkPerceptionNodeType (<LandmarkPerceptionNodeType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkPerceptionNodeType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkPerceptionNodeType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LandmarkPerceptionNodeType> is deprecated: use landmark_msgs-msg:LandmarkPerceptionNodeType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LandmarkPerceptionNodeType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LandmarkPerceptionNodeType>)))
    "Constants for message type '<LandmarkPerceptionNodeType>"
  '((:NODE_TYPE_UNKNOWN . 0)
    (:NODE_TYPE_LANE_CENTER . 1)
    (:NODE_TYPE_LANE_BOUNDARY . 2)
    (:NODE_TYPE_ROAD_BOUNDARY . 3)
    (:NODE_TYPE_ROAD . 4)
    (:NODE_TYPE_STOP_LINE . 5)
    (:NODE_TYPE_CROSS_WALK . 6)
    (:NODE_TYPE_VALID_ROI . 7)
    (:NODE_TYPE_ROAD_MARK . 8)
    (:NODE_TYPE_AOI . 9)
    (:NODE_TYPE_TRAFFIC_SIGN . 10)
    (:NODE_TYPE_TRAFFIC_POLE . 11)
    (:NODE_TYPE_TRAFFIC_LIGHT . 12)
    (:NODE_TYPE_SPEEDBUMP . 13)
    (:NODE_TYPE_DASH_LINE_END . 14)
    (:NODE_TYPE_ROAD_ENTRY_LINE . 15)
    (:NODE_TYPE_ROAD_OBSTACLE . 50)
    (:NODE_TYPE_PARKING_SPACE . 51)
    (:NODE_TYPE_PARKING_FACILITY . 52))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LandmarkPerceptionNodeType)))
    "Constants for message type 'LandmarkPerceptionNodeType"
  '((:NODE_TYPE_UNKNOWN . 0)
    (:NODE_TYPE_LANE_CENTER . 1)
    (:NODE_TYPE_LANE_BOUNDARY . 2)
    (:NODE_TYPE_ROAD_BOUNDARY . 3)
    (:NODE_TYPE_ROAD . 4)
    (:NODE_TYPE_STOP_LINE . 5)
    (:NODE_TYPE_CROSS_WALK . 6)
    (:NODE_TYPE_VALID_ROI . 7)
    (:NODE_TYPE_ROAD_MARK . 8)
    (:NODE_TYPE_AOI . 9)
    (:NODE_TYPE_TRAFFIC_SIGN . 10)
    (:NODE_TYPE_TRAFFIC_POLE . 11)
    (:NODE_TYPE_TRAFFIC_LIGHT . 12)
    (:NODE_TYPE_SPEEDBUMP . 13)
    (:NODE_TYPE_DASH_LINE_END . 14)
    (:NODE_TYPE_ROAD_ENTRY_LINE . 15)
    (:NODE_TYPE_ROAD_OBSTACLE . 50)
    (:NODE_TYPE_PARKING_SPACE . 51)
    (:NODE_TYPE_PARKING_FACILITY . 52))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkPerceptionNodeType>) ostream)
  "Serializes a message object of type '<LandmarkPerceptionNodeType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkPerceptionNodeType>) istream)
  "Deserializes a message object of type '<LandmarkPerceptionNodeType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkPerceptionNodeType>)))
  "Returns string type for a message object of type '<LandmarkPerceptionNodeType>"
  "landmark_msgs/LandmarkPerceptionNodeType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkPerceptionNodeType)))
  "Returns string type for a message object of type 'LandmarkPerceptionNodeType"
  "landmark_msgs/LandmarkPerceptionNodeType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkPerceptionNodeType>)))
  "Returns md5sum for a message object of type '<LandmarkPerceptionNodeType>"
  "1cbaa0467922efb7887e0a60111189cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkPerceptionNodeType)))
  "Returns md5sum for a message object of type 'LandmarkPerceptionNodeType"
  "1cbaa0467922efb7887e0a60111189cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkPerceptionNodeType>)))
  "Returns full string definition for message of type '<LandmarkPerceptionNodeType>"
  (cl:format cl:nil "uint8 NODE_TYPE_UNKNOWN = 0~%uint8 NODE_TYPE_LANE_CENTER = 1~%uint8 NODE_TYPE_LANE_BOUNDARY = 2~%uint8 NODE_TYPE_ROAD_BOUNDARY = 3~%uint8 NODE_TYPE_ROAD = 4~%uint8 NODE_TYPE_STOP_LINE = 5~%uint8 NODE_TYPE_CROSS_WALK = 6~%uint8 NODE_TYPE_VALID_ROI = 7~%uint8 NODE_TYPE_ROAD_MARK = 8~%uint8 NODE_TYPE_AOI = 9~%uint8 NODE_TYPE_TRAFFIC_SIGN = 10~%uint8 NODE_TYPE_TRAFFIC_POLE = 11~%uint8 NODE_TYPE_TRAFFIC_LIGHT = 12~%uint8 NODE_TYPE_SPEEDBUMP = 13~%uint8 NODE_TYPE_DASH_LINE_END = 14~%uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15~%uint8 NODE_TYPE_ROAD_OBSTACLE = 50~%uint8 NODE_TYPE_PARKING_SPACE = 51~%uint8 NODE_TYPE_PARKING_FACILITY = 52~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkPerceptionNodeType)))
  "Returns full string definition for message of type 'LandmarkPerceptionNodeType"
  (cl:format cl:nil "uint8 NODE_TYPE_UNKNOWN = 0~%uint8 NODE_TYPE_LANE_CENTER = 1~%uint8 NODE_TYPE_LANE_BOUNDARY = 2~%uint8 NODE_TYPE_ROAD_BOUNDARY = 3~%uint8 NODE_TYPE_ROAD = 4~%uint8 NODE_TYPE_STOP_LINE = 5~%uint8 NODE_TYPE_CROSS_WALK = 6~%uint8 NODE_TYPE_VALID_ROI = 7~%uint8 NODE_TYPE_ROAD_MARK = 8~%uint8 NODE_TYPE_AOI = 9~%uint8 NODE_TYPE_TRAFFIC_SIGN = 10~%uint8 NODE_TYPE_TRAFFIC_POLE = 11~%uint8 NODE_TYPE_TRAFFIC_LIGHT = 12~%uint8 NODE_TYPE_SPEEDBUMP = 13~%uint8 NODE_TYPE_DASH_LINE_END = 14~%uint8 NODE_TYPE_ROAD_ENTRY_LINE = 15~%uint8 NODE_TYPE_ROAD_OBSTACLE = 50~%uint8 NODE_TYPE_PARKING_SPACE = 51~%uint8 NODE_TYPE_PARKING_FACILITY = 52~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkPerceptionNodeType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkPerceptionNodeType>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkPerceptionNodeType
    (cl:cons ':value (value msg))
))
