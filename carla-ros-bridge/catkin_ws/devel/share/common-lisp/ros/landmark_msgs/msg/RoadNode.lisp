; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadNode.msg.html

(cl:defclass <RoadNode> (roslisp-msg-protocol:ros-message)
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
   (track_id
    :reader track_id
    :initarg :track_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (road_direction
    :reader road_direction
    :initarg :road_direction
    :type landmark_msgs-msg:RoadDirectionTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadDirectionTypeEnum))
   (road_class
    :reader road_class
    :initarg :road_class
    :type landmark_msgs-msg:RoadNodeRoadClassEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadNodeRoadClassEnum))
   (formway
    :reader formway
    :initarg :formway
    :type (cl:vector landmark_msgs-msg:RoadNodeFormwayEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:RoadNodeFormwayEnum :initial-element (cl:make-instance 'landmark_msgs-msg:RoadNodeFormwayEnum)))
   (center_line
    :reader center_line
    :initarg :center_line
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (start_lateral_line
    :reader start_lateral_line
    :initarg :start_lateral_line
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (end_lateral_line
    :reader end_lateral_line
    :initarg :end_lateral_line
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

(cl:defclass RoadNode (<RoadNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadNode> is deprecated: use landmark_msgs-msg:RoadNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'road_direction-val :lambda-list '(m))
(cl:defmethod road_direction-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:road_direction-val is deprecated.  Use landmark_msgs-msg:road_direction instead.")
  (road_direction m))

(cl:ensure-generic-function 'road_class-val :lambda-list '(m))
(cl:defmethod road_class-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:road_class-val is deprecated.  Use landmark_msgs-msg:road_class instead.")
  (road_class m))

(cl:ensure-generic-function 'formway-val :lambda-list '(m))
(cl:defmethod formway-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:formway-val is deprecated.  Use landmark_msgs-msg:formway instead.")
  (formway m))

(cl:ensure-generic-function 'center_line-val :lambda-list '(m))
(cl:defmethod center_line-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:center_line-val is deprecated.  Use landmark_msgs-msg:center_line instead.")
  (center_line m))

(cl:ensure-generic-function 'start_lateral_line-val :lambda-list '(m))
(cl:defmethod start_lateral_line-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:start_lateral_line-val is deprecated.  Use landmark_msgs-msg:start_lateral_line instead.")
  (start_lateral_line m))

(cl:ensure-generic-function 'end_lateral_line-val :lambda-list '(m))
(cl:defmethod end_lateral_line-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:end_lateral_line-val is deprecated.  Use landmark_msgs-msg:end_lateral_line instead.")
  (end_lateral_line m))

(cl:ensure-generic-function 'is_virtual-val :lambda-list '(m))
(cl:defmethod is_virtual-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_virtual-val is deprecated.  Use landmark_msgs-msg:is_virtual instead.")
  (is_virtual m))

(cl:ensure-generic-function 'in_intersection-val :lambda-list '(m))
(cl:defmethod in_intersection-val ((m <RoadNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:in_intersection-val is deprecated.  Use landmark_msgs-msg:in_intersection instead.")
  (in_intersection m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadNode>)))
    "Constants for message type '<RoadNode>"
  '((:SCORE_VALID . 1)
    (:DIRECTION_VALID . 2)
    (:ROAD_CLASS_VALID . 4)
    (:FORMWAY_VALID . 8)
    (:CENTER_LINE_VALID . 16)
    (:START_LATERAL_LINE_VALID . 32)
    (:END_LATERAL_LINE_VALID . 64)
    (:IS_VIRETUAL_VALID . 128)
    (:IN_INTERSECTION_VALID . 256))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadNode)))
    "Constants for message type 'RoadNode"
  '((:SCORE_VALID . 1)
    (:DIRECTION_VALID . 2)
    (:ROAD_CLASS_VALID . 4)
    (:FORMWAY_VALID . 8)
    (:CENTER_LINE_VALID . 16)
    (:START_LATERAL_LINE_VALID . 32)
    (:END_LATERAL_LINE_VALID . 64)
    (:IS_VIRETUAL_VALID . 128)
    (:IN_INTERSECTION_VALID . 256))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadNode>) ostream)
  "Serializes a message object of type '<RoadNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'road_class) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'formway))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'formway))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'center_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'center_line))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'start_lateral_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'start_lateral_line))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'end_lateral_line))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'end_lateral_line))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_virtual) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in_intersection) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadNode>) istream)
  "Deserializes a message object of type '<RoadNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'road_class) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'formway) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'formway)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:RoadNodeFormwayEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'center_line) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'center_line)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'start_lateral_line) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'start_lateral_line)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'end_lateral_line) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'end_lateral_line)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_virtual) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'in_intersection) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadNode>)))
  "Returns string type for a message object of type '<RoadNode>"
  "landmark_msgs/RoadNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadNode)))
  "Returns string type for a message object of type 'RoadNode"
  "landmark_msgs/RoadNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadNode>)))
  "Returns md5sum for a message object of type '<RoadNode>"
  "5eb1360c5105d4175c7acd48521c0bd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadNode)))
  "Returns md5sum for a message object of type 'RoadNode"
  "5eb1360c5105d4175c7acd48521c0bd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadNode>)))
  "Returns full string definition for message of type '<RoadNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 DIRECTION_VALID = 2~%uint16 ROAD_CLASS_VALID = 4~%uint16 FORMWAY_VALID = 8~%uint16 CENTER_LINE_VALID = 16~%uint16 START_LATERAL_LINE_VALID = 32~%uint16 END_LATERAL_LINE_VALID = 64~%uint16 IS_VIRETUAL_VALID = 128~%uint16 IN_INTERSECTION_VALID = 256~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%landmark_msgs/RoadDirectionTypeEnum road_direction~%landmark_msgs/RoadNodeRoadClassEnum road_class~%landmark_msgs/RoadNodeFormwayEnum[] formway~%perception_interface_msgs/Point3f[] center_line~%perception_interface_msgs/Point3f[] start_lateral_line~%perception_interface_msgs/Point3f[] end_lateral_line~%bool is_virtual~%bool in_intersection~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RoadDirectionTypeEnum~%uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_DIRECTION_TYPE_NONE = 1~%uint8 ROAD_DIRECTION_TYPE_A_B = 2~%uint8 ROAD_DIRECTION_TYPE_B_A = 3~%uint8 ROAD_DIRECTION_TYPE_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeRoadClassEnum~%uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeFormwayEnum~%uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadNode)))
  "Returns full string definition for message of type 'RoadNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 DIRECTION_VALID = 2~%uint16 ROAD_CLASS_VALID = 4~%uint16 FORMWAY_VALID = 8~%uint16 CENTER_LINE_VALID = 16~%uint16 START_LATERAL_LINE_VALID = 32~%uint16 END_LATERAL_LINE_VALID = 64~%uint16 IS_VIRETUAL_VALID = 128~%uint16 IN_INTERSECTION_VALID = 256~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%landmark_msgs/RoadDirectionTypeEnum road_direction~%landmark_msgs/RoadNodeRoadClassEnum road_class~%landmark_msgs/RoadNodeFormwayEnum[] formway~%perception_interface_msgs/Point3f[] center_line~%perception_interface_msgs/Point3f[] start_lateral_line~%perception_interface_msgs/Point3f[] end_lateral_line~%bool is_virtual~%bool in_intersection~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RoadDirectionTypeEnum~%uint8 ROAD_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_DIRECTION_TYPE_NONE = 1~%uint8 ROAD_DIRECTION_TYPE_A_B = 2~%uint8 ROAD_DIRECTION_TYPE_B_A = 3~%uint8 ROAD_DIRECTION_TYPE_BOTH = 4~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeRoadClassEnum~%uint8 ROAD_CLASS_UNKNOWN = 0~%uint8 HIGHWAY = 1~%uint8 URBAN = 2~%uint8 CITY_EXPRESSWAY = 3~%uint8 STATE_ROAD = 4~%uint8 PROVINCIAL_ROAD = 5~%uint8 MAIN_ROAD = 6~%uint8 SECONDARY_ROAD = 7~%uint8 NORMAL_ROAD = 8~%uint8 COUNTY_ROAD = 9~%uint8 COUNTRY_ROAD = 10~%uint8 INTERNAL_ROAD = 11~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/RoadNodeFormwayEnum~%uint8 FORMWAY_UNKNOWN = 0~%uint8 SINGLE_CARRIAGE_WAY = 1~%uint8 IC = 2~%uint8 JCT = 3~%uint8 SERVICE = 4~%uint8 TUNNEL = 5~%uint8 TOLL = 6~%uint8 SLIP_ROAD = 7~%uint8 SIDEROAD = 8~%uint8 ROUNDABOUT = 9~%uint8 RAMP_ENTRY = 10~%uint8 RAMP_EXIT = 11~%uint8 SAPA = 12~%uint8 PARKING_RAMP = 13~%uint8 PARKING_ROAD = 14~%uint8 U_TURN = 15~%uint8 TURN_RIGHT = 16~%uint8 TURN_LEFT = 17~%uint8 TURN_LEFT_RIGHT = 18~%uint8 CROSS_LINK = 19~%uint8 SERVICE_AND_SLIP_ROAD = 20~%uint8 SERVICE_AND_JCT = 21~%uint8 SERVICE_AND_SLIP_ROAD_AND_JCT = 22~%uint8 MULTIPLE_CARRIAGE_WAY = 23~%uint8 CHECK_POINT = 24~%uint8 WALK_ROAD = 25~%uint8 PARALLED_ROAD = 26~%uint8 OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'road_class))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'formway) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'center_line) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'start_lateral_line) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'end_lateral_line) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadNode>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':road_direction (road_direction msg))
    (cl:cons ':road_class (road_class msg))
    (cl:cons ':formway (formway msg))
    (cl:cons ':center_line (center_line msg))
    (cl:cons ':start_lateral_line (start_lateral_line msg))
    (cl:cons ':end_lateral_line (end_lateral_line msg))
    (cl:cons ':is_virtual (is_virtual msg))
    (cl:cons ':in_intersection (in_intersection msg))
))
