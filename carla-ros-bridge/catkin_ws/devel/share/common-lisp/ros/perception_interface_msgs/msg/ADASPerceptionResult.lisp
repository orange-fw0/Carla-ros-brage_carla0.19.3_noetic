; Auto-generated. Do not edit!


(cl:in-package perception_interface_msgs-msg)


;//! \htmlinclude ADASPerceptionResult.msg.html

(cl:defclass <ADASPerceptionResult> (roslisp-msg-protocol:ros-message)
  ((ihc_highbeam_on
    :reader ihc_highbeam_on
    :initarg :ihc_highbeam_on
    :type cl:fixnum
    :initform 0)
   (ihc_highbeam_score
    :reader ihc_highbeam_score
    :initarg :ihc_highbeam_score
    :type cl:float
    :initform 0.0))
)

(cl:defclass ADASPerceptionResult (<ADASPerceptionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADASPerceptionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADASPerceptionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_interface_msgs-msg:<ADASPerceptionResult> is deprecated: use perception_interface_msgs-msg:ADASPerceptionResult instead.")))

(cl:ensure-generic-function 'ihc_highbeam_on-val :lambda-list '(m))
(cl:defmethod ihc_highbeam_on-val ((m <ADASPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ihc_highbeam_on-val is deprecated.  Use perception_interface_msgs-msg:ihc_highbeam_on instead.")
  (ihc_highbeam_on m))

(cl:ensure-generic-function 'ihc_highbeam_score-val :lambda-list '(m))
(cl:defmethod ihc_highbeam_score-val ((m <ADASPerceptionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_interface_msgs-msg:ihc_highbeam_score-val is deprecated.  Use perception_interface_msgs-msg:ihc_highbeam_score instead.")
  (ihc_highbeam_score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADASPerceptionResult>) ostream)
  "Serializes a message object of type '<ADASPerceptionResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ihc_highbeam_on)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ihc_highbeam_score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADASPerceptionResult>) istream)
  "Deserializes a message object of type '<ADASPerceptionResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ihc_highbeam_on)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ihc_highbeam_score) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADASPerceptionResult>)))
  "Returns string type for a message object of type '<ADASPerceptionResult>"
  "perception_interface_msgs/ADASPerceptionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADASPerceptionResult)))
  "Returns string type for a message object of type 'ADASPerceptionResult"
  "perception_interface_msgs/ADASPerceptionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADASPerceptionResult>)))
  "Returns md5sum for a message object of type '<ADASPerceptionResult>"
  "4ea7c411056d18089ffdfaee098216c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADASPerceptionResult)))
  "Returns md5sum for a message object of type 'ADASPerceptionResult"
  "4ea7c411056d18089ffdfaee098216c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADASPerceptionResult>)))
  "Returns full string definition for message of type '<ADASPerceptionResult>"
  (cl:format cl:nil "uint8 ihc_highbeam_on~%float64 ihc_highbeam_score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADASPerceptionResult)))
  "Returns full string definition for message of type 'ADASPerceptionResult"
  (cl:format cl:nil "uint8 ihc_highbeam_on~%float64 ihc_highbeam_score~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADASPerceptionResult>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADASPerceptionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ADASPerceptionResult
    (cl:cons ':ihc_highbeam_on (ihc_highbeam_on msg))
    (cl:cons ':ihc_highbeam_score (ihc_highbeam_score msg))
))
