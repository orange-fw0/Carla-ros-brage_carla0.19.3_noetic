; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadBoundaryNode.msg.html

(cl:defclass <RoadBoundaryNode> (roslisp-msg-protocol:ros-message)
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
   (coefficient_bv
    :reader coefficient_bv
    :initarg :coefficient_bv
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:RoadBoundaryTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadBoundaryTypeEnum))
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
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (pass_direction
    :reader pass_direction
    :initarg :pass_direction
    :type landmark_msgs-msg:RoadBoundaryPassDirectionTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadBoundaryPassDirectionTypeEnum))
   (source
    :reader source
    :initarg :source
    :type landmark_msgs-msg:BoundarySourceEnum
    :initform (cl:make-instance 'landmark_msgs-msg:BoundarySourceEnum)))
)

(cl:defclass RoadBoundaryNode (<RoadBoundaryNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadBoundaryNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadBoundaryNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadBoundaryNode> is deprecated: use landmark_msgs-msg:RoadBoundaryNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'coefficient_bv-val :lambda-list '(m))
(cl:defmethod coefficient_bv-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:coefficient_bv-val is deprecated.  Use landmark_msgs-msg:coefficient_bv instead.")
  (coefficient_bv m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'line_points-val :lambda-list '(m))
(cl:defmethod line_points-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:line_points-val is deprecated.  Use landmark_msgs-msg:line_points instead.")
  (line_points m))

(cl:ensure-generic-function 'is_virtual-val :lambda-list '(m))
(cl:defmethod is_virtual-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_virtual-val is deprecated.  Use landmark_msgs-msg:is_virtual instead.")
  (is_virtual m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:height-val is deprecated.  Use landmark_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'pass_direction-val :lambda-list '(m))
(cl:defmethod pass_direction-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pass_direction-val is deprecated.  Use landmark_msgs-msg:pass_direction instead.")
  (pass_direction m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <RoadBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:source-val is deprecated.  Use landmark_msgs-msg:source instead.")
  (source m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadBoundaryNode>)))
    "Constants for message type '<RoadBoundaryNode>"
  '((:SCORE_VALID . 1)
    (:COEFFICIENT_BV_VALID . 2)
    (:TYPE_VALID . 4)
    (:POINTS_VALID . 8)
    (:IS_VIRTUAL_VALID . 16)
    (:HEIGHT_VALID . 32)
    (:PASS_DIRECTION_VALID . 64)
    (:SOURCE_VALID . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadBoundaryNode)))
    "Constants for message type 'RoadBoundaryNode"
  '((:SCORE_VALID . 1)
    (:COEFFICIENT_BV_VALID . 2)
    (:TYPE_VALID . 4)
    (:POINTS_VALID . 8)
    (:IS_VIRTUAL_VALID . 16)
    (:HEIGHT_VALID . 32)
    (:PASS_DIRECTION_VALID . 64)
    (:SOURCE_VALID . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadBoundaryNode>) ostream)
  "Serializes a message object of type '<RoadBoundaryNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_virtual) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pass_direction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'source) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadBoundaryNode>) istream)
  "Deserializes a message object of type '<RoadBoundaryNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pass_direction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'source) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadBoundaryNode>)))
  "Returns string type for a message object of type '<RoadBoundaryNode>"
  "landmark_msgs/RoadBoundaryNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadBoundaryNode)))
  "Returns string type for a message object of type 'RoadBoundaryNode"
  "landmark_msgs/RoadBoundaryNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadBoundaryNode>)))
  "Returns md5sum for a message object of type '<RoadBoundaryNode>"
  "96ed600a60cdb6c63fc39fdb4205ab21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadBoundaryNode)))
  "Returns md5sum for a message object of type 'RoadBoundaryNode"
  "96ed600a60cdb6c63fc39fdb4205ab21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadBoundaryNode>)))
  "Returns full string definition for message of type '<RoadBoundaryNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 COEFFICIENT_BV_VALID = 2~%uint16 TYPE_VALID = 4~%uint16 POINTS_VALID = 8~%uint16 IS_VIRTUAL_VALID = 16~%uint16 HEIGHT_VALID = 32~%uint16 PASS_DIRECTION_VALID = 64~%uint16 SOURCE_VALID = 128~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%float32[] coefficient_bv~%landmark_msgs/RoadBoundaryTypeEnum type~%perception_interface_msgs/Point3f[] line_points~%bool is_virtual~%float32 height~%landmark_msgs/RoadBoundaryPassDirectionTypeEnum pass_direction~%landmark_msgs/BoundarySourceEnum source~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RoadBoundaryTypeEnum~%uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_TYPE_NONE = 1~%uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2~%uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3~%uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4~%uint8 ROAD_BOUNDARY_TYPE_CONE = 5~%uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6~%uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7~%uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8~%uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9~%uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10~%uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11~%uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12~%uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14~%uint8 ROAD_BOUNDARY_TYPE_CURB = 15~%uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16~%uint8 ROAD_BOUNDARY_TYPE_WALL = 17~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19~%uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/RoadBoundaryPassDirectionTypeEnum~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/BoundarySourceEnum~%uint8 OTHER = 0~%uint8 AUTO_MAPPING = 1~%uint8 MANUAL_VALID = 2~%uint8 MANUAL_GUESS = 3~%uint8 INTERNAL = 4~%uint8 EXTERNAL = 5~%uint8 INTERNAL_SHARED = 6~%uint8 NONE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadBoundaryNode)))
  "Returns full string definition for message of type 'RoadBoundaryNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 COEFFICIENT_BV_VALID = 2~%uint16 TYPE_VALID = 4~%uint16 POINTS_VALID = 8~%uint16 IS_VIRTUAL_VALID = 16~%uint16 HEIGHT_VALID = 32~%uint16 PASS_DIRECTION_VALID = 64~%uint16 SOURCE_VALID = 128~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%float32[] coefficient_bv~%landmark_msgs/RoadBoundaryTypeEnum type~%perception_interface_msgs/Point3f[] line_points~%bool is_virtual~%float32 height~%landmark_msgs/RoadBoundaryPassDirectionTypeEnum pass_direction~%landmark_msgs/BoundarySourceEnum source~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RoadBoundaryTypeEnum~%uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_TYPE_NONE = 1~%uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2~%uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3~%uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4~%uint8 ROAD_BOUNDARY_TYPE_CONE = 5~%uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6~%uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7~%uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8~%uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9~%uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10~%uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11~%uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12~%uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14~%uint8 ROAD_BOUNDARY_TYPE_CURB = 15~%uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16~%uint8 ROAD_BOUNDARY_TYPE_WALL = 17~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19~%uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/RoadBoundaryPassDirectionTypeEnum~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_LEFT = 1~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_RIGHT = 2~%uint8 ROAD_BOUNDARY_PASS_DIRECTION_TYPE_BOTH = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/BoundarySourceEnum~%uint8 OTHER = 0~%uint8 AUTO_MAPPING = 1~%uint8 MANUAL_VALID = 2~%uint8 MANUAL_GUESS = 3~%uint8 INTERNAL = 4~%uint8 EXTERNAL = 5~%uint8 INTERNAL_SHARED = 6~%uint8 NONE = 7~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadBoundaryNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coefficient_bv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pass_direction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'source))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadBoundaryNode>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadBoundaryNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':coefficient_bv (coefficient_bv msg))
    (cl:cons ':type (type msg))
    (cl:cons ':line_points (line_points msg))
    (cl:cons ':is_virtual (is_virtual msg))
    (cl:cons ':height (height msg))
    (cl:cons ':pass_direction (pass_direction msg))
    (cl:cons ':source (source msg))
))
