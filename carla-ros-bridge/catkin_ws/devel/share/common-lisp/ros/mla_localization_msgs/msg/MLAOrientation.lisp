; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAOrientation.msg.html

(cl:defclass <MLAOrientation> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (euler_global
    :reader euler_global
    :initarg :euler_global
    :type mla_localization_msgs-msg:MLAEuler
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAEuler))
   (quaternion_global
    :reader quaternion_global
    :initarg :quaternion_global
    :type mla_localization_msgs-msg:MLAQuaternion
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAQuaternion))
   (euler_local
    :reader euler_local
    :initarg :euler_local
    :type mla_localization_msgs-msg:MLAEuler
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAEuler))
   (quaternion_local
    :reader quaternion_local
    :initarg :quaternion_local
    :type mla_localization_msgs-msg:MLAQuaternion
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAQuaternion)))
)

(cl:defclass MLAOrientation (<MLAOrientation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAOrientation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAOrientation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAOrientation> is deprecated: use mla_localization_msgs-msg:MLAOrientation instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'euler_global-val :lambda-list '(m))
(cl:defmethod euler_global-val ((m <MLAOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:euler_global-val is deprecated.  Use mla_localization_msgs-msg:euler_global instead.")
  (euler_global m))

(cl:ensure-generic-function 'quaternion_global-val :lambda-list '(m))
(cl:defmethod quaternion_global-val ((m <MLAOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:quaternion_global-val is deprecated.  Use mla_localization_msgs-msg:quaternion_global instead.")
  (quaternion_global m))

(cl:ensure-generic-function 'euler_local-val :lambda-list '(m))
(cl:defmethod euler_local-val ((m <MLAOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:euler_local-val is deprecated.  Use mla_localization_msgs-msg:euler_local instead.")
  (euler_local m))

(cl:ensure-generic-function 'quaternion_local-val :lambda-list '(m))
(cl:defmethod quaternion_local-val ((m <MLAOrientation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:quaternion_local-val is deprecated.  Use mla_localization_msgs-msg:quaternion_local instead.")
  (quaternion_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAOrientation>)))
    "Constants for message type '<MLAOrientation>"
  '((:MLA_EULER_GLOBAL . 1)
    (:MLA_QUATERNION_GLOBAL . 2)
    (:MLA_EULER_LOCAL . 4)
    (:MLA_QUATERNION_LOCAL . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAOrientation)))
    "Constants for message type 'MLAOrientation"
  '((:MLA_EULER_GLOBAL . 1)
    (:MLA_QUATERNION_GLOBAL . 2)
    (:MLA_EULER_LOCAL . 4)
    (:MLA_QUATERNION_LOCAL . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAOrientation>) ostream)
  "Serializes a message object of type '<MLAOrientation>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'euler_local) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'quaternion_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAOrientation>) istream)
  "Deserializes a message object of type '<MLAOrientation>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'euler_local) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'quaternion_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAOrientation>)))
  "Returns string type for a message object of type '<MLAOrientation>"
  "mla_localization_msgs/MLAOrientation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAOrientation)))
  "Returns string type for a message object of type 'MLAOrientation"
  "mla_localization_msgs/MLAOrientation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAOrientation>)))
  "Returns md5sum for a message object of type '<MLAOrientation>"
  "6fe02083913cca925534086c2d7aaf14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAOrientation)))
  "Returns md5sum for a message object of type 'MLAOrientation"
  "6fe02083913cca925534086c2d7aaf14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAOrientation>)))
  "Returns full string definition for message of type '<MLAOrientation>"
  (cl:format cl:nil "uint8 MLA_EULER_GLOBAL = 1~%uint8 MLA_QUATERNION_GLOBAL = 2~%uint8 MLA_EULER_LOCAL = 4~%uint8 MLA_QUATERNION_LOCAL = 8~%uint8 available~%mla_localization_msgs/MLAEuler euler_global~%mla_localization_msgs/MLAQuaternion quaternion_global~%mla_localization_msgs/MLAEuler euler_local~%mla_localization_msgs/MLAQuaternion quaternion_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAEuler~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: mla_localization_msgs/MLAQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAOrientation)))
  "Returns full string definition for message of type 'MLAOrientation"
  (cl:format cl:nil "uint8 MLA_EULER_GLOBAL = 1~%uint8 MLA_QUATERNION_GLOBAL = 2~%uint8 MLA_EULER_LOCAL = 4~%uint8 MLA_QUATERNION_LOCAL = 8~%uint8 available~%mla_localization_msgs/MLAEuler euler_global~%mla_localization_msgs/MLAQuaternion quaternion_global~%mla_localization_msgs/MLAEuler euler_local~%mla_localization_msgs/MLAQuaternion quaternion_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAEuler~%float64 roll~%float64 pitch~%float64 yaw~%~%================================================================================~%MSG: mla_localization_msgs/MLAQuaternion~%float64 w~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAOrientation>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'euler_local))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'quaternion_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAOrientation>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAOrientation
    (cl:cons ':available (available msg))
    (cl:cons ':euler_global (euler_global msg))
    (cl:cons ':quaternion_global (quaternion_global msg))
    (cl:cons ':euler_local (euler_local msg))
    (cl:cons ':quaternion_local (quaternion_local msg))
))
