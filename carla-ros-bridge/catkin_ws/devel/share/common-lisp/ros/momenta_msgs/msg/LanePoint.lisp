; Auto-generated. Do not edit!


(cl:in-package momenta_msgs-msg)


;//! \htmlinclude LanePoint.msg.html

(cl:defclass <LanePoint> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (vel_limit
    :reader vel_limit
    :initarg :vel_limit
    :type cl:float
    :initform 0.0)
   (width_left
    :reader width_left
    :initarg :width_left
    :type cl:float
    :initform 0.0)
   (is_left_cross
    :reader is_left_cross
    :initarg :is_left_cross
    :type cl:boolean
    :initform cl:nil)
   (width_right
    :reader width_right
    :initarg :width_right
    :type cl:float
    :initform 0.0)
   (is_right_cross
    :reader is_right_cross
    :initarg :is_right_cross
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LanePoint (<LanePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name momenta_msgs-msg:<LanePoint> is deprecated: use momenta_msgs-msg:LanePoint instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:pose-val is deprecated.  Use momenta_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'vel_limit-val :lambda-list '(m))
(cl:defmethod vel_limit-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:vel_limit-val is deprecated.  Use momenta_msgs-msg:vel_limit instead.")
  (vel_limit m))

(cl:ensure-generic-function 'width_left-val :lambda-list '(m))
(cl:defmethod width_left-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:width_left-val is deprecated.  Use momenta_msgs-msg:width_left instead.")
  (width_left m))

(cl:ensure-generic-function 'is_left_cross-val :lambda-list '(m))
(cl:defmethod is_left_cross-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_left_cross-val is deprecated.  Use momenta_msgs-msg:is_left_cross instead.")
  (is_left_cross m))

(cl:ensure-generic-function 'width_right-val :lambda-list '(m))
(cl:defmethod width_right-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:width_right-val is deprecated.  Use momenta_msgs-msg:width_right instead.")
  (width_right m))

(cl:ensure-generic-function 'is_right_cross-val :lambda-list '(m))
(cl:defmethod is_right_cross-val ((m <LanePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader momenta_msgs-msg:is_right_cross-val is deprecated.  Use momenta_msgs-msg:is_right_cross instead.")
  (is_right_cross m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePoint>) ostream)
  "Serializes a message object of type '<LanePoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vel_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_left_cross) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_right_cross) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePoint>) istream)
  "Deserializes a message object of type '<LanePoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vel_limit) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width_left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_left_cross) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width_right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_right_cross) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePoint>)))
  "Returns string type for a message object of type '<LanePoint>"
  "momenta_msgs/LanePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePoint)))
  "Returns string type for a message object of type 'LanePoint"
  "momenta_msgs/LanePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePoint>)))
  "Returns md5sum for a message object of type '<LanePoint>"
  "2daab4136f40fcf33a0568ccb1b336b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePoint)))
  "Returns md5sum for a message object of type 'LanePoint"
  "2daab4136f40fcf33a0568ccb1b336b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePoint>)))
  "Returns full string definition for message of type '<LanePoint>"
  (cl:format cl:nil "geometry_msgs/Pose2D pose~%float32 vel_limit~%float32 width_left~%bool is_left_cross~%float32 width_right~%bool is_right_cross~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePoint)))
  "Returns full string definition for message of type 'LanePoint"
  (cl:format cl:nil "geometry_msgs/Pose2D pose~%float32 vel_limit~%float32 width_left~%bool is_left_cross~%float32 width_right~%bool is_right_cross~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     4
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePoint
    (cl:cons ':pose (pose msg))
    (cl:cons ':vel_limit (vel_limit msg))
    (cl:cons ':width_left (width_left msg))
    (cl:cons ':is_left_cross (is_left_cross msg))
    (cl:cons ':width_right (width_right msg))
    (cl:cons ':is_right_cross (is_right_cross msg))
))
