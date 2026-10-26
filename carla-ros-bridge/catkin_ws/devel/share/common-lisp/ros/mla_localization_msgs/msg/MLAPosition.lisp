; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAPosition.msg.html

(cl:defclass <MLAPosition> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (position_global
    :reader position_global
    :initarg :position_global
    :type mla_localization_msgs-msg:MLAPosGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosGlobal))
   (position_local
    :reader position_local
    :initarg :position_local
    :type mla_localization_msgs-msg:MLAPosLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosLocal)))
)

(cl:defclass MLAPosition (<MLAPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAPosition> is deprecated: use mla_localization_msgs-msg:MLAPosition instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'position_global-val :lambda-list '(m))
(cl:defmethod position_global-val ((m <MLAPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:position_global-val is deprecated.  Use mla_localization_msgs-msg:position_global instead.")
  (position_global m))

(cl:ensure-generic-function 'position_local-val :lambda-list '(m))
(cl:defmethod position_local-val ((m <MLAPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:position_local-val is deprecated.  Use mla_localization_msgs-msg:position_local instead.")
  (position_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAPosition>)))
    "Constants for message type '<MLAPosition>"
  '((:MLA_POSITION_GLOBAL . 1)
    (:MLA_POSITION_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAPosition)))
    "Constants for message type 'MLAPosition"
  '((:MLA_POSITION_GLOBAL . 1)
    (:MLA_POSITION_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAPosition>) ostream)
  "Serializes a message object of type '<MLAPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAPosition>) istream)
  "Deserializes a message object of type '<MLAPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAPosition>)))
  "Returns string type for a message object of type '<MLAPosition>"
  "mla_localization_msgs/MLAPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAPosition)))
  "Returns string type for a message object of type 'MLAPosition"
  "mla_localization_msgs/MLAPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAPosition>)))
  "Returns md5sum for a message object of type '<MLAPosition>"
  "4bebf65f0df5a26fbc7b68ff2e67facc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAPosition)))
  "Returns md5sum for a message object of type 'MLAPosition"
  "4bebf65f0df5a26fbc7b68ff2e67facc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAPosition>)))
  "Returns full string definition for message of type '<MLAPosition>"
  (cl:format cl:nil "uint8 MLA_POSITION_GLOBAL = 1~%uint8 MLA_POSITION_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAPosGlobal position_global~%mla_localization_msgs/MLAPosLocal position_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAPosition)))
  "Returns full string definition for message of type 'MLAPosition"
  (cl:format cl:nil "uint8 MLA_POSITION_GLOBAL = 1~%uint8 MLA_POSITION_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAPosGlobal position_global~%mla_localization_msgs/MLAPosLocal position_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosGlobal~%float64 latitude~%float64 longitude~%float64 altitude~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosLocal~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAPosition>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAPosition
    (cl:cons ':available (available msg))
    (cl:cons ':position_global (position_global msg))
    (cl:cons ':position_local (position_local msg))
))
