; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude PredictionTrajectoryPoint.msg.html

(cl:defclass <PredictionTrajectoryPoint> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type perception_interface_msgs-msg:Point2f
    :initform (cl:make-instance 'perception_interface_msgs-msg:Point2f))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (covariance_xy
    :reader covariance_xy
    :initarg :covariance_xy
    :type worldmodel_msgs-msg:Matrix2f
    :initform (cl:make-instance 'worldmodel_msgs-msg:Matrix2f)))
)

(cl:defclass PredictionTrajectoryPoint (<PredictionTrajectoryPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PredictionTrajectoryPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PredictionTrajectoryPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<PredictionTrajectoryPoint> is deprecated: use worldmodel_msgs-msg:PredictionTrajectoryPoint instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:position-val is deprecated.  Use worldmodel_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:yaw-val is deprecated.  Use worldmodel_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:theta-val is deprecated.  Use worldmodel_msgs-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:velocity-val is deprecated.  Use worldmodel_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:confidence-val is deprecated.  Use worldmodel_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'covariance_xy-val :lambda-list '(m))
(cl:defmethod covariance_xy-val ((m <PredictionTrajectoryPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:covariance_xy-val is deprecated.  Use worldmodel_msgs-msg:covariance_xy instead.")
  (covariance_xy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PredictionTrajectoryPoint>) ostream)
  "Serializes a message object of type '<PredictionTrajectoryPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'covariance_xy) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PredictionTrajectoryPoint>) istream)
  "Deserializes a message object of type '<PredictionTrajectoryPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'covariance_xy) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns string type for a message object of type '<PredictionTrajectoryPoint>"
  "worldmodel_msgs/PredictionTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PredictionTrajectoryPoint)))
  "Returns string type for a message object of type 'PredictionTrajectoryPoint"
  "worldmodel_msgs/PredictionTrajectoryPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns md5sum for a message object of type '<PredictionTrajectoryPoint>"
  "6b02495f1700065fded003076080d160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PredictionTrajectoryPoint)))
  "Returns md5sum for a message object of type 'PredictionTrajectoryPoint"
  "6b02495f1700065fded003076080d160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PredictionTrajectoryPoint>)))
  "Returns full string definition for message of type '<PredictionTrajectoryPoint>"
  (cl:format cl:nil "perception_interface_msgs/Point2f position~%float32 yaw~%float32 theta~%float32 velocity~%float32 confidence~%worldmodel_msgs/Matrix2f covariance_xy~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: worldmodel_msgs/Matrix2f~%float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PredictionTrajectoryPoint)))
  "Returns full string definition for message of type 'PredictionTrajectoryPoint"
  (cl:format cl:nil "perception_interface_msgs/Point2f position~%float32 yaw~%float32 theta~%float32 velocity~%float32 confidence~%worldmodel_msgs/Matrix2f covariance_xy~%~%================================================================================~%MSG: perception_interface_msgs/Point2f~%float32 x~%float32 y~%~%================================================================================~%MSG: worldmodel_msgs/Matrix2f~%float32 x00~%float32 x01~%float32 x10~%float32 x11~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PredictionTrajectoryPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'covariance_xy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PredictionTrajectoryPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PredictionTrajectoryPoint
    (cl:cons ':position (position msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':covariance_xy (covariance_xy msg))
))
