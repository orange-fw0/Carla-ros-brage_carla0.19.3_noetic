; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude AoiNode.msg.html

(cl:defclass <AoiNode> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (track_id
    :reader track_id
    :initarg :track_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (polygon_points
    :reader polygon_points
    :initarg :polygon_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:AoiNodeTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:AoiNodeTypeEnum))
   (is_virtual
    :reader is_virtual
    :initarg :is_virtual
    :type cl:boolean
    :initform cl:nil)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass AoiNode (<AoiNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AoiNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AoiNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<AoiNode> is deprecated: use landmark_msgs-msg:AoiNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <AoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <AoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'polygon_points-val :lambda-list '(m))
(cl:defmethod polygon_points-val ((m <AoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:polygon_points-val is deprecated.  Use landmark_msgs-msg:polygon_points instead.")
  (polygon_points m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'is_virtual-val :lambda-list '(m))
(cl:defmethod is_virtual-val ((m <AoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_virtual-val is deprecated.  Use landmark_msgs-msg:is_virtual instead.")
  (is_virtual m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <AoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AoiNode>)))
    "Constants for message type '<AoiNode>"
  '((:POLYGON_POINTS_VALID . 1)
    (:TYPE_VALID . 2)
    (:IS_VIRTUAL_VALID . 4)
    (:SCORE_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AoiNode)))
    "Constants for message type 'AoiNode"
  '((:POLYGON_POINTS_VALID . 1)
    (:TYPE_VALID . 2)
    (:IS_VIRTUAL_VALID . 4)
    (:SCORE_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AoiNode>) ostream)
  "Serializes a message object of type '<AoiNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_virtual) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AoiNode>) istream)
  "Deserializes a message object of type '<AoiNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:setf (cl:slot-value msg 'is_virtual) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AoiNode>)))
  "Returns string type for a message object of type '<AoiNode>"
  "landmark_msgs/AoiNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AoiNode)))
  "Returns string type for a message object of type 'AoiNode"
  "landmark_msgs/AoiNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AoiNode>)))
  "Returns md5sum for a message object of type '<AoiNode>"
  "02b86f8b780d1d0f20ac5e0112db7fbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AoiNode)))
  "Returns md5sum for a message object of type 'AoiNode"
  "02b86f8b780d1d0f20ac5e0112db7fbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AoiNode>)))
  "Returns full string definition for message of type '<AoiNode>"
  (cl:format cl:nil "uint16 POLYGON_POINTS_VALID = 1~%uint16 TYPE_VALID = 2~%uint16 IS_VIRTUAL_VALID = 4~%uint16 SCORE_VALID = 8~%uint16 available~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] polygon_points~%landmark_msgs/AoiNodeTypeEnum type~%bool is_virtual~%float32 score~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/AoiNodeTypeEnum~%uint8 AOI_TYPE_UNKNOWN = 0~%uint8 AOI_TYPE_EMERGENCY_PARKING_AREA = 1~%uint8 AOI_TYPE_EMERGENCY_ESCAPE_AREA = 2~%uint8 AOI_TYPE_TOLLGATE = 3~%uint8 AOI_TYPE_CHECK_POINT = 4~%uint8 AOI_TYPE_SERVICE_AREA = 5~%uint8 AOI_TYPE_CONSTRUCTION_AREA = 6~%uint8 AOI_TYPE_INTERSECTION = 7~%uint8 AOI_TYPE_BARRIER_GAP = 8~%uint8 AOI_TYPE_STOPPING_AREA = 9~%uint8 AOI_TYPE_ELEVATOR_ENTRANCE = 10~%uint8 AOI_TYPE_FACILITY_ENTRANCE = 11~%uint8 AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE = 12~%uint8 AOI_TYPE_FLOORS = 13~%uint8 AOI_TYPE_GARAGE_EXIT = 14~%uint8 AOI_TYPE_GARAGE_ENTRANCE_EXIT = 15~%uint8 AOI_TYPE_HILL = 16~%uint8 AOI_TYPE_HUMAN_ACCESS = 17~%uint8 AOI_TYPE_PARK_INTERSECTION = 18~%uint8 AOI_TYPE_TOLL_GATE = 19~%uint8 AOI_TYPE_SUB_REGION = 20~%uint8 AOI_TYPE_MARKET_ENTRANCE = 21~%uint8 AOI_TYPE_GARAGE_ENTRANCE = 22~%uint8 AOI_TYPE_FACILITY_EXIT = 23~%uint8 AOI_TYPE_BUS_STOP = 24~%uint8 AOI_TYPE_CHARGIINIG_AREA = 25~%uint8 AOI_TYPE_ESCALATOR_ENTRANCE = 26~%uint8 AOI_TYPE_DASH_UTURN_AREA = 27~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AoiNode)))
  "Returns full string definition for message of type 'AoiNode"
  (cl:format cl:nil "uint16 POLYGON_POINTS_VALID = 1~%uint16 TYPE_VALID = 2~%uint16 IS_VIRTUAL_VALID = 4~%uint16 SCORE_VALID = 8~%uint16 available~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] polygon_points~%landmark_msgs/AoiNodeTypeEnum type~%bool is_virtual~%float32 score~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/AoiNodeTypeEnum~%uint8 AOI_TYPE_UNKNOWN = 0~%uint8 AOI_TYPE_EMERGENCY_PARKING_AREA = 1~%uint8 AOI_TYPE_EMERGENCY_ESCAPE_AREA = 2~%uint8 AOI_TYPE_TOLLGATE = 3~%uint8 AOI_TYPE_CHECK_POINT = 4~%uint8 AOI_TYPE_SERVICE_AREA = 5~%uint8 AOI_TYPE_CONSTRUCTION_AREA = 6~%uint8 AOI_TYPE_INTERSECTION = 7~%uint8 AOI_TYPE_BARRIER_GAP = 8~%uint8 AOI_TYPE_STOPPING_AREA = 9~%uint8 AOI_TYPE_ELEVATOR_ENTRANCE = 10~%uint8 AOI_TYPE_FACILITY_ENTRANCE = 11~%uint8 AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE = 12~%uint8 AOI_TYPE_FLOORS = 13~%uint8 AOI_TYPE_GARAGE_EXIT = 14~%uint8 AOI_TYPE_GARAGE_ENTRANCE_EXIT = 15~%uint8 AOI_TYPE_HILL = 16~%uint8 AOI_TYPE_HUMAN_ACCESS = 17~%uint8 AOI_TYPE_PARK_INTERSECTION = 18~%uint8 AOI_TYPE_TOLL_GATE = 19~%uint8 AOI_TYPE_SUB_REGION = 20~%uint8 AOI_TYPE_MARKET_ENTRANCE = 21~%uint8 AOI_TYPE_GARAGE_ENTRANCE = 22~%uint8 AOI_TYPE_FACILITY_EXIT = 23~%uint8 AOI_TYPE_BUS_STOP = 24~%uint8 AOI_TYPE_CHARGIINIG_AREA = 25~%uint8 AOI_TYPE_ESCALATOR_ENTRANCE = 26~%uint8 AOI_TYPE_DASH_UTURN_AREA = 27~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AoiNode>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AoiNode>))
  "Converts a ROS message object to a list"
  (cl:list 'AoiNode
    (cl:cons ':available (available msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':polygon_points (polygon_points msg))
    (cl:cons ':type (type msg))
    (cl:cons ':is_virtual (is_virtual msg))
    (cl:cons ':score (score msg))
))
