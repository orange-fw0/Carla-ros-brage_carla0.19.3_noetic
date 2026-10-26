; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAAcceleration.msg.html

(cl:defclass <MLAAcceleration> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (acceleration_global
    :reader acceleration_global
    :initarg :acceleration_global
    :type mla_localization_msgs-msg:MLAAccGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAccGlobal))
   (acceleration_local
    :reader acceleration_local
    :initarg :acceleration_local
    :type mla_localization_msgs-msg:MLAAccLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAccLocal)))
)

(cl:defclass MLAAcceleration (<MLAAcceleration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAAcceleration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAAcceleration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAAcceleration> is deprecated: use mla_localization_msgs-msg:MLAAcceleration instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'acceleration_global-val :lambda-list '(m))
(cl:defmethod acceleration_global-val ((m <MLAAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:acceleration_global-val is deprecated.  Use mla_localization_msgs-msg:acceleration_global instead.")
  (acceleration_global m))

(cl:ensure-generic-function 'acceleration_local-val :lambda-list '(m))
(cl:defmethod acceleration_local-val ((m <MLAAcceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:acceleration_local-val is deprecated.  Use mla_localization_msgs-msg:acceleration_local instead.")
  (acceleration_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAAcceleration>)))
    "Constants for message type '<MLAAcceleration>"
  '((:MLA_ACC_GLOBAL . 1)
    (:MLA_ACC_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAAcceleration)))
    "Constants for message type 'MLAAcceleration"
  '((:MLA_ACC_GLOBAL . 1)
    (:MLA_ACC_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAAcceleration>) ostream)
  "Serializes a message object of type '<MLAAcceleration>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acceleration_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAAcceleration>) istream)
  "Deserializes a message object of type '<MLAAcceleration>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acceleration_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAAcceleration>)))
  "Returns string type for a message object of type '<MLAAcceleration>"
  "mla_localization_msgs/MLAAcceleration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAAcceleration)))
  "Returns string type for a message object of type 'MLAAcceleration"
  "mla_localization_msgs/MLAAcceleration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAAcceleration>)))
  "Returns md5sum for a message object of type '<MLAAcceleration>"
  "5c2d7300b72ce1f52af26dbb1242c4cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAAcceleration)))
  "Returns md5sum for a message object of type 'MLAAcceleration"
  "5c2d7300b72ce1f52af26dbb1242c4cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAAcceleration>)))
  "Returns full string definition for message of type '<MLAAcceleration>"
  (cl:format cl:nil "uint8 MLA_ACC_GLOBAL = 1~%uint8 MLA_ACC_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAAccGlobal acceleration_global~%mla_localization_msgs/MLAAccLocal acceleration_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccGlobal~%float64 ae~%float64 an~%float64 au~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccLocal~%float64 ax~%float64 ay~%float64 az~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAAcceleration)))
  "Returns full string definition for message of type 'MLAAcceleration"
  (cl:format cl:nil "uint8 MLA_ACC_GLOBAL = 1~%uint8 MLA_ACC_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAAccGlobal acceleration_global~%mla_localization_msgs/MLAAccLocal acceleration_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccGlobal~%float64 ae~%float64 an~%float64 au~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccLocal~%float64 ax~%float64 ay~%float64 az~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAAcceleration>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acceleration_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAAcceleration>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAAcceleration
    (cl:cons ':available (available msg))
    (cl:cons ':acceleration_global (acceleration_global msg))
    (cl:cons ':acceleration_local (acceleration_local msg))
))
