; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAVelocity.msg.html

(cl:defclass <MLAVelocity> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (velocity_global
    :reader velocity_global
    :initarg :velocity_global
    :type mla_localization_msgs-msg:MLAVelGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAVelGlobal))
   (velocity_local
    :reader velocity_local
    :initarg :velocity_local
    :type mla_localization_msgs-msg:MLAVelLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAVelLocal)))
)

(cl:defclass MLAVelocity (<MLAVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAVelocity> is deprecated: use mla_localization_msgs-msg:MLAVelocity instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'velocity_global-val :lambda-list '(m))
(cl:defmethod velocity_global-val ((m <MLAVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:velocity_global-val is deprecated.  Use mla_localization_msgs-msg:velocity_global instead.")
  (velocity_global m))

(cl:ensure-generic-function 'velocity_local-val :lambda-list '(m))
(cl:defmethod velocity_local-val ((m <MLAVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:velocity_local-val is deprecated.  Use mla_localization_msgs-msg:velocity_local instead.")
  (velocity_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAVelocity>)))
    "Constants for message type '<MLAVelocity>"
  '((:MLA_VEL_GLOBAL . 1)
    (:MLA_VEL_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAVelocity)))
    "Constants for message type 'MLAVelocity"
  '((:MLA_VEL_GLOBAL . 1)
    (:MLA_VEL_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAVelocity>) ostream)
  "Serializes a message object of type '<MLAVelocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAVelocity>) istream)
  "Deserializes a message object of type '<MLAVelocity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAVelocity>)))
  "Returns string type for a message object of type '<MLAVelocity>"
  "mla_localization_msgs/MLAVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAVelocity)))
  "Returns string type for a message object of type 'MLAVelocity"
  "mla_localization_msgs/MLAVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAVelocity>)))
  "Returns md5sum for a message object of type '<MLAVelocity>"
  "df544e5bf1682c8f12619e829ce8b5c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAVelocity)))
  "Returns md5sum for a message object of type 'MLAVelocity"
  "df544e5bf1682c8f12619e829ce8b5c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAVelocity>)))
  "Returns full string definition for message of type '<MLAVelocity>"
  (cl:format cl:nil "uint8 MLA_VEL_GLOBAL = 1~%uint8 MLA_VEL_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAVelGlobal velocity_global~%mla_localization_msgs/MLAVelLocal velocity_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelGlobal~%float64 ve~%float64 vn~%float64 vu~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAVelocity)))
  "Returns full string definition for message of type 'MLAVelocity"
  (cl:format cl:nil "uint8 MLA_VEL_GLOBAL = 1~%uint8 MLA_VEL_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAVelGlobal velocity_global~%mla_localization_msgs/MLAVelLocal velocity_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelGlobal~%float64 ve~%float64 vn~%float64 vu~%~%================================================================================~%MSG: mla_localization_msgs/MLAVelLocal~%float64 vx~%float64 vy~%float64 vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAVelocity>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAVelocity
    (cl:cons ':available (available msg))
    (cl:cons ':velocity_global (velocity_global msg))
    (cl:cons ':velocity_local (velocity_local msg))
))
