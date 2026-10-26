; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude Pose2d.msg.html

(cl:defclass <Pose2d> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type planning_msgs-msg:Point2d
    :initform (cl:make-instance 'planning_msgs-msg:Point2d))
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0))
)

(cl:defclass Pose2d (<Pose2d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pose2d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pose2d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<Pose2d> is deprecated: use planning_msgs-msg:Pose2d instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Pose2d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:position-val is deprecated.  Use planning_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <Pose2d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:theta-val is deprecated.  Use planning_msgs-msg:theta instead.")
  (theta m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pose2d>) ostream)
  "Serializes a message object of type '<Pose2d>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pose2d>) istream)
  "Deserializes a message object of type '<Pose2d>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pose2d>)))
  "Returns string type for a message object of type '<Pose2d>"
  "planning_msgs/Pose2d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pose2d)))
  "Returns string type for a message object of type 'Pose2d"
  "planning_msgs/Pose2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pose2d>)))
  "Returns md5sum for a message object of type '<Pose2d>"
  "d8af0ef1db02b310d0bd6166725bf7b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pose2d)))
  "Returns md5sum for a message object of type 'Pose2d"
  "d8af0ef1db02b310d0bd6166725bf7b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pose2d>)))
  "Returns full string definition for message of type '<Pose2d>"
  (cl:format cl:nil "planning_msgs/Point2d position~%float64 theta~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pose2d)))
  "Returns full string definition for message of type 'Pose2d"
  (cl:format cl:nil "planning_msgs/Point2d position~%float64 theta~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pose2d>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pose2d>))
  "Converts a ROS message object to a list"
  (cl:list 'Pose2d
    (cl:cons ':position (position msg))
    (cl:cons ':theta (theta msg))
))
