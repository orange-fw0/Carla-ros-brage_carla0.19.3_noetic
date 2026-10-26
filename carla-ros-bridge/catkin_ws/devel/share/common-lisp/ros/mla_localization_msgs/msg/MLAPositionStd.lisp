; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAPositionStd.msg.html

(cl:defclass <MLAPositionStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (pos_std_global
    :reader pos_std_global
    :initarg :pos_std_global
    :type mla_localization_msgs-msg:MLAPosStdGlobal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosStdGlobal))
   (pos_std_local
    :reader pos_std_local
    :initarg :pos_std_local
    :type mla_localization_msgs-msg:MLAPosStdLocal
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAPosStdLocal)))
)

(cl:defclass MLAPositionStd (<MLAPositionStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAPositionStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAPositionStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAPositionStd> is deprecated: use mla_localization_msgs-msg:MLAPositionStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAPositionStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'pos_std_global-val :lambda-list '(m))
(cl:defmethod pos_std_global-val ((m <MLAPositionStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:pos_std_global-val is deprecated.  Use mla_localization_msgs-msg:pos_std_global instead.")
  (pos_std_global m))

(cl:ensure-generic-function 'pos_std_local-val :lambda-list '(m))
(cl:defmethod pos_std_local-val ((m <MLAPositionStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:pos_std_local-val is deprecated.  Use mla_localization_msgs-msg:pos_std_local instead.")
  (pos_std_local m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAPositionStd>)))
    "Constants for message type '<MLAPositionStd>"
  '((:MLA_POS_STD_GLOBAL . 1)
    (:MLA_POS_STD_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAPositionStd)))
    "Constants for message type 'MLAPositionStd"
  '((:MLA_POS_STD_GLOBAL . 1)
    (:MLA_POS_STD_LOCAL . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAPositionStd>) ostream)
  "Serializes a message object of type '<MLAPositionStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_std_global) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_std_local) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAPositionStd>) istream)
  "Deserializes a message object of type '<MLAPositionStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_std_global) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_std_local) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAPositionStd>)))
  "Returns string type for a message object of type '<MLAPositionStd>"
  "mla_localization_msgs/MLAPositionStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAPositionStd)))
  "Returns string type for a message object of type 'MLAPositionStd"
  "mla_localization_msgs/MLAPositionStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAPositionStd>)))
  "Returns md5sum for a message object of type '<MLAPositionStd>"
  "5c5277428311af2518ace96c5fcbb93b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAPositionStd)))
  "Returns md5sum for a message object of type 'MLAPositionStd"
  "5c5277428311af2518ace96c5fcbb93b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAPositionStd>)))
  "Returns full string definition for message of type '<MLAPositionStd>"
  (cl:format cl:nil "uint8 MLA_POS_STD_GLOBAL = 1~%uint8 MLA_POS_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAPosStdGlobal pos_std_global~%mla_localization_msgs/MLAPosStdLocal pos_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosStdGlobal~%float64 std_pe~%float64 std_pn~%float64 std_pu~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosStdLocal~%float64 std_px~%float64 std_py~%float64 std_pz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAPositionStd)))
  "Returns full string definition for message of type 'MLAPositionStd"
  (cl:format cl:nil "uint8 MLA_POS_STD_GLOBAL = 1~%uint8 MLA_POS_STD_LOCAL = 2~%uint8 available~%mla_localization_msgs/MLAPosStdGlobal pos_std_global~%mla_localization_msgs/MLAPosStdLocal pos_std_local~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosStdGlobal~%float64 std_pe~%float64 std_pn~%float64 std_pu~%~%================================================================================~%MSG: mla_localization_msgs/MLAPosStdLocal~%float64 std_px~%float64 std_py~%float64 std_pz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAPositionStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_std_global))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_std_local))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAPositionStd>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAPositionStd
    (cl:cons ':available (available msg))
    (cl:cons ':pos_std_global (pos_std_global msg))
    (cl:cons ':pos_std_local (pos_std_local msg))
))
