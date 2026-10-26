; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RefPathGoal.msg.html

(cl:defclass <RefPathGoal> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:RefPathGoalTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RefPathGoalTypeEnum))
   (landmark_id
    :reader landmark_id
    :initarg :landmark_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (goal_point
    :reader goal_point
    :initarg :goal_point
    :type landmark_msgs-msg:WayPoint
    :initform (cl:make-instance 'landmark_msgs-msg:WayPoint))
   (turn_direction
    :reader turn_direction
    :initarg :turn_direction
    :type landmark_msgs-msg:Direction
    :initform (cl:make-instance 'landmark_msgs-msg:Direction))
   (onroute_distance
    :reader onroute_distance
    :initarg :onroute_distance
    :type cl:float
    :initform 0.0)
   (navi_info_source
    :reader navi_info_source
    :initarg :navi_info_source
    :type landmark_msgs-msg:NaviInfoSource
    :initform (cl:make-instance 'landmark_msgs-msg:NaviInfoSource))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass RefPathGoal (<RefPathGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefPathGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefPathGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RefPathGoal> is deprecated: use landmark_msgs-msg:RefPathGoal instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:id-val is deprecated.  Use landmark_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'landmark_id-val :lambda-list '(m))
(cl:defmethod landmark_id-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:landmark_id-val is deprecated.  Use landmark_msgs-msg:landmark_id instead.")
  (landmark_id m))

(cl:ensure-generic-function 'goal_point-val :lambda-list '(m))
(cl:defmethod goal_point-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:goal_point-val is deprecated.  Use landmark_msgs-msg:goal_point instead.")
  (goal_point m))

(cl:ensure-generic-function 'turn_direction-val :lambda-list '(m))
(cl:defmethod turn_direction-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:turn_direction-val is deprecated.  Use landmark_msgs-msg:turn_direction instead.")
  (turn_direction m))

(cl:ensure-generic-function 'onroute_distance-val :lambda-list '(m))
(cl:defmethod onroute_distance-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:onroute_distance-val is deprecated.  Use landmark_msgs-msg:onroute_distance instead.")
  (onroute_distance m))

(cl:ensure-generic-function 'navi_info_source-val :lambda-list '(m))
(cl:defmethod navi_info_source-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:navi_info_source-val is deprecated.  Use landmark_msgs-msg:navi_info_source instead.")
  (navi_info_source m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <RefPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RefPathGoal>)))
    "Constants for message type '<RefPathGoal>"
  '((:SCORE_VALID . 1)
    (:TYPE_VALID . 2)
    (:LANDMARK_ID_VALID . 4)
    (:GOAL_POINT_VALID . 8)
    (:TURN_DIRECTION_VALID . 16)
    (:ONROUTE_DISTANCE_VALID . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RefPathGoal)))
    "Constants for message type 'RefPathGoal"
  '((:SCORE_VALID . 1)
    (:TYPE_VALID . 2)
    (:LANDMARK_ID_VALID . 4)
    (:GOAL_POINT_VALID . 8)
    (:TURN_DIRECTION_VALID . 16)
    (:ONROUTE_DISTANCE_VALID . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefPathGoal>) ostream)
  "Serializes a message object of type '<RefPathGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'landmark_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_direction) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'onroute_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navi_info_source) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefPathGoal>) istream)
  "Deserializes a message object of type '<RefPathGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'landmark_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_direction) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'onroute_distance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navi_info_source) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefPathGoal>)))
  "Returns string type for a message object of type '<RefPathGoal>"
  "landmark_msgs/RefPathGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefPathGoal)))
  "Returns string type for a message object of type 'RefPathGoal"
  "landmark_msgs/RefPathGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefPathGoal>)))
  "Returns md5sum for a message object of type '<RefPathGoal>"
  "2bd89040e58393330e0af90dbf389bb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefPathGoal)))
  "Returns md5sum for a message object of type 'RefPathGoal"
  "2bd89040e58393330e0af90dbf389bb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefPathGoal>)))
  "Returns full string definition for message of type '<RefPathGoal>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 TYPE_VALID = 2~%uint16 LANDMARK_ID_VALID = 4~%uint16 GOAL_POINT_VALID = 8~%uint16 TURN_DIRECTION_VALID = 16~%uint16 ONROUTE_DISTANCE_VALID = 32~%uint16 available~%float32 score~%landmark_msgs/TrackId id~%landmark_msgs/RefPathGoalTypeEnum type~%landmark_msgs/TrackId landmark_id~%landmark_msgs/WayPoint goal_point~%landmark_msgs/Direction turn_direction~%float32 onroute_distance~%landmark_msgs/NaviInfoSource navi_info_source~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RefPathGoalTypeEnum~%uint8 GOAL_TYPE_UNKNOWN = 0~%uint8 GOAL_TYPE_WAY_POINT = 1~%uint8 GOAL_TYPE_LANE_CENTER = 2~%uint8 GOAL_TYPE_ROAD_MARK = 3~%uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/WayPoint~%uint16 SCORE_VALID = 1~%uint16 POSITION_VALID = 2~%uint16 HEADING_ANGLE_VALID = 4~%uint16 OFFSET_VALID = 8~%uint16 SPEED_MEAN_VALID = 16~%uint16 SPEED_STD_VALID = 32~%uint16 TURN_DIRECTION_VALID = 64~%uint16 ON_ROUTE_VALID = 128~%uint16 available~%float32 score~%perception_interface_msgs/Point3f position~%float32 heading_angle~%float32 offset~%float32 speed_mean~%float32 speed_std~%landmark_msgs/Direction turn_direction~%bool on_route~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/NaviInfoSource~%uint8 UNKNOWN = 0~%uint8 DEFAULT = 1~%uint8 HDMAP = 2~%uint8 LANDTOPO = 3~%uint8 TBT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefPathGoal)))
  "Returns full string definition for message of type 'RefPathGoal"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 TYPE_VALID = 2~%uint16 LANDMARK_ID_VALID = 4~%uint16 GOAL_POINT_VALID = 8~%uint16 TURN_DIRECTION_VALID = 16~%uint16 ONROUTE_DISTANCE_VALID = 32~%uint16 available~%float32 score~%landmark_msgs/TrackId id~%landmark_msgs/RefPathGoalTypeEnum type~%landmark_msgs/TrackId landmark_id~%landmark_msgs/WayPoint goal_point~%landmark_msgs/Direction turn_direction~%float32 onroute_distance~%landmark_msgs/NaviInfoSource navi_info_source~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RefPathGoalTypeEnum~%uint8 GOAL_TYPE_UNKNOWN = 0~%uint8 GOAL_TYPE_WAY_POINT = 1~%uint8 GOAL_TYPE_LANE_CENTER = 2~%uint8 GOAL_TYPE_ROAD_MARK = 3~%uint8 GOAL_TYPE_ROAD_ENTRY_LINE = 4~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/WayPoint~%uint16 SCORE_VALID = 1~%uint16 POSITION_VALID = 2~%uint16 HEADING_ANGLE_VALID = 4~%uint16 OFFSET_VALID = 8~%uint16 SPEED_MEAN_VALID = 16~%uint16 SPEED_STD_VALID = 32~%uint16 TURN_DIRECTION_VALID = 64~%uint16 ON_ROUTE_VALID = 128~%uint16 available~%float32 score~%perception_interface_msgs/Point3f position~%float32 heading_angle~%float32 offset~%float32 speed_mean~%float32 speed_std~%landmark_msgs/Direction turn_direction~%bool on_route~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/NaviInfoSource~%uint8 UNKNOWN = 0~%uint8 DEFAULT = 1~%uint8 HDMAP = 2~%uint8 LANDTOPO = 3~%uint8 TBT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefPathGoal>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'landmark_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_direction))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navi_info_source))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefPathGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RefPathGoal
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':landmark_id (landmark_id msg))
    (cl:cons ':goal_point (goal_point msg))
    (cl:cons ':turn_direction (turn_direction msg))
    (cl:cons ':onroute_distance (onroute_distance msg))
    (cl:cons ':navi_info_source (navi_info_source msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
