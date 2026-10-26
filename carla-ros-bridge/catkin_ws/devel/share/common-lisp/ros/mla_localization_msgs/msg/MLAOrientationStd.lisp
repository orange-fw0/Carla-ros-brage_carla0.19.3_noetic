; Auto-generated. Do not edit!


(cl:in-package mla_localization_msgs-msg)


;//! \htmlinclude MLAOrientationStd.msg.html

(cl:defclass <MLAOrientationStd> (roslisp-msg-protocol:ros-message)
  ((available
    :reader available
    :initarg :available
    :type cl:fixnum
    :initform 0)
   (ori_std_xyz
    :reader ori_std_xyz
    :initarg :ori_std_xyz
    :type mla_localization_msgs-msg:MLAOriStdXyz
    :initform (cl:make-instance 'mla_localization_msgs-msg:MLAOriStdXyz)))
)

(cl:defclass MLAOrientationStd (<MLAOrientationStd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MLAOrientationStd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MLAOrientationStd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mla_localization_msgs-msg:<MLAOrientationStd> is deprecated: use mla_localization_msgs-msg:MLAOrientationStd instead.")))

(cl:ensure-generic-function 'available-val :lambda-list '(m))
(cl:defmethod available-val ((m <MLAOrientationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:available-val is deprecated.  Use mla_localization_msgs-msg:available instead.")
  (available m))

(cl:ensure-generic-function 'ori_std_xyz-val :lambda-list '(m))
(cl:defmethod ori_std_xyz-val ((m <MLAOrientationStd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mla_localization_msgs-msg:ori_std_xyz-val is deprecated.  Use mla_localization_msgs-msg:ori_std_xyz instead.")
  (ori_std_xyz m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MLAOrientationStd>)))
    "Constants for message type '<MLAOrientationStd>"
  '((:MLA_ORI_STD_XYZ . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MLAOrientationStd)))
    "Constants for message type 'MLAOrientationStd"
  '((:MLA_ORI_STD_XYZ . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MLAOrientationStd>) ostream)
  "Serializes a message object of type '<MLAOrientationStd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ori_std_xyz) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MLAOrientationStd>) istream)
  "Deserializes a message object of type '<MLAOrientationStd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'available)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ori_std_xyz) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MLAOrientationStd>)))
  "Returns string type for a message object of type '<MLAOrientationStd>"
  "mla_localization_msgs/MLAOrientationStd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MLAOrientationStd)))
  "Returns string type for a message object of type 'MLAOrientationStd"
  "mla_localization_msgs/MLAOrientationStd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MLAOrientationStd>)))
  "Returns md5sum for a message object of type '<MLAOrientationStd>"
  "4e2301a2abe192f5c2b01527e58d8ac4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MLAOrientationStd)))
  "Returns md5sum for a message object of type 'MLAOrientationStd"
  "4e2301a2abe192f5c2b01527e58d8ac4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MLAOrientationStd>)))
  "Returns full string definition for message of type '<MLAOrientationStd>"
  (cl:format cl:nil "uint8 MLA_ORI_STD_XYZ = 1~%uint8 available~%mla_localization_msgs/MLAOriStdXyz ori_std_xyz~%~%================================================================================~%MSG: mla_localization_msgs/MLAOriStdXyz~%float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MLAOrientationStd)))
  "Returns full string definition for message of type 'MLAOrientationStd"
  (cl:format cl:nil "uint8 MLA_ORI_STD_XYZ = 1~%uint8 available~%mla_localization_msgs/MLAOriStdXyz ori_std_xyz~%~%================================================================================~%MSG: mla_localization_msgs/MLAOriStdXyz~%float64 std_faix~%float64 std_faiy~%float64 std_faiz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MLAOrientationStd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ori_std_xyz))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MLAOrientationStd>))
  "Converts a ROS message object to a list"
  (cl:list 'MLAOrientationStd
    (cl:cons ':available (available msg))
    (cl:cons ':ori_std_xyz (ori_std_xyz msg))
))
