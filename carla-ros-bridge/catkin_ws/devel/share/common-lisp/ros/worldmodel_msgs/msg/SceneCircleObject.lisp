; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude SceneCircleObject.msg.html

(cl:defclass <SceneCircleObject> (roslisp-msg-protocol:ros-message)
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
   (center_point
    :reader center_point
    :initarg :center_point
    :type perception_interface_msgs-msg:Point2d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point2d))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass SceneCircleObject (<SceneCircleObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneCircleObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneCircleObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<SceneCircleObject> is deprecated: use worldmodel_msgs-msg:SceneCircleObject instead.")))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <SceneCircleObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:object_id-val is deprecated.  Use worldmodel_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'object_type-val :lambda-list '(m))
(cl:defmethod object_type-val ((m <SceneCircleObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:object_type-val is deprecated.  Use worldmodel_msgs-msg:object_type instead.")
  (object_type m))

(cl:ensure-generic-function 'center_point-val :lambda-list '(m))
(cl:defmethod center_point-val ((m <SceneCircleObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:center_point-val is deprecated.  Use worldmodel_msgs-msg:center_point instead.")
  (center_point m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <SceneCircleObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:radius-val is deprecated.  Use worldmodel_msgs-msg:radius instead.")
  (radius m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SceneCircleObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:height-val is deprecated.  Use worldmodel_msgs-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneCircleObject>) ostream)
  "Serializes a message object of type '<SceneCircleObject>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'object_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneCircleObject>) istream)
  "Deserializes a message object of type '<SceneCircleObject>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneCircleObject>)))
  "Returns string type for a message object of type '<SceneCircleObject>"
  "worldmodel_msgs/SceneCircleObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneCircleObject)))
  "Returns string type for a message object of type 'SceneCircleObject"
  "worldmodel_msgs/SceneCircleObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneCircleObject>)))
  "Returns md5sum for a message object of type '<SceneCircleObject>"
  "1b5eb0465630ba570726bf7bfe0513b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneCircleObject)))
  "Returns md5sum for a message object of type 'SceneCircleObject"
  "1b5eb0465630ba570726bf7bfe0513b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneCircleObject>)))
  "Returns full string definition for message of type '<SceneCircleObject>"
  (cl:format cl:nil "uint64 object_id~%worldmodel_msgs/SceneObjectType object_type~%perception_interface_msgs/Point2d center_point~%float64 radius~%float64 height~%~%================================================================================~%MSG: worldmodel_msgs/SceneObjectType~%uint8 UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 MAP_FIRE_EXIT_DOOR = 10~%uint8 MAP_PILLAR = 11~%uint8 MAP_TOLL_GATE = 12~%uint8 MAP_BORDER_SOLID_LINE = 13~%uint8 MAP_BORDER_DASH_LINE = 14~%uint8 MAP_BORDER_PHYSICAL = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneCircleObject)))
  "Returns full string definition for message of type 'SceneCircleObject"
  (cl:format cl:nil "uint64 object_id~%worldmodel_msgs/SceneObjectType object_type~%perception_interface_msgs/Point2d center_point~%float64 radius~%float64 height~%~%================================================================================~%MSG: worldmodel_msgs/SceneObjectType~%uint8 UNKNOWN = 0~%uint8 TRAFFIC_BARRIER_TYPE_CONE = 1~%uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2~%uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3~%uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4~%uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5~%uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6~%uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7~%uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8~%uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9~%uint8 MAP_FIRE_EXIT_DOOR = 10~%uint8 MAP_PILLAR = 11~%uint8 MAP_TOLL_GATE = 12~%uint8 MAP_BORDER_SOLID_LINE = 13~%uint8 MAP_BORDER_DASH_LINE = 14~%uint8 MAP_BORDER_PHYSICAL = 15~%uint8 value~%~%================================================================================~%MSG: perception_interface_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneCircleObject>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center_point))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneCircleObject>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneCircleObject
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':object_type (object_type msg))
    (cl:cons ':center_point (center_point msg))
    (cl:cons ':radius (radius msg))
    (cl:cons ':height (height msg))
))
