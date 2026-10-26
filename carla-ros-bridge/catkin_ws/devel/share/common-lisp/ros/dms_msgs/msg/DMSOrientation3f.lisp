; Auto-generated. Do not edit!


(cl:in-package dms_msgs-msg)


;//! \htmlinclude DMSOrientation3f.msg.html

(cl:defclass <DMSOrientation3f> (roslisp-msg-protocol:ros-message)
  ((pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0))
)

(cl:defclass DMSOrientation3f (<DMSOrientation3f>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DMSOrientation3f>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DMSOrientation3f)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dms_msgs-msg:<DMSOrientation3f> is deprecated: use dms_msgs-msg:DMSOrientation3f instead.")))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <DMSOrientation3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:pitch-val is deprecated.  Use dms_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <DMSOrientation3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:yaw-val is deprecated.  Use dms_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <DMSOrientation3f>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dms_msgs-msg:roll-val is deprecated.  Use dms_msgs-msg:roll instead.")
  (roll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DMSOrientation3f>) ostream)
  "Serializes a message object of type '<DMSOrientation3f>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DMSOrientation3f>) istream)
  "Deserializes a message object of type '<DMSOrientation3f>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DMSOrientation3f>)))
  "Returns string type for a message object of type '<DMSOrientation3f>"
  "dms_msgs/DMSOrientation3f")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DMSOrientation3f)))
  "Returns string type for a message object of type 'DMSOrientation3f"
  "dms_msgs/DMSOrientation3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DMSOrientation3f>)))
  "Returns md5sum for a message object of type '<DMSOrientation3f>"
  "7df065b9d568b6506284f9708f81ac8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DMSOrientation3f)))
  "Returns md5sum for a message object of type 'DMSOrientation3f"
  "7df065b9d568b6506284f9708f81ac8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DMSOrientation3f>)))
  "Returns full string definition for message of type '<DMSOrientation3f>"
  (cl:format cl:nil "float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DMSOrientation3f)))
  "Returns full string definition for message of type 'DMSOrientation3f"
  (cl:format cl:nil "float32 pitch~%float32 yaw~%float32 roll~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DMSOrientation3f>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DMSOrientation3f>))
  "Converts a ROS message object to a list"
  (cl:list 'DMSOrientation3f
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':roll (roll msg))
))
