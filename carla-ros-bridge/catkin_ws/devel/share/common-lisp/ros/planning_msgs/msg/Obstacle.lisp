; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Obstacle.msg.html

(cl:defclass <Obstacle> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (obstacle_type
    :reader obstacle_type
    :initarg :obstacle_type
    :type planning_msgs-msg:ObstacleTypeEnum
    :initform (cl:make-instance 'planning_msgs-msg:ObstacleTypeEnum))
   (box
    :reader box
    :initarg :box
    :type planning_msgs-msg:Box2f
    :initform (cl:make-instance 'planning_msgs-msg:Box2f))
   (polygon
    :reader polygon
    :initarg :polygon
    :type planning_msgs-msg:Polygon2f
    :initform (cl:make-instance 'planning_msgs-msg:Polygon2f))
   (polyline
    :reader polyline
    :initarg :polyline
    :type planning_msgs-msg:Polyline2f
    :initform (cl:make-instance 'planning_msgs-msg:Polyline2f))
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32)))
)

(cl:defclass Obstacle (<Obstacle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Obstacle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Obstacle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Obstacle> is deprecated: use planning_msgs-msg:Obstacle instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'obstacle_type-val :lambda-list '(m))
(cl:defmethod obstacle_type-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:obstacle_type-val is deprecated.  Use planning_msgs-msg:obstacle_type instead.")
  (obstacle_type m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:box-val is deprecated.  Use planning_msgs-msg:box instead.")
  (box m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:polygon-val is deprecated.  Use planning_msgs-msg:polygon instead.")
  (polygon m))

(cl:ensure-generic-function 'polyline-val :lambda-list '(m))
(cl:defmethod polyline-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:polyline-val is deprecated.  Use planning_msgs-msg:polyline instead.")
  (polyline m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <Obstacle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:point-val is deprecated.  Use planning_msgs-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Obstacle>)))
    "Constants for message type '<Obstacle>"
  '((:BOX . 1)
    (:POLYGON . 2)
    (:POLYLINE . 4)
    (:POINT . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Obstacle)))
    "Constants for message type 'Obstacle"
  '((:BOX . 1)
    (:POLYGON . 2)
    (:POLYLINE . 4)
    (:POINT . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Obstacle>) ostream)
  "Serializes a message object of type '<Obstacle>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obstacle_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polyline) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Obstacle>) istream)
  "Deserializes a message object of type '<Obstacle>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obstacle_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polyline) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Obstacle>)))
  "Returns string type for a message object of type '<Obstacle>"
  "planning_msgs/Obstacle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Obstacle)))
  "Returns string type for a message object of type 'Obstacle"
  "planning_msgs/Obstacle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Obstacle>)))
  "Returns md5sum for a message object of type '<Obstacle>"
  "4b9f22e247ebbe5f0d21d8c258a8994c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Obstacle)))
  "Returns md5sum for a message object of type 'Obstacle"
  "4b9f22e247ebbe5f0d21d8c258a8994c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Obstacle>)))
  "Returns full string definition for message of type '<Obstacle>"
  (cl:format cl:nil "uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 POLYLINE = 4~%uint8 POINT = 8~%uint8 available~%planning_msgs/ObstacleTypeEnum obstacle_type~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%planning_msgs/Polyline2f polyline~%geometry_msgs/Point32 point~%~%================================================================================~%MSG: planning_msgs/ObstacleTypeEnum~%uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Polyline2f~%geometry_msgs/Point32[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Obstacle)))
  "Returns full string definition for message of type 'Obstacle"
  (cl:format cl:nil "uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 POLYLINE = 4~%uint8 POINT = 8~%uint8 available~%planning_msgs/ObstacleTypeEnum obstacle_type~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%planning_msgs/Polyline2f polyline~%geometry_msgs/Point32 point~%~%================================================================================~%MSG: planning_msgs/ObstacleTypeEnum~%uint8 PHYSICAL = 1~%uint8 LOGICAL = 2~%uint8 PARKING_SLOT = 4~%uint8 value~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%================================================================================~%MSG: planning_msgs/Polyline2f~%geometry_msgs/Point32[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Obstacle>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obstacle_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polyline))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Obstacle>))
  "Converts a ROS message object to a list"
  (cl:list 'Obstacle
    (cl:cons ':available (available msg))
    (cl:cons ':obstacle_type (obstacle_type msg))
    (cl:cons ':box (box msg))
    (cl:cons ':polygon (polygon msg))
    (cl:cons ':polyline (polyline msg))
    (cl:cons ':point (point msg))
))
