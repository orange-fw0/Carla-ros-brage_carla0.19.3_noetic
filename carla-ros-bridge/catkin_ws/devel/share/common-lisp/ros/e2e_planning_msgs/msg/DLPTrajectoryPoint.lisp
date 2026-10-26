; Auto-generated. Do not edit!


(cl:in-package e2e_planning_msgs-msg)


;//! \htmlinclude DLPTrajectoryPoint.msg.html

(cl:defclass <DLPTrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point3d))
   (velocity
    :reader velocity
    :initarg :velocity
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (jerk
    :reader jerk
    :initarg :jerk
    :type perception_interface_msgs-msg:Vector3d
    :initform (cl:make-instance 'perception_interface_msgs-msg:Vector3d))
   (heading_angle
    :reader heading_angle
    :initarg :heading_angle
    :type cl:float
    :initform 0.0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0)
   (timestamp_us
    :reader timestamp_us
    :initarg :timestamp_us
    :type cl:integer
    :initform 0)
   (valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DLPTrajectoryPoint (<DLPTrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DLPTrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DLPTrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_planning_msgs-msg:<DLPTrajectoryPoint> is deprecated: use e2e_planning_msgs-msg:DLPTrajectoryPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <DLPTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:position-val is deprecated.  Use e2e_planning_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <DLPTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:velocity-val is deprecated.  Use e2e_planning_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <DLPTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:acceleration-val is deprecated.  Use e2e_planning_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'jerk-val :lambda-list '(m))
(cl:defmethod jerk-val ((m <DLPTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:jerk-val is deprecated.  Use e2e_planning_msgs-msg:jerk instead.")
  (jerk m))

(cl:ensure-generic-function 'heading_angle-val :lambda-list '(m))
(cl:defmethod heading_angle-val ((m <DLPTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:heading_angle-val is deprecated.  Use e2e_planning_msgs-msg:heading_angle instead.")
  (heading_angle m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <DLPTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:score-val is deprecated.  Use e2e_planning_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'timestamp_us-val :lambda-list '(m))
(cl:defmethod timestamp_us-val ((m <DLPTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:timestamp_us-val is deprecated.  Use e2e_planning_msgs-msg:timestamp_us instead.")
  (timestamp_us m))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <DLPTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_planning_msgs-msg:valid-val is deprecated.  Use e2e_planning_msgs-msg:valid instead.")
  (valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DLPTrajectoryPoint>) ostream)
  "Serializes a message object of type '<DLPTrajectoryPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jerk) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DLPTrajectoryPoint>) istream)
  "Deserializes a message object of type '<DLPTrajectoryPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jerk) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'timestamp_us)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DLPTrajectoryPoint>)))
  "Returns string type for a message object of type '<DLPTrajectoryPoint>"
  "e2e_planning_msgs/DLPTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DLPTrajectoryPoint)))
  "Returns string type for a message object of type 'DLPTrajectoryPoint"
  "e2e_planning_msgs/DLPTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DLPTrajectoryPoint>)))
  "Returns md5sum for a message object of type '<DLPTrajectoryPoint>"
  "521241416e0c4ef02461fd962ac448e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DLPTrajectoryPoint)))
  "Returns md5sum for a message object of type 'DLPTrajectoryPoint"
  "521241416e0c4ef02461fd962ac448e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DLPTrajectoryPoint>)))
  "Returns full string definition for message of type '<DLPTrajectoryPoint>"
  (cl:format cl:nil "perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DLPTrajectoryPoint)))
  "Returns full string definition for message of type 'DLPTrajectoryPoint"
  (cl:format cl:nil "perception_interface_msgs/Point3d position~%perception_interface_msgs/Vector3d velocity~%perception_interface_msgs/Vector3d acceleration~%perception_interface_msgs/Vector3d jerk~%float64 heading_angle~%float64 score~%uint64 timestamp_us~%bool valid~%~%================================================================================~%MSG: perception_interface_msgs/Point3d~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_interface_msgs/Vector3d~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DLPTrajectoryPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jerk))
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DLPTrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'DLPTrajectoryPoint
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':jerk (jerk msg))
    (cl:cons ':heading_angle (heading_angle msg))
    (cl:cons ':score (score msg))
    (cl:cons ':timestamp_us (timestamp_us msg))
    (cl:cons ':valid (valid msg))
))
