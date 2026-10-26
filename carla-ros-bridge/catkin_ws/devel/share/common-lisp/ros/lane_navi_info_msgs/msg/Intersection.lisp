; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude Intersection.msg.html

(cl:defclass <Intersection> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (intersection_id
    :reader intersection_id
    :initarg :intersection_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (intersection_roads
    :reader intersection_roads
    :initarg :intersection_roads
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (roads_enter
    :reader roads_enter
    :initarg :roads_enter
    :type (cl:vector lane_navi_info_msgs-msg:LinkedRoad)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:LinkedRoad :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:LinkedRoad)))
   (roads_exit
    :reader roads_exit
    :initarg :roads_exit
    :type (cl:vector lane_navi_info_msgs-msg:LinkedRoad)
   :initform (cl:make-array 0 :element-type 'lane_navi_info_msgs-msg:LinkedRoad :initial-element (cl:make-instance 'lane_navi_info_msgs-msg:LinkedRoad)))
   (type
    :reader type
    :initarg :type
    :type lane_navi_info_msgs-msg:IntersectionType
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:IntersectionType)))
)

(cl:defclass Intersection (<Intersection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Intersection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Intersection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<Intersection> is deprecated: use lane_navi_info_msgs-msg:Intersection instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:available-val is deprecated.  Use lane_navi_info_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'intersection_id-val :lambda-list '(m))
(cl:defmethod intersection_id-val ((m <Intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:intersection_id-val is deprecated.  Use lane_navi_info_msgs-msg:intersection_id instead.")
  (intersection_id m))

(cl:ensure-generic-function 'intersection_roads-val :lambda-list '(m))
(cl:defmethod intersection_roads-val ((m <Intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:intersection_roads-val is deprecated.  Use lane_navi_info_msgs-msg:intersection_roads instead.")
  (intersection_roads m))

(cl:ensure-generic-function 'roads_enter-val :lambda-list '(m))
(cl:defmethod roads_enter-val ((m <Intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:roads_enter-val is deprecated.  Use lane_navi_info_msgs-msg:roads_enter instead.")
  (roads_enter m))

(cl:ensure-generic-function 'roads_exit-val :lambda-list '(m))
(cl:defmethod roads_exit-val ((m <Intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:roads_exit-val is deprecated.  Use lane_navi_info_msgs-msg:roads_exit instead.")
  (roads_exit m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Intersection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:type-val is deprecated.  Use lane_navi_info_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Intersection>)))
    "Constants for message type '<Intersection>"
  '((:ROADS_VALID . 1)
    (:ROADS_ENTER_VALID . 2)
    (:ROADS_EXIT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Intersection)))
    "Constants for message type 'Intersection"
  '((:ROADS_VALID . 1)
    (:ROADS_ENTER_VALID . 2)
    (:ROADS_EXIT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Intersection>) ostream)
  "Serializes a message object of type '<Intersection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'intersection_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intersection_roads))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'intersection_roads))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roads_enter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'roads_enter))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roads_exit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'roads_exit))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Intersection>) istream)
  "Deserializes a message object of type '<Intersection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'intersection_id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intersection_roads) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intersection_roads)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roads_enter) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roads_enter)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:LinkedRoad))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'roads_exit) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roads_exit)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lane_navi_info_msgs-msg:LinkedRoad))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Intersection>)))
  "Returns string type for a message object of type '<Intersection>"
  "lane_navi_info_msgs/Intersection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Intersection)))
  "Returns string type for a message object of type 'Intersection"
  "lane_navi_info_msgs/Intersection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Intersection>)))
  "Returns md5sum for a message object of type '<Intersection>"
  "31fe710ac983200e5d02acd040904f8b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Intersection)))
  "Returns md5sum for a message object of type 'Intersection"
  "31fe710ac983200e5d02acd040904f8b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Intersection>)))
  "Returns full string definition for message of type '<Intersection>"
  (cl:format cl:nil "uint8 ROADS_VALID = 1~%uint8 ROADS_ENTER_VALID = 2~%uint8 ROADS_EXIT = 4~%uint8 available~%landmark_msgs/TrackId intersection_id~%landmark_msgs/TrackId[] intersection_roads~%lane_navi_info_msgs/LinkedRoad[] roads_enter~%lane_navi_info_msgs/LinkedRoad[] roads_exit~%lane_navi_info_msgs/IntersectionType type~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/LinkedRoad~%landmark_msgs/TrackId[] linked_roads~%landmark_msgs/TrafficLightGroup linked_traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroup~%landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/IntersectionType~%uint8 UNKNOWN = 0~%uint8 HIGHWAY_SPLIT = 1~%uint8 URBAN_NORMAL = 2~%uint8 NORMAL_SPLIT_MERGE = 3~%uint8 T_JUNCTION = 4~%uint8 Y_JUNCTION = 5~%uint8 ROUNDABOUT = 6~%uint8 OVERPASS = 7~%uint8 OTHERS = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Intersection)))
  "Returns full string definition for message of type 'Intersection"
  (cl:format cl:nil "uint8 ROADS_VALID = 1~%uint8 ROADS_ENTER_VALID = 2~%uint8 ROADS_EXIT = 4~%uint8 available~%landmark_msgs/TrackId intersection_id~%landmark_msgs/TrackId[] intersection_roads~%lane_navi_info_msgs/LinkedRoad[] roads_enter~%lane_navi_info_msgs/LinkedRoad[] roads_exit~%lane_navi_info_msgs/IntersectionType type~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/LinkedRoad~%landmark_msgs/TrackId[] linked_roads~%landmark_msgs/TrafficLightGroup linked_traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroup~%landmark_msgs/TrafficLight[] traffic_light_group~%~%================================================================================~%MSG: landmark_msgs/TrafficLight~%landmark_msgs/TrafficLightType type~%landmark_msgs/Direction[] direction~%~%================================================================================~%MSG: landmark_msgs/TrafficLightType~%uint8 UNKNOWN = 0~%uint8 DOT_TRAFFIC_LIGHT = 1~%uint8 ARROW_TRAFFIC_LIGHT = 2~%uint8 NUMBER_TRAFFIC_LIGHT = 3~%uint8 TRAFFIC_LIGHT_FOR_NON_MOTOR_VEHICLE = 4~%uint8 TRAFFIC_LIGHT_FOR_PEDESTRIANS = 5~%uint8 SAND_CLOCK_TRAFFIC_LIGHT = 6~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: lane_navi_info_msgs/IntersectionType~%uint8 UNKNOWN = 0~%uint8 HIGHWAY_SPLIT = 1~%uint8 URBAN_NORMAL = 2~%uint8 NORMAL_SPLIT_MERGE = 3~%uint8 T_JUNCTION = 4~%uint8 Y_JUNCTION = 5~%uint8 ROUNDABOUT = 6~%uint8 OVERPASS = 7~%uint8 OTHERS = 255~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Intersection>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'intersection_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intersection_roads) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roads_enter) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roads_exit) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Intersection>))
  "Converts a ROS message object to a list"
  (cl:list 'Intersection
    (cl:cons ':available (available msg))
    (cl:cons ':intersection_id (intersection_id msg))
    (cl:cons ':intersection_roads (intersection_roads msg))
    (cl:cons ':roads_enter (roads_enter msg))
    (cl:cons ':roads_exit (roads_exit msg))
    (cl:cons ':type (type msg))
))
