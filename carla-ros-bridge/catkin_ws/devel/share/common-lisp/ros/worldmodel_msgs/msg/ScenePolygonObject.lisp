; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude ScenePolygonObject.msg.html

(cl:defclass <ScenePolygonObject> (roslisp-msg-protocol:ros-message)
  ((object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
    :initform 0)
   (object_type
    :reader object_type
    :initarg :object_type
    :type worldmodel_msgs-msg:SceneObjectType
    :initform (cl:make-instance 'worldmodel_msgs-msg:SceneObjectType))
   (object_polygon
    :reader object_polygon
    :initarg :object_polygon
    :type perception_interface_msgs-msg:Polygon3f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Polygon3f)))
)

(cl:defclass ScenePolygonObject (<ScenePolygonObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScenePolygonObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScenePolygonObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<ScenePolygonObject> is deprecated: use worldmodel_msgs-msg:ScenePolygonObject instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <ScenePolygonObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:object_id-val is deprecated.  Use worldmodel_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'object_type-val :lambda-list '(m))
(cl:defmethod object_type-val ((m <ScenePolygonObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:object_type-val is deprecated.  Use worldmodel_msgs-msg:object_type instead.")
  (object_type m))

(cl:ensure-generic-function 'object_polygon-val :lambda-list '(m))
(cl:defmethod object_polygon-val ((m <ScenePolygonObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:object_polygon-val is deprecated.  Use worldmodel_msgs-msg:object_polygon instead.")
  (object_polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScenePolygonObject>) ostream)
  "Serializes a message object of type '<ScenePolygonObject>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'object_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScenePolygonObject>) istream)
  "Deserializes a message object of type '<ScenePolygonObject>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScenePolygonObject>)))
  "Returns string type for a message object of type '<ScenePolygonObject>"
  "worldmodel_msgs/ScenePolygonObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScenePolygonObject)))
  "Returns string type for a message object of type 'ScenePolygonObject"
  "worldmodel_msgs/ScenePolygonObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScenePolygonObject>)))
  "Returns md5sum for a message object of type '<ScenePolygonObject>"
  "2966a81dad84df9927a29c8d4bade247")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScenePolygonObject)))
  "Returns md5sum for a message object of type 'ScenePolygonObject"
  "2966a81dad84df9927a29c8d4bade247")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScenePolygonObject>)))
  "Returns full string definition for message of type '<ScenePolygonObject>"
  (cl:format cl:nil "uint64 object_id~%worldmodel_msgs/SceneObjectType object_type~%perception_interface_msgs/Polygon3f object_polygon~%~%================================================================================~%MSG: worldmodel_msgs/SceneObjectType~%uint8 UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 MAP_FIRE_EXIT_DOOR = 10~%uint8 MAP_PILLAR = 11~%uint8 MAP_TOLL_GATE = 12~%uint8 MAP_BORDER_SOLID_LINE = 13~%uint8 MAP_BORDER_DASH_LINE = 14~%uint8 MAP_BORDER_PHYSICAL = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScenePolygonObject)))
  "Returns full string definition for message of type 'ScenePolygonObject"
  (cl:format cl:nil "uint64 object_id~%worldmodel_msgs/SceneObjectType object_type~%perception_interface_msgs/Polygon3f object_polygon~%~%================================================================================~%MSG: worldmodel_msgs/SceneObjectType~%uint8 UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 MAP_FIRE_EXIT_DOOR = 10~%uint8 MAP_PILLAR = 11~%uint8 MAP_TOLL_GATE = 12~%uint8 MAP_BORDER_SOLID_LINE = 13~%uint8 MAP_BORDER_DASH_LINE = 14~%uint8 MAP_BORDER_PHYSICAL = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Polygon3f~%perception_interface_msgs/Point3f[] points~%~%================================================================================~%MSG: perception_interface_msgs/Point3f~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScenePolygonObject>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScenePolygonObject>))
  "Converts a ROS message object to a list"
  (cl:list 'ScenePolygonObject
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':object_type (object_type msg))
    (cl:cons ':object_polygon (object_polygon msg))
))
