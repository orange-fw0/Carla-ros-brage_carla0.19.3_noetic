; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadMarkNode.msg.html

(cl:defclass <RoadMarkNode> (roslisp-msg-protocol:ros-message)
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
   (polygon_points
    :reader polygon_points
    :initarg :polygon_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (types
    :reader types
    :initarg :types
    :type (cl:vector landmark_msgs-msg:RoadMarkNodeTypeEnum)
   :initform (cl:make-array 0 :element-type 'landmark_msgs-msg:RoadMarkNodeTypeEnum :initial-element (cl:make-instance 'landmark_msgs-msg:RoadMarkNodeTypeEnum)))
   (is_prohibited
    :reader is_prohibited
    :initarg :is_prohibited
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RoadMarkNode (<RoadMarkNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadMarkNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadMarkNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadMarkNode> is deprecated: use landmark_msgs-msg:RoadMarkNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadMarkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <RoadMarkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <RoadMarkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'polygon_points-val :lambda-list '(m))
(cl:defmethod polygon_points-val ((m <RoadMarkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:polygon_points-val is deprecated.  Use landmark_msgs-msg:polygon_points instead.")
  (polygon_points m))

(cl:ensure-generic-function 'types-val :lambda-list '(m))
(cl:defmethod types-val ((m <RoadMarkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:types-val is deprecated.  Use landmark_msgs-msg:types instead.")
  (types m))

(cl:ensure-generic-function 'is_prohibited-val :lambda-list '(m))
(cl:defmethod is_prohibited-val ((m <RoadMarkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_prohibited-val is deprecated.  Use landmark_msgs-msg:is_prohibited instead.")
  (is_prohibited m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RoadMarkNode>)))
    "Constants for message type '<RoadMarkNode>"
  '((:POLYGON_POINTS_VALID . 1)
    (:TYPES_VALID . 2)
    (:IS_PROHIBITED_VALID . 4)
    (:SCORE_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RoadMarkNode)))
    "Constants for message type 'RoadMarkNode"
  '((:POLYGON_POINTS_VALID . 1)
    (:TYPES_VALID . 2)
    (:IS_PROHIBITED_VALID . 4)
    (:SCORE_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadMarkNode>) ostream)
  "Serializes a message object of type '<RoadMarkNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygon_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygon_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'types))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'types))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_prohibited) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadMarkNode>) istream)
  "Deserializes a message object of type '<RoadMarkNode>"
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
  (cl:setf (cl:slot-value msg 'polygon_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygon_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'types) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'types)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'landmark_msgs-msg:RoadMarkNodeTypeEnum))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_prohibited) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadMarkNode>)))
  "Returns string type for a message object of type '<RoadMarkNode>"
  "landmark_msgs/RoadMarkNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadMarkNode)))
  "Returns string type for a message object of type 'RoadMarkNode"
  "landmark_msgs/RoadMarkNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadMarkNode>)))
  "Returns md5sum for a message object of type '<RoadMarkNode>"
  "50a66bd216458c671c4885a316a564cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadMarkNode)))
  "Returns md5sum for a message object of type 'RoadMarkNode"
  "50a66bd216458c671c4885a316a564cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadMarkNode>)))
  "Returns full string definition for message of type '<RoadMarkNode>"
  (cl:format cl:nil "uint16 POLYGON_POINTS_VALID = 1~%uint16 TYPES_VALID = 2~%uint16 IS_PROHIBITED_VALID = 4~%uint16 SCORE_VALID = 8~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] polygon_points~%landmark_msgs/RoadMarkNodeTypeEnum[] types~%bool is_prohibited~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/RoadMarkNodeTypeEnum~%uint8 ROAD_MARK_TYPE_UNKNOWN = 0~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9~%uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10~%uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11~%uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12~%uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13~%uint8 ROAD_MARK_TYPE_SYMBOL = 14~%uint8 ROAD_MARK_TYPE_TEXT = 15~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16~%uint8 ROAD_MARK_TYPE_PROHIBIT = 17~%uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18~%uint8 ROAD_MARK_TYPE_YIELD_LINE = 21~%uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22~%uint8 ROAD_MARK_TYPE_NON_MOTOR = 24~%uint8 ROAD_MARK_TYPE_STOP = 25~%uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26~%uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadMarkNode)))
  "Returns full string definition for message of type 'RoadMarkNode"
  (cl:format cl:nil "uint16 POLYGON_POINTS_VALID = 1~%uint16 TYPES_VALID = 2~%uint16 IS_PROHIBITED_VALID = 4~%uint16 SCORE_VALID = 8~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] polygon_points~%landmark_msgs/RoadMarkNodeTypeEnum[] types~%bool is_prohibited~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/RoadMarkNodeTypeEnum~%uint8 ROAD_MARK_TYPE_UNKNOWN = 0~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_GO_STRAIGHT = 1~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_RIGHT = 2~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TURN_LEFT = 3~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_TURN_BACK = 4~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_TURN_BACK = 5~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_LEFT_CONFLUENCE = 6~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_RIGHT_CONFLUENCE = 7~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_SYMBOL = 8~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW_TEXT = 9~%uint8 ROAD_MARK_TYPE_NO_PARKING_ZONE = 10~%uint8 ROAD_MARK_TYPE_LATERAL_DECELERATION = 11~%uint8 ROAD_MARK_TYPE_CENTRAL_CIRCLE = 12~%uint8 ROAD_MARK_TYPE_INDICATED_LINE = 13~%uint8 ROAD_MARK_TYPE_SYMBOL = 14~%uint8 ROAD_MARK_TYPE_TEXT = 15~%uint8 ROAD_MARK_TYPE_GUIDE_ARROW = 16~%uint8 ROAD_MARK_TYPE_PROHIBIT = 17~%uint8 ROAD_MARK_TYPE_PROHIBIT_U_TURN = 18~%uint8 ROAD_MARK_TYPE_YIELD_LINE = 21~%uint8 ROAD_MARK_TYPE_PEDESTRIAN_CROSSING_WARNING = 22~%uint8 ROAD_MARK_TYPE_NON_MOTOR = 24~%uint8 ROAD_MARK_TYPE_STOP = 25~%uint8 ROAD_MARK_TYPE_PEDESTRIAN = 26~%uint8 ROAD_MARK_TYPE_YIELD_MARKING = 27~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadMarkNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'types) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadMarkNode>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadMarkNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':polygon_points (polygon_points msg))
    (cl:cons ':types (types msg))
    (cl:cons ':is_prohibited (is_prohibited msg))
))
