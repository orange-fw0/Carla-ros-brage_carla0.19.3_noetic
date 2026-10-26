; Auto-generated. Do not edit!


(cl:in-package hdmap_msgs-msg)


;//! \htmlinclude ODDEvent.msg.html

(cl:defclass <ODDEvent> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type hdmap_msgs-msg:ODDType
    :initform (cl:make-instance 'hdmap_msgs-msg:ODDType))
   (distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type hdmap_msgs-msg:ODDPriorityType
    :initform (cl:make-instance 'hdmap_msgs-msg:ODDPriorityType))
   (end_distance
    :reader end_distance
    :initarg :end_distance
    :type cl:integer
    :initform 0))
)

(cl:defclass ODDEvent (<ODDEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ODDEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ODDEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdmap_msgs-msg:<ODDEvent> is deprecated: use hdmap_msgs-msg:ODDEvent instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ODDEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:id-val is deprecated.  Use hdmap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ODDEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:type-val is deprecated.  Use hdmap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ODDEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:distance-val is deprecated.  Use hdmap_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <ODDEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:priority-val is deprecated.  Use hdmap_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'end_distance-val :lambda-list '(m))
(cl:defmethod end_distance-val ((m <ODDEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:end_distance-val is deprecated.  Use hdmap_msgs-msg:end_distance instead.")
  (end_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ODDEvent>) ostream)
  "Serializes a message object of type '<ODDEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'priority) ostream)
  (cl:let* ((signed (cl:slot-value msg 'end_distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ODDEvent>) istream)
  "Deserializes a message object of type '<ODDEvent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'priority) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ODDEvent>)))
  "Returns string type for a message object of type '<ODDEvent>"
  "hdmap_msgs/ODDEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ODDEvent)))
  "Returns string type for a message object of type 'ODDEvent"
  "hdmap_msgs/ODDEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ODDEvent>)))
  "Returns md5sum for a message object of type '<ODDEvent>"
  "192054015d6200cfaefb9ac7d7641006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ODDEvent)))
  "Returns md5sum for a message object of type 'ODDEvent"
  "192054015d6200cfaefb9ac7d7641006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ODDEvent>)))
  "Returns full string definition for message of type '<ODDEvent>"
  (cl:format cl:nil "uint32 id~%hdmap_msgs/ODDType type~%int32 distance~%hdmap_msgs/ODDPriorityType priority~%int32 end_distance~%~%================================================================================~%MSG: hdmap_msgs/ODDType~%uint8 ODD_UNKNOWN = 0~%uint8 ODD_ROAD_CONSTRUCTION = 1~%uint8 ODD_TOLL = 2~%uint8 ODD_GATE_MACHINE = 3~%uint8 ODD_MAP_COLLECT = 4~%uint8 ODD_MAP_ERROR = 5~%uint8 ODD_NONE_MAP_ERROR = 6~%uint8 ODD_DYNAMIC_EVENT = 7~%uint8 ODD_SERVICE_AREA = 9~%uint8 ODD_DRIVABLE_TOLL = 20~%uint8 ODD_SHORT = 50~%uint8 ODD_NOT_AVAILABLE = 100~%uint8 ODD_UNMATCH = 101~%uint8 ODD_TOUR_END = 102~%uint8 ESR_ROAD_CLASS = 103~%uint8 ODD_TILE_END = 104~%uint8 ODD_UNP_ROUNDABOUT = 105~%uint8 ODD_UNP_U_TURN = 106~%uint8 ODD_UNP_TIDAL_FLOW_LANE = 107~%uint8 ODD_UNP_REVERSIBLE_LANE = 108~%uint8 ODD_CRITICALLY_OVER_CURVATURE = 109~%uint8 ODD_OVER_CURVATURE = 110~%uint8 ODD_OVER_SLOPE = 111~%uint8 ODD_OVER_LANEWIDTH = 112~%uint8 ODD_INVALID_LINE = 113~%uint8 ODD_TOO_LOW_SPDLIMIT_HIGHWAY = 114~%uint8 ODD_PROHIBITED_LANE = 115~%uint8 ODD_INTERSECTION_HIGHWAY = 116~%uint8 ODD_TRAFFICLIGHT_HIGHWAY = 117~%uint8 ODD_PROHIBITED_FACILITY_HIGHWAY = 118~%uint8 ODD_ROUNDABOUT_HIGHWAY = 119~%uint8 ODD_LOCAL_MAP_EDGE = 120~%uint8 ODD_HNP_MINUS = 121~%uint8 ODD_CHECK_POINT = 130~%uint8 ODD_INNER_ROAD = 131~%uint8 ODD_DYNAMIC_ROADWORK = 132~%uint8 ODD_L3_CROSS_NOLIGHT = 141~%uint8 ODD_L3_NARROW_UTURN = 142~%uint8 ODD_L3_UNREGULAR_ROAD = 143~%uint8 ODD_L3_ETC = 144~%uint8 ODD_L3_DUALWAY = 145~%uint8 ODD_L3_BROKEN_ICJCT = 146~%uint8 ODD_L3_DEAD_ROAD = 147~%uint8 URBAN = 201~%uint8 HIGHWAY = 202~%uint8 HDMAP = 203~%uint8 NO_HDMAP = 204~%uint8 SDNaviNP_AREA = 205~%uint8 SWITCH_NP_TO_PNP_AREA = 210~%uint8 SWITCH_PNP_TO_NP_AREA = 211~%uint8 value~%~%================================================================================~%MSG: hdmap_msgs/ODDPriorityType~%uint8 UNKNOWN = 0~%uint8 HDMAP_PRIORITY = 1~%uint8 NO_HDMAP_PRIORITY = 2~%uint8 priority~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ODDEvent)))
  "Returns full string definition for message of type 'ODDEvent"
  (cl:format cl:nil "uint32 id~%hdmap_msgs/ODDType type~%int32 distance~%hdmap_msgs/ODDPriorityType priority~%int32 end_distance~%~%================================================================================~%MSG: hdmap_msgs/ODDType~%uint8 ODD_UNKNOWN = 0~%uint8 ODD_ROAD_CONSTRUCTION = 1~%uint8 ODD_TOLL = 2~%uint8 ODD_GATE_MACHINE = 3~%uint8 ODD_MAP_COLLECT = 4~%uint8 ODD_MAP_ERROR = 5~%uint8 ODD_NONE_MAP_ERROR = 6~%uint8 ODD_DYNAMIC_EVENT = 7~%uint8 ODD_SERVICE_AREA = 9~%uint8 ODD_DRIVABLE_TOLL = 20~%uint8 ODD_SHORT = 50~%uint8 ODD_NOT_AVAILABLE = 100~%uint8 ODD_UNMATCH = 101~%uint8 ODD_TOUR_END = 102~%uint8 ESR_ROAD_CLASS = 103~%uint8 ODD_TILE_END = 104~%uint8 ODD_UNP_ROUNDABOUT = 105~%uint8 ODD_UNP_U_TURN = 106~%uint8 ODD_UNP_TIDAL_FLOW_LANE = 107~%uint8 ODD_UNP_REVERSIBLE_LANE = 108~%uint8 ODD_CRITICALLY_OVER_CURVATURE = 109~%uint8 ODD_OVER_CURVATURE = 110~%uint8 ODD_OVER_SLOPE = 111~%uint8 ODD_OVER_LANEWIDTH = 112~%uint8 ODD_INVALID_LINE = 113~%uint8 ODD_TOO_LOW_SPDLIMIT_HIGHWAY = 114~%uint8 ODD_PROHIBITED_LANE = 115~%uint8 ODD_INTERSECTION_HIGHWAY = 116~%uint8 ODD_TRAFFICLIGHT_HIGHWAY = 117~%uint8 ODD_PROHIBITED_FACILITY_HIGHWAY = 118~%uint8 ODD_ROUNDABOUT_HIGHWAY = 119~%uint8 ODD_LOCAL_MAP_EDGE = 120~%uint8 ODD_HNP_MINUS = 121~%uint8 ODD_CHECK_POINT = 130~%uint8 ODD_INNER_ROAD = 131~%uint8 ODD_DYNAMIC_ROADWORK = 132~%uint8 ODD_L3_CROSS_NOLIGHT = 141~%uint8 ODD_L3_NARROW_UTURN = 142~%uint8 ODD_L3_UNREGULAR_ROAD = 143~%uint8 ODD_L3_ETC = 144~%uint8 ODD_L3_DUALWAY = 145~%uint8 ODD_L3_BROKEN_ICJCT = 146~%uint8 ODD_L3_DEAD_ROAD = 147~%uint8 URBAN = 201~%uint8 HIGHWAY = 202~%uint8 HDMAP = 203~%uint8 NO_HDMAP = 204~%uint8 SDNaviNP_AREA = 205~%uint8 SWITCH_NP_TO_PNP_AREA = 210~%uint8 SWITCH_PNP_TO_NP_AREA = 211~%uint8 value~%~%================================================================================~%MSG: hdmap_msgs/ODDPriorityType~%uint8 UNKNOWN = 0~%uint8 HDMAP_PRIORITY = 1~%uint8 NO_HDMAP_PRIORITY = 2~%uint8 priority~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ODDEvent>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'priority))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ODDEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'ODDEvent
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':end_distance (end_distance msg))
))
