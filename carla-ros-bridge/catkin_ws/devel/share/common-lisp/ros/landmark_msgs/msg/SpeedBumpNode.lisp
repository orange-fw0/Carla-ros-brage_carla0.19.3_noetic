; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude SpeedBumpNode.msg.html

(cl:defclass <SpeedBumpNode> (roslisp-msg-protocol:ros-message)
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
   (line_points
    :reader line_points
    :initarg :line_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:SpeedBumpTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:SpeedBumpTypeEnum))
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (is_virtual
    :reader is_virtual
    :initarg :is_virtual
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SpeedBumpNode (<SpeedBumpNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SpeedBumpNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SpeedBumpNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<SpeedBumpNode> is deprecated: use landmark_msgs-msg:SpeedBumpNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <SpeedBumpNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <SpeedBumpNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <SpeedBumpNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'line_points-val :lambda-list '(m))
(cl:defmethod line_points-val ((m <SpeedBumpNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:line_points-val is deprecated.  Use landmark_msgs-msg:line_points instead.")
  (line_points m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SpeedBumpNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <SpeedBumpNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:width-val is deprecated.  Use landmark_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'is_virtual-val :lambda-list '(m))
(cl:defmethod is_virtual-val ((m <SpeedBumpNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_virtual-val is deprecated.  Use landmark_msgs-msg:is_virtual instead.")
  (is_virtual m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SpeedBumpNode>)))
    "Constants for message type '<SpeedBumpNode>"
  '((:SCORE_VALID . 1)
    (:LINE_POINTS_VALID . 2)
    (:TYPE_VALID . 4)
    (:WIDTH_VALID . 8)
    (:IS_VIRETUAL_VALID . 16))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SpeedBumpNode)))
    "Constants for message type 'SpeedBumpNode"
  '((:SCORE_VALID . 1)
    (:LINE_POINTS_VALID . 2)
    (:TYPE_VALID . 4)
    (:WIDTH_VALID . 8)
    (:IS_VIRETUAL_VALID . 16))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SpeedBumpNode>) ostream)
  "Serializes a message object of type '<SpeedBumpNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'line_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'line_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_virtual) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SpeedBumpNode>) istream)
  "Deserializes a message object of type '<SpeedBumpNode>"
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
  (cl:setf (cl:slot-value msg 'line_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'line_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_virtual) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SpeedBumpNode>)))
  "Returns string type for a message object of type '<SpeedBumpNode>"
  "landmark_msgs/SpeedBumpNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SpeedBumpNode)))
  "Returns string type for a message object of type 'SpeedBumpNode"
  "landmark_msgs/SpeedBumpNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SpeedBumpNode>)))
  "Returns md5sum for a message object of type '<SpeedBumpNode>"
  "835401ebb3f247cb98b5f886c8b970e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SpeedBumpNode)))
  "Returns md5sum for a message object of type 'SpeedBumpNode"
  "835401ebb3f247cb98b5f886c8b970e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SpeedBumpNode>)))
  "Returns full string definition for message of type '<SpeedBumpNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 LINE_POINTS_VALID = 2~%uint16 TYPE_VALID = 4~%uint16 WIDTH_VALID = 8~%uint16 IS_VIRETUAL_VALID = 16~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] line_points~%landmark_msgs/SpeedBumpTypeEnum type~%float32 width~%bool is_virtual~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/SpeedBumpTypeEnum~%uint8 SPEED_BUMP_TYPE_UNKNOWN = 0~%uint8 SPEED_BUMP_TYPE_NORMAL = 1~%uint8 SPEED_BUMP_TYPE_BLOCK = 2~%uint8 SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SpeedBumpNode)))
  "Returns full string definition for message of type 'SpeedBumpNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 LINE_POINTS_VALID = 2~%uint16 TYPE_VALID = 4~%uint16 WIDTH_VALID = 8~%uint16 IS_VIRETUAL_VALID = 16~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] line_points~%landmark_msgs/SpeedBumpTypeEnum type~%float32 width~%bool is_virtual~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/SpeedBumpTypeEnum~%uint8 SPEED_BUMP_TYPE_UNKNOWN = 0~%uint8 SPEED_BUMP_TYPE_NORMAL = 1~%uint8 SPEED_BUMP_TYPE_BLOCK = 2~%uint8 SPEED_BUMP_TYPE_LATERAL_DECELERATING_LANE_MARKING = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SpeedBumpNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'line_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SpeedBumpNode>))
  "Converts a ROS message object to a list"
  (cl:list 'SpeedBumpNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':line_points (line_points msg))
    (cl:cons ':type (type msg))
    (cl:cons ':width (width msg))
    (cl:cons ':is_virtual (is_virtual msg))
))
