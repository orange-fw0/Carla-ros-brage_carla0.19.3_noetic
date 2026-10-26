; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude CrossWalkNode.msg.html

(cl:defclass <CrossWalkNode> (roslisp-msg-protocol:ros-message)
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
   (center_line_points
    :reader center_line_points
    :initarg :center_line_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
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

(cl:defclass CrossWalkNode (<CrossWalkNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CrossWalkNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CrossWalkNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<CrossWalkNode> is deprecated: use landmark_msgs-msg:CrossWalkNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <CrossWalkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <CrossWalkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <CrossWalkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'center_line_points-val :lambda-list '(m))
(cl:defmethod center_line_points-val ((m <CrossWalkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:center_line_points-val is deprecated.  Use landmark_msgs-msg:center_line_points instead.")
  (center_line_points m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <CrossWalkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:width-val is deprecated.  Use landmark_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'is_virtual-val :lambda-list '(m))
(cl:defmethod is_virtual-val ((m <CrossWalkNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_virtual-val is deprecated.  Use landmark_msgs-msg:is_virtual instead.")
  (is_virtual m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CrossWalkNode>)))
    "Constants for message type '<CrossWalkNode>"
  '((:SCORE_VALID . 1)
    (:CENTER_LINE_VALID . 2)
    (:WIDTH_VALID . 4)
    (:IS_VIRETUAL_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CrossWalkNode)))
    "Constants for message type 'CrossWalkNode"
  '((:SCORE_VALID . 1)
    (:CENTER_LINE_VALID . 2)
    (:WIDTH_VALID . 4)
    (:IS_VIRETUAL_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CrossWalkNode>) ostream)
  "Serializes a message object of type '<CrossWalkNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'center_line_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'center_line_points))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_virtual) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CrossWalkNode>) istream)
  "Deserializes a message object of type '<CrossWalkNode>"
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
  (cl:setf (cl:slot-value msg 'center_line_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'center_line_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_virtual) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CrossWalkNode>)))
  "Returns string type for a message object of type '<CrossWalkNode>"
  "landmark_msgs/CrossWalkNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CrossWalkNode)))
  "Returns string type for a message object of type 'CrossWalkNode"
  "landmark_msgs/CrossWalkNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CrossWalkNode>)))
  "Returns md5sum for a message object of type '<CrossWalkNode>"
  "849c5dc51953225ba3242c8dcebe7f77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CrossWalkNode)))
  "Returns md5sum for a message object of type 'CrossWalkNode"
  "849c5dc51953225ba3242c8dcebe7f77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CrossWalkNode>)))
  "Returns full string definition for message of type '<CrossWalkNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 CENTER_LINE_VALID = 2~%uint16 WIDTH_VALID = 4~%uint16 IS_VIRETUAL_VALID = 8~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] center_line_points~%float32 width~%bool is_virtual~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CrossWalkNode)))
  "Returns full string definition for message of type 'CrossWalkNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 CENTER_LINE_VALID = 2~%uint16 WIDTH_VALID = 4~%uint16 IS_VIRETUAL_VALID = 8~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] center_line_points~%float32 width~%bool is_virtual~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CrossWalkNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'center_line_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CrossWalkNode>))
  "Converts a ROS message object to a list"
  (cl:list 'CrossWalkNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':center_line_points (center_line_points msg))
    (cl:cons ':width (width msg))
    (cl:cons ':is_virtual (is_virtual msg))
))
