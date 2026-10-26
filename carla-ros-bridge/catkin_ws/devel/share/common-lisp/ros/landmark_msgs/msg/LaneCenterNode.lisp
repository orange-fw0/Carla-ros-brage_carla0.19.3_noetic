; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneCenterNode.msg.html

(cl:defclass <LaneCenterNode> (roslisp-msg-protocol:ros-message)
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
   (index
    :reader index
    :initarg :index
    :type cl:integer
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (coefficient_bv
    :reader coefficient_bv
    :initarg :coefficient_bv
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (lane_types
    :reader lane_types
    :initarg :lane_types
    :type (cl:vector landmark_msgs-msg:LaneCenterNodeLaneTypeEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LaneCenterNodeLaneTypeEnum :initial-element (cl:make-instance 'landmark_msgs-msg:LaneCenterNodeLaneTypeEnum)))
   (direction_types
    :reader direction_types
    :initarg :direction_types
    :type (cl:vector landmark_msgs-msg:LaneCenterNodeDirectionTypeEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LaneCenterNodeDirectionTypeEnum :initial-element (cl:make-instance 'landmark_msgs-msg:LaneCenterNodeDirectionTypeEnum)))
   (flow_type
    :reader flow_type
    :initarg :flow_type
    :type landmark_msgs-msg:LaneCenterFlowTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneCenterFlowTypeEnum))
   (lane_attribute
    :reader lane_attribute
    :initarg :lane_attribute
    :type (cl:vector landmark_msgs-msg:LaneCenterNodeLaneAttribute)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:LaneCenterNodeLaneAttribute :initial-element (cl:make-instance 'landmark_msgs-msg:LaneCenterNodeLaneAttribute)))
   (line_points
    :reader line_points
    :initarg :line_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (is_virtual
    :reader is_virtual
    :initarg :is_virtual
    :type cl:boolean
    :initform cl:nil)
   (in_intersection
    :reader in_intersection
    :initarg :in_intersection
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LaneCenterNode (<LaneCenterNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneCenterNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneCenterNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneCenterNode> is deprecated: use landmark_msgs-msg:LaneCenterNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:index-val is deprecated.  Use landmark_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'coefficient_bv-val :lambda-list '(m))
(cl:defmethod coefficient_bv-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:coefficient_bv-val is deprecated.  Use landmark_msgs-msg:coefficient_bv instead.")
  (coefficient_bv m))

(cl:ensure-generic-function 'lane_types-val :lambda-list '(m))
(cl:defmethod lane_types-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_types-val is deprecated.  Use landmark_msgs-msg:lane_types instead.")
  (lane_types m))

(cl:ensure-generic-function 'direction_types-val :lambda-list '(m))
(cl:defmethod direction_types-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:direction_types-val is deprecated.  Use landmark_msgs-msg:direction_types instead.")
  (direction_types m))

(cl:ensure-generic-function 'flow_type-val :lambda-list '(m))
(cl:defmethod flow_type-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:flow_type-val is deprecated.  Use landmark_msgs-msg:flow_type instead.")
  (flow_type m))

(cl:ensure-generic-function 'lane_attribute-val :lambda-list '(m))
(cl:defmethod lane_attribute-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:lane_attribute-val is deprecated.  Use landmark_msgs-msg:lane_attribute instead.")
  (lane_attribute m))

(cl:ensure-generic-function 'line_points-val :lambda-list '(m))
(cl:defmethod line_points-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:line_points-val is deprecated.  Use landmark_msgs-msg:line_points instead.")
  (line_points m))

(cl:ensure-generic-function 'is_virtual-val :lambda-list '(m))
(cl:defmethod is_virtual-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_virtual-val is deprecated.  Use landmark_msgs-msg:is_virtual instead.")
  (is_virtual m))

(cl:ensure-generic-function 'in_intersection-val :lambda-list '(m))
(cl:defmethod in_intersection-val ((m <LaneCenterNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:in_intersection-val is deprecated.  Use landmark_msgs-msg:in_intersection instead.")
  (in_intersection m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneCenterNode>)))
    "Constants for message type '<LaneCenterNode>"
  '((:SCORE_VALID . 1)
    (:COEFFICIENT_BV_VALID . 2)
    (:LANE_TYPE_VALID . 4)
    (:DIRECTION_TYPE_VALID . 8)
    (:FLOW_TYPE_VALID . 16)
    (:LANE_ATTRIBUTE_VALID . 32)
    (:LINE_POINTS_VALID . 64)
    (:IS_VIRTUAL_VALID . 128)
    (:IN_INTERSECTION_VALID . 256))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneCenterNode)))
    "Constants for message type 'LaneCenterNode"
  '((:SCORE_VALID . 1)
    (:COEFFICIENT_BV_VALID . 2)
    (:LANE_TYPE_VALID . 4)
    (:DIRECTION_TYPE_VALID . 8)
    (:FLOW_TYPE_VALID . 16)
    (:LANE_ATTRIBUTE_VALID . 32)
    (:LINE_POINTS_VALID . 64)
    (:IS_VIRTUAL_VALID . 128)
    (:IN_INTERSECTION_VALID . 256))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneCenterNode>) ostream)
  "Serializes a message object of type '<LaneCenterNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coefficient_bv))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'coefficient_bv))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_types))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_types))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'direction_types))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'direction_types))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'flow_type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_attribute))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lane_attribute))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_virtual) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_intersection) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneCenterNode>) istream)
  "Deserializes a message object of type '<LaneCenterNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coefficient_bv) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coefficient_bv)))
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
  (cl:setf (cl:slot-value msg 'lane_types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LaneCenterNodeLaneTypeEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'direction_types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'direction_types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LaneCenterNodeDirectionTypeEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'flow_type) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_attribute) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_attribute)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:LaneCenterNodeLaneAttribute))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'line_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'line_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_virtual) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_intersection) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneCenterNode>)))
  "Returns string type for a message object of type '<LaneCenterNode>"
  "landmark_msgs/LaneCenterNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneCenterNode)))
  "Returns string type for a message object of type 'LaneCenterNode"
  "landmark_msgs/LaneCenterNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneCenterNode>)))
  "Returns md5sum for a message object of type '<LaneCenterNode>"
  "a377ef8bb24b68f12c1050df737414ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneCenterNode)))
  "Returns md5sum for a message object of type 'LaneCenterNode"
  "a377ef8bb24b68f12c1050df737414ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneCenterNode>)))
  "Returns full string definition for message of type '<LaneCenterNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 COEFFICIENT_BV_VALID = 2~%uint16 LANE_TYPE_VALID = 4~%uint16 DIRECTION_TYPE_VALID = 8~%uint16 FLOW_TYPE_VALID = 16~%uint16 LANE_ATTRIBUTE_VALID = 32~%uint16 LINE_POINTS_VALID = 64~%uint16 IS_VIRTUAL_VALID = 128~%uint16 IN_INTERSECTION_VALID = 256~%uint16 available~%float32 score~%int32 index~%landmark_msgs/TrackId track_id~%float32[] coefficient_bv~%landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types~%landmark_msgs/LaneCenterNodeDirectionTypeEnum[] direction_types~%landmark_msgs/LaneCenterFlowTypeEnum flow_type~%landmark_msgs/LaneCenterNodeLaneAttribute[] lane_attribute~%perception_interface_msgs/Point3f[] line_points~%bool is_virtual~%bool in_intersection~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum~%uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_NORMAL = 1~%uint8 LANE_TYPE_EMERGENCY = 5~%uint8 LANE_TYPE_BUS = 6~%uint8 LANE_TYPE_PASSING = 7~%uint8 LANE_TYPE_HOV = 8~%uint8 LANE_TYPE_ACCELERATE = 9~%uint8 LANE_TYPE_UTURN = 10~%uint8 LANE_TYPE_DECELERATE = 11~%uint8 LANE_TYPE_SHOULDER = 12~%uint8 LANE_TYPE_INTERSECTION = 14~%uint8 LANE_TYPE_NON_MOTOR = 15~%uint8 LANE_TYPE_MIXED_MOTOR = 16~%uint8 LANE_TYPE_SIDE_WALK = 17~%uint8 LANE_TYPE_MOTORCYCLE = 18~%uint8 LANE_TYPE_TOLL_ETC = 19~%uint8 LANE_TYPE_TOLL = 20~%uint8 LANE_TYPE_CHECKPOINT = 21~%uint8 LANE_TYPE_RAMP = 22~%uint8 LANE_TYPE_BARRIER = 23~%uint8 LANE_TYPE_CHANNELIZATION = 24~%uint8 LANE_TYPE_EMERGENCE_STOP = 25~%uint8 LANE_TYPE_HAZARDOUS_GOODS = 26~%uint8 LANE_TYPE_STEEP_GRADE = 27~%uint8 LANE_TYPE_DIREC_VARIABLE = 28~%uint8 LANE_TYPE_CUSTOMS_SUP = 29~%uint8 LANE_TYPE_EMERGENCE_RAMP = 30~%uint8 LANE_TYPE_PARKING = 31~%uint8 LANE_TYPE_TIDAL = 32~%uint8 LANE_TYPE_TEMPORARY = 33~%uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34~%uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35~%uint8 LANE_TYPE_LEFT_ACC = 36~%uint8 LANE_TYPE_RIGHT_ACC = 37~%uint8 LANE_TYPE_LEFT_DEC = 38~%uint8 LANE_TYPE_RIGHT_DEC = 39~%uint8 LANE_TYPE_SERVICE_RAMP = 40~%uint8 LANE_TYPE_CURB = 41~%uint8 LANE_TYPE_RAILWAY = 42~%uint8 LANE_TYPE_BUS_STOP = 43~%uint8 LANE_TYPE_ROUNDABOUT = 44~%uint8 LANE_TYPE_INVALID = 45~%uint8 LANE_TYPE_WIDE = 46~%uint8 LANE_TYPE_VIRTUAL = 47~%uint8 LANE_TYPE_OTHERS = 63~%uint8 LANE_TYPE_ACC_DEC = 70~%uint8 LANE_TYPE_WAITING_AREA = 71~%uint8 LANE_TYPE_TOLL_MANUAL = 72~%uint8 LANE_TYPE_INCOMPLETE = 73~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum~%uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0~%uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9~%uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneCenterFlowTypeEnum~%uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0~%uint8 LANE_CENTER_FLOW_TYPE_SAME = 1~%uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2~%uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeLaneAttribute~%uint8 SPEED_LIMIT_VALID = 1~%uint8 CURVATURE_VALID = 2~%uint8 SLOPE_VALID = 4~%uint8 OFFSET_VALID = 8~%uint8 available~%float32 speed_limit~%float32 curvature~%float32 slope~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneCenterNode)))
  "Returns full string definition for message of type 'LaneCenterNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 COEFFICIENT_BV_VALID = 2~%uint16 LANE_TYPE_VALID = 4~%uint16 DIRECTION_TYPE_VALID = 8~%uint16 FLOW_TYPE_VALID = 16~%uint16 LANE_ATTRIBUTE_VALID = 32~%uint16 LINE_POINTS_VALID = 64~%uint16 IS_VIRTUAL_VALID = 128~%uint16 IN_INTERSECTION_VALID = 256~%uint16 available~%float32 score~%int32 index~%landmark_msgs/TrackId track_id~%float32[] coefficient_bv~%landmark_msgs/LaneCenterNodeLaneTypeEnum[] lane_types~%landmark_msgs/LaneCenterNodeDirectionTypeEnum[] direction_types~%landmark_msgs/LaneCenterFlowTypeEnum flow_type~%landmark_msgs/LaneCenterNodeLaneAttribute[] lane_attribute~%perception_interface_msgs/Point3f[] line_points~%bool is_virtual~%bool in_intersection~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeLaneTypeEnum~%uint8 LANE_TYPE_UNKNOWN = 0~%uint8 LANE_TYPE_NORMAL = 1~%uint8 LANE_TYPE_EMERGENCY = 5~%uint8 LANE_TYPE_BUS = 6~%uint8 LANE_TYPE_PASSING = 7~%uint8 LANE_TYPE_HOV = 8~%uint8 LANE_TYPE_ACCELERATE = 9~%uint8 LANE_TYPE_UTURN = 10~%uint8 LANE_TYPE_DECELERATE = 11~%uint8 LANE_TYPE_SHOULDER = 12~%uint8 LANE_TYPE_INTERSECTION = 14~%uint8 LANE_TYPE_NON_MOTOR = 15~%uint8 LANE_TYPE_MIXED_MOTOR = 16~%uint8 LANE_TYPE_SIDE_WALK = 17~%uint8 LANE_TYPE_MOTORCYCLE = 18~%uint8 LANE_TYPE_TOLL_ETC = 19~%uint8 LANE_TYPE_TOLL = 20~%uint8 LANE_TYPE_CHECKPOINT = 21~%uint8 LANE_TYPE_RAMP = 22~%uint8 LANE_TYPE_BARRIER = 23~%uint8 LANE_TYPE_CHANNELIZATION = 24~%uint8 LANE_TYPE_EMERGENCE_STOP = 25~%uint8 LANE_TYPE_HAZARDOUS_GOODS = 26~%uint8 LANE_TYPE_STEEP_GRADE = 27~%uint8 LANE_TYPE_DIREC_VARIABLE = 28~%uint8 LANE_TYPE_CUSTOMS_SUP = 29~%uint8 LANE_TYPE_EMERGENCE_RAMP = 30~%uint8 LANE_TYPE_PARKING = 31~%uint8 LANE_TYPE_TIDAL = 32~%uint8 LANE_TYPE_TEMPORARY = 33~%uint8 LANE_TYPE_LEFT_TURN_WAITING_AREA = 34~%uint8 LANE_TYPE_STRAIGHT_TURN_WAITING_AREA = 35~%uint8 LANE_TYPE_LEFT_ACC = 36~%uint8 LANE_TYPE_RIGHT_ACC = 37~%uint8 LANE_TYPE_LEFT_DEC = 38~%uint8 LANE_TYPE_RIGHT_DEC = 39~%uint8 LANE_TYPE_SERVICE_RAMP = 40~%uint8 LANE_TYPE_CURB = 41~%uint8 LANE_TYPE_RAILWAY = 42~%uint8 LANE_TYPE_BUS_STOP = 43~%uint8 LANE_TYPE_ROUNDABOUT = 44~%uint8 LANE_TYPE_INVALID = 45~%uint8 LANE_TYPE_WIDE = 46~%uint8 LANE_TYPE_VIRTUAL = 47~%uint8 LANE_TYPE_OTHERS = 63~%uint8 LANE_TYPE_ACC_DEC = 70~%uint8 LANE_TYPE_WAITING_AREA = 71~%uint8 LANE_TYPE_TOLL_MANUAL = 72~%uint8 LANE_TYPE_INCOMPLETE = 73~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeDirectionTypeEnum~%uint8 LANE_TYPE_GUIDE_DIRECTION_UNKNOWN = 0~%uint8 LANE_TYPE_GUIDE_DIRECTION_GO_STRAIGHT = 1~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_LEFT = 2~%uint8 LANE_TYPE_GUIDE_DIRECTION_TURN_RIGHT = 3~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_CONFLUENCE = 6~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_CONFLUENCE = 7~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_LEFT = 8~%uint8 LANE_TYPE_GUIDE_DIRECTION_U_TURN_RIGHT = 9~%uint8 LANE_TYPE_GUIDE_DIRECTION_TEXT = 21~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_LEFT = 22~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_OR_RIGHT = 23~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_UTRUN = 24~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_U_TURN = 25~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_TURN_AND_INTERFLOW = 26~%uint8 LANE_TYPE_GUIDE_DIRECTION_RIGHT_TURN_AND_INTERFLOW = 27~%uint8 LANE_TYPE_GUIDE_DIRECTION_LEFT_RIGHT_TURN = 28~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_LEFT_TURN = 29~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_RIGHT_TURN = 30~%uint8 LANE_TYPE_GUIDE_DIRECTION_NO_U_TURN = 31~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_LEFT_RIGHT = 32~%uint8 LANE_TYPE_GUIDE_DIRECTION_STRAIGHT_U_LEFT = 33~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneCenterFlowTypeEnum~%uint8 LANE_CENTER_FLOW_TYPE_UNKNOWN = 0~%uint8 LANE_CENTER_FLOW_TYPE_SAME = 1~%uint8 LANE_CENTER_FLOW_TYPE_REVERSE = 2~%uint8 LANE_CENTER_FLOW_TYPE_BOTH = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneCenterNodeLaneAttribute~%uint8 SPEED_LIMIT_VALID = 1~%uint8 CURVATURE_VALID = 2~%uint8 SLOPE_VALID = 4~%uint8 OFFSET_VALID = 8~%uint8 available~%float32 speed_limit~%float32 curvature~%float32 slope~%float32 start_offset~%float32 end_offset~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneCenterNode>))
  (cl:+ 0
     2
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coefficient_bv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'direction_types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'flow_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_attribute) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneCenterNode>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneCenterNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':index (index msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':coefficient_bv (coefficient_bv msg))
    (cl:cons ':lane_types (lane_types msg))
    (cl:cons ':direction_types (direction_types msg))
    (cl:cons ':flow_type (flow_type msg))
    (cl:cons ':lane_attribute (lane_attribute msg))
    (cl:cons ':line_points (line_points msg))
    (cl:cons ':is_virtual (is_virtual msg))
    (cl:cons ':in_intersection (in_intersection msg))
))
