; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude IntersectionManeuver.msg.html

(cl:defclass <IntersectionManeuver> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass IntersectionManeuver (<IntersectionManeuver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntersectionManeuver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntersectionManeuver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<IntersectionManeuver> is deprecated: use momenta_msgs-msg:IntersectionManeuver instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:direction-val is deprecated.  Use momenta_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:distance-val is deprecated.  Use momenta_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <IntersectionManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:length-val is deprecated.  Use momenta_msgs-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntersectionManeuver>) ostream)
  "Serializes a message object of type '<IntersectionManeuver>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntersectionManeuver>) istream)
  "Deserializes a message object of type '<IntersectionManeuver>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntersectionManeuver>)))
  "Returns string type for a message object of type '<IntersectionManeuver>"
  "momenta_msgs/IntersectionManeuver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntersectionManeuver)))
  "Returns string type for a message object of type 'IntersectionManeuver"
  "momenta_msgs/IntersectionManeuver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntersectionManeuver>)))
  "Returns md5sum for a message object of type '<IntersectionManeuver>"
  "ab1a9f360b17e4f43fe8d873f4ffa50e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntersectionManeuver)))
  "Returns md5sum for a message object of type 'IntersectionManeuver"
  "ab1a9f360b17e4f43fe8d873f4ffa50e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntersectionManeuver>)))
  "Returns full string definition for message of type '<IntersectionManeuver>"
  (cl:format cl:nil "uint8 direction~%float64 distance~%float64 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntersectionManeuver)))
  "Returns full string definition for message of type 'IntersectionManeuver"
  (cl:format cl:nil "uint8 direction~%float64 distance~%float64 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntersectionManeuver>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntersectionManeuver>))
  "Converts a ROS message object to a list"
  (cl:list 'IntersectionManeuver
    (cl:cons ':direction (direction msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':length (length msg))
))
