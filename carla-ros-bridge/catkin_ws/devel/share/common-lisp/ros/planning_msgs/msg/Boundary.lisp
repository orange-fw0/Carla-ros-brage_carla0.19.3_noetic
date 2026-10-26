; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Boundary.msg.html

(cl:defclass <Boundary> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (box
    :reader box
    :initarg :box
    :type planning_msgs-msg:Box2f
    :initform (cl:make-instance 'planning_msgs-msg:Box2f))
   (polygon
    :reader polygon
    :initarg :polygon
    :type planning_msgs-msg:Polygon2f
    :initform (cl:make-instance 'planning_msgs-msg:Polygon2f)))
)

(cl:defclass Boundary (<Boundary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Boundary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Boundary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Boundary> is deprecated: use planning_msgs-msg:Boundary instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <Boundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:available-val is deprecated.  Use planning_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <Boundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:box-val is deprecated.  Use planning_msgs-msg:box instead.")
  (box m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <Boundary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:polygon-val is deprecated.  Use planning_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Boundary>)))
    "Constants for message type '<Boundary>"
  '((:BOX . 1)
    (:POLYGON . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Boundary)))
    "Constants for message type 'Boundary"
  '((:BOX . 1)
    (:POLYGON . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Boundary>) ostream)
  "Serializes a message object of type '<Boundary>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Boundary>) istream)
  "Deserializes a message object of type '<Boundary>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Boundary>)))
  "Returns string type for a message object of type '<Boundary>"
  "planning_msgs/Boundary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Boundary)))
  "Returns string type for a message object of type 'Boundary"
  "planning_msgs/Boundary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Boundary>)))
  "Returns md5sum for a message object of type '<Boundary>"
  "1ab1c750a8b963519677acba357af34f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Boundary)))
  "Returns md5sum for a message object of type 'Boundary"
  "1ab1c750a8b963519677acba357af34f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Boundary>)))
  "Returns full string definition for message of type '<Boundary>"
  (cl:format cl:nil "uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 available~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Boundary)))
  "Returns full string definition for message of type 'Boundary"
  (cl:format cl:nil "uint8 BOX = 1~%uint8 POLYGON = 2~%uint8 available~%planning_msgs/Box2f box~%planning_msgs/Polygon2f polygon~%~%================================================================================~%MSG: planning_msgs/Box2f~%geometry_msgs/Point32 center~%float32 heading~%float32 length~%float32 width~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: planning_msgs/Polygon2f~%geometry_msgs/Point32[] points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Boundary>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Boundary>))
  "Converts a ROS message object to a list"
  (cl:list 'Boundary
    (cl:cons ':available (available msg))
    (cl:cons ':box (box msg))
    (cl:cons ':polygon (polygon msg))
))
