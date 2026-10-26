; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude RoadBoundaryPointNode.msg.html

(cl:defclass <RoadBoundaryPointNode> (roslisp-msg-protocol:ros-message)
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
   (type
    :reader type
    :initarg :type
    :type landmark_msgs-msg:RoadBoundaryTypeEnum
    :initform (cl:make-instance 'landmark_msgs-msg:RoadBoundaryTypeEnum))
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (directions
    :reader directions
    :initarg :directions
    :type (cl:vector perception_interface_msgs-msg:Vector3d)
   :initform (cl:make-array 0 :element-type 'perception_interface_msgs-msg:Vector3d :initial-element (cl:make-instance 'perception_interface_msgs-msg:Vector3d))))
)

(cl:defclass RoadBoundaryPointNode (<RoadBoundaryPointNode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoadBoundaryPointNode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoadBoundaryPointNode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<RoadBoundaryPointNode> is deprecated: use landmark_msgs-msg:RoadBoundaryPointNode instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <RoadBoundaryPointNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:available-val is deprecated.  Use landmark_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <RoadBoundaryPointNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:score-val is deprecated.  Use landmark_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <RoadBoundaryPointNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:type-val is deprecated.  Use landmark_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <RoadBoundaryPointNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:height-val is deprecated.  Use landmark_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'directions-val :lambda-list '(m))
(cl:defmethod directions-val ((m <RoadBoundaryPointNode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:directions-val is deprecated.  Use landmark_msgs-msg:directions instead.")
  (directions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoadBoundaryPointNode>) ostream)
  "Serializes a message object of type '<RoadBoundaryPointNode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'directions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'directions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoadBoundaryPointNode>) istream)
  "Deserializes a message object of type '<RoadBoundaryPointNode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'available)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'directions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'directions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoadBoundaryPointNode>)))
  "Returns string type for a message object of type '<RoadBoundaryPointNode>"
  "landmark_msgs/RoadBoundaryPointNode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoadBoundaryPointNode)))
  "Returns string type for a message object of type 'RoadBoundaryPointNode"
  "landmark_msgs/RoadBoundaryPointNode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoadBoundaryPointNode>)))
  "Returns md5sum for a message object of type '<RoadBoundaryPointNode>"
  "b6008473d7a81a3a631645c639f402da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoadBoundaryPointNode)))
  "Returns md5sum for a message object of type 'RoadBoundaryPointNode"
  "b6008473d7a81a3a631645c639f402da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoadBoundaryPointNode>)))
  "Returns full string definition for message of type '<RoadBoundaryPointNode>"
  (cl:format cl:nil "uint16 available~%float32 score~%landmark_msgs/RoadBoundaryTypeEnum type~%float32 height~%perception_interface_msgs/Vector3d[] directions~%~%================================================================================~%MSG: landmark_msgs/RoadBoundaryTypeEnum~%uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_TYPE_NONE = 1~%uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2~%uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3~%uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4~%uint8 ROAD_BOUNDARY_TYPE_CONE = 5~%uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6~%uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7~%uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8~%uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9~%uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10~%uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11~%uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12~%uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14~%uint8 ROAD_BOUNDARY_TYPE_CURB = 15~%uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16~%uint8 ROAD_BOUNDARY_TYPE_WALL = 17~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19~%uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoadBoundaryPointNode)))
  "Returns full string definition for message of type 'RoadBoundaryPointNode"
  (cl:format cl:nil "uint16 available~%float32 score~%landmark_msgs/RoadBoundaryTypeEnum type~%float32 height~%perception_interface_msgs/Vector3d[] directions~%~%================================================================================~%MSG: landmark_msgs/RoadBoundaryTypeEnum~%uint8 ROAD_BOUNDARY_TYPE_UNKNOWN = 0~%uint8 ROAD_BOUNDARY_TYPE_NONE = 1~%uint8 ROAD_BOUNDARY_TYPE_NORMAL = 2~%uint8 ROAD_BOUNDARY_TYPE_VIRTUAL = 3~%uint8 ROAD_BOUNDARY_TYPE_WATERHORSE = 4~%uint8 ROAD_BOUNDARY_TYPE_CONE = 5~%uint8 ROAD_BOUNDARY_TYPE_GREENBELT = 6~%uint8 ROAD_BOUNDARY_TYPE_CEMENT_PIER = 7~%uint8 ROAD_BOUNDARY_TYPE_GUTTER = 8~%uint8 ROAD_BOUNDARY_TYPE_EMERGENCY_LANE = 9~%uint8 ROAD_BOUNDARY_TYPE_GUARDRAIL = 10~%uint8 ROAD_BOUNDARY_TYPE_DASH_LINE = 11~%uint8 ROAD_BOUNDARY_TYPE_LOGICAL = 12~%uint8 ROAD_BOUNDARY_TYPE_PHYSICAL = 13~%uint8 ROAD_BOUNDARY_TYPE_SOLID_LINE = 14~%uint8 ROAD_BOUNDARY_TYPE_CURB = 15~%uint8 ROAD_BOUNDARY_TYPE_BOLLARD = 16~%uint8 ROAD_BOUNDARY_TYPE_WALL = 17~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW = 18~%uint8 ROAD_BOUNDARY_TYPE_CURB_YELLOW_BLACK = 19~%uint8 ROAD_BOUNDARY_TYPE_CONSTRUCTION_AREA = 20~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoadBoundaryPointNode>))
  (cl:+ 0
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'directions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoadBoundaryPointNode>))
  "Converts a ROS message object to a list"
  (cl:list 'RoadBoundaryPointNode
    (cl:cons ':available (available msg))
    (cl:cons ':score (score msg))
    (cl:cons ':type (type msg))
    (cl:cons ':height (height msg))
    (cl:cons ':directions (directions msg))
))
