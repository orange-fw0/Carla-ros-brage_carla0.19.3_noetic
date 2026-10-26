; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAAccelerationStd.msg.html

(cl:defclass <MLAAccelerationStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (acc_std_global
    :reader acc_std_global
    :initarg :acc_std_global
    :type mla_localization_msgs-msg:MLAAccStdGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAccStdGlobal))
   (acc_std_local
    :reader acc_std_local
    :initarg :acc_std_local
    :type mla_localization_msgs-msg:MLAAccStdLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAAccStdLocal)))
)

(cl:defclass MLAAccelerationStd (<MLAAccelerationStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAAccelerationStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAAccelerationStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAAccelerationStd> is deprecated: use mla_localization_msgs-msg:MLAAccelerationStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAAccelerationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'acc_std_global-val :lambda-list '(m))
(cl:defmethod acc_std_global-val ((m <MLAAccelerationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:acc_std_global-val is deprecated.  Use mla_localization_msgs-msg:acc_std_global instead.")
  (acc_std_global m))

(cl:ensure-generic-function 'acc_std_local-val :lambda-list '(m))
(cl:defmethod acc_std_local-val ((m <MLAAccelerationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:acc_std_local-val is deprecated.  Use mla_localization_msgs-msg:acc_std_local instead.")
  (acc_std_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAAccelerationStd>)))
    "Constants for message type '<MLAAccelerationStd>"
  '((:MLA_ACC_STD_GLOBAL . 1)
    (:MLA_ACC_STD_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAAccelerationStd)))
    "Constants for message type 'MLAAccelerationStd"
  '((:MLA_ACC_STD_GLOBAL . 1)
    (:MLA_ACC_STD_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAAccelerationStd>) ostream)
  "Serializes a message object of type '<MLAAccelerationStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_std_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_std_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAAccelerationStd>) istream)
  "Deserializes a message object of type '<MLAAccelerationStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_std_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_std_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAAccelerationStd>)))
  "Returns string type for a message object of type '<MLAAccelerationStd>"
  "mla_localization_msgs/MLAAccelerationStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAAccelerationStd)))
  "Returns string type for a message object of type 'MLAAccelerationStd"
  "mla_localization_msgs/MLAAccelerationStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAAccelerationStd>)))
  "Returns md5sum for a message object of type '<MLAAccelerationStd>"
  "e3ab181c30c6d145102decdbf88f907b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAAccelerationStd)))
  "Returns md5sum for a message object of type 'MLAAccelerationStd"
  "e3ab181c30c6d145102decdbf88f907b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAAccelerationStd>)))
  "Returns full string definition for message of type '<MLAAccelerationStd>"
  (cl:format cl:nil "uint8 MLA_ACC_STD_GLOBAL = 1~%uint8 MLA_ACC_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAAccStdGlobal acc_std_global~%mla_localization_msgs/MLAAccStdLocal acc_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccStdGlobal~%float64 std_ae~%float64 std_an~%float64 std_au~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccStdLocal~%float64 std_ax~%float64 std_ay~%float64 std_az~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAAccelerationStd)))
  "Returns full string definition for message of type 'MLAAccelerationStd"
  (cl:format cl:nil "uint8 MLA_ACC_STD_GLOBAL = 1~%uint8 MLA_ACC_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAAccStdGlobal acc_std_global~%mla_localization_msgs/MLAAccStdLocal acc_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccStdGlobal~%float64 std_ae~%float64 std_an~%float64 std_au~%~%================================================================================~%MSG: mla_localization_msgs/MLAAccStdLocal~%float64 std_ax~%float64 std_ay~%float64 std_az~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAAccelerationStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_std_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_std_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAAccelerationStd>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAAccelerationStd
    (cl:cons ':available (available msg))
    (cl:cons ':acc_std_global (acc_std_global msg))
    (cl:cons ':acc_std_local (acc_std_local msg))
))
