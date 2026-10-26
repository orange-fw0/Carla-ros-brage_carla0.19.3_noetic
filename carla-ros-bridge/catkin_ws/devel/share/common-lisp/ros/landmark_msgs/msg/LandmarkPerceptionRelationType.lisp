; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LandmarkPerceptionRelationType.msg.html

(cl:defclass <LandmarkPerceptionRelationType> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LandmarkPerceptionRelationType (<LandmarkPerceptionRelationType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LandmarkPerceptionRelationType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LandmarkPerceptionRelationType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LandmarkPerceptionRelationType> is deprecated: use landmark_msgs-msg:LandmarkPerceptionRelationType instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <LandmarkPerceptionRelationType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:value-val is deprecated.  Use landmark_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LandmarkPerceptionRelationType>)))
    "Constants for message type '<LandmarkPerceptionRelationType>"
  '((:RELATION_TYPE_UNKNOWN . 0)
    (:RELATION_TYPE_LANE_CENTER_CONNECTION . 1)
    (:RELATION_TYPE_ROAD_CONNECTION . 2)
    (:RELATION_TYPE_LANE_CENTER_ROAD_BINDING . 3)
    (:RELATION_TYPE_ROAD_ROAD_BINDING . 4)
    (:RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING . 5)
    (:RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING . 6)
    (:RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING . 7)
    (:RELATION_TYPE_CROSS_WALK_ROAD_BINDING . 8)
    (:RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING . 9)
    (:RELATION_TYPE_AOI_ROAD_BINDING . 10)
    (:RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING . 11)
    (:RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING . 12)
    (:RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING . 13)
    (:RELATION_TYPE_POLE_ROAD_BINDING . 14)
    (:RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING . 15)
    (:RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING . 16)
    (:RELATION_TYPE_ROAD_AOI_BINDING . 17)
    (:RELATION_TYPE_AOI_AOI_BINDING . 18)
    (:RELATION_TYPE_DASH_LINE_END_ROAD_BINDING . 19)
    (:RELATION_TYPE_DASH_LINE_END_LANE_BINDING . 20)
    (:RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING . 21)
    (:RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING . 22)
    (:RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING . 23)
    (:RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING . 24)
    (:RELATION_TYPE_ROAD_MARK_AOI_BINDING . 25)
    (:RELATION_TYPE_LANE_CENTER_AOI_BINDING . 26)
    (:RELATION_TYPE_STOP_LINE_AOI_BINDING . 27)
    (:RELATION_TYPE_CROSS_WALK_AOI_BINDING . 28)
    (:RELATION_TYPE_STOP_LINE_ROAD_BINDING . 29)
    (:RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING . 30)
    (:RELATION_TYPE_ROAD_MARK_ROAD_BINDING . 31)
    (:RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING . 50)
    (:RELATION_TYPE_PARKING_SPACE_ROAD_BINDING . 51)
    (:RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING . 52)
    (:RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING . 53)
    (:RELATION_TYPE_ROADMARK_ROADMARK_BINDING . 54)
    (:RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN . 55))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LandmarkPerceptionRelationType)))
    "Constants for message type 'LandmarkPerceptionRelationType"
  '((:RELATION_TYPE_UNKNOWN . 0)
    (:RELATION_TYPE_LANE_CENTER_CONNECTION . 1)
    (:RELATION_TYPE_ROAD_CONNECTION . 2)
    (:RELATION_TYPE_LANE_CENTER_ROAD_BINDING . 3)
    (:RELATION_TYPE_ROAD_ROAD_BINDING . 4)
    (:RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING . 5)
    (:RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING . 6)
    (:RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING . 7)
    (:RELATION_TYPE_CROSS_WALK_ROAD_BINDING . 8)
    (:RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING . 9)
    (:RELATION_TYPE_AOI_ROAD_BINDING . 10)
    (:RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING . 11)
    (:RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING . 12)
    (:RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING . 13)
    (:RELATION_TYPE_POLE_ROAD_BINDING . 14)
    (:RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING . 15)
    (:RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING . 16)
    (:RELATION_TYPE_ROAD_AOI_BINDING . 17)
    (:RELATION_TYPE_AOI_AOI_BINDING . 18)
    (:RELATION_TYPE_DASH_LINE_END_ROAD_BINDING . 19)
    (:RELATION_TYPE_DASH_LINE_END_LANE_BINDING . 20)
    (:RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING . 21)
    (:RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING . 22)
    (:RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING . 23)
    (:RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING . 24)
    (:RELATION_TYPE_ROAD_MARK_AOI_BINDING . 25)
    (:RELATION_TYPE_LANE_CENTER_AOI_BINDING . 26)
    (:RELATION_TYPE_STOP_LINE_AOI_BINDING . 27)
    (:RELATION_TYPE_CROSS_WALK_AOI_BINDING . 28)
    (:RELATION_TYPE_STOP_LINE_ROAD_BINDING . 29)
    (:RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING . 30)
    (:RELATION_TYPE_ROAD_MARK_ROAD_BINDING . 31)
    (:RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING . 50)
    (:RELATION_TYPE_PARKING_SPACE_ROAD_BINDING . 51)
    (:RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING . 52)
    (:RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING . 53)
    (:RELATION_TYPE_ROADMARK_ROADMARK_BINDING . 54)
    (:RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN . 55))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LandmarkPerceptionRelationType>) ostream)
  "Serializes a message object of type '<LandmarkPerceptionRelationType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LandmarkPerceptionRelationType>) istream)
  "Deserializes a message object of type '<LandmarkPerceptionRelationType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LandmarkPerceptionRelationType>)))
  "Returns string type for a message object of type '<LandmarkPerceptionRelationType>"
  "landmark_msgs/LandmarkPerceptionRelationType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LandmarkPerceptionRelationType)))
  "Returns string type for a message object of type 'LandmarkPerceptionRelationType"
  "landmark_msgs/LandmarkPerceptionRelationType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LandmarkPerceptionRelationType>)))
  "Returns md5sum for a message object of type '<LandmarkPerceptionRelationType>"
  "6d963b1af85e94fd4115f94d4e125715")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LandmarkPerceptionRelationType)))
  "Returns md5sum for a message object of type 'LandmarkPerceptionRelationType"
  "6d963b1af85e94fd4115f94d4e125715")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LandmarkPerceptionRelationType>)))
  "Returns full string definition for message of type '<LandmarkPerceptionRelationType>"
  (cl:format cl:nil "uint8 RELATION_TYPE_UNKNOWN = 0~%uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1~%uint8 RELATION_TYPE_ROAD_CONNECTION = 2~%uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3~%uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4~%uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5~%uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6~%uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7~%uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8~%uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9~%uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10~%uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11~%uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12~%uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13~%uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16~%uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17~%uint8 RELATION_TYPE_AOI_AOI_BINDING = 18~%uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19~%uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22~%uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23~%uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24~%uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25~%uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26~%uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27~%uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28~%uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29~%uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30~%uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31~%uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50~%uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51~%uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52~%uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53~%uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54~%uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LandmarkPerceptionRelationType)))
  "Returns full string definition for message of type 'LandmarkPerceptionRelationType"
  (cl:format cl:nil "uint8 RELATION_TYPE_UNKNOWN = 0~%uint8 RELATION_TYPE_LANE_CENTER_CONNECTION = 1~%uint8 RELATION_TYPE_ROAD_CONNECTION = 2~%uint8 RELATION_TYPE_LANE_CENTER_ROAD_BINDING = 3~%uint8 RELATION_TYPE_ROAD_ROAD_BINDING = 4~%uint8 RELATION_TYPE_LANE_BOUNDARY_LANE_CENTER_BINDING = 5~%uint8 RELATION_TYPE_ROAD_BOUNDARY_ROAD_BINDING = 6~%uint8 RELATION_TYPE_STOP_LINE_LANE_CONTER_BINDING = 7~%uint8 RELATION_TYPE_CROSS_WALK_ROAD_BINDING = 8~%uint8 RELATION_TYPE_ROAD_MARK_LANE_CENTER_BINDING = 9~%uint8 RELATION_TYPE_AOI_ROAD_BINDING = 10~%uint8 RELATION_TYPE_SPEED_BUMP_LANE_CENTER_BINDING = 11~%uint8 RELATION_TYPE_TRAFFIC_SIGN_ROAD_BINDING = 12~%uint8 RELATION_TYPE_TRAFFIC_SIGN_LANE_CENTER_BINDING = 13~%uint8 RELATION_TYPE_POLE_ROAD_BINDING = 14~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_LANE_CENTER_BINDING = 15~%uint8 RELATION_TYPE_TRAFFIC_LIGHT_ROAD_BINDING = 16~%uint8 RELATION_TYPE_ROAD_AOI_BINDING = 17~%uint8 RELATION_TYPE_AOI_AOI_BINDING = 18~%uint8 RELATION_TYPE_DASH_LINE_END_ROAD_BINDING = 19~%uint8 RELATION_TYPE_DASH_LINE_END_LANE_BINDING = 20~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_LANE_CENTER_BINDING = 21~%uint8 RELATION_TYPE_TRAFFIC_SIGN_GUIDE_ARROW_MUTUAL_BINDING = 22~%uint8 RELATION_TYPE_LANE_BOUNDARY_AOI_BINDING = 23~%uint8 RELATION_TYPE_ROAD_BOUNDARY_AOI_BINDING = 24~%uint8 RELATION_TYPE_ROAD_MARK_AOI_BINDING = 25~%uint8 RELATION_TYPE_LANE_CENTER_AOI_BINDING = 26~%uint8 RELATION_TYPE_STOP_LINE_AOI_BINDING = 27~%uint8 RELATION_TYPE_CROSS_WALK_AOI_BINDING = 28~%uint8 RELATION_TYPE_STOP_LINE_ROAD_BINDING = 29~%uint8 RELATION_TYPE_LANE_BOUNDARY_ROAD_BINDING = 30~%uint8 RELATION_TYPE_ROAD_MARK_ROAD_BINDING = 31~%uint8 RELATION_TYPE_ROAD_OBSTACLE_ROAD_BINDING = 50~%uint8 RELATION_TYPE_PARKING_SPACE_ROAD_BINDING = 51~%uint8 RELATION_TYPE_PARKING_FACILITY_ROAD_BINDING = 52~%uint8 RELATION_TYPE_ROAD_ENTRY_LINE_ROAD_BINDING = 53~%uint8 RELATION_TYPE_ROADMARK_ROADMARK_BINDING = 54~%uint8 RELATION_TYPE_TRAFFICLIGHT_DIGIT_BIND_PATTERN = 55~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LandmarkPerceptionRelationType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LandmarkPerceptionRelationType>))
  "Converts a ROS message object to a list"
  (cl:list 'LandmarkPerceptionRelationType
    (cl:cons ':value (value msg))
))
