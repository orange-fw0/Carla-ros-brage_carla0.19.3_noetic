; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude PoleNode.msg.html

(cl:defclass <PoleNode> (roslisp-msg-protocol:ros-message)
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
   (shape_points
    :reader shape_points
    :initarg :shape_points
    :type (cl:vector perception_interface_msgs-msg:Point3f)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Point3f :initial-element (cl:make-instance 'perception_interface_msgs-msg:Point3f)))
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:PoleNodeTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:PoleNodeTypeEnum)))
)

(cl:defclass PoleNode (<PoleNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoleNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoleNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<PoleNode> is deprecated: use landmark_msgs-msg:PoleNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <PoleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <PoleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'track_id-val :lambda-list '(m))
(cl:defmethod track_id-val ((m <PoleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:track_id-val is deprecated.  Use landmark_msgs-msg:track_id instead.")
  (track_id m))

(cl:ensure-generic-function 'shape_points-val :lambda-list '(m))
(cl:defmethod shape_points-val ((m <PoleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:shape_points-val is deprecated.  Use landmark_msgs-msg:shape_points instead.")
  (shape_points m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <PoleNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PoleNode>)))
    "Constants for message type '<PoleNode>"
  '((:SCORE_VALID . 1)
    (:SHAPE_POINTS_VALID . 2)
    (:TYPE_VALID . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PoleNode)))
    "Constants for message type 'PoleNode"
  '((:SCORE_VALID . 1)
    (:SHAPE_POINTS_VALID . 2)
    (:TYPE_VALID . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoleNode>) ostream)
  "Serializes a message object of type '<PoleNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track_id) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'shape_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'shape_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoleNode>) istream)
  "Deserializes a message object of type '<PoleNode>"
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
  (cl:setf (cl:slot-value msg 'shape_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'shape_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Point3f))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoleNode>)))
  "Returns string type for a message object of type '<PoleNode>"
  "landmark_msgs/PoleNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoleNode)))
  "Returns string type for a message object of type 'PoleNode"
  "landmark_msgs/PoleNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoleNode>)))
  "Returns md5sum for a message object of type '<PoleNode>"
  "09a2e931d0aa29e04840c11bec8297bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoleNode)))
  "Returns md5sum for a message object of type 'PoleNode"
  "09a2e931d0aa29e04840c11bec8297bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoleNode>)))
  "Returns full string definition for message of type '<PoleNode>"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 SHAPE_POINTS_VALID = 2~%uint16 TYPE_VALID = 4~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] shape_points~%landmark_msgs/PoleNodeTypeEnum type~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/PoleNodeTypeEnum~%uint8 POLE_NODE_TYPE_UNKNOWN = 0~%uint8 POLE_NODE_TYPE_GENERAL_POLE = 1~%uint8 POLE_NODE_TYPE_LIGHT_POLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoleNode)))
  "Returns full string definition for message of type 'PoleNode"
  (cl:format cl:nil "uint16 SCORE_VALID = 1~%uint16 SHAPE_POINTS_VALID = 2~%uint16 TYPE_VALID = 4~%uint16 available~%float32 score~%landmark_msgs/TrackId track_id~%perception_interface_msgs/Point3f[] shape_points~%landmark_msgs/PoleNodeTypeEnum type~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: landmark_msgs/PoleNodeTypeEnum~%uint8 POLE_NODE_TYPE_UNKNOWN = 0~%uint8 POLE_NODE_TYPE_GENERAL_POLE = 1~%uint8 POLE_NODE_TYPE_LIGHT_POLE = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoleNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'shape_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoleNode>))
  "Converts a ROS message object to a list"
  (cl:list 'PoleNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':track_id (track_id msg))
    (cl:cons ':shape_points (shape_points msg))
    (cl:cons ':type (type msg))
))
