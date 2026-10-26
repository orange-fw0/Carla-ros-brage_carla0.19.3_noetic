; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude SBPVehicleState.msg.html

(cl:defclass <SBPVehicleState> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0)
   (steer_mode
    :reader steer_mode
    :initarg :steer_mode
    :type planning_msgs-msg:SteerModeEnum
    :initform (cl:make-instance 'planning_msgs-msg:SteerModeEnum))
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SBPVehicleState (<SBPVehicleState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SBPVehicleState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SBPVehicleState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<SBPVehicleState> is deprecated: use planning_msgs-msg:SBPVehicleState instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SBPVehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:pose-val is deprecated.  Use planning_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <SBPVehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:steer-val is deprecated.  Use planning_msgs-msg:steer instead.")
  (steer m))

(cl:ensure-generic-function 'steer_mode-val :lambda-list '(m))
(cl:defmethod steer_mode-val ((m <SBPVehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:steer_mode-val is deprecated.  Use planning_msgs-msg:steer_mode instead.")
  (steer_mode m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <SBPVehicleState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:gear-val is deprecated.  Use planning_msgs-msg:gear instead.")
  (gear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SBPVehicleState>) ostream)
  "Serializes a message object of type '<SBPVehicleState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'steer_mode) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SBPVehicleState>) istream)
  "Deserializes a message object of type '<SBPVehicleState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'steer_mode) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SBPVehicleState>)))
  "Returns string type for a message object of type '<SBPVehicleState>"
  "planning_msgs/SBPVehicleState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SBPVehicleState)))
  "Returns string type for a message object of type 'SBPVehicleState"
  "planning_msgs/SBPVehicleState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SBPVehicleState>)))
  "Returns md5sum for a message object of type '<SBPVehicleState>"
  "469762bb97b862ed87ff4c90a0363d5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SBPVehicleState)))
  "Returns md5sum for a message object of type 'SBPVehicleState"
  "469762bb97b862ed87ff4c90a0363d5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SBPVehicleState>)))
  "Returns full string definition for message of type '<SBPVehicleState>"
  (cl:format cl:nil "geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SBPVehicleState)))
  "Returns full string definition for message of type 'SBPVehicleState"
  (cl:format cl:nil "geometry_msgs/Pose2D pose~%float32 steer~%planning_msgs/SteerModeEnum steer_mode~%int8 gear~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%================================================================================~%MSG: planning_msgs/SteerModeEnum~%uint8 NORMAL = 0~%uint8 TWIST = 1~%uint8 TRANSLATION = 2~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SBPVehicleState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'steer_mode))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SBPVehicleState>))
  "Converts a ROS message object to a list"
  (cl:list 'SBPVehicleState
    (cl:cons ':pose (pose msg))
    (cl:cons ':steer (steer msg))
    (cl:cons ':steer_mode (steer_mode msg))
    (cl:cons ':gear (gear msg))
))
