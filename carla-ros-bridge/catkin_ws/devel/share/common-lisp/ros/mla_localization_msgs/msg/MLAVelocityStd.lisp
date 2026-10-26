; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAVelocityStd.msg.html

(cl:defclass <MLAVelocityStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (vel_std_global
    :reader vel_std_global
    :initarg :vel_std_global
    :type mla_localization_msgs-msg:MLAVelStdGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAVelStdGlobal))
   (vel_std_local
    :reader vel_std_local
    :initarg :vel_std_local
    :type mla_localization_msgs-msg:MLAVelStdLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAVelStdLocal)))
)

(cl:defclass MLAVelocityStd (<MLAVelocityStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAVelocityStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAVelocityStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAVelocityStd> is deprecated: use mla_localization_msgs-msg:MLAVelocityStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'vel_std_global-val :lambda-list '(m))
(cl:defmethod vel_std_global-val ((m <MLAVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:vel_std_global-val is deprecated.  Use mla_localization_msgs-msg:vel_std_global instead.")
  (vel_std_global m))

(cl:ensure-generic-function 'vel_std_local-val :lambda-list '(m))
(cl:defmethod vel_std_local-val ((m <MLAVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:vel_std_local-val is deprecated.  Use mla_localization_msgs-msg:vel_std_local instead.")
  (vel_std_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAVelocityStd>)))
    "Constants for message type '<MLAVelocityStd>"
  '((:MLA_VEL_STD_GLOBAL . 1)
    (:MLA_VEL_STD_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAVelocityStd)))
    "Constants for message type 'MLAVelocityStd"
  '((:MLA_VEL_STD_GLOBAL . 1)
    (:MLA_VEL_STD_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAVelocityStd>) ostream)
  "Serializes a message object of type '<MLAVelocityStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_std_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_std_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAVelocityStd>) istream)
  "Deserializes a message object of type '<MLAVelocityStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_std_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_std_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAVelocityStd>)))
  "Returns string type for a message object of type '<MLAVelocityStd>"
  "mla_localization_msgs/MLAVelocityStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAVelocityStd)))
  "Returns string type for a message object of type 'MLAVelocityStd"
  "mla_localization_msgs/MLAVelocityStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAVelocityStd>)))
  "Returns md5sum for a message object of type '<MLAVelocityStd>"
  "bde3e776ceff15a8071fc481666b3e5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAVelocityStd)))
  "Returns md5sum for a message object of type 'MLAVelocityStd"
  "bde3e776ceff15a8071fc481666b3e5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAVelocityStd>)))
  "Returns full string definition for message of type '<MLAVelocityStd>"
  (cl:format cl:nil "uint8 MLA_VEL_STD_GLOBAL = 1~%uint8 MLA_VEL_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAVelStdGlobal vel_std_global~%mla_localization_msgs/MLAVelStdLocal vel_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelStdGlobal~%float64 std_ve~%float64 std_vn~%float64 std_vu~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAVelocityStd)))
  "Returns full string definition for message of type 'MLAVelocityStd"
  (cl:format cl:nil "uint8 MLA_VEL_STD_GLOBAL = 1~%uint8 MLA_VEL_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAVelStdGlobal vel_std_global~%mla_localization_msgs/MLAVelStdLocal vel_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelStdGlobal~%float64 std_ve~%float64 std_vn~%float64 std_vu~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAVelocityStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_std_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_std_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAVelocityStd>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAVelocityStd
    (cl:cons ':available (available msg))
    (cl:cons ':vel_std_global (vel_std_global msg))
    (cl:cons ':vel_std_local (vel_std_local msg))
))
