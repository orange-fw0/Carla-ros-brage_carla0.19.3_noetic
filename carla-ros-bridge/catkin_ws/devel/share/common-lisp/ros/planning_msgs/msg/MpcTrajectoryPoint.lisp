; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude MpcTrajectoryPoint.msg.html

(cl:defclass <MpcTrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((position_enu
    :reader position_enu
    :initarg :position_enu
    :type planning_msgs-msg:Point2d
    :initform (cl:make-instance 'planning_msgs-msg:Point2d))
   (heading_yaw
    :reader heading_yaw
    :initarg :heading_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass MpcTrajectoryPoint (<MpcTrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MpcTrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MpcTrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<MpcTrajectoryPoint> is deprecated: use planning_msgs-msg:MpcTrajectoryPoint instead.")))

(cl:ensure-generic-function 'position_enu-val :lambda-list '(m))
(cl:defmethod position_enu-val ((m <MpcTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:position_enu-val is deprecated.  Use planning_msgs-msg:position_enu instead.")
  (position_enu m))

(cl:ensure-generic-function 'heading_yaw-val :lambda-list '(m))
(cl:defmethod heading_yaw-val ((m <MpcTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:heading_yaw-val is deprecated.  Use planning_msgs-msg:heading_yaw instead.")
  (heading_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MpcTrajectoryPoint>) ostream)
  "Serializes a message object of type '<MpcTrajectoryPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_enu) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MpcTrajectoryPoint>) istream)
  "Deserializes a message object of type '<MpcTrajectoryPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_enu) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_yaw) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MpcTrajectoryPoint>)))
  "Returns string type for a message object of type '<MpcTrajectoryPoint>"
  "planning_msgs/MpcTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MpcTrajectoryPoint)))
  "Returns string type for a message object of type 'MpcTrajectoryPoint"
  "planning_msgs/MpcTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MpcTrajectoryPoint>)))
  "Returns md5sum for a message object of type '<MpcTrajectoryPoint>"
  "3dfd753fd6abdafb1475efd8ba5e0668")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MpcTrajectoryPoint)))
  "Returns md5sum for a message object of type 'MpcTrajectoryPoint"
  "3dfd753fd6abdafb1475efd8ba5e0668")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MpcTrajectoryPoint>)))
  "Returns full string definition for message of type '<MpcTrajectoryPoint>"
  (cl:format cl:nil "planning_msgs/Point2d position_enu~%float64 heading_yaw~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MpcTrajectoryPoint)))
  "Returns full string definition for message of type 'MpcTrajectoryPoint"
  (cl:format cl:nil "planning_msgs/Point2d position_enu~%float64 heading_yaw~%~%================================================================================~%MSG: planning_msgs/Point2d~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MpcTrajectoryPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_enu))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MpcTrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MpcTrajectoryPoint
    (cl:cons ':position_enu (position_enu msg))
    (cl:cons ':heading_yaw (heading_yaw msg))
))
