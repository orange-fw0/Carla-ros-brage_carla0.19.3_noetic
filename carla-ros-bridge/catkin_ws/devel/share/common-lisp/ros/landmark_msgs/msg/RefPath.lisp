; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RefPath.msg.html

(cl:defclass <RefPath> (roslisp-msg-protocol:ros-message)
  ((score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:RefPathTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RefPathTypeEnum))
   (points
    :reader points
    :initarg :points
    :type (cl:vector landmark_msgs-msg:WayPoint)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:WayPoint :initial-element (cl:make-instance 'landmark_msgs-msg:WayPoint)))
   (goal_ids
    :reader goal_ids
    :initarg :goal_ids
    :type (cl:vector landmark_msgs-msg:TrackId)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrackId :initial-element (cl:make-instance 'landmark_msgs-msg:TrackId)))
   (navi_info_source
    :reader navi_info_source
    :initarg :navi_info_source
    :type landmark_msgs-msg:NaviInfoSource
    :initform (cl:make-instance 'landmark_msgs-msg:NaviInfoSource))
   (navi_onroutedis_info
    :reader navi_onroutedis_info
    :initarg :navi_onroutedis_info
    :type landmark_msgs-msg:NaviOnrouteDisInfo
    :initform (cl:make-instance 'landmark_msgs-msg:NaviOnrouteDisInfo))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass RefPath (<RefPath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RefPath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RefPath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RefPath> is deprecated: use landmark_msgs-msg:RefPath instead.")))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:index-val is deprecated.  Use landmark_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:id-val is deprecated.  Use landmark_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:points-val is deprecated.  Use landmark_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'goal_ids-val :lambda-list '(m))
(cl:defmethod goal_ids-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:goal_ids-val is deprecated.  Use landmark_msgs-msg:goal_ids instead.")
  (goal_ids m))

(cl:ensure-generic-function 'navi_info_source-val :lambda-list '(m))
(cl:defmethod navi_info_source-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:navi_info_source-val is deprecated.  Use landmark_msgs-msg:navi_info_source instead.")
  (navi_info_source m))

(cl:ensure-generic-function 'navi_onroutedis_info-val :lambda-list '(m))
(cl:defmethod navi_onroutedis_info-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:navi_onroutedis_info-val is deprecated.  Use landmark_msgs-msg:navi_onroutedis_info instead.")
  (navi_onroutedis_info m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <RefPath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RefPath>) ostream)
  "Serializes a message object of type '<RefPath>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'goal_ids))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navi_info_source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'navi_onroutedis_info) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RefPath>) istream)
  "Deserializes a message object of type '<RefPath>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:WayPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrackId))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navi_info_source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'navi_onroutedis_info) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RefPath>)))
  "Returns string type for a message object of type '<RefPath>"
  "landmark_msgs/RefPath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RefPath)))
  "Returns string type for a message object of type 'RefPath"
  "landmark_msgs/RefPath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RefPath>)))
  "Returns md5sum for a message object of type '<RefPath>"
  "d5feed00069cb7ebcc8b2034b771f6c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RefPath)))
  "Returns md5sum for a message object of type 'RefPath"
  "d5feed00069cb7ebcc8b2034b771f6c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RefPath>)))
  "Returns full string definition for message of type '<RefPath>"
  (cl:format cl:nil "float32 score~%int32 index~%landmark_msgs/TrackId id~%landmark_msgs/RefPathTypeEnum type~%landmark_msgs/WayPoint[] points~%landmark_msgs/TrackId[] goal_ids~%landmark_msgs/NaviInfoSource navi_info_source~%landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RefPathTypeEnum~%uint8 REFPATH_TYPE_UNKNOWN = 0~%uint8 REFPATH_TYPE_LATENT_QUERY = 1~%uint8 REFPATH_TYPE_ANGULAR_QUERY = 2~%uint8 REFPATH_TYPE_GOAL_CONDITIONED = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/WayPoint~%uint16 SCORE_VALID = 1~%uint16 POSITION_VALID = 2~%uint16 HEADING_ANGLE_VALID = 4~%uint16 OFFSET_VALID = 8~%uint16 SPEED_MEAN_VALID = 16~%uint16 SPEED_STD_VALID = 32~%uint16 TURN_DIRECTION_VALID = 64~%uint16 ON_ROUTE_VALID = 128~%uint16 available~%float32 score~%perception_interface_msgs/Point3f position~%float32 heading_angle~%float32 offset~%float32 speed_mean~%float32 speed_std~%landmark_msgs/Direction turn_direction~%bool on_route~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/NaviInfoSource~%uint8 UNKNOWN = 0~%uint8 DEFAULT = 1~%uint8 HDMAP = 2~%uint8 LANDTOPO = 3~%uint8 TBT = 4~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/NaviOnrouteDisInfo~%bool available~%float32 dist_to_onroute~%int16[] on_route_dis_clses~%int16 cls_num~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RefPath)))
  "Returns full string definition for message of type 'RefPath"
  (cl:format cl:nil "float32 score~%int32 index~%landmark_msgs/TrackId id~%landmark_msgs/RefPathTypeEnum type~%landmark_msgs/WayPoint[] points~%landmark_msgs/TrackId[] goal_ids~%landmark_msgs/NaviInfoSource navi_info_source~%landmark_msgs/NaviOnrouteDisInfo navi_onroutedis_info~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RefPathTypeEnum~%uint8 REFPATH_TYPE_UNKNOWN = 0~%uint8 REFPATH_TYPE_LATENT_QUERY = 1~%uint8 REFPATH_TYPE_ANGULAR_QUERY = 2~%uint8 REFPATH_TYPE_GOAL_CONDITIONED = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/WayPoint~%uint16 SCORE_VALID = 1~%uint16 POSITION_VALID = 2~%uint16 HEADING_ANGLE_VALID = 4~%uint16 OFFSET_VALID = 8~%uint16 SPEED_MEAN_VALID = 16~%uint16 SPEED_STD_VALID = 32~%uint16 TURN_DIRECTION_VALID = 64~%uint16 ON_ROUTE_VALID = 128~%uint16 available~%float32 score~%perception_interface_msgs/Point3f position~%float32 heading_angle~%float32 offset~%float32 speed_mean~%float32 speed_std~%landmark_msgs/Direction turn_direction~%bool on_route~%string reserved_info~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/Direction~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 LEFT_LEFT = 10~%uint8 LEFT_LEFT_UT = 11~%uint8 LEFT_RIGHT = 12~%uint8 LEFT_RIGHT_UT = 13~%uint8 LEFT_GO_STRAIGHT = 14~%uint8 LEFT_UNKNOWN = 15~%uint8 RIGHT_RIGHT = 20~%uint8 RIGHT_RIGHT_UT = 21~%uint8 RIGHT_LEFT = 22~%uint8 RIGHT_LEFT_UT = 23~%uint8 RIGHT_GO_STRAIGHT = 24~%uint8 RIGHT_UNKNOWN = 25~%uint8 LEFT_UT_LEFT_UT = 30~%uint8 LEFT_UT_LEFT = 31~%uint8 LEFT_UT_RIGHT = 32~%uint8 LEFT_UT_RIGHT_UT = 33~%uint8 LEFT_UT_GO_STRAIGHT = 34~%uint8 LEFT_UT_UNKNOWN = 35~%uint8 RIGHT_UT_RIGHT_UT = 40~%uint8 RIGHT_UT_RIGHT = 41~%uint8 RIGHT_UT_LEFT = 42~%uint8 RIGHT_UT_LEFT_UT = 43~%uint8 RIGHT_UT_GO_STRAIGHT = 44~%uint8 RIGHT_UT_UNKNOWN = 45~%uint8 GO_STRAIGHT_GO_STRAIGHT = 50~%uint8 GO_STRAIGHT_LEFT = 51~%uint8 GO_STRAIGHT_LEFT_UT = 52~%uint8 GO_STRAIGHT_RIGHT = 53~%uint8 GO_STRAIGHT_RIGHT_UT = 54~%uint8 GO_STRAIGHT_UNKNOWN = 55~%uint8 OTHER_LEFT = 61~%uint8 OTHER_LEFT_UT = 62~%uint8 OTHER_RIGHT = 63~%uint8 OTHER_RIGHT_UT = 64~%uint8 OTHER_GO_STRAIGHT = 65~%uint8 OTHER_UNKNOWN = 66~%uint8 UNKNOWN_LEFT = 91~%uint8 UNKNOWN_LEFT_UT = 92~%uint8 UNKNOWN_RIGHT = 93~%uint8 UNKNOWN_RIGHT_UT = 94~%uint8 UNKNOWN_GO_STRAIGHT = 95~%uint8 UNKNOWN_UNKNOWN = 96~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/NaviInfoSource~%uint8 UNKNOWN = 0~%uint8 DEFAULT = 1~%uint8 HDMAP = 2~%uint8 LANDTOPO = 3~%uint8 TBT = 4~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/NaviOnrouteDisInfo~%bool available~%float32 dist_to_onroute~%int16[] on_route_dis_clses~%int16 cls_num~%string reserved_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RefPath>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navi_info_source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'navi_onroutedis_info))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RefPath>))
  "Converts a ROS message object to a list"
  (cl:list 'RefPath
    (cl:cons ':score (score msg))
    (cl:cons ':index (index msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':points (points msg))
    (cl:cons ':goal_ids (goal_ids msg))
    (cl:cons ':navi_info_source (navi_info_source msg))
    (cl:cons ':navi_onroutedis_info (navi_onroutedis_info msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
