; Auto-generated. Do not edit!


(cl:in-package hdmap_msgs-msg)


;//! \htmlinclude ODDData.msg.html

(cl:defclass <ODDData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (odd_events
    :reader odd_events
    :initarg :odd_events
    :type (cl:vector hdmap_msgs-msg:ODDEvent)
   :initform (cl:make-array 0 :element-type 'hdmap_msgs-msg:ODDEvent :initial-element (cl:make-instance 'hdmap_msgs-msg:ODDEvent)))
   (in_odd
    :reader in_odd
    :initarg :in_odd
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ODDData (<ODDData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ODDData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ODDData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdmap_msgs-msg:<ODDData> is deprecated: use hdmap_msgs-msg:ODDData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ODDData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:header-val is deprecated.  Use hdmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'odd_events-val :lambda-list '(m))
(cl:defmethod odd_events-val ((m <ODDData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:odd_events-val is deprecated.  Use hdmap_msgs-msg:odd_events instead.")
  (odd_events m))

(cl:ensure-generic-function 'in_odd-val :lambda-list '(m))
(cl:defmethod in_odd-val ((m <ODDData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdmap_msgs-msg:in_odd-val is deprecated.  Use hdmap_msgs-msg:in_odd instead.")
  (in_odd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ODDData>) ostream)
  "Serializes a message object of type '<ODDData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'odd_events))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'odd_events))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_odd) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ODDData>) istream)
  "Deserializes a message object of type '<ODDData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'odd_events) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'odd_events)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hdmap_msgs-msg:ODDEvent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'in_odd) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ODDData>)))
  "Returns string type for a message object of type '<ODDData>"
  "hdmap_msgs/ODDData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ODDData)))
  "Returns string type for a message object of type 'ODDData"
  "hdmap_msgs/ODDData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ODDData>)))
  "Returns md5sum for a message object of type '<ODDData>"
  "5e3595e8ee910b69289d544b410a0085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ODDData)))
  "Returns md5sum for a message object of type 'ODDData"
  "5e3595e8ee910b69289d544b410a0085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ODDData>)))
  "Returns full string definition for message of type '<ODDData>"
  (cl:format cl:nil "std_msgs/Header header~%hdmap_msgs/ODDEvent[] odd_events~%bool in_odd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdmap_msgs/ODDEvent~%uint32 id~%hdmap_msgs/ODDType type~%int32 distance~%hdmap_msgs/ODDPriorityType priority~%int32 end_distance~%~%================================================================================~%MSG: hdmap_msgs/ODDType~%uint8 ODD_UNKNOWN = 0~%uint8 ODD_ROAD_CONSTRUCTION = 1~%uint8 ODD_TOLL = 2~%uint8 ODD_GATE_MACHINE = 3~%uint8 ODD_MAP_COLLECT = 4~%uint8 ODD_MAP_ERROR = 5~%uint8 ODD_NONE_MAP_ERROR = 6~%uint8 ODD_DYNAMIC_EVENT = 7~%uint8 ODD_SERVICE_AREA = 9~%uint8 ODD_DRIVABLE_TOLL = 20~%uint8 ODD_SHORT = 50~%uint8 ODD_NOT_AVAILABLE = 100~%uint8 ODD_UNMATCH = 101~%uint8 ODD_TOUR_END = 102~%uint8 ESR_ROAD_CLASS = 103~%uint8 ODD_TILE_END = 104~%uint8 ODD_UNP_ROUNDABOUT = 105~%uint8 ODD_UNP_U_TURN = 106~%uint8 ODD_UNP_TIDAL_FLOW_LANE = 107~%uint8 ODD_UNP_REVERSIBLE_LANE = 108~%uint8 ODD_CRITICALLY_OVER_CURVATURE = 109~%uint8 ODD_OVER_CURVATURE = 110~%uint8 ODD_OVER_SLOPE = 111~%uint8 ODD_OVER_LANEWIDTH = 112~%uint8 ODD_INVALID_LINE = 113~%uint8 ODD_TOO_LOW_SPDLIMIT_HIGHWAY = 114~%uint8 ODD_PROHIBITED_LANE = 115~%uint8 ODD_INTERSECTION_HIGHWAY = 116~%uint8 ODD_TRAFFICLIGHT_HIGHWAY = 117~%uint8 ODD_PROHIBITED_FACILITY_HIGHWAY = 118~%uint8 ODD_ROUNDABOUT_HIGHWAY = 119~%uint8 ODD_LOCAL_MAP_EDGE = 120~%uint8 ODD_HNP_MINUS = 121~%uint8 ODD_CHECK_POINT = 130~%uint8 ODD_INNER_ROAD = 131~%uint8 ODD_DYNAMIC_ROADWORK = 132~%uint8 ODD_L3_CROSS_NOLIGHT = 141~%uint8 ODD_L3_NARROW_UTURN = 142~%uint8 ODD_L3_UNREGULAR_ROAD = 143~%uint8 ODD_L3_ETC = 144~%uint8 ODD_L3_DUALWAY = 145~%uint8 ODD_L3_BROKEN_ICJCT = 146~%uint8 ODD_L3_DEAD_ROAD = 147~%uint8 URBAN = 201~%uint8 HIGHWAY = 202~%uint8 HDMAP = 203~%uint8 NO_HDMAP = 204~%uint8 SDNaviNP_AREA = 205~%uint8 SWITCH_NP_TO_PNP_AREA = 210~%uint8 SWITCH_PNP_TO_NP_AREA = 211~%uint8 value~%~%================================================================================~%MSG: hdmap_msgs/ODDPriorityType~%uint8 UNKNOWN = 0~%uint8 HDMAP_PRIORITY = 1~%uint8 NO_HDMAP_PRIORITY = 2~%uint8 priority~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ODDData)))
  "Returns full string definition for message of type 'ODDData"
  (cl:format cl:nil "std_msgs/Header header~%hdmap_msgs/ODDEvent[] odd_events~%bool in_odd~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hdmap_msgs/ODDEvent~%uint32 id~%hdmap_msgs/ODDType type~%int32 distance~%hdmap_msgs/ODDPriorityType priority~%int32 end_distance~%~%================================================================================~%MSG: hdmap_msgs/ODDType~%uint8 ODD_UNKNOWN = 0~%uint8 ODD_ROAD_CONSTRUCTION = 1~%uint8 ODD_TOLL = 2~%uint8 ODD_GATE_MACHINE = 3~%uint8 ODD_MAP_COLLECT = 4~%uint8 ODD_MAP_ERROR = 5~%uint8 ODD_NONE_MAP_ERROR = 6~%uint8 ODD_DYNAMIC_EVENT = 7~%uint8 ODD_SERVICE_AREA = 9~%uint8 ODD_DRIVABLE_TOLL = 20~%uint8 ODD_SHORT = 50~%uint8 ODD_NOT_AVAILABLE = 100~%uint8 ODD_UNMATCH = 101~%uint8 ODD_TOUR_END = 102~%uint8 ESR_ROAD_CLASS = 103~%uint8 ODD_TILE_END = 104~%uint8 ODD_UNP_ROUNDABOUT = 105~%uint8 ODD_UNP_U_TURN = 106~%uint8 ODD_UNP_TIDAL_FLOW_LANE = 107~%uint8 ODD_UNP_REVERSIBLE_LANE = 108~%uint8 ODD_CRITICALLY_OVER_CURVATURE = 109~%uint8 ODD_OVER_CURVATURE = 110~%uint8 ODD_OVER_SLOPE = 111~%uint8 ODD_OVER_LANEWIDTH = 112~%uint8 ODD_INVALID_LINE = 113~%uint8 ODD_TOO_LOW_SPDLIMIT_HIGHWAY = 114~%uint8 ODD_PROHIBITED_LANE = 115~%uint8 ODD_INTERSECTION_HIGHWAY = 116~%uint8 ODD_TRAFFICLIGHT_HIGHWAY = 117~%uint8 ODD_PROHIBITED_FACILITY_HIGHWAY = 118~%uint8 ODD_ROUNDABOUT_HIGHWAY = 119~%uint8 ODD_LOCAL_MAP_EDGE = 120~%uint8 ODD_HNP_MINUS = 121~%uint8 ODD_CHECK_POINT = 130~%uint8 ODD_INNER_ROAD = 131~%uint8 ODD_DYNAMIC_ROADWORK = 132~%uint8 ODD_L3_CROSS_NOLIGHT = 141~%uint8 ODD_L3_NARROW_UTURN = 142~%uint8 ODD_L3_UNREGULAR_ROAD = 143~%uint8 ODD_L3_ETC = 144~%uint8 ODD_L3_DUALWAY = 145~%uint8 ODD_L3_BROKEN_ICJCT = 146~%uint8 ODD_L3_DEAD_ROAD = 147~%uint8 URBAN = 201~%uint8 HIGHWAY = 202~%uint8 HDMAP = 203~%uint8 NO_HDMAP = 204~%uint8 SDNaviNP_AREA = 205~%uint8 SWITCH_NP_TO_PNP_AREA = 210~%uint8 SWITCH_PNP_TO_NP_AREA = 211~%uint8 value~%~%================================================================================~%MSG: hdmap_msgs/ODDPriorityType~%uint8 UNKNOWN = 0~%uint8 HDMAP_PRIORITY = 1~%uint8 NO_HDMAP_PRIORITY = 2~%uint8 priority~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ODDData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'odd_events) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ODDData>))
  "Converts a ROS message object to a list"
  (cl:list 'ODDData
    (cl:cons ':header (header msg))
    (cl:cons ':odd_events (odd_events msg))
    (cl:cons ':in_odd (in_odd msg))
))
