; Auto-generated. Do not edit!


(cl:in-package submap_msgs-msg)


;//! \htmlinclude StaticObstacleMap.msg.html

(cl:defclass <StaticObstacleMap> (roslisp-msg-protocol:ros-message)
  ((ground_lines
    :reader ground_lines
    :initarg :ground_lines
    :type (cl:vector submap_msgs-msg:GroundLine)
   :initform (cl:make-array 0 :element-type 'submap_msgs-msg:GroundLine :initial-element (cl:make-instance 'submap_msgs-msg:GroundLine)))
   (pillars
    :reader pillars
    :initarg :pillars
    :type (cl:vector submap_msgs-msg:Pillar)
   :initform (cl:make-array 0 :element-type 'submap_msgs-msg:Pillar :initial-element (cl:make-instance 'submap_msgs-msg:Pillar))))
)

(cl:defclass StaticObstacleMap (<StaticObstacleMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaticObstacleMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaticObstacleMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name submap_msgs-msg:<StaticObstacleMap> is deprecated: use submap_msgs-msg:StaticObstacleMap instead.")))

(cl:ensure-generic-function 'ground_lines-val :lambda-list '(m))
(cl:defmethod ground_lines-val ((m <StaticObstacleMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:ground_lines-val is deprecated.  Use submap_msgs-msg:ground_lines instead.")
  (ground_lines m))

(cl:ensure-generic-function 'pillars-val :lambda-list '(m))
(cl:defmethod pillars-val ((m <StaticObstacleMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader submap_msgs-msg:pillars-val is deprecated.  Use submap_msgs-msg:pillars instead.")
  (pillars m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaticObstacleMap>) ostream)
  "Serializes a message object of type '<StaticObstacleMap>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ground_lines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ground_lines))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pillars))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pillars))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaticObstacleMap>) istream)
  "Deserializes a message object of type '<StaticObstacleMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ground_lines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ground_lines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'submap_msgs-msg:GroundLine))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pillars) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pillars)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'submap_msgs-msg:Pillar))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaticObstacleMap>)))
  "Returns string type for a message object of type '<StaticObstacleMap>"
  "submap_msgs/StaticObstacleMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticObstacleMap)))
  "Returns string type for a message object of type 'StaticObstacleMap"
  "submap_msgs/StaticObstacleMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaticObstacleMap>)))
  "Returns md5sum for a message object of type '<StaticObstacleMap>"
  "b289da5312194eecff20112a751514d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaticObstacleMap)))
  "Returns md5sum for a message object of type 'StaticObstacleMap"
  "b289da5312194eecff20112a751514d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaticObstacleMap>)))
  "Returns full string definition for message of type '<StaticObstacleMap>"
  (cl:format cl:nil "submap_msgs/GroundLine[] ground_lines~%submap_msgs/Pillar[] pillars~%~%================================================================================~%MSG: submap_msgs/GroundLine~%geometry_msgs/Point start~%geometry_msgs/Point end~%geometry_msgs/Point[] map_points~%geometry_msgs/Point[] raw_points~%uint32 id~%submap_msgs/GroundLineType type~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: submap_msgs/GroundLineType~%uint8 UNKNOWN = 0~%uint8 WALL = 1~%uint8 PILLAR = 2~%uint8 FENCE = 3~%uint8 STEP = 4~%uint8 SPECIAL = 5~%uint8 PARKING_GATE = 6~%uint8 value~%~%================================================================================~%MSG: submap_msgs/Pillar~%geometry_msgs/Point center~%geometry_msgs/Point center_local~%geometry_msgs/Point[] edge_points~%geometry_msgs/Point[] edge_points_local~%uint32 id~%uint32 point_number~%float32 score~%float32 slide_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaticObstacleMap)))
  "Returns full string definition for message of type 'StaticObstacleMap"
  (cl:format cl:nil "submap_msgs/GroundLine[] ground_lines~%submap_msgs/Pillar[] pillars~%~%================================================================================~%MSG: submap_msgs/GroundLine~%geometry_msgs/Point start~%geometry_msgs/Point end~%geometry_msgs/Point[] map_points~%geometry_msgs/Point[] raw_points~%uint32 id~%submap_msgs/GroundLineType type~%float32 score~%float32 slide_distance~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: submap_msgs/GroundLineType~%uint8 UNKNOWN = 0~%uint8 WALL = 1~%uint8 PILLAR = 2~%uint8 FENCE = 3~%uint8 STEP = 4~%uint8 SPECIAL = 5~%uint8 PARKING_GATE = 6~%uint8 value~%~%================================================================================~%MSG: submap_msgs/Pillar~%geometry_msgs/Point center~%geometry_msgs/Point center_local~%geometry_msgs/Point[] edge_points~%geometry_msgs/Point[] edge_points_local~%uint32 id~%uint32 point_number~%float32 score~%float32 slide_distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaticObstacleMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ground_lines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pillars) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaticObstacleMap>))
  "Converts a ROS message object to a list"
  (cl:list 'StaticObstacleMap
    (cl:cons ':ground_lines (ground_lines msg))
    (cl:cons ':pillars (pillars msg))
))
