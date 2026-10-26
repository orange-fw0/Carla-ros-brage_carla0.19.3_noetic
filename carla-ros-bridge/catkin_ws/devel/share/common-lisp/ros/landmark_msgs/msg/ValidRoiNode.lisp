; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude ValidRoiNode.msg.html

(cl:defclass <ValidRoiNode> (roslisp-msg-protocol:ros-message)
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
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f))))
)

(cl:defclass ValidRoiNode (<ValidRoiNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ValidRoiNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ValidRoiNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<ValidRoiNode> is deprecated: use landmark_msgs-msg:ValidRoiNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <ValidRoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <ValidRoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <ValidRoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'polygon_points-val :lambda-list '(m))
(cl:defmethod polygon_points-val ((m <ValidRoiNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:polygon_points-val is deprecated.  Use landmark_msgs-msg:polygon_points instead.")
  (polygon_points m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ValidRoiNode>)))
    "Constants for message type '<ValidRoiNode>"
  '((:SCORE_VALID . 1)
    (:POLYGON_POINTS_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ValidRoiNode)))
    "Constants for message type 'ValidRoiNode"
  '((:SCORE_VALID . 1)
    (:POLYGON_POINTS_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ValidRoiNode>) ostream)
  "Serializes a message object of type '<ValidRoiNode>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ValidRoiNode>) istream)
  "Deserializes a message object of type '<ValidRoiNode>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ValidRoiNode>)))
  "Returns string type for a message object of type '<ValidRoiNode>"
  "landmark_msgs/ValidRoiNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ValidRoiNode)))
  "Returns string type for a message object of type 'ValidRoiNode"
  "landmark_msgs/ValidRoiNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ValidRoiNode>)))
  "Returns md5sum for a message object of type '<ValidRoiNode>"
  "b677bbfb92f59db6bac869c3a5129447")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ValidRoiNode)))
  "Returns md5sum for a message object of type 'ValidRoiNode"
  "b677bbfb92f59db6bac869c3a5129447")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ValidRoiNode>)))
  "Returns full string definition for message of type '<ValidRoiNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 POLYGON_POINTS_VALID = 2~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] polygon_points~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ValidRoiNode)))
  "Returns full string definition for message of type 'ValidRoiNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 POLYGON_POINTS_VALID = 2~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] polygon_points~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ValidRoiNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygon_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ValidRoiNode>))
  "Converts a ROS message object to a list"
  (cl:list 'ValidRoiNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':polygon_points (polygon_points msg))
))
