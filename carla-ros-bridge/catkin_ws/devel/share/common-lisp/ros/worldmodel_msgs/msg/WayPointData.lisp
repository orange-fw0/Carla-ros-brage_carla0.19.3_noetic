; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude WayPointData.msg.html

(cl:defclass <WayPointData> (roslisp-msg-protocol:ros-message)
  ((way_point_type
    :reader way_point_type
    :initarg :way_point_type
    :type worldmodel_msgs-msg:WayPointType
    :initform (cl:make-instance 'worldmodel_msgs-msg:WayPointType))
   (longtitude
    :reader longtitude
    :initarg :longtitude
    :type cl:float
    :initform 0.0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass WayPointData (<WayPointData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WayPointData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WayPointData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<WayPointData> is deprecated: use worldmodel_msgs-msg:WayPointData instead.")))

(cl:ensure-generic-function 'way_point_type-val :lambda-list '(m))
(cl:defmethod way_point_type-val ((m <WayPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:way_point_type-val is deprecated.  Use worldmodel_msgs-msg:way_point_type instead.")
  (way_point_type m))

(cl:ensure-generic-function 'longtitude-val :lambda-list '(m))
(cl:defmethod longtitude-val ((m <WayPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:longtitude-val is deprecated.  Use worldmodel_msgs-msg:longtitude instead.")
  (longtitude m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <WayPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:latitude-val is deprecated.  Use worldmodel_msgs-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <WayPointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:altitude-val is deprecated.  Use worldmodel_msgs-msg:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WayPointData>) ostream)
  "Serializes a message object of type '<WayPointData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'way_point_type) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longtitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WayPointData>) istream)
  "Deserializes a message object of type '<WayPointData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'way_point_type) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longtitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WayPointData>)))
  "Returns string type for a message object of type '<WayPointData>"
  "worldmodel_msgs/WayPointData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WayPointData)))
  "Returns string type for a message object of type 'WayPointData"
  "worldmodel_msgs/WayPointData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WayPointData>)))
  "Returns md5sum for a message object of type '<WayPointData>"
  "c143696712cc66370c1d8d07f7340403")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WayPointData)))
  "Returns md5sum for a message object of type 'WayPointData"
  "c143696712cc66370c1d8d07f7340403")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WayPointData>)))
  "Returns full string definition for message of type '<WayPointData>"
  (cl:format cl:nil "worldmodel_msgs/WayPointType way_point_type~%float64 longtitude~%float64 latitude~%float64 altitude~%~%================================================================================~%MSG: worldmodel_msgs/WayPointType~%uint8 NORMAL_WAYPOINT = 1~%uint8 INTERSECTION_WAYPOINT = 2~%uint8 RAMP_WAYPOINT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WayPointData)))
  "Returns full string definition for message of type 'WayPointData"
  (cl:format cl:nil "worldmodel_msgs/WayPointType way_point_type~%float64 longtitude~%float64 latitude~%float64 altitude~%~%================================================================================~%MSG: worldmodel_msgs/WayPointType~%uint8 NORMAL_WAYPOINT = 1~%uint8 INTERSECTION_WAYPOINT = 2~%uint8 RAMP_WAYPOINT = 4~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WayPointData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'way_point_type))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WayPointData>))
  "Converts a ROS message object to a list"
  (cl:list 'WayPointData
    (cl:cons ':way_point_type (way_point_type msg))
    (cl:cons ':longtitude (longtitude msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':altitude (altitude msg))
))
