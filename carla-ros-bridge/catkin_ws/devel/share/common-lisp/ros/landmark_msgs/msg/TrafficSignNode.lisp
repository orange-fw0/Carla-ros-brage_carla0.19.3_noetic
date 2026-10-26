; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficSignNode.msg.html

(cl:defclass <TrafficSignNode> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:integer
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (shape_points
    :reader shape_points
    :initarg :shape_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:TrafficSignNodeTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeTypeEnum))
   (shape_type
    :reader shape_type
    :initarg :shape_type
    :type landmark_msgs-msg:TrafficSignShapeTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignShapeTypeEnum))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (ignored
    :reader ignored
    :initarg :ignored
    :type cl:boolean
    :initform cl:nil)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type landmark_msgs-msg:TrafficSignNodeSpeedLimitEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeSpeedLimitEnum))
   (height_limit_unit
    :reader height_limit_unit
    :initarg :height_limit_unit
    :type landmark_msgs-msg:TrafficSignNodeHeightLimitEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeHeightLimitEnum))
   (height_limit_tenths
    :reader height_limit_tenths
    :initarg :height_limit_tenths
    :type landmark_msgs-msg:TrafficSignNodeHeightLimitEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeHeightLimitEnum))
   (parking_subtype
    :reader parking_subtype
    :initarg :parking_subtype
    :type landmark_msgs-msg:TrafficSignNodeParkingSubTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeParkingSubTypeEnum))
   (parking_arrow
    :reader parking_arrow
    :initarg :parking_arrow
    :type landmark_msgs-msg:TrafficSignNodeParkingArrowEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeParkingArrowEnum))
   (lane_position_arrow
    :reader lane_position_arrow
    :initarg :lane_position_arrow
    :type landmark_msgs-msg:TrafficSignNodeLanePositionArrowEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeLanePositionArrowEnum))
   (region
    :reader region
    :initarg :region
    :type landmark_msgs-msg:TrafficSignNodeRegionEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeRegionEnum))
   (speed_limit_conditions
    :reader speed_limit_conditions
    :initarg :speed_limit_conditions
    :type (cl:vector landmark_msgs-msg:TrafficSignNodeSpeedLimitConditionEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficSignNodeSpeedLimitConditionEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeSpeedLimitConditionEnum)))
   (directions
    :reader directions
    :initarg :directions
    :type (cl:vector landmark_msgs-msg:TrafficSignNodeDirectionEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficSignNodeDirectionEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeDirectionEnum)))
   (is_electronic
    :reader is_electronic
    :initarg :is_electronic
    :type cl:boolean
    :initform cl:nil)
   (toll_station
    :reader toll_station
    :initarg :toll_station
    :type landmark_msgs-msg:TrafficSignNodeTollStationEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeTollStationEnum))
   (stay_on
    :reader stay_on
    :initarg :stay_on
    :type landmark_msgs-msg:TrafficSignNodeStayOnEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeStayOnEnum))
   (pass_on
    :reader pass_on
    :initarg :pass_on
    :type landmark_msgs-msg:TrafficSignNodePassOnEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodePassOnEnum))
   (drive_to
    :reader drive_to
    :initarg :drive_to
    :type landmark_msgs-msg:TrafficSignNodeDriveToEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeDriveToEnum))
   (is_lane_level_limit
    :reader is_lane_level_limit
    :initarg :is_lane_level_limit
    :type cl:boolean
    :initform cl:nil)
   (is_direction_grouped
    :reader is_direction_grouped
    :initarg :is_direction_grouped
    :type cl:boolean
    :initform cl:nil)
   (waiting_area_allow
    :reader waiting_area_allow
    :initarg :waiting_area_allow
    :type landmark_msgs-msg:TrafficSignNodeWaitingAreaAllowEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeWaitingAreaAllowEnum))
   (waiting_area_directions
    :reader waiting_area_directions
    :initarg :waiting_area_directions
    :type (cl:vector landmark_msgs-msg:TrafficSignNodeWaitingAreaDirectionEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficSignNodeWaitingAreaDirectionEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeWaitingAreaDirectionEnum)))
   (etc_distribution_directions
    :reader etc_distribution_directions
    :initarg :etc_distribution_directions
    :type (cl:vector landmark_msgs-msg:TrafficSignNodeEtcDistributionDirectionEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficSignNodeEtcDistributionDirectionEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeEtcDistributionDirectionEnum))))
)

(cl:defclass TrafficSignNode (<TrafficSignNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficSignNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficSignNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficSignNode> is deprecated: use landmark_msgs-msg:TrafficSignNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:position-val is deprecated.  Use landmark_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'shape_points-val :lambda-list '(m))
(cl:defmethod shape_points-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:shape_points-val is deprecated.  Use landmark_msgs-msg:shape_points instead.")
  (shape_points m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'shape_type-val :lambda-list '(m))
(cl:defmethod shape_type-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:shape_type-val is deprecated.  Use landmark_msgs-msg:shape_type instead.")
  (shape_type m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'ignored-val :lambda-list '(m))
(cl:defmethod ignored-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:ignored-val is deprecated.  Use landmark_msgs-msg:ignored instead.")
  (ignored m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:speed_limit-val is deprecated.  Use landmark_msgs-msg:speed_limit instead.")
  (speed_limit m))

(cl:ensure-generic-function 'height_limit_unit-val :lambda-list '(m))
(cl:defmethod height_limit_unit-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:height_limit_unit-val is deprecated.  Use landmark_msgs-msg:height_limit_unit instead.")
  (height_limit_unit m))

(cl:ensure-generic-function 'height_limit_tenths-val :lambda-list '(m))
(cl:defmethod height_limit_tenths-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:height_limit_tenths-val is deprecated.  Use landmark_msgs-msg:height_limit_tenths instead.")
  (height_limit_tenths m))

(cl:ensure-generic-function 'parking_subtype-val :lambda-list '(m))
(cl:defmethod parking_subtype-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:parking_subtype-val is deprecated.  Use landmark_msgs-msg:parking_subtype instead.")
  (parking_subtype m))

(cl:ensure-generic-function 'parking_arrow-val :lambda-list '(m))
(cl:defmethod parking_arrow-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:parking_arrow-val is deprecated.  Use landmark_msgs-msg:parking_arrow instead.")
  (parking_arrow m))

(cl:ensure-generic-function 'lane_position_arrow-val :lambda-list '(m))
(cl:defmethod lane_position_arrow-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_position_arrow-val is deprecated.  Use landmark_msgs-msg:lane_position_arrow instead.")
  (lane_position_arrow m))

(cl:ensure-generic-function 'region-val :lambda-list '(m))
(cl:defmethod region-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:region-val is deprecated.  Use landmark_msgs-msg:region instead.")
  (region m))

(cl:ensure-generic-function 'speed_limit_conditions-val :lambda-list '(m))
(cl:defmethod speed_limit_conditions-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:speed_limit_conditions-val is deprecated.  Use landmark_msgs-msg:speed_limit_conditions instead.")
  (speed_limit_conditions m))

(cl:ensure-generic-function 'directions-val :lambda-list '(m))
(cl:defmethod directions-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:directions-val is deprecated.  Use landmark_msgs-msg:directions instead.")
  (directions m))

(cl:ensure-generic-function 'is_electronic-val :lambda-list '(m))
(cl:defmethod is_electronic-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_electronic-val is deprecated.  Use landmark_msgs-msg:is_electronic instead.")
  (is_electronic m))

(cl:ensure-generic-function 'toll_station-val :lambda-list '(m))
(cl:defmethod toll_station-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:toll_station-val is deprecated.  Use landmark_msgs-msg:toll_station instead.")
  (toll_station m))

(cl:ensure-generic-function 'stay_on-val :lambda-list '(m))
(cl:defmethod stay_on-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:stay_on-val is deprecated.  Use landmark_msgs-msg:stay_on instead.")
  (stay_on m))

(cl:ensure-generic-function 'pass_on-val :lambda-list '(m))
(cl:defmethod pass_on-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pass_on-val is deprecated.  Use landmark_msgs-msg:pass_on instead.")
  (pass_on m))

(cl:ensure-generic-function 'drive_to-val :lambda-list '(m))
(cl:defmethod drive_to-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:drive_to-val is deprecated.  Use landmark_msgs-msg:drive_to instead.")
  (drive_to m))

(cl:ensure-generic-function 'is_lane_level_limit-val :lambda-list '(m))
(cl:defmethod is_lane_level_limit-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_lane_level_limit-val is deprecated.  Use landmark_msgs-msg:is_lane_level_limit instead.")
  (is_lane_level_limit m))

(cl:ensure-generic-function 'is_direction_grouped-val :lambda-list '(m))
(cl:defmethod is_direction_grouped-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_direction_grouped-val is deprecated.  Use landmark_msgs-msg:is_direction_grouped instead.")
  (is_direction_grouped m))

(cl:ensure-generic-function 'waiting_area_allow-val :lambda-list '(m))
(cl:defmethod waiting_area_allow-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:waiting_area_allow-val is deprecated.  Use landmark_msgs-msg:waiting_area_allow instead.")
  (waiting_area_allow m))

(cl:ensure-generic-function 'waiting_area_directions-val :lambda-list '(m))
(cl:defmethod waiting_area_directions-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:waiting_area_directions-val is deprecated.  Use landmark_msgs-msg:waiting_area_directions instead.")
  (waiting_area_directions m))

(cl:ensure-generic-function 'etc_distribution_directions-val :lambda-list '(m))
(cl:defmethod etc_distribution_directions-val ((m <TrafficSignNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:etc_distribution_directions-val is deprecated.  Use landmark_msgs-msg:etc_distribution_directions instead.")
  (etc_distribution_directions m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficSignNode>)))
    "Constants for message type '<TrafficSignNode>"
  '((:POSITION_VALID . 1)
    (:SHAPE_POINTS_VALID . 2)
    (:TYPE_VALID . 4)
    (:SHAPE_TYPE_VALID . 8)
    (:SCORE_VALID . 16)
    (:IGNORED_VALID . 32)
    (:SPEED_LIMIT_VALID . 64)
    (:HEIGHT_LIMIT_VALID . 128)
    (:PARKING_SUBTYPE_VALID . 256)
    (:PARKING_ARROW_VALID . 512)
    (:LANE_POSITION_ARROW_VALID . 1024)
    (:REGION_VALID . 2048)
    (:SPEED_LIMIT_CONDITIONS_VALID . 4096)
    (:DIRECTIONS_VALID . 8192)
    (:IS_ELECTRONIC_VALID . 16384)
    (:TOLL_STATION_VALID . 32768)
    (:STAY_ON_VALID . 65536)
    (:PASS_ON_VALID . 131072)
    (:DRIVE_TO_VALID . 262144)
    (:IS_LANE_LEVEL_LIMIT_VALID . 524288)
    (:IS_DIRECTION_GROUPED_VALID . 1048576)
    (:WAITING_AREA_ALLOW_VALID . 2097152)
    (:WAITING_AREA_DIRECTIONS_VALID . 4194304)
    (:ETC_DISTRIBUTION_DIRECTIONS_VALID . 8388608))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficSignNode)))
    "Constants for message type 'TrafficSignNode"
  '((:POSITION_VALID . 1)
    (:SHAPE_POINTS_VALID . 2)
    (:TYPE_VALID . 4)
    (:SHAPE_TYPE_VALID . 8)
    (:SCORE_VALID . 16)
    (:IGNORED_VALID . 32)
    (:SPEED_LIMIT_VALID . 64)
    (:HEIGHT_LIMIT_VALID . 128)
    (:PARKING_SUBTYPE_VALID . 256)
    (:PARKING_ARROW_VALID . 512)
    (:LANE_POSITION_ARROW_VALID . 1024)
    (:REGION_VALID . 2048)
    (:SPEED_LIMIT_CONDITIONS_VALID . 4096)
    (:DIRECTIONS_VALID . 8192)
    (:IS_ELECTRONIC_VALID . 16384)
    (:TOLL_STATION_VALID . 32768)
    (:STAY_ON_VALID . 65536)
    (:PASS_ON_VALID . 131072)
    (:DRIVE_TO_VALID . 262144)
    (:IS_LANE_LEVEL_LIMIT_VALID . 524288)
    (:IS_DIRECTION_GROUPED_VALID . 1048576)
    (:WAITING_AREA_ALLOW_VALID . 2097152)
    (:WAITING_AREA_DIRECTIONS_VALID . 4194304)
    (:ETC_DISTRIBUTION_DIRECTIONS_VALID . 8388608))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficSignNode>) ostream)
  "Serializes a message object of type '<TrafficSignNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shape_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ignored) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speed_limit) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'height_limit_unit) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'height_limit_tenths) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_subtype) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'parking_arrow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_position_arrow) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'region) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speed_limit_conditions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'speed_limit_conditions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'directions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'directions))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_electronic) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'toll_station) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stay_on) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pass_on) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'drive_to) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_lane_level_limit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_direction_grouped) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waiting_area_allow) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waiting_area_directions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waiting_area_directions))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'etc_distribution_directions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'etc_distribution_directions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficSignNode>) istream)
  "Deserializes a message object of type '<TrafficSignNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'ignored) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speed_limit) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'height_limit_unit) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'height_limit_tenths) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_subtype) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'parking_arrow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_position_arrow) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'region) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speed_limit_conditions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speed_limit_conditions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeSpeedLimitConditionEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'directions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'directions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeDirectionEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_electronic) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'toll_station) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stay_on) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pass_on) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'drive_to) istream)
    (cl:setf (cl:slot-value msg 'is_lane_level_limit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_direction_grouped) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waiting_area_allow) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waiting_area_directions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waiting_area_directions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeWaitingAreaDirectionEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'etc_distribution_directions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'etc_distribution_directions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficSignNodeEtcDistributionDirectionEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficSignNode>)))
  "Returns string type for a message object of type '<TrafficSignNode>"
  "landmark_msgs/TrafficSignNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficSignNode)))
  "Returns string type for a message object of type 'TrafficSignNode"
  "landmark_msgs/TrafficSignNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficSignNode>)))
  "Returns md5sum for a message object of type '<TrafficSignNode>"
  "59835f78b2c6116703c083b80b9899cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficSignNode)))
  "Returns md5sum for a message object of type 'TrafficSignNode"
  "59835f78b2c6116703c083b80b9899cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficSignNode>)))
  "Returns full string definition for message of type '<TrafficSignNode>"
  (cl:format cl:nil "uint32 POSITION_VALID = 1~%uint32 SHAPE_POINTS_VALID = 2~%uint32 TYPE_VALID = 4~%uint32 SHAPE_TYPE_VALID = 8~%uint32 SCORE_VALID = 16~%uint32 IGNORED_VALID = 32~%uint32 SPEED_LIMIT_VALID = 64~%uint32 HEIGHT_LIMIT_VALID = 128~%uint32 PARKING_SUBTYPE_VALID = 256~%uint32 PARKING_ARROW_VALID = 512~%uint32 LANE_POSITION_ARROW_VALID = 1024~%uint32 REGION_VALID = 2048~%uint32 SPEED_LIMIT_CONDITIONS_VALID = 4096~%uint32 DIRECTIONS_VALID = 8192~%uint32 IS_ELECTRONIC_VALID = 16384~%uint32 TOLL_STATION_VALID = 32768~%uint32 STAY_ON_VALID = 65536~%uint32 PASS_ON_VALID = 131072~%uint32 DRIVE_TO_VALID = 262144~%uint32 IS_LANE_LEVEL_LIMIT_VALID = 524288~%uint32 IS_DIRECTION_GROUPED_VALID = 1048576~%uint32 WAITING_AREA_ALLOW_VALID = 2097152~%uint32 WAITING_AREA_DIRECTIONS_VALID = 4194304~%uint32 ETC_DISTRIBUTION_DIRECTIONS_VALID = 8388608~%uint32 available~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f position~%perception_interface_msgs/Point3f[] shape_points~%landmark_msgs/TrafficSignNodeTypeEnum type~%landmark_msgs/TrafficSignShapeTypeEnum shape_type~%float32 score~%bool ignored~%landmark_msgs/TrafficSignNodeSpeedLimitEnum speed_limit~%landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_unit~%landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_tenths~%landmark_msgs/TrafficSignNodeParkingSubTypeEnum parking_subtype~%landmark_msgs/TrafficSignNodeParkingArrowEnum parking_arrow~%landmark_msgs/TrafficSignNodeLanePositionArrowEnum lane_position_arrow~%landmark_msgs/TrafficSignNodeRegionEnum region~%landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] speed_limit_conditions~%landmark_msgs/TrafficSignNodeDirectionEnum[] directions~%bool is_electronic~%landmark_msgs/TrafficSignNodeTollStationEnum toll_station~%landmark_msgs/TrafficSignNodeStayOnEnum stay_on~%landmark_msgs/TrafficSignNodePassOnEnum pass_on~%landmark_msgs/TrafficSignNodeDriveToEnum drive_to~%bool is_lane_level_limit~%bool is_direction_grouped~%landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum waiting_area_allow~%landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] waiting_area_directions~%landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] etc_distribution_directions~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeTypeEnum~%uint8 TRAFFIC_SIGN_NODE_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_TYPE_SPEED_LIMIT = 1~%uint8 TRAFFIC_SIGN_NODE_TYPE_MIN_SPEED = 2~%uint8 TRAFFIC_SIGN_NODE_TYPE_CANCEL_SPEED_LIMIT = 3~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD = 4~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD_END = 5~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_AUXILIARY = 6~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_NEXT_INTERSECTION = 7~%uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD = 8~%uint8 TRAFFIC_SIGN_NODE_TYPE_STOP = 9~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_OVER_ONCOMMING = 10~%uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD_TO_ONCOMMING = 11~%uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_SPEED_LIMIT = 13~%uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_LANE_CONTROL = 14~%uint8 TRAFFIC_SIGN_NODE_TYPE_ROAD_WORK = 15~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_ENTRY = 16~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE_ENTRY = 17~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_MINIBUS_ENTRY = 18~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_LARGEBUS_ENTRY = 19~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE = 20~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_HONKING = 21~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_TURING = 22~%uint8 TRAFFIC_SIGN_NODE_TYPE_OVERTAKING_PROHIBITED = 46~%uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_OVERTAKING = 47~%uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_SPEED_AND_OVERTAKING = 48~%uint8 TRAFFIC_SIGN_NODE_TYPE_UNGUARDED_RAILWAY_CROSSING = 50~%uint8 TRAFFIC_SIGN_NODE_TYPE_GUARDED_RAILWAY_CROSSING = 51~%uint8 TRAFFIC_SIGN_NODE_TYPE_CHILDREN_AND_SCHOOL_ZONE = 52~%uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_CHILDREN = 53~%uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_PEDESTRIAN = 54~%uint8 TRAFFIC_SIGN_NODE_TYPE_SLIPPERY_SURFACE = 55~%uint8 TRAFFIC_SIGN_NODE_TYPE_DANGER_AHEAD = 56~%uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 57~%uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 58~%uint8 TRAFFIC_SIGN_NODE_TYPE_UPHILL_AHEAD = 59~%uint8 TRAFFIC_SIGN_NODE_TYPE_DOWNHILL_AHEAD = 60~%uint8 TRAFFIC_SIGN_NODE_TYPE_OTHER = 99~%uint8 TRAFFIC_SIGN_NODE_TYPE_PEDESTRIAN_CROSSING = 100~%uint8 TRAFFIC_SIGN_NODE_TYPE_LANE_DIRECTION_INDICATOR = 101~%uint8 TRAFFIC_SIGN_NODE_TYPE_BUS_LANE = 102~%uint8 TRAFFIC_SIGN_NODE_TYPE_MOTOR_LANE = 103~%uint8 TRAFFIC_SIGN_NODE_TYPE_NON_MOTOR_LANE = 104~%uint8 TRAFFIC_SIGN_NODE_TYPE_TIDAL_LANE = 105~%uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_ENTRANCE = 106~%uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_EXIT = 107~%uint8 TRAFFIC_SIGN_NODE_TYPE_TOLL_STATION = 108~%uint8 TRAFFIC_SIGN_NODE_TYPE_STAY_ON = 109~%uint8 TRAFFIC_SIGN_NODE_TYPE_PASS_ON = 110~%uint8 TRAFFIC_SIGN_NODE_TYPE_DRIVE_TO = 111~%uint8 TRAFFIC_SIGN_NODE_TYPE_EMERGENCY_PARKING = 112~%uint8 TRAFFIC_SIGN_NODE_TYPE_ONE_WAY = 113~%uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_TEXT = 114~%uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_ARROW = 115~%uint8 TRAFFIC_SIGN_NODE_TYPE_ROUNDABOUT = 116~%uint8 TRAFFIC_SIGN_NODE_TYPE_WAITING_AREA = 117~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_PARKING = 150~%uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PARKING = 151~%uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PROLONGED_PARKING = 152~%uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING = 153~%uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING_CROSS = 154~%uint8 TRAFFIC_SIGN_NODE_TYPE_PARKING = 156~%uint8 TRAFFIC_SIGN_NODE_TYPE_RESERVED_PARKING = 157~%uint8 TRAFFIC_SIGN_NODE_TYPE_PAYMENT_PARKING = 158~%uint8 TRAFFIC_SIGN_NODE_TYPE_HEIGHT_LIMIT = 248~%uint8 TRAFFIC_SIGN_NODE_TYPE_WEIGHT_LIMIT = 249~%uint8 TRAFFIC_SIGN_NODE_TYPE_WIDTH_LIMIT = 250~%uint8 TRAFFIC_SIGN_NODE_TYPE_AXLE_WEIGHT_LIMIT = 251~%uint8 TRAFFIC_SIGN_NODE_TYPE_RECOMMENDED_SPEED = 252~%uint8 TRAFFIC_SIGN_NODE_TYPE_LEFT_CURVE = 253~%uint8 TRAFFIC_SIGN_NODE_TYPE_RIGHT_CURVE = 254~%uint8 TRAFFIC_SIGN_NODE_TYPE_SERIES_CURVES = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignShapeTypeEnum~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeSpeedLimitEnum~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeHeightLimitEnum~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeParkingSubTypeEnum~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeParkingArrowEnum~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE = 2~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT = 4~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH = 5~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeLanePositionArrowEnum~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeRegionEnum~%uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2~%uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3~%uint8 TRAFFIC_SIGN_NODE_REGION_US = 4~%uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeDirectionEnum~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeTollStationEnum~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeStayOnEnum~%uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodePassOnEnum~%uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeDriveToEnum~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT = 2~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficSignNode)))
  "Returns full string definition for message of type 'TrafficSignNode"
  (cl:format cl:nil "uint32 POSITION_VALID = 1~%uint32 SHAPE_POINTS_VALID = 2~%uint32 TYPE_VALID = 4~%uint32 SHAPE_TYPE_VALID = 8~%uint32 SCORE_VALID = 16~%uint32 IGNORED_VALID = 32~%uint32 SPEED_LIMIT_VALID = 64~%uint32 HEIGHT_LIMIT_VALID = 128~%uint32 PARKING_SUBTYPE_VALID = 256~%uint32 PARKING_ARROW_VALID = 512~%uint32 LANE_POSITION_ARROW_VALID = 1024~%uint32 REGION_VALID = 2048~%uint32 SPEED_LIMIT_CONDITIONS_VALID = 4096~%uint32 DIRECTIONS_VALID = 8192~%uint32 IS_ELECTRONIC_VALID = 16384~%uint32 TOLL_STATION_VALID = 32768~%uint32 STAY_ON_VALID = 65536~%uint32 PASS_ON_VALID = 131072~%uint32 DRIVE_TO_VALID = 262144~%uint32 IS_LANE_LEVEL_LIMIT_VALID = 524288~%uint32 IS_DIRECTION_GROUPED_VALID = 1048576~%uint32 WAITING_AREA_ALLOW_VALID = 2097152~%uint32 WAITING_AREA_DIRECTIONS_VALID = 4194304~%uint32 ETC_DISTRIBUTION_DIRECTIONS_VALID = 8388608~%uint32 available~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f position~%perception_interface_msgs/Point3f[] shape_points~%landmark_msgs/TrafficSignNodeTypeEnum type~%landmark_msgs/TrafficSignShapeTypeEnum shape_type~%float32 score~%bool ignored~%landmark_msgs/TrafficSignNodeSpeedLimitEnum speed_limit~%landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_unit~%landmark_msgs/TrafficSignNodeHeightLimitEnum height_limit_tenths~%landmark_msgs/TrafficSignNodeParkingSubTypeEnum parking_subtype~%landmark_msgs/TrafficSignNodeParkingArrowEnum parking_arrow~%landmark_msgs/TrafficSignNodeLanePositionArrowEnum lane_position_arrow~%landmark_msgs/TrafficSignNodeRegionEnum region~%landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum[] speed_limit_conditions~%landmark_msgs/TrafficSignNodeDirectionEnum[] directions~%bool is_electronic~%landmark_msgs/TrafficSignNodeTollStationEnum toll_station~%landmark_msgs/TrafficSignNodeStayOnEnum stay_on~%landmark_msgs/TrafficSignNodePassOnEnum pass_on~%landmark_msgs/TrafficSignNodeDriveToEnum drive_to~%bool is_lane_level_limit~%bool is_direction_grouped~%landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum waiting_area_allow~%landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum[] waiting_area_directions~%landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum[] etc_distribution_directions~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeTypeEnum~%uint8 TRAFFIC_SIGN_NODE_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_TYPE_SPEED_LIMIT = 1~%uint8 TRAFFIC_SIGN_NODE_TYPE_MIN_SPEED = 2~%uint8 TRAFFIC_SIGN_NODE_TYPE_CANCEL_SPEED_LIMIT = 3~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD = 4~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_ROAD_END = 5~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_AUXILIARY = 6~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_NEXT_INTERSECTION = 7~%uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD = 8~%uint8 TRAFFIC_SIGN_NODE_TYPE_STOP = 9~%uint8 TRAFFIC_SIGN_NODE_TYPE_PRIORITY_OVER_ONCOMMING = 10~%uint8 TRAFFIC_SIGN_NODE_TYPE_YIELD_TO_ONCOMMING = 11~%uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_SPEED_LIMIT = 13~%uint8 TRAFFIC_SIGN_NODE_TYPE_ELECTRONIC_LANE_CONTROL = 14~%uint8 TRAFFIC_SIGN_NODE_TYPE_ROAD_WORK = 15~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_ENTRY = 16~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE_ENTRY = 17~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_MINIBUS_ENTRY = 18~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_LARGEBUS_ENTRY = 19~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_VEHICLE = 20~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_HONKING = 21~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_TURING = 22~%uint8 TRAFFIC_SIGN_NODE_TYPE_OVERTAKING_PROHIBITED = 46~%uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_OVERTAKING = 47~%uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_PROHIBITION_ON_SPEED_AND_OVERTAKING = 48~%uint8 TRAFFIC_SIGN_NODE_TYPE_UNGUARDED_RAILWAY_CROSSING = 50~%uint8 TRAFFIC_SIGN_NODE_TYPE_GUARDED_RAILWAY_CROSSING = 51~%uint8 TRAFFIC_SIGN_NODE_TYPE_CHILDREN_AND_SCHOOL_ZONE = 52~%uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_CHILDREN = 53~%uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_PEDESTRIAN = 54~%uint8 TRAFFIC_SIGN_NODE_TYPE_SLIPPERY_SURFACE = 55~%uint8 TRAFFIC_SIGN_NODE_TYPE_DANGER_AHEAD = 56~%uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_RIGHT = 57~%uint8 TRAFFIC_SIGN_NODE_TYPE_WATCH_OUT_FOR_MERGING_LEFT = 58~%uint8 TRAFFIC_SIGN_NODE_TYPE_UPHILL_AHEAD = 59~%uint8 TRAFFIC_SIGN_NODE_TYPE_DOWNHILL_AHEAD = 60~%uint8 TRAFFIC_SIGN_NODE_TYPE_OTHER = 99~%uint8 TRAFFIC_SIGN_NODE_TYPE_PEDESTRIAN_CROSSING = 100~%uint8 TRAFFIC_SIGN_NODE_TYPE_LANE_DIRECTION_INDICATOR = 101~%uint8 TRAFFIC_SIGN_NODE_TYPE_BUS_LANE = 102~%uint8 TRAFFIC_SIGN_NODE_TYPE_MOTOR_LANE = 103~%uint8 TRAFFIC_SIGN_NODE_TYPE_NON_MOTOR_LANE = 104~%uint8 TRAFFIC_SIGN_NODE_TYPE_TIDAL_LANE = 105~%uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_ENTRANCE = 106~%uint8 TRAFFIC_SIGN_NODE_TYPE_EXPRESSWAY_EXIT = 107~%uint8 TRAFFIC_SIGN_NODE_TYPE_TOLL_STATION = 108~%uint8 TRAFFIC_SIGN_NODE_TYPE_STAY_ON = 109~%uint8 TRAFFIC_SIGN_NODE_TYPE_PASS_ON = 110~%uint8 TRAFFIC_SIGN_NODE_TYPE_DRIVE_TO = 111~%uint8 TRAFFIC_SIGN_NODE_TYPE_EMERGENCY_PARKING = 112~%uint8 TRAFFIC_SIGN_NODE_TYPE_ONE_WAY = 113~%uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_TEXT = 114~%uint8 TRAFFIC_SIGN_NODE_TYPE_ETC_DISTRIBUTION_ARROW = 115~%uint8 TRAFFIC_SIGN_NODE_TYPE_ROUNDABOUT = 116~%uint8 TRAFFIC_SIGN_NODE_TYPE_WAITING_AREA = 117~%uint8 TRAFFIC_SIGN_NODE_TYPE_NO_PARKING = 150~%uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PARKING = 151~%uint8 TRAFFIC_SIGN_NODE_TYPE_PROHIBIT_PROLONGED_PARKING = 152~%uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING = 153~%uint8 TRAFFIC_SIGN_NODE_TYPE_END_OF_NO_PARKING_CROSS = 154~%uint8 TRAFFIC_SIGN_NODE_TYPE_PARKING = 156~%uint8 TRAFFIC_SIGN_NODE_TYPE_RESERVED_PARKING = 157~%uint8 TRAFFIC_SIGN_NODE_TYPE_PAYMENT_PARKING = 158~%uint8 TRAFFIC_SIGN_NODE_TYPE_HEIGHT_LIMIT = 248~%uint8 TRAFFIC_SIGN_NODE_TYPE_WEIGHT_LIMIT = 249~%uint8 TRAFFIC_SIGN_NODE_TYPE_WIDTH_LIMIT = 250~%uint8 TRAFFIC_SIGN_NODE_TYPE_AXLE_WEIGHT_LIMIT = 251~%uint8 TRAFFIC_SIGN_NODE_TYPE_RECOMMENDED_SPEED = 252~%uint8 TRAFFIC_SIGN_NODE_TYPE_LEFT_CURVE = 253~%uint8 TRAFFIC_SIGN_NODE_TYPE_RIGHT_CURVE = 254~%uint8 TRAFFIC_SIGN_NODE_TYPE_SERIES_CURVES = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignShapeTypeEnum~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6~%uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeSpeedLimitEnum~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_5 = 5~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_10 = 10~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_15 = 15~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_20 = 20~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_25 = 25~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_30 = 30~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_35 = 35~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_40 = 40~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_45 = 45~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_50 = 50~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_55 = 55~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_60 = 60~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_65 = 65~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_70 = 70~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_75 = 75~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_80 = 80~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_85 = 85~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_90 = 90~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_100 = 100~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_110 = 110~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_120 = 120~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_130 = 130~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_140 = 140~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeHeightLimitEnum~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeParkingSubTypeEnum~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7~%uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeParkingArrowEnum~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_NONE = 2~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_RIGHT = 4~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_BOTH = 5~%uint8 TRAFFIC_SIGN_NODE_PARKING_ARROW_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeLanePositionArrowEnum~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_NONE = 2~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_RIGHT = 4~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_DOWN = 5~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_UP = 6~%uint8 TRAFFIC_SIGN_NODE_LANE_POSITION_ARROW_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeRegionEnum~%uint8 TRAFFIC_SIGN_NODE_REGION_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_REGION_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_REGION_CN = 2~%uint8 TRAFFIC_SIGN_NODE_REGION_EU = 3~%uint8 TRAFFIC_SIGN_NODE_REGION_US = 4~%uint8 TRAFFIC_SIGN_NODE_REGION_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeSpeedLimitConditionEnum~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_WEATHER = 1~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW = 2~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PERIOD = 3~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_RAMP = 4~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_EXIT = 5~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_VEHICLE_TYPE = 6~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_SCHOOL = 7~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_LEFT = 8~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_RIGHT = 9~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_ARROW_STRAIGHT = 10~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_REGINAL = 11~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_PASSENGER_CAR = 12~%uint8 TRAFFIC_SIGN_NODE_SPEED_LIMIT_CONDITION_OTHER_VEHICLE = 13~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeDirectionEnum~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8~%uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeTollStationEnum~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeStayOnEnum~%uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodePassOnEnum~%uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeDriveToEnum~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT = 0~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_RIGHT = 1~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_LEFT_RIGHT = 2~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_INVALID = 100~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_UNKNOWN = 101~%uint8 TRAFFIC_SIGN_NODE_DRIVETO_OTHER = 255~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeWaitingAreaDirectionEnum~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_FRONT = 2~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_DIRECTION_RIGHT = 4~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3~%uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficSignNode>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_type))
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speed_limit))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'height_limit_unit))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'height_limit_tenths))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_subtype))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'parking_arrow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_position_arrow))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'region))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speed_limit_conditions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'directions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'toll_station))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stay_on))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pass_on))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'drive_to))
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waiting_area_allow))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waiting_area_directions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'etc_distribution_directions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficSignNode>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficSignNode
    (cl:cons ':available (available msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':shape_points (shape_points msg))
    (cl:cons ':type (type msg))
    (cl:cons ':shape_type (shape_type msg))
    (cl:cons ':score (score msg))
    (cl:cons ':ignored (ignored msg))
    (cl:cons ':speed_limit (speed_limit msg))
    (cl:cons ':height_limit_unit (height_limit_unit msg))
    (cl:cons ':height_limit_tenths (height_limit_tenths msg))
    (cl:cons ':parking_subtype (parking_subtype msg))
    (cl:cons ':parking_arrow (parking_arrow msg))
    (cl:cons ':lane_position_arrow (lane_position_arrow msg))
    (cl:cons ':region (region msg))
    (cl:cons ':speed_limit_conditions (speed_limit_conditions msg))
    (cl:cons ':directions (directions msg))
    (cl:cons ':is_electronic (is_electronic msg))
    (cl:cons ':toll_station (toll_station msg))
    (cl:cons ':stay_on (stay_on msg))
    (cl:cons ':pass_on (pass_on msg))
    (cl:cons ':drive_to (drive_to msg))
    (cl:cons ':is_lane_level_limit (is_lane_level_limit msg))
    (cl:cons ':is_direction_grouped (is_direction_grouped msg))
    (cl:cons ':waiting_area_allow (waiting_area_allow msg))
    (cl:cons ':waiting_area_directions (waiting_area_directions msg))
    (cl:cons ':etc_distribution_directions (etc_distribution_directions msg))
))
