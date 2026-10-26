; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude ParkingSpaceNode.msg.html

(cl:defclass <ParkingSpaceNode> (roslisp-msg-protocol:ros-message)
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
   (attribute
    :reader attribute
    :initarg :attribute
    :type landmark_msgs-msg:ParkingSpaceAttributeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:ParkingSpaceAttributeEnum))
   (polygon_points
    :reader polygon_points
    :initarg :polygon_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass ParkingSpaceNode (<ParkingSpaceNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingSpaceNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingSpaceNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<ParkingSpaceNode> is deprecated: use landmark_msgs-msg:ParkingSpaceNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ParkingSpaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <ParkingSpaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'attribute-val :lambda-list '(m))
(cl:defmethod attribute-val ((m <ParkingSpaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:attribute-val is deprecated.  Use landmark_msgs-msg:attribute instead.")
  (attribute m))

(cl:ensure-generic-function 'polygon_points-val :lambda-list '(m))
(cl:defmethod polygon_points-val ((m <ParkingSpaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:polygon_points-val is deprecated.  Use landmark_msgs-msg:polygon_points instead.")
  (polygon_points m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <ParkingSpaceNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ParkingSpaceNode>)))
    "Constants for message type '<ParkingSpaceNode>"
  '((:ATTRIBUTE_VALID . 1)
    (:POLYGON_POINTS_VALID . 2)
    (:SCORE_VALID . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ParkingSpaceNode)))
    "Constants for message type 'ParkingSpaceNode"
  '((:ATTRIBUTE_VALID . 1)
    (:POLYGON_POINTS_VALID . 2)
    (:SCORE_VALID . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingSpaceNode>) ostream)
  "Serializes a message object of type '<ParkingSpaceNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attribute) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon_points))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingSpaceNode>) istream)
  "Deserializes a message object of type '<ParkingSpaceNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attribute) istream)
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingSpaceNode>)))
  "Returns string type for a message object of type '<ParkingSpaceNode>"
  "landmark_msgs/ParkingSpaceNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingSpaceNode)))
  "Returns string type for a message object of type 'ParkingSpaceNode"
  "landmark_msgs/ParkingSpaceNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingSpaceNode>)))
  "Returns md5sum for a message object of type '<ParkingSpaceNode>"
  "24947dc573533b5c58121fcbcd06203f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingSpaceNode)))
  "Returns md5sum for a message object of type 'ParkingSpaceNode"
  "24947dc573533b5c58121fcbcd06203f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingSpaceNode>)))
  "Returns full string definition for message of type '<ParkingSpaceNode>"
  (cl:format cl:nil "uint16 ATTRIBUTE_VALID = 1~%uint16 POLYGON_POINTS_VALID = 2~%uint16 SCORE_VALID = 4~%uint8 available~%landmark_msgs/TrackId track_id~%landmark_msgs/ParkingSpaceAttributeEnum attribute~%perception_interface_msgs/Point3f[] polygon_points~%float32 score~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/ParkingSpaceAttributeEnum~%uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0~%uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1~%uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingSpaceNode)))
  "Returns full string definition for message of type 'ParkingSpaceNode"
  (cl:format cl:nil "uint16 ATTRIBUTE_VALID = 1~%uint16 POLYGON_POINTS_VALID = 2~%uint16 SCORE_VALID = 4~%uint8 available~%landmark_msgs/TrackId track_id~%landmark_msgs/ParkingSpaceAttributeEnum attribute~%perception_interface_msgs/Point3f[] polygon_points~%float32 score~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: landmark_msgs/ParkingSpaceAttributeEnum~%uint8 PARKING_SPACE_ATTRIBUTE_UNKNOWN = 0~%uint8 PARKING_SPACE_ATTRIBUTE_NORMAL = 1~%uint8 PARKING_SPACE_ATTRIBUTE_CHARGING = 2~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingSpaceNode>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attribute))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingSpaceNode>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingSpaceNode
    (cl:cons ':available (available msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':attribute (attribute msg))
    (cl:cons ':polygon_points (polygon_points msg))
    (cl:cons ':score (score msg))
))
