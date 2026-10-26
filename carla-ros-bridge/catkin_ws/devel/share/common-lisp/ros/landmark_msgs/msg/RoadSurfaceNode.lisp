; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadSurfaceNode.msg.html

(cl:defclass <RoadSurfaceNode> (roslisp-msg-protocol:ros-message)
  ((track_id
    :reader track_id
    :initarg :track_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:RoadSurfaceTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadSurfaceTypeEnum))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (polygon
    :reader polygon
    :initarg :polygon
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f))))
)

(cl:defclass RoadSurfaceNode (<RoadSurfaceNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadSurfaceNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadSurfaceNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadSurfaceNode> is deprecated: use landmark_msgs-msg:RoadSurfaceNode instead.")))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <RoadSurfaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadSurfaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RoadSurfaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <RoadSurfaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <RoadSurfaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:polygon-val is deprecated.  Use landmark_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadSurfaceNode>)))
    "Constants for message type '<RoadSurfaceNode>"
  '((:NODE_TYPE_VALID . 1)
    (:SCORE_VALID . 2)
    (:POLYGON_VALID . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadSurfaceNode)))
    "Constants for message type 'RoadSurfaceNode"
  '((:NODE_TYPE_VALID . 1)
    (:SCORE_VALID . 2)
    (:POLYGON_VALID . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadSurfaceNode>) ostream)
  "Serializes a message object of type '<RoadSurfaceNode>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadSurfaceNode>) istream)
  "Deserializes a message object of type '<RoadSurfaceNode>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygon) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadSurfaceNode>)))
  "Returns string type for a message object of type '<RoadSurfaceNode>"
  "landmark_msgs/RoadSurfaceNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadSurfaceNode)))
  "Returns string type for a message object of type 'RoadSurfaceNode"
  "landmark_msgs/RoadSurfaceNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadSurfaceNode>)))
  "Returns md5sum for a message object of type '<RoadSurfaceNode>"
  "e4a174b8fb9396f8d1e466656df9f158")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadSurfaceNode)))
  "Returns md5sum for a message object of type 'RoadSurfaceNode"
  "e4a174b8fb9396f8d1e466656df9f158")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadSurfaceNode>)))
  "Returns full string definition for message of type '<RoadSurfaceNode>"
  (cl:format cl:nil "uint16 NODE_TYPE_VALID = 1~%uint16 SCORE_VALID = 2~%uint16 POLYGON_VALID = 4~%landmark_msgs/TrackId track_id~%uint16 available~%landmark_msgs/RoadSurfaceTypeEnum type~%float32 score~%perception_interface_msgs/Point3f[] polygon~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RoadSurfaceTypeEnum~%uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0~%uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadSurfaceNode)))
  "Returns full string definition for message of type 'RoadSurfaceNode"
  (cl:format cl:nil "uint16 NODE_TYPE_VALID = 1~%uint16 SCORE_VALID = 2~%uint16 POLYGON_VALID = 4~%landmark_msgs/TrackId track_id~%uint16 available~%landmark_msgs/RoadSurfaceTypeEnum type~%float32 score~%perception_interface_msgs/Point3f[] polygon~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/RoadSurfaceTypeEnum~%uint8 ROAD_SURFACE_TYPE_DRIVABLE = 0~%uint8 ROAD_SURFACE_TYPE_NONDRIVABLE = 1~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadSurfaceNode>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadSurfaceNode>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadSurfaceNode
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':available (available msg))
    (cl:cons ':type (type msg))
    (cl:cons ':score (score msg))
    (cl:cons ':polygon (polygon msg))
))
