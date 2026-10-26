; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightGroup.msg.html

(cl:defclass <TrafficLightGroup> (roslisp-msg-protocol:ros-message)
  ((traffic_light_group
    :reader traffic_light_group
    :initarg :traffic_light_group
    :type (cl:vector landmark_msgs-msg:TrafficLight)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficLight :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficLight))))
)

(cl:defclass TrafficLightGroup (<TrafficLightGroup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightGroup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightGroup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightGroup> is deprecated: use landmark_msgs-msg:TrafficLightGroup instead.")))

(cl:ensure-generic-function 'traffic_light_group-val :lambda-list '(m))
(cl:defmethod traffic_light_group-val ((m <TrafficLightGroup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:traffic_light_group-val is deprecated.  Use landmark_msgs-msg:traffic_light_group instead.")
  (traffic_light_group m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightGroup>) ostream)
  "Serializes a message object of type '<TrafficLightGroup>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_group))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightGroup>) istream)
  "Deserializes a message object of type '<TrafficLightGroup>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_group) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_group)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficLight))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightGroup>)))
  "Returns string type for a message object of type '<TrafficLightGroup>"
  "landmark_msgs/TrafficLightGroup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightGroup)))
  "Returns string type for a message object of type 'TrafficLightGroup"
  "landmark_msgs/TrafficLightGroup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightGroup>)))
  "Returns md5sum for a message object of type '<TrafficLightGroup>"
  "34a6c3d5e052809d6c4478b72401e015")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightGroup)))
  "Returns md5sum for a message object of type 'TrafficLightGroup"
  "34a6c3d5e052809d6c4478b72401e015")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightGroup>)))
  "Returns full string definition for message of type '<TrafficLightGroup>"
  (cl:format cl:nil "landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightGroup)))
  "Returns full string definition for message of type 'TrafficLightGroup"
  (cl:format cl:nil "landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightGroup>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_group) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightGroup>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightGroup
    (cl:cons ':traffic_light_group (traffic_light_group msg))
))
