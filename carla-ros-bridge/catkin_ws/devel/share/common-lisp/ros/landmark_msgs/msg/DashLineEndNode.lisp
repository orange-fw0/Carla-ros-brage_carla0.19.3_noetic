; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude DashLineEndNode.msg.html

(cl:defclass <DashLineEndNode> (roslisp-msg-protocol:ros-message)
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
   (center
    :reader center
    :initarg :center
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (segment_start
    :reader segment_start
    :initarg :segment_start
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f))
   (segment_end
    :reader segment_end
    :initarg :segment_end
    :type perception_interface_msgs-msg:Point3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
)

(cl:defclass DashLineEndNode (<DashLineEndNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DashLineEndNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DashLineEndNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<DashLineEndNode> is deprecated: use landmark_msgs-msg:DashLineEndNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <DashLineEndNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <DashLineEndNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <DashLineEndNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <DashLineEndNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:center-val is deprecated.  Use landmark_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'segment_start-val :lambda-list '(m))
(cl:defmethod segment_start-val ((m <DashLineEndNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:segment_start-val is deprecated.  Use landmark_msgs-msg:segment_start instead.")
  (segment_start m))

(cl:ensure-generic-function 'segment_end-val :lambda-list '(m))
(cl:defmethod segment_end-val ((m <DashLineEndNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:segment_end-val is deprecated.  Use landmark_msgs-msg:segment_end instead.")
  (segment_end m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DashLineEndNode>)))
    "Constants for message type '<DashLineEndNode>"
  '((:SCORE_VALID . 1)
    (:CENTER_VALID . 2)
    (:SEGMENT_START_VALID . 4)
    (:SEGMENT_END_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DashLineEndNode)))
    "Constants for message type 'DashLineEndNode"
  '((:SCORE_VALID . 1)
    (:CENTER_VALID . 2)
    (:SEGMENT_START_VALID . 4)
    (:SEGMENT_END_VALID . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DashLineEndNode>) ostream)
  "Serializes a message object of type '<DashLineEndNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segment_start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segment_end) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DashLineEndNode>) istream)
  "Deserializes a message object of type '<DashLineEndNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segment_start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segment_end) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DashLineEndNode>)))
  "Returns string type for a message object of type '<DashLineEndNode>"
  "landmark_msgs/DashLineEndNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DashLineEndNode)))
  "Returns string type for a message object of type 'DashLineEndNode"
  "landmark_msgs/DashLineEndNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DashLineEndNode>)))
  "Returns md5sum for a message object of type '<DashLineEndNode>"
  "5d3f1496b28f03f904353895dc6597f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DashLineEndNode)))
  "Returns md5sum for a message object of type 'DashLineEndNode"
  "5d3f1496b28f03f904353895dc6597f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DashLineEndNode>)))
  "Returns full string definition for message of type '<DashLineEndNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 CENTER_VALID = 2~%uint16 SEGMENT_START_VALID = 4~%uint16 SEGMENT_END_VALID = 8~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f center~%perception_interface_msgs/Point3f segment_start~%perception_interface_msgs/Point3f segment_end~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DashLineEndNode)))
  "Returns full string definition for message of type 'DashLineEndNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 CENTER_VALID = 2~%uint16 SEGMENT_START_VALID = 4~%uint16 SEGMENT_END_VALID = 8~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f center~%perception_interface_msgs/Point3f segment_start~%perception_interface_msgs/Point3f segment_end~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DashLineEndNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segment_start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segment_end))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DashLineEndNode>))
  "Converts a ROS message object to a list"
  (cl:list 'DashLineEndNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':center (center msg))
    (cl:cons ':segment_start (segment_start msg))
    (cl:cons ':segment_end (segment_end msg))
))
