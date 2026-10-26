; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude GroundLine.msg.html

(cl:defclass <GroundLine> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (end
    :reader end
    :initarg :end
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (map_points
    :reader map_points
    :initarg :map_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (raw_points
    :reader raw_points
    :initarg :raw_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type submap_msgs-msg:GroundLineType
    :initform (cl:make-instance 'submap_msgs-msg:GroundLineType))
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (slide_distance
    :reader slide_distance
    :initarg :slide_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass GroundLine (<GroundLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GroundLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GroundLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<GroundLine> is deprecated: use submap_msgs-msg:GroundLine instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:start-val is deprecated.  Use submap_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'end-val :lambda-list '(m))
(cl:defmethod end-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:end-val is deprecated.  Use submap_msgs-msg:end instead.")
  (end m))

(cl:ensure-generic-function 'map_points-val :lambda-list '(m))
(cl:defmethod map_points-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:map_points-val is deprecated.  Use submap_msgs-msg:map_points instead.")
  (map_points m))

(cl:ensure-generic-function 'raw_points-val :lambda-list '(m))
(cl:defmethod raw_points-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:raw_points-val is deprecated.  Use submap_msgs-msg:raw_points instead.")
  (raw_points m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:id-val is deprecated.  Use submap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:type-val is deprecated.  Use submap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:score-val is deprecated.  Use submap_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'slide_distance-val :lambda-list '(m))
(cl:defmethod slide_distance-val ((m <GroundLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:slide_distance-val is deprecated.  Use submap_msgs-msg:slide_distance instead.")
  (slide_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GroundLine>) ostream)
  "Serializes a message object of type '<GroundLine>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'end) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'raw_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'raw_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'type) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slide_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GroundLine>) istream)
  "Deserializes a message object of type '<GroundLine>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'end) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'raw_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'raw_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slide_distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GroundLine>)))
  "Returns string type for a message object of type '<GroundLine>"
  "submap_msgs/GroundLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GroundLine)))
  "Returns string type for a message object of type 'GroundLine"
  "submap_msgs/GroundLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GroundLine>)))
  "Returns md5sum for a message object of type '<GroundLine>"
  "77d899539297858d39b0f3e9ac37f606")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GroundLine)))
  "Returns md5sum for a message object of type 'GroundLine"
  "77d899539297858d39b0f3e9ac37f606")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GroundLine>)))
  "Returns full string definition for message of type '<GroundLine>"
  (cl:format cl:nil "geometry_msgs/Point start~%geometry_msgs/Point end~%geometry_msgs/Point[] map_points~%geometry_msgs/Point[] raw_points~%uint32 id~%submap_msgs/GroundLineType type~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: submap_msgs/GroundLineType~%uint8 UNKNOWN = 0~%uint8 WALL = 1~%uint8 PILLAR = 2~%uint8 FENCE = 3~%uint8 STEP = 4~%uint8 SPECIAL = 5~%uint8 PARKING_GATE = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GroundLine)))
  "Returns full string definition for message of type 'GroundLine"
  (cl:format cl:nil "geometry_msgs/Point start~%geometry_msgs/Point end~%geometry_msgs/Point[] map_points~%geometry_msgs/Point[] raw_points~%uint32 id~%submap_msgs/GroundLineType type~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: submap_msgs/GroundLineType~%uint8 UNKNOWN = 0~%uint8 WALL = 1~%uint8 PILLAR = 2~%uint8 FENCE = 3~%uint8 STEP = 4~%uint8 SPECIAL = 5~%uint8 PARKING_GATE = 6~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GroundLine>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'end))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'raw_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'type))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GroundLine>))
  "Converts a ROS message object to a list"
  (cl:list 'GroundLine
    (cl:cons ':start (start msg))
    (cl:cons ':end (end msg))
    (cl:cons ':map_points (map_points msg))
    (cl:cons ':raw_points (raw_points msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':score (score msg))
    (cl:cons ':slide_distance (slide_distance msg))
))
