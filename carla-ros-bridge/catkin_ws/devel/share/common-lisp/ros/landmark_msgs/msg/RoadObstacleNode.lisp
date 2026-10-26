; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadObstacleNode.msg.html

(cl:defclass <RoadObstacleNode> (roslisp-msg-protocol:ros-message)
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
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:RoadObstacleTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadObstacleTypeEnum))
   (pillar_center
    :reader pillar_center
    :initarg :pillar_center
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (points
    :reader points
    :initarg :points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass RoadObstacleNode (<RoadObstacleNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadObstacleNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadObstacleNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadObstacleNode> is deprecated: use landmark_msgs-msg:RoadObstacleNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadObstacleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <RoadObstacleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RoadObstacleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pillar_center-val :lambda-list '(m))
(cl:defmethod pillar_center-val ((m <RoadObstacleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:pillar_center-val is deprecated.  Use landmark_msgs-msg:pillar_center instead.")
  (pillar_center m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <RoadObstacleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:points-val is deprecated.  Use landmark_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <RoadObstacleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadObstacleNode>)))
    "Constants for message type '<RoadObstacleNode>"
  '((:TYPE_VALID . 1)
    (:PILLAR_CENTER_VALID . 2)
    (:POINTS_VALID . 4)
    (:SCORE_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadObstacleNode)))
    "Constants for message type 'RoadObstacleNode"
  '((:TYPE_VALID . 1)
    (:PILLAR_CENTER_VALID . 2)
    (:POINTS_VALID . 4)
    (:SCORE_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadObstacleNode>) ostream)
  "Serializes a message object of type '<RoadObstacleNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pillar_center) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadObstacleNode>) istream)
  "Deserializes a message object of type '<RoadObstacleNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pillar_center) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadObstacleNode>)))
  "Returns string type for a message object of type '<RoadObstacleNode>"
  "landmark_msgs/RoadObstacleNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadObstacleNode)))
  "Returns string type for a message object of type 'RoadObstacleNode"
  "landmark_msgs/RoadObstacleNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadObstacleNode>)))
  "Returns md5sum for a message object of type '<RoadObstacleNode>"
  "edd789b3e1c31edfa30ce59d19511a65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadObstacleNode)))
  "Returns md5sum for a message object of type 'RoadObstacleNode"
  "edd789b3e1c31edfa30ce59d19511a65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadObstacleNode>)))
  "Returns full string definition for message of type '<RoadObstacleNode>"
  (cl:format cl:nil "uint16 TYPE_VALID = 1~%uint16 PILLAR_CENTER_VALID = 2~%uint16 POINTS_VALID = 4~%uint16 SCORE_VALID = 8~%uint8 available~%landmark_msgs/TrackId track_id~%landmark_msgs/RoadObstacleTypeEnum type~%perception_interface_msgs/Point3f pillar_center~%perception_interface_msgs/Point3f[] points~%float32 score~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RoadObstacleTypeEnum~%uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5~%uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadObstacleNode)))
  "Returns full string definition for message of type 'RoadObstacleNode"
  (cl:format cl:nil "uint16 TYPE_VALID = 1~%uint16 PILLAR_CENTER_VALID = 2~%uint16 POINTS_VALID = 4~%uint16 SCORE_VALID = 8~%uint8 available~%landmark_msgs/TrackId track_id~%landmark_msgs/RoadObstacleTypeEnum type~%perception_interface_msgs/Point3f pillar_center~%perception_interface_msgs/Point3f[] points~%float32 score~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RoadObstacleTypeEnum~%uint8 ROAD_OBSTACLE_TYPE_UNKONWN = 0~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_WALL = 1~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_PILLAR = 2~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_SPECIAL = 3~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_FENCE = 4~%uint8 ROAD_OBSTACLE_TYPE_GROUND_LINE_STEP = 5~%uint8 ROAD_OBSTACLE_TYPE_PILLAR = 6~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadObstacleNode>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pillar_center))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadObstacleNode>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadObstacleNode
    (cl:cons ':available (available msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':pillar_center (pillar_center msg))
    (cl:cons ':points (points msg))
    (cl:cons ':score (score msg))
))
