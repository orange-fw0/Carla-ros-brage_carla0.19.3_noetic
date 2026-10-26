; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAAngularVelocityStd.msg.html

(cl:defclass <MLAAngularVelocityStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (angvel_std_local
    :reader angvel_std_local
    :initarg :angvel_std_local
    :type mla_localization_msgs-msg:MLAAngVelStdLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAngVelStdLocal)))
)

(cl:defclass MLAAngularVelocityStd (<MLAAngularVelocityStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAAngularVelocityStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAAngularVelocityStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAAngularVelocityStd> is deprecated: use mla_localization_msgs-msg:MLAAngularVelocityStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAAngularVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'angvel_std_local-val :lambda-list '(m))
(cl:defmethod angvel_std_local-val ((m <MLAAngularVelocityStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:angvel_std_local-val is deprecated.  Use mla_localization_msgs-msg:angvel_std_local instead.")
  (angvel_std_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAAngularVelocityStd>)))
    "Constants for message type '<MLAAngularVelocityStd>"
  '((:MLA_ANGVEL_STD_LOCAL . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAAngularVelocityStd)))
    "Constants for message type 'MLAAngularVelocityStd"
  '((:MLA_ANGVEL_STD_LOCAL . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAAngularVelocityStd>) ostream)
  "Serializes a message object of type '<MLAAngularVelocityStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angvel_std_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAAngularVelocityStd>) istream)
  "Deserializes a message object of type '<MLAAngularVelocityStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angvel_std_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAAngularVelocityStd>)))
  "Returns string type for a message object of type '<MLAAngularVelocityStd>"
  "mla_localization_msgs/MLAAngularVelocityStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAAngularVelocityStd)))
  "Returns string type for a message object of type 'MLAAngularVelocityStd"
  "mla_localization_msgs/MLAAngularVelocityStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAAngularVelocityStd>)))
  "Returns md5sum for a message object of type '<MLAAngularVelocityStd>"
  "2e98641680d5dd0a3f87bb96c75d7f15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAAngularVelocityStd)))
  "Returns md5sum for a message object of type 'MLAAngularVelocityStd"
  "2e98641680d5dd0a3f87bb96c75d7f15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAAngularVelocityStd>)))
  "Returns full string definition for message of type '<MLAAngularVelocityStd>"
  (cl:format cl:nil "uint8 MLA_ANGVEL_STD_LOCAL = 1~%uint8 available~%mla_localization_msgs/MLAAngVelStdLocal angvel_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAAngularVelocityStd)))
  "Returns full string definition for message of type 'MLAAngularVelocityStd"
  (cl:format cl:nil "uint8 MLA_ANGVEL_STD_LOCAL = 1~%uint8 available~%mla_localization_msgs/MLAAngVelStdLocal angvel_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAngVelStdLocal~%float64 std_vx~%float64 std_vy~%float64 std_vz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAAngularVelocityStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angvel_std_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAAngularVelocityStd>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAAngularVelocityStd
    (cl:cons ':available (available msg))
    (cl:cons ':angvel_std_local (angvel_std_local msg))
))
