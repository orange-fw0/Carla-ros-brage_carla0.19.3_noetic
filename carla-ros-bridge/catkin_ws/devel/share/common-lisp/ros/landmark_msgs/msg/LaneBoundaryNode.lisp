; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude LaneBoundaryNode.msg.html

(cl:defclass <LaneBoundaryNode> (roslisp-msg-protocol:ros-message)
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
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:LaneBoundaryTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneBoundaryTypeEnum))
   (color
    :reader color
    :initarg :color
    :type landmark_msgs-msg:LaneBoundaryColorEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneBoundaryColorEnum))
   (width_type
    :reader width_type
    :initarg :width_type
    :type landmark_msgs-msg:LaneBoundaryWidthTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneBoundaryWidthTypeEnum))
   (line_width
    :reader line_width
    :initarg :line_width
    :type cl:float
    :initform 0.0)
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
   (direction_type
    :reader direction_type
    :initarg :direction_type
    :type landmark_msgs-msg:LaneBoundaryDirectionTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneBoundaryDirectionTypeEnum))
   (source
    :reader source
    :initarg :source
    :type landmark_msgs-msg:BoundarySourceEnum
    :initform (cl:make-instance 'landmark_msgs-msg:BoundarySourceEnum))
   (scene_type
    :reader scene_type
    :initarg :scene_type
    :type landmark_msgs-msg:LaneBoundarySceneTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneBoundarySceneTypeEnum))
   (special_type
    :reader special_type
    :initarg :special_type
    :type landmark_msgs-msg:LaneBoundarySpecialTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:LaneBoundarySpecialTypeEnum)))
)

(cl:defclass LaneBoundaryNode (<LaneBoundaryNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneBoundaryNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneBoundaryNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<LaneBoundaryNode> is deprecated: use landmark_msgs-msg:LaneBoundaryNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:index-val is deprecated.  Use landmark_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'coefficient_bv-val :lambda-list '(m))
(cl:defmethod coefficient_bv-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:coefficient_bv-val is deprecated.  Use landmark_msgs-msg:coefficient_bv instead.")
  (coefficient_bv m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:color-val is deprecated.  Use landmark_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'width_type-val :lambda-list '(m))
(cl:defmethod width_type-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:width_type-val is deprecated.  Use landmark_msgs-msg:width_type instead.")
  (width_type m))

(cl:ensure-generic-function 'line_width-val :lambda-list '(m))
(cl:defmethod line_width-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:line_width-val is deprecated.  Use landmark_msgs-msg:line_width instead.")
  (line_width m))

(cl:ensure-generic-function 'line_points-val :lambda-list '(m))
(cl:defmethod line_points-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:line_points-val is deprecated.  Use landmark_msgs-msg:line_points instead.")
  (line_points m))

(cl:ensure-generic-function 'is_virtual-val :lambda-list '(m))
(cl:defmethod is_virtual-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_virtual-val is deprecated.  Use landmark_msgs-msg:is_virtual instead.")
  (is_virtual m))

(cl:ensure-generic-function 'direction_type-val :lambda-list '(m))
(cl:defmethod direction_type-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:direction_type-val is deprecated.  Use landmark_msgs-msg:direction_type instead.")
  (direction_type m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:source-val is deprecated.  Use landmark_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'scene_type-val :lambda-list '(m))
(cl:defmethod scene_type-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:scene_type-val is deprecated.  Use landmark_msgs-msg:scene_type instead.")
  (scene_type m))

(cl:ensure-generic-function 'special_type-val :lambda-list '(m))
(cl:defmethod special_type-val ((m <LaneBoundaryNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:special_type-val is deprecated.  Use landmark_msgs-msg:special_type instead.")
  (special_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaneBoundaryNode>)))
    "Constants for message type '<LaneBoundaryNode>"
  '((:SCORE_VALID . 1)
    (:COEFFICIENT_BV_VALID . 2)
    (:TYPE_VALID . 4)
    (:COLOR_VALID . 8)
    (:WIDTH_TYPE_VALID . 16)
    (:LINE_WIDTH_VALID . 32)
    (:LINE_POINTS_VALID . 64)
    (:IS_VIRTUAL_VALID . 128)
    (:DIRECTION_TYPE_VALID . 256)
    (:SOURCE_VALID . 512)
    (:SCENE_TYPE_VALID . 1024)
    (:SPECIAL_TYPE_VALID . 2048))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaneBoundaryNode)))
    "Constants for message type 'LaneBoundaryNode"
  '((:SCORE_VALID . 1)
    (:COEFFICIENT_BV_VALID . 2)
    (:TYPE_VALID . 4)
    (:COLOR_VALID . 8)
    (:WIDTH_TYPE_VALID . 16)
    (:LINE_WIDTH_VALID . 32)
    (:LINE_POINTS_VALID . 64)
    (:IS_VIRTUAL_VALID . 128)
    (:DIRECTION_TYPE_VALID . 256)
    (:SOURCE_VALID . 512)
    (:SCENE_TYPE_VALID . 1024)
    (:SPECIAL_TYPE_VALID . 2048))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneBoundaryNode>) ostream)
  "Serializes a message object of type '<LaneBoundaryNode>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'width_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'line_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_virtual) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'source) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scene_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'special_type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneBoundaryNode>) istream)
  "Deserializes a message object of type '<LaneBoundaryNode>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'width_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'line_width) (roslisp-utils:decode-single-float-bits bits)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'source) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scene_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'special_type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneBoundaryNode>)))
  "Returns string type for a message object of type '<LaneBoundaryNode>"
  "landmark_msgs/LaneBoundaryNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneBoundaryNode)))
  "Returns string type for a message object of type 'LaneBoundaryNode"
  "landmark_msgs/LaneBoundaryNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneBoundaryNode>)))
  "Returns md5sum for a message object of type '<LaneBoundaryNode>"
  "45e3879b0bbeb44ccc514b606f167ca7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneBoundaryNode)))
  "Returns md5sum for a message object of type 'LaneBoundaryNode"
  "45e3879b0bbeb44ccc514b606f167ca7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneBoundaryNode>)))
  "Returns full string definition for message of type '<LaneBoundaryNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 COEFFICIENT_BV_VALID = 2~%uint16 TYPE_VALID = 4~%uint16 COLOR_VALID = 8~%uint16 WIDTH_TYPE_VALID = 16~%uint16 LINE_WIDTH_VALID = 32~%uint16 LINE_POINTS_VALID = 64~%uint16 IS_VIRTUAL_VALID = 128~%uint16 DIRECTION_TYPE_VALID = 256~%uint16 SOURCE_VALID = 512~%uint16 SCENE_TYPE_VALID = 1024~%uint16 SPECIAL_TYPE_VALID = 2048~%uint16 available~%float32 score~%int32 index~%landmark_msgs/TrackId track_id~%float32[] coefficient_bv~%landmark_msgs/LaneBoundaryTypeEnum type~%landmark_msgs/LaneBoundaryColorEnum color~%landmark_msgs/LaneBoundaryWidthTypeEnum width_type~%float32 line_width~%perception_interface_msgs/Point3f[] line_points~%bool is_virtual~%landmark_msgs/LaneBoundaryDirectionTypeEnum direction_type~%landmark_msgs/BoundarySourceEnum source~%landmark_msgs/LaneBoundarySceneTypeEnum scene_type~%landmark_msgs/LaneBoundarySpecialTypeEnum special_type~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryTypeEnum~%uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_TYPE_DASHED = 1~%uint8 LANE_BOUNDARY_TYPE_SOLID = 2~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8~%uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9~%uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10~%uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11~%uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12~%uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14~%uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15~%uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16~%uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17~%uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18~%uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19~%uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20~%uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21~%uint8 LANE_BOUNDARY_TYPE_OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryColorEnum~%uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0~%uint8 LANE_BOUNDARY_COLOR_WHITE = 1~%uint8 LANE_BOUNDARY_COLOR_YELLOW = 2~%uint8 LANE_BOUNDARY_COLOR_ORANGE = 3~%uint8 LANE_BOUNDARY_COLOR_BLUE = 4~%uint8 LANE_BOUNDARY_COLOR_GREEN = 5~%uint8 LANE_BOUNDARY_COLOR_GRAY = 6~%uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7~%uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8~%uint8 LANE_BOUNDARY_OTHER = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryWidthTypeEnum~%uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1~%uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryDirectionTypeEnum~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/BoundarySourceEnum~%uint8 OTHER = 0~%uint8 AUTO_MAPPING = 1~%uint8 MANUAL_VALID = 2~%uint8 MANUAL_GUESS = 3~%uint8 INTERNAL = 4~%uint8 EXTERNAL = 5~%uint8 INTERNAL_SHARED = 6~%uint8 NONE = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneBoundarySceneTypeEnum~%uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1~%uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2~%uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3~%uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4~%uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneBoundarySpecialTypeEnum~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneBoundaryNode)))
  "Returns full string definition for message of type 'LaneBoundaryNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 COEFFICIENT_BV_VALID = 2~%uint16 TYPE_VALID = 4~%uint16 COLOR_VALID = 8~%uint16 WIDTH_TYPE_VALID = 16~%uint16 LINE_WIDTH_VALID = 32~%uint16 LINE_POINTS_VALID = 64~%uint16 IS_VIRTUAL_VALID = 128~%uint16 DIRECTION_TYPE_VALID = 256~%uint16 SOURCE_VALID = 512~%uint16 SCENE_TYPE_VALID = 1024~%uint16 SPECIAL_TYPE_VALID = 2048~%uint16 available~%float32 score~%int32 index~%landmark_msgs/TrackId track_id~%float32[] coefficient_bv~%landmark_msgs/LaneBoundaryTypeEnum type~%landmark_msgs/LaneBoundaryColorEnum color~%landmark_msgs/LaneBoundaryWidthTypeEnum width_type~%float32 line_width~%perception_interface_msgs/Point3f[] line_points~%bool is_virtual~%landmark_msgs/LaneBoundaryDirectionTypeEnum direction_type~%landmark_msgs/BoundarySourceEnum source~%landmark_msgs/LaneBoundarySceneTypeEnum scene_type~%landmark_msgs/LaneBoundarySpecialTypeEnum special_type~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryTypeEnum~%uint8 LANE_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_TYPE_DASHED = 1~%uint8 LANE_BOUNDARY_TYPE_SOLID = 2~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_SOLID = 3~%uint8 LANE_BOUNDARY_TYPE_DOUBLE_DASHED = 4~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_SOLID = 5~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_DASHED = 6~%uint8 LANE_BOUNDARY_TYPE_LEFT_DASHED_RIGHT_DASHED = 7~%uint8 LANE_BOUNDARY_TYPE_LEFT_SOLID_RIGHT_SOLID = 8~%uint8 LANE_BOUNDARY_TYPE_ZIG_ZAG = 9~%uint8 LANE_BOUNDARY_TYPE_BOTTS_DOTS = 10~%uint8 LANE_BOUNDARY_TYPE_CHANGEABLE_LANE_MARK = 11~%uint8 LANE_BOUNDARY_TYPE_LOGICAL = 12~%uint8 LANE_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 LANE_BOUNDARY_TYPE_VIRTUAL = 14~%uint8 LANE_BOUNDARY_TYPE_SHORT_DASHED_LINE = 15~%uint8 LANE_BOUNDARY_TYPE_SHADE_AREA = 16~%uint8 LANE_BOUNDARY_TYPE_LANE_VIRTUAL_MARKING = 17~%uint8 LANE_BOUNDARY_TYPE_INTERSECTION_VIRTUAL_MARKING = 18~%uint8 LANE_BOUNDARY_TYPE_CURB_BIRTUAL_MARKING = 19~%uint8 LANE_BOUNDARY_TYPE_UNCLOSED_ROAD = 20~%uint8 LANE_BOUNDARY_TYPE_ROAD_VIRTUAL_LINE = 21~%uint8 LANE_BOUNDARY_TYPE_OTHERS = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryColorEnum~%uint8 LANE_BOUNDARY_COLOR_UNKNOWN = 0~%uint8 LANE_BOUNDARY_COLOR_WHITE = 1~%uint8 LANE_BOUNDARY_COLOR_YELLOW = 2~%uint8 LANE_BOUNDARY_COLOR_ORANGE = 3~%uint8 LANE_BOUNDARY_COLOR_BLUE = 4~%uint8 LANE_BOUNDARY_COLOR_GREEN = 5~%uint8 LANE_BOUNDARY_COLOR_GRAY = 6~%uint8 LANE_BOUNDARY_COLOR_LEFT_GRAY_RIGHT_YELLOW = 7~%uint8 LANE_BOUNDARY_COLOR_LEFT_YELLOW_RIGHT_GRAY = 8~%uint8 LANE_BOUNDARY_OTHER = 99~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryWidthTypeEnum~%uint8 LANE_BOUNDARY_WIDTH_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_WIDTH_TYPE_NARROW = 1~%uint8 LANE_BOUNDARY_WIDTH_TYPE_WIDE = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/LaneBoundaryDirectionTypeEnum~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_SAME = 1~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_REVERSE = 2~%uint8 LANE_BOUNDARY_DIRECTION_TYPE_BOTH = 3~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/BoundarySourceEnum~%uint8 OTHER = 0~%uint8 AUTO_MAPPING = 1~%uint8 MANUAL_VALID = 2~%uint8 MANUAL_GUESS = 3~%uint8 INTERNAL = 4~%uint8 EXTERNAL = 5~%uint8 INTERNAL_SHARED = 6~%uint8 NONE = 7~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneBoundarySceneTypeEnum~%uint8 LANE_BOUNDARY_SCENE_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_SCENE_TYPE_DISCARDED = 1~%uint8 LANE_BOUNDARY_SCENE_TYPE_WHITE_BRICK = 2~%uint8 LANE_BOUNDARY_SCENE_TYPE_GUIDE_LINE = 3~%uint8 LANE_BOUNDARY_SCENE_TYPE_WAITING_AREA = 4~%uint8 LANE_BOUNDARY_SCENE_TYPE_NON_MOTOR_GUIDE_LINE = 5~%uint8 value~%~%================================================================================~%MSG: landmark_msgs/LaneBoundarySpecialTypeEnum~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_UNKNOWN = 0~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT = 1~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_RIGHT = 2~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_VARIABLE_LEFT_RIGHT = 3~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT = 4~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_RIGHT = 5~%uint8 LANE_BOUNDARY_SPECIAL_TYPE_FISHBONE_LEFT_RIGHT = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneBoundaryNode>))
  (cl:+ 0
     2
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coefficient_bv) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'width_type))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'source))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scene_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'special_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneBoundaryNode>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneBoundaryNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':index (index msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':coefficient_bv (coefficient_bv msg))
    (cl:cons ':type (type msg))
    (cl:cons ':color (color msg))
    (cl:cons ':width_type (width_type msg))
    (cl:cons ':line_width (line_width msg))
    (cl:cons ':line_points (line_points msg))
    (cl:cons ':is_virtual (is_virtual msg))
    (cl:cons ':direction_type (direction_type msg))
    (cl:cons ':source (source msg))
    (cl:cons ':scene_type (scene_type msg))
    (cl:cons ':special_type (special_type msg))
))
