; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude IntersectionGuideLineNode.msg.html

(cl:defclass <IntersectionGuideLineNode> (roslisp-msg-protocol:ros-message)
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
   (line_points
    :reader line_points
    :initarg :line_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (reserved_info
    :reader reserved_info
    :initarg :reserved_info
    :type cl:string
    :initform ""))
)

(cl:defclass IntersectionGuideLineNode (<IntersectionGuideLineNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectionGuideLineNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectionGuideLineNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<IntersectionGuideLineNode> is deprecated: use landmark_msgs-msg:IntersectionGuideLineNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <IntersectionGuideLineNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <IntersectionGuideLineNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <IntersectionGuideLineNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:index-val is deprecated.  Use landmark_msgs-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <IntersectionGuideLineNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'line_points-val :lambda-list '(m))
(cl:defmethod line_points-val ((m <IntersectionGuideLineNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:line_points-val is deprecated.  Use landmark_msgs-msg:line_points instead.")
  (line_points m))

(cl:ensure-generic-function 'reserved_info-val :lambda-list '(m))
(cl:defmethod reserved_info-val ((m <IntersectionGuideLineNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:reserved_info-val is deprecated.  Use landmark_msgs-msg:reserved_info instead.")
  (reserved_info m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IntersectionGuideLineNode>)))
    "Constants for message type '<IntersectionGuideLineNode>"
  '((:SCORE_VALID . 1)
    (:LINE_POINTS_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IntersectionGuideLineNode)))
    "Constants for message type 'IntersectionGuideLineNode"
  '((:SCORE_VALID . 1)
    (:LINE_POINTS_VALID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectionGuideLineNode>) ostream)
  "Serializes a message object of type '<IntersectionGuideLineNode>"
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_points))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reserved_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reserved_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectionGuideLineNode>) istream)
  "Deserializes a message object of type '<IntersectionGuideLineNode>"
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
  (cl:setf (cl:slot-value msg 'line_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'line_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reserved_info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectionGuideLineNode>)))
  "Returns string type for a message object of type '<IntersectionGuideLineNode>"
  "landmark_msgs/IntersectionGuideLineNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectionGuideLineNode)))
  "Returns string type for a message object of type 'IntersectionGuideLineNode"
  "landmark_msgs/IntersectionGuideLineNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectionGuideLineNode>)))
  "Returns md5sum for a message object of type '<IntersectionGuideLineNode>"
  "dbc3bd0d40a09d9b591c9c0f40f2ef32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectionGuideLineNode)))
  "Returns md5sum for a message object of type 'IntersectionGuideLineNode"
  "dbc3bd0d40a09d9b591c9c0f40f2ef32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectionGuideLineNode>)))
  "Returns full string definition for message of type '<IntersectionGuideLineNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 LINE_POINTS_VALID = 2~%uint16 available~%float32 score~%int32 index~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] line_points~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectionGuideLineNode)))
  "Returns full string definition for message of type 'IntersectionGuideLineNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 LINE_POINTS_VALID = 2~%uint16 available~%float32 score~%int32 index~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] line_points~%string reserved_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectionGuideLineNode>))
  (cl:+ 0
     2
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'reserved_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectionGuideLineNode>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectionGuideLineNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':index (index msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':line_points (line_points msg))
    (cl:cons ':reserved_info (reserved_info msg))
))
