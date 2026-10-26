; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrafficLightNode.msg.html

(cl:defclass <TrafficLightNode> (roslisp-msg-protocol:ros-message)
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
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:TrafficLightTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightTypeEnum))
   (pattern
    :reader pattern
    :initarg :pattern
    :type (cl:vector landmark_msgs-msg:TrafficLightPatternEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficLightPatternEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficLightPatternEnum)))
   (status
    :reader status
    :initarg :status
    :type (cl:vector landmark_msgs-msg:TrafficLightStatusEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficLightStatusEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficLightStatusEnum)))
   (pattern_score
    :reader pattern_score
    :initarg :pattern_score
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (status_score
    :reader status_score
    :initarg :status_score
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (remaining
    :reader remaining
    :initarg :remaining
    :type cl:float
    :initform 0.0)
   (count_number
    :reader count_number
    :initarg :count_number
    :type cl:fixnum
    :initform 0)
   (shape_3d
    :reader shape_3d
    :initarg :shape_3d
    :type perception_interface_msgs-msg:Shape3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Shape3f))
   (shape
    :reader shape
    :initarg :shape
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (directions
    :reader directions
    :initarg :directions
    :type (cl:vector landmark_msgs-msg:TrafficLightDirectionEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficLightDirectionEnum :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficLightDirectionEnum)))
   (location
    :reader location
    :initarg :location
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (traffic_light_decision
    :reader traffic_light_decision
    :initarg :traffic_light_decision
    :type (cl:vector landmark_msgs-msg:TrafficLightDecision)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:TrafficLightDecision :initial-element (cl:make-instance 'landmark_msgs-msg:TrafficLightDecision)))
   (in_intersection
    :reader in_intersection
    :initarg :in_intersection
    :type cl:boolean
    :initform cl:nil)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (heading_theta_bv
    :reader heading_theta_bv
    :initarg :heading_theta_bv
    :type cl:float
    :initform 0.0)
   (digits
    :reader digits
    :initarg :digits
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (digit_scores
    :reader digit_scores
    :initarg :digit_scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (group_shape_type
    :reader group_shape_type
    :initarg :group_shape_type
    :type landmark_msgs-msg:TrafficLightGroupShapeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightGroupShapeEnum))
   (group_shape_score
    :reader group_shape_score
    :initarg :group_shape_score
    :type cl:float
    :initform 0.0)
   (group_property
    :reader group_property
    :initarg :group_property
    :type landmark_msgs-msg:TrafficLightGroupPropertyEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightGroupPropertyEnum))
   (track_id_2d
    :reader track_id_2d
    :initarg :track_id_2d
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (observed_by_ego
    :reader observed_by_ego
    :initarg :observed_by_ego
    :type landmark_msgs-msg:TrafficLightObservedByEgoEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightObservedByEgoEnum))
   (observed_by_current_road
    :reader observed_by_current_road
    :initarg :observed_by_current_road
    :type landmark_msgs-msg:TrafficLightObservedByEgoEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightObservedByEgoEnum))
   (observed_by_current_lane
    :reader observed_by_current_lane
    :initarg :observed_by_current_lane
    :type landmark_msgs-msg:TrafficLightObservedByEgoEnum
    :initform (cl:make-instance 'landmark_msgs-msg:TrafficLightObservedByEgoEnum))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass TrafficLightNode (<TrafficLightNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrafficLightNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrafficLightNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrafficLightNode> is deprecated: use landmark_msgs-msg:TrafficLightNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pattern-val :lambda-list '(m))
(cl:defmethod pattern-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pattern-val is deprecated.  Use landmark_msgs-msg:pattern instead.")
  (pattern m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:status-val is deprecated.  Use landmark_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'pattern_score-val :lambda-list '(m))
(cl:defmethod pattern_score-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pattern_score-val is deprecated.  Use landmark_msgs-msg:pattern_score instead.")
  (pattern_score m))

(cl:ensure-generic-function 'status_score-val :lambda-list '(m))
(cl:defmethod status_score-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:status_score-val is deprecated.  Use landmark_msgs-msg:status_score instead.")
  (status_score m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:duration-val is deprecated.  Use landmark_msgs-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'remaining-val :lambda-list '(m))
(cl:defmethod remaining-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:remaining-val is deprecated.  Use landmark_msgs-msg:remaining instead.")
  (remaining m))

(cl:ensure-generic-function 'count_number-val :lambda-list '(m))
(cl:defmethod count_number-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:count_number-val is deprecated.  Use landmark_msgs-msg:count_number instead.")
  (count_number m))

(cl:ensure-generic-function 'shape_3d-val :lambda-list '(m))
(cl:defmethod shape_3d-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:shape_3d-val is deprecated.  Use landmark_msgs-msg:shape_3d instead.")
  (shape_3d m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:shape-val is deprecated.  Use landmark_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'directions-val :lambda-list '(m))
(cl:defmethod directions-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:directions-val is deprecated.  Use landmark_msgs-msg:directions instead.")
  (directions m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:location-val is deprecated.  Use landmark_msgs-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'traffic_light_decision-val :lambda-list '(m))
(cl:defmethod traffic_light_decision-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:traffic_light_decision-val is deprecated.  Use landmark_msgs-msg:traffic_light_decision instead.")
  (traffic_light_decision m))

(cl:ensure-generic-function 'in_intersection-val :lambda-list '(m))
(cl:defmethod in_intersection-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:in_intersection-val is deprecated.  Use landmark_msgs-msg:in_intersection instead.")
  (in_intersection m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'heading_theta_bv-val :lambda-list '(m))
(cl:defmethod heading_theta_bv-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:heading_theta_bv-val is deprecated.  Use landmark_msgs-msg:heading_theta_bv instead.")
  (heading_theta_bv m))

(cl:ensure-generic-function 'digits-val :lambda-list '(m))
(cl:defmethod digits-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:digits-val is deprecated.  Use landmark_msgs-msg:digits instead.")
  (digits m))

(cl:ensure-generic-function 'digit_scores-val :lambda-list '(m))
(cl:defmethod digit_scores-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:digit_scores-val is deprecated.  Use landmark_msgs-msg:digit_scores instead.")
  (digit_scores m))

(cl:ensure-generic-function 'group_shape_type-val :lambda-list '(m))
(cl:defmethod group_shape_type-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:group_shape_type-val is deprecated.  Use landmark_msgs-msg:group_shape_type instead.")
  (group_shape_type m))

(cl:ensure-generic-function 'group_shape_score-val :lambda-list '(m))
(cl:defmethod group_shape_score-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:group_shape_score-val is deprecated.  Use landmark_msgs-msg:group_shape_score instead.")
  (group_shape_score m))

(cl:ensure-generic-function 'group_property-val :lambda-list '(m))
(cl:defmethod group_property-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:group_property-val is deprecated.  Use landmark_msgs-msg:group_property instead.")
  (group_property m))

(cl:ensure-generic-function 'track_id_2d-val :lambda-list '(m))
(cl:defmethod track_id_2d-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id_2d-val is deprecated.  Use landmark_msgs-msg:track_id_2d instead.")
  (track_id_2d m))

(cl:ensure-generic-function 'observed_by_ego-val :lambda-list '(m))
(cl:defmethod observed_by_ego-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:observed_by_ego-val is deprecated.  Use landmark_msgs-msg:observed_by_ego instead.")
  (observed_by_ego m))

(cl:ensure-generic-function 'observed_by_current_road-val :lambda-list '(m))
(cl:defmethod observed_by_current_road-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:observed_by_current_road-val is deprecated.  Use landmark_msgs-msg:observed_by_current_road instead.")
  (observed_by_current_road m))

(cl:ensure-generic-function 'observed_by_current_lane-val :lambda-list '(m))
(cl:defmethod observed_by_current_lane-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:observed_by_current_lane-val is deprecated.  Use landmark_msgs-msg:observed_by_current_lane instead.")
  (observed_by_current_lane m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <TrafficLightNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrafficLightNode>)))
    "Constants for message type '<TrafficLightNode>"
  '((:TYPE_VALID . 1)
    (:PATTERN_VALID . 2)
    (:STATUS_VALID . 4)
    (:PATTERN_SCORE_VALID . 8)
    (:STATUS_SCORE_VALID . 16)
    (:DURATION_VALID . 32)
    (:REMAINING_VALID . 64)
    (:COUNT_NUMBER_VALID . 128)
    (:SHAPE_3D_VALID . 256)
    (:SHAPE_VALID . 512)
    (:DIRECTIONS_VALID . 1024)
    (:LOCATION_VALID . 2048)
    (:TRAFFIC_LIGHT_DECISION_VALID . 4096)
    (:IN_INTERSECTION_VALID . 8192)
    (:SCORE_VALID . 16384)
    (:HEADING_THETA_BV_VALID . 32768)
    (:DIGITS_VALID . 65536)
    (:DIGIT_SCORES_VALID . 131072)
    (:GROUP_SHAPE_TYPE_VALID . 262144)
    (:GROUP_SHAPE_SCORE_VALID . 524288)
    (:GROUP_PROPERTY_VALID . 1048576)
    (:TRACK_ID_2D_VALID . 2097152)
    (:OBSERVED_BY_EGO_VALID . 4194304)
    (:OBSERVED_BY_CURRENT_ROAD_VALID . 8388608)
    (:OBSERVED_BY_CURRENT_LANE_VALID . 16777216))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrafficLightNode)))
    "Constants for message type 'TrafficLightNode"
  '((:TYPE_VALID . 1)
    (:PATTERN_VALID . 2)
    (:STATUS_VALID . 4)
    (:PATTERN_SCORE_VALID . 8)
    (:STATUS_SCORE_VALID . 16)
    (:DURATION_VALID . 32)
    (:REMAINING_VALID . 64)
    (:COUNT_NUMBER_VALID . 128)
    (:SHAPE_3D_VALID . 256)
    (:SHAPE_VALID . 512)
    (:DIRECTIONS_VALID . 1024)
    (:LOCATION_VALID . 2048)
    (:TRAFFIC_LIGHT_DECISION_VALID . 4096)
    (:IN_INTERSECTION_VALID . 8192)
    (:SCORE_VALID . 16384)
    (:HEADING_THETA_BV_VALID . 32768)
    (:DIGITS_VALID . 65536)
    (:DIGIT_SCORES_VALID . 131072)
    (:GROUP_SHAPE_TYPE_VALID . 262144)
    (:GROUP_SHAPE_SCORE_VALID . 524288)
    (:GROUP_PROPERTY_VALID . 1048576)
    (:TRACK_ID_2D_VALID . 2097152)
    (:OBSERVED_BY_EGO_VALID . 4194304)
    (:OBSERVED_BY_CURRENT_ROAD_VALID . 8388608)
    (:OBSERVED_BY_CURRENT_LANE_VALID . 16777216))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrafficLightNode>) ostream)
  "Serializes a message object of type '<TrafficLightNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pattern))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pattern))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pattern_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pattern_score))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'status_score))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remaining))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count_number)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shape_3d) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shape))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'directions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'directions))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'location) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'traffic_light_decision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'traffic_light_decision))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_intersection) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading_theta_bv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digits))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'digits))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digit_scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'digit_scores))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_shape_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'group_shape_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'group_property) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'track_id_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'track_id_2d))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'observed_by_ego) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'observed_by_current_road) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'observed_by_current_lane) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrafficLightNode>) istream)
  "Deserializes a message object of type '<TrafficLightNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pattern) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pattern)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficLightPatternEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficLightStatusEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pattern_score) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pattern_score)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status_score) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status_score)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count_number)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shape_3d) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'shape) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'directions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'directions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficLightDirectionEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'location) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'traffic_light_decision) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'traffic_light_decision)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:TrafficLightDecision))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'in_intersection) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_theta_bv) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digits) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digits)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digit_scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digit_scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_shape_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'group_shape_score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'group_property) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'track_id_2d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'track_id_2d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'observed_by_ego) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'observed_by_current_road) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'observed_by_current_lane) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrafficLightNode>)))
  "Returns string type for a message object of type '<TrafficLightNode>"
  "landmark_msgs/TrafficLightNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrafficLightNode)))
  "Returns string type for a message object of type 'TrafficLightNode"
  "landmark_msgs/TrafficLightNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrafficLightNode>)))
  "Returns md5sum for a message object of type '<TrafficLightNode>"
  "fb829ca2295905f4fe0fc8ec134858a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrafficLightNode)))
  "Returns md5sum for a message object of type 'TrafficLightNode"
  "fb829ca2295905f4fe0fc8ec134858a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrafficLightNode>)))
  "Returns full string definition for message of type '<TrafficLightNode>"
  (cl:format cl:nil "uint32 TYPE_VALID = 1~%uint32 PATTERN_VALID = 2~%uint32 STATUS_VALID = 4~%uint32 PATTERN_SCORE_VALID = 8~%uint32 STATUS_SCORE_VALID = 16~%uint32 DURATION_VALID = 32~%uint32 REMAINING_VALID = 64~%uint32 COUNT_NUMBER_VALID = 128~%uint32 SHAPE_3D_VALID = 256~%uint32 SHAPE_VALID = 512~%uint32 DIRECTIONS_VALID = 1024~%uint32 LOCATION_VALID = 2048~%uint32 TRAFFIC_LIGHT_DECISION_VALID = 4096~%uint32 IN_INTERSECTION_VALID = 8192~%uint32 SCORE_VALID = 16384~%uint32 HEADING_THETA_BV_VALID = 32768~%uint32 DIGITS_VALID = 65536~%uint32 DIGIT_SCORES_VALID = 131072~%uint32 GROUP_SHAPE_TYPE_VALID = 262144~%uint32 GROUP_SHAPE_SCORE_VALID = 524288~%uint32 GROUP_PROPERTY_VALID = 1048576~%uint32 TRACK_ID_2D_VALID = 2097152~%uint32 OBSERVED_BY_EGO_VALID = 4194304~%uint32 OBSERVED_BY_CURRENT_ROAD_VALID = 8388608~%uint32 OBSERVED_BY_CURRENT_LANE_VALID = 16777216~%uint32 available~%landmark_msgs/TrackId track_id~%landmark_msgs/TrafficLightTypeEnum type~%landmark_msgs/TrafficLightPatternEnum[] pattern~%landmark_msgs/TrafficLightStatusEnum[] status~%float32[] pattern_score~%float32[] status_score~%float32 duration~%float32 remaining~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f[] shape~%landmark_msgs/TrafficLightDirectionEnum[] directions~%perception_interface_msgs/Point3f location~%landmark_msgs/TrafficLightDecision[] traffic_light_decision~%bool in_intersection~%float32 score~%float32 heading_theta_bv~%uint8[] digits~%float32[] digit_scores~%landmark_msgs/TrafficLightGroupShapeEnum group_shape_type~%float32 group_shape_score~%landmark_msgs/TrafficLightGroupPropertyEnum group_property~%int32[] track_id_2d~%landmark_msgs/TrafficLightObservedByEgoEnum observed_by_ego~%landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_road~%landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_lane~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23~%uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24~%uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25~%uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 TRAFFIC_LIGHT_STATUS_ON = 13~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3f~%float32 length~%float32 height~%float32 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/TrafficLightDirectionEnum~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightDecision~%uint32 PATTERN_VALID = 1~%uint32 STATUS_VALID = 2~%uint32 DURATION_VALID = 4~%uint32 REMAINING_VALID = 8~%uint32 COUNT_NUMBER_VALID = 16~%uint32 SCORE_VALID = 32~%uint32 RESERVED_INFO_VALID = 64~%uint32 POS_FEATURE_VALID = 128~%uint32 PHYSICAL_NODE_LIST_VALID = 256~%landmark_msgs/TrafficLightPatternEnum pattern~%landmark_msgs/TrafficLightStatusEnum status~%float32 duration~%float32 remaining~%uint8 count_number~%float32 score~%string reserved_info~%landmark_msgs/TrafficLightPositionFeature pos_feature~%landmark_msgs/TrackId[] physical_node_list~%uint32 available~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPositionFeature~%perception_interface_msgs/Point3f position~%float32 yaw~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroupShapeEnum~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroupPropertyEnum~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightObservedByEgoEnum~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE = 1~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrafficLightNode)))
  "Returns full string definition for message of type 'TrafficLightNode"
  (cl:format cl:nil "uint32 TYPE_VALID = 1~%uint32 PATTERN_VALID = 2~%uint32 STATUS_VALID = 4~%uint32 PATTERN_SCORE_VALID = 8~%uint32 STATUS_SCORE_VALID = 16~%uint32 DURATION_VALID = 32~%uint32 REMAINING_VALID = 64~%uint32 COUNT_NUMBER_VALID = 128~%uint32 SHAPE_3D_VALID = 256~%uint32 SHAPE_VALID = 512~%uint32 DIRECTIONS_VALID = 1024~%uint32 LOCATION_VALID = 2048~%uint32 TRAFFIC_LIGHT_DECISION_VALID = 4096~%uint32 IN_INTERSECTION_VALID = 8192~%uint32 SCORE_VALID = 16384~%uint32 HEADING_THETA_BV_VALID = 32768~%uint32 DIGITS_VALID = 65536~%uint32 DIGIT_SCORES_VALID = 131072~%uint32 GROUP_SHAPE_TYPE_VALID = 262144~%uint32 GROUP_SHAPE_SCORE_VALID = 524288~%uint32 GROUP_PROPERTY_VALID = 1048576~%uint32 TRACK_ID_2D_VALID = 2097152~%uint32 OBSERVED_BY_EGO_VALID = 4194304~%uint32 OBSERVED_BY_CURRENT_ROAD_VALID = 8388608~%uint32 OBSERVED_BY_CURRENT_LANE_VALID = 16777216~%uint32 available~%landmark_msgs/TrackId track_id~%landmark_msgs/TrafficLightTypeEnum type~%landmark_msgs/TrafficLightPatternEnum[] pattern~%landmark_msgs/TrafficLightStatusEnum[] status~%float32[] pattern_score~%float32[] status_score~%float32 duration~%float32 remaining~%uint8 count_number~%perception_interface_msgs/Shape3f shape_3d~%perception_interface_msgs/Point3f[] shape~%landmark_msgs/TrafficLightDirectionEnum[] directions~%perception_interface_msgs/Point3f location~%landmark_msgs/TrafficLightDecision[] traffic_light_decision~%bool in_intersection~%float32 score~%float32 heading_theta_bv~%uint8[] digits~%float32[] digit_scores~%landmark_msgs/TrafficLightGroupShapeEnum group_shape_type~%float32 group_shape_score~%landmark_msgs/TrafficLightGroupPropertyEnum group_property~%int32[] track_id_2d~%landmark_msgs/TrafficLightObservedByEgoEnum observed_by_ego~%landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_road~%landmark_msgs/TrafficLightObservedByEgoEnum observed_by_current_lane~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/TrafficLightTypeEnum~%uint8 TRAFFIC_LIGHT_TYPE_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_TYPE_GROUP = 1~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_BULB = 2~%uint8 TRAFFIC_LIGHT_TYPE_GLIM_HALO = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPatternEnum~%uint8 TRAFFIC_LIGHT_PATTERN_SOLID_CIRCLE = 0~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_ARROW = 1~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_ARROW = 2~%uint8 TRAFFIC_LIGHT_PATTERN_UP_ARROW = 3~%uint8 TRAFFIC_LIGHT_PATTERN_DOWN_ARROW = 4~%uint8 TRAFFIC_LIGHT_PATTERN_PEDESTRIAN = 5~%uint8 TRAFFIC_LIGHT_PATTERN_NON_MOTOR = 6~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_UTURN = 7~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_UTURN = 8~%uint8 TRAFFIC_LIGHT_PATTERN_NUMBER = 9~%uint8 TRAFFIC_LIGHT_PATTERN_PROGRESS_BAR = 10~%uint8 TRAFFIC_LIGHT_PATTERN_TEXT_LIGHT = 11~%uint8 TRAFFIC_LIGHT_PATTERN_X_SHAPED_LIGHT = 12~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTUP_ARROW = 13~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTUP_ARROW = 14~%uint8 TRAFFIC_LIGHT_PATTERN_LEFTDOWN_ARROW = 15~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHTDOWN_ARROW = 16~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_UP_ARROW = 17~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_UP_ARROW = 18~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_ARROW = 19~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_RIGHT_AND_UP_ARROW = 20~%uint8 TRAFFIC_LIGHT_PATTERN_LEFT_AND_LEFT_UTURN_ARROW = 21~%uint8 TRAFFIC_LIGHT_PATTERN_RIGHT_AND_RIGHT_UTURN_ARROW = 22~%uint8 TRAFFIC_LIGHT_PATTERN_ARROW_TRAFFIC_LIGHT = 23~%uint8 TRAFFIC_LIGHT_PATTERN_DOT_TRAFFIC_LIGHT = 24~%uint8 TRAFFIC_LIGHT_PATTERN_SAND_CLOCK_TRAFFIC_LIGHT = 25~%uint8 TRAFFIC_LIGHT_PATTERN_TRAFFIC_LIGHT_FOR_PEDESTRIANS = 26~%uint8 TRAFFIC_LIGHT_PATTERN_OTHER = 50~%uint8 TRAFFIC_LIGHT_PATTERN_UNKNOWN = 51~%uint8 TRAFFIC_LIGHT_PATTERN_OFF = 52~%uint8 TRAFFIC_LIGHT_PATTERN_UNMARKED = 53~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE1 = 80~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE2 = 81~%uint8 TRAFFIC_LIGHT_PATTERN_RESERVE3 = 82~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightStatusEnum~%uint8 TRAFFIC_LIGHT_STATUS_RED = 0~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW = 1~%uint8 TRAFFIC_LIGHT_STATUS_GREEN = 2~%uint8 TRAFFIC_LIGHT_STATUS_YELLOW_BLINKING = 3~%uint8 TRAFFIC_LIGHT_STATUS_GREEN_BLINKING = 4~%uint8 TRAFFIC_LIGHT_STATUS_OFF = 5~%uint8 TRAFFIC_LIGHT_STATUS_OTHER = 6~%uint8 TRAFFIC_LIGHT_STATUS_UNKNOWN = 7~%uint8 TRAFFIC_LIGHT_STATUS_RED_BLINKING = 8~%uint8 TRAFFIC_LIGHT_STATUS_UNMARKED = 9~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE1 = 10~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE2 = 11~%uint8 TRAFFIC_LIGHT_STATUS_RESERVE3 = 12~%uint8 TRAFFIC_LIGHT_STATUS_ON = 13~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Shape3f~%float32 length~%float32 height~%float32 width~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/TrafficLightDirectionEnum~%uint8 UNKNOWN = 0~%uint8 GO_STRAIGHT = 1~%uint8 TURN_RIGHT = 2~%uint8 TURN_LEFT = 3~%uint8 U_TURN_LEFT = 4~%uint8 U_TURN_RIGHT = 5~%uint8 LEFT_CONFLUENCE = 6~%uint8 RIGHT_CONFLUENCE = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightDecision~%uint32 PATTERN_VALID = 1~%uint32 STATUS_VALID = 2~%uint32 DURATION_VALID = 4~%uint32 REMAINING_VALID = 8~%uint32 COUNT_NUMBER_VALID = 16~%uint32 SCORE_VALID = 32~%uint32 RESERVED_INFO_VALID = 64~%uint32 POS_FEATURE_VALID = 128~%uint32 PHYSICAL_NODE_LIST_VALID = 256~%landmark_msgs/TrafficLightPatternEnum pattern~%landmark_msgs/TrafficLightStatusEnum status~%float32 duration~%float32 remaining~%uint8 count_number~%float32 score~%string reserved_info~%landmark_msgs/TrafficLightPositionFeature pos_feature~%landmark_msgs/TrackId[] physical_node_list~%uint32 available~%~%================================================================================~%MSG: landmark_msgs/TrafficLightPositionFeature~%perception_interface_msgs/Point3f position~%float32 yaw~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroupShapeEnum~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_HORIZONTAL = 0~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_VERTICAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_SINGLE = 2~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_COMBINATION = 3~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_IRREGULAR = 4~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_UNKNOWN = 5~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE1 = 6~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE2 = 7~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE3 = 8~%uint8 TRAFFIC_LIGHT_GROUP_SHAPE_RESERVE4 = 9~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightGroupPropertyEnum~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_OCCLUSION = 0~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_VISUAL = 1~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNKNOWN = 2~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_UNMARKED = 3~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE1 = 4~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE2 = 5~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE3 = 6~%uint8 TRAFFIC_LIGHT_GROUP_PROPERTY_RESERVE4 = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/TrafficLightObservedByEgoEnum~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_UNKNOWN = 0~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_TRUE = 1~%uint8 TRAFFIC_LIGHT_OBSERVED_BY_EGO_FALSE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrafficLightNode>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pattern) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pattern_score) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status_score) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shape_3d))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'directions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'location))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'traffic_light_decision) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digits) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digit_scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_shape_type))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'group_property))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'track_id_2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'observed_by_ego))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'observed_by_current_road))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'observed_by_current_lane))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrafficLightNode>))
  "Converts a ROS message object to a list"
  (cl:list 'TrafficLightNode
    (cl:cons ':available (available msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':pattern (pattern msg))
    (cl:cons ':status (status msg))
    (cl:cons ':pattern_score (pattern_score msg))
    (cl:cons ':status_score (status_score msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':remaining (remaining msg))
    (cl:cons ':count_number (count_number msg))
    (cl:cons ':shape_3d (shape_3d msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':directions (directions msg))
    (cl:cons ':location (location msg))
    (cl:cons ':traffic_light_decision (traffic_light_decision msg))
    (cl:cons ':in_intersection (in_intersection msg))
    (cl:cons ':score (score msg))
    (cl:cons ':heading_theta_bv (heading_theta_bv msg))
    (cl:cons ':digits (digits msg))
    (cl:cons ':digit_scores (digit_scores msg))
    (cl:cons ':group_shape_type (group_shape_type msg))
    (cl:cons ':group_shape_score (group_shape_score msg))
    (cl:cons ':group_property (group_property msg))
    (cl:cons ':track_id_2d (track_id_2d msg))
    (cl:cons ':observed_by_ego (observed_by_ego msg))
    (cl:cons ':observed_by_current_road (observed_by_current_road msg))
    (cl:cons ':observed_by_current_lane (observed_by_current_lane msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
