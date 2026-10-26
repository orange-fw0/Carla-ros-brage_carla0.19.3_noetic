; Auto-generated. Do not edit!


(cl:in-package worldmodel_msgs-msg)


;//! \htmlinclude RampManeuver.msg.html

(cl:defclass <RampManeuver> (roslisp-msg-protocol:ros-message)
  ((dis_to_ramp
    :reader dis_to_ramp
    :initarg :dis_to_ramp
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0))
)

(cl:defclass RampManeuver (<RampManeuver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RampManeuver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RampManeuver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name worldmodel_msgs-msg:<RampManeuver> is deprecated: use worldmodel_msgs-msg:RampManeuver instead.")))

(cl:ensure-generic-function 'dis_to_ramp-val :lambda-list '(m))
(cl:defmethod dis_to_ramp-val ((m <RampManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:dis_to_ramp-val is deprecated.  Use worldmodel_msgs-msg:dis_to_ramp instead.")
  (dis_to_ramp m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <RampManeuver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader worldmodel_msgs-msg:length-val is deprecated.  Use worldmodel_msgs-msg:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RampManeuver>) ostream)
  "Serializes a message object of type '<RampManeuver>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis_to_ramp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RampManeuver>) istream)
  "Deserializes a message object of type '<RampManeuver>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis_to_ramp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RampManeuver>)))
  "Returns string type for a message object of type '<RampManeuver>"
  "worldmodel_msgs/RampManeuver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RampManeuver)))
  "Returns string type for a message object of type 'RampManeuver"
  "worldmodel_msgs/RampManeuver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RampManeuver>)))
  "Returns md5sum for a message object of type '<RampManeuver>"
  "7913c40c76e8a83a94a1b0721d5aae93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RampManeuver)))
  "Returns md5sum for a message object of type 'RampManeuver"
  "7913c40c76e8a83a94a1b0721d5aae93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RampManeuver>)))
  "Returns full string definition for message of type '<RampManeuver>"
  (cl:format cl:nil "float32 dis_to_ramp~%float32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RampManeuver)))
  "Returns full string definition for message of type 'RampManeuver"
  (cl:format cl:nil "float32 dis_to_ramp~%float32 length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RampManeuver>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RampManeuver>))
  "Converts a ROS message object to a list"
  (cl:list 'RampManeuver
    (cl:cons ':dis_to_ramp (dis_to_ramp msg))
    (cl:cons ':length (length msg))
))
