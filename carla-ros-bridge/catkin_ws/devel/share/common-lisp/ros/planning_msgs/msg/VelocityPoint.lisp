; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude VelocityPoint.msg.html

(cl:defclass <VelocityPoint> (roslisp-msg-protocol:ros-message)
  ((target_velocity
    :reader target_velocity
    :initarg :target_velocity
    :type cl:float
    :initform 0.0)
   (relative_time
    :reader relative_time
    :initarg :relative_time
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityPoint (<VelocityPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<VelocityPoint> is deprecated: use planning_msgs-msg:VelocityPoint instead.")))

(cl:ensure-generic-function 'target_velocity-val :lambda-list '(m))
(cl:defmethod target_velocity-val ((m <VelocityPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:target_velocity-val is deprecated.  Use planning_msgs-msg:target_velocity instead.")
  (target_velocity m))

(cl:ensure-generic-function 'relative_time-val :lambda-list '(m))
(cl:defmethod relative_time-val ((m <VelocityPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:relative_time-val is deprecated.  Use planning_msgs-msg:relative_time instead.")
  (relative_time m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <VelocityPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:distance-val is deprecated.  Use planning_msgs-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityPoint>) ostream)
  "Serializes a message object of type '<VelocityPoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'relative_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityPoint>) istream)
  "Deserializes a message object of type '<VelocityPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_time) (roslisp-utils:decode-double-float-bits bits)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityPoint>)))
  "Returns string type for a message object of type '<VelocityPoint>"
  "planning_msgs/VelocityPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityPoint)))
  "Returns string type for a message object of type 'VelocityPoint"
  "planning_msgs/VelocityPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityPoint>)))
  "Returns md5sum for a message object of type '<VelocityPoint>"
  "8f3bc5ab35a1f449e7aeaf2271f3edc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityPoint)))
  "Returns md5sum for a message object of type 'VelocityPoint"
  "8f3bc5ab35a1f449e7aeaf2271f3edc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityPoint>)))
  "Returns full string definition for message of type '<VelocityPoint>"
  (cl:format cl:nil "float64 target_velocity~%float64 relative_time~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityPoint)))
  "Returns full string definition for message of type 'VelocityPoint"
  (cl:format cl:nil "float64 target_velocity~%float64 relative_time~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityPoint>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityPoint
    (cl:cons ':target_velocity (target_velocity msg))
    (cl:cons ':relative_time (relative_time msg))
    (cl:cons ':distance (distance msg))
))
