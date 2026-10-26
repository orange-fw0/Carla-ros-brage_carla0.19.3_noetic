; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAAngularVelocity.msg.html

(cl:defclass <MLAAngularVelocity> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (angvelocity_local
    :reader angvelocity_local
    :initarg :angvelocity_local
    :type mla_localization_msgs-msg:MLAAngVelLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAngVelLocal)))
)

(cl:defclass MLAAngularVelocity (<MLAAngularVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAAngularVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAAngularVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAAngularVelocity> is deprecated: use mla_localization_msgs-msg:MLAAngularVelocity instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAAngularVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'angvelocity_local-val :lambda-list '(m))
(cl:defmethod angvelocity_local-val ((m <MLAAngularVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:angvelocity_local-val is deprecated.  Use mla_localization_msgs-msg:angvelocity_local instead.")
  (angvelocity_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAAngularVelocity>)))
    "Constants for message type '<MLAAngularVelocity>"
  '((:MLA_ANGVEL_LOCAL . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAAngularVelocity)))
    "Constants for message type 'MLAAngularVelocity"
  '((:MLA_ANGVEL_LOCAL . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAAngularVelocity>) ostream)
  "Serializes a message object of type '<MLAAngularVelocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angvelocity_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAAngularVelocity>) istream)
  "Deserializes a message object of type '<MLAAngularVelocity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angvelocity_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAAngularVelocity>)))
  "Returns string type for a message object of type '<MLAAngularVelocity>"
  "mla_localization_msgs/MLAAngularVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAAngularVelocity)))
  "Returns string type for a message object of type 'MLAAngularVelocity"
  "mla_localization_msgs/MLAAngularVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAAngularVelocity>)))
  "Returns md5sum for a message object of type '<MLAAngularVelocity>"
  "cd220ef097e8f1e2a3db27ebde03a77c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAAngularVelocity)))
  "Returns md5sum for a message object of type 'MLAAngularVelocity"
  "cd220ef097e8f1e2a3db27ebde03a77c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAAngularVelocity>)))
  "Returns full string definition for message of type '<MLAAngularVelocity>"
  (cl:format cl:nil "uint8 MLA_ANGVEL_LOCAL = 1~%uint8 available~%mla_localization_msgs/MLAAngVelLocal angvelocity_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAAngularVelocity)))
  "Returns full string definition for message of type 'MLAAngularVelocity"
  (cl:format cl:nil "uint8 MLA_ANGVEL_LOCAL = 1~%uint8 available~%mla_localization_msgs/MLAAngVelLocal angvelocity_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAAngularVelocity>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angvelocity_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAAngularVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAAngularVelocity
    (cl:cons ':available (available msg))
    (cl:cons ':angvelocity_local (angvelocity_local msg))
))
